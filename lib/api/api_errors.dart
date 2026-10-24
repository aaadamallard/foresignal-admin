import 'dart:convert';
import 'dart:io' show HandshakeException, HttpDate, HttpException, SocketException, TlsException;

import 'package:dio/dio.dart';

/// A failed call to the ForeSignal backend, typed so a screen can show the
/// right thing: a refusal, a missing token, a request that failed on a
/// backend that answers, or a server that cannot be reached at all.
sealed class ApiException implements Exception {
  /// Creates an [ApiException] with a human-readable [message].
  const ApiException(this.message);

  /// A one-line description suitable for an error surface.
  final String message;

  /// How long the backend asked the caller to wait before retrying, if it said.
  Duration? get retryAfter => null;

  @override
  String toString() => message;
}

/// One field-level validation error from a ProblemDetail `errors` array.
class FieldError {
  /// Creates a field error.
  const FieldError({required this.field, required this.message});

  /// The request field the backend refused (may be empty for a whole-body error).
  final String field;

  /// Why the backend refused it.
  final String message;

  @override
  String toString() => field.isEmpty ? message : '$field: $message';
}

/// The backend answered with an RFC 9457 ProblemDetail (`Problem` in the
/// contract): a 4xx guard or a 5xx with a stable machine [code].
class ProblemException extends ApiException {
  /// Creates a problem exception. [message] defaults to `title: detail`.
  ProblemException({
    required this.status,
    required this.title,
    this.code,
    this.detail,
    this.type,
    this.instance,
    this.fieldErrors = const <FieldError>[],
    this.retryAfter,
    this.body = const <String, Object?>{},
  }) : super(detail == null || detail.isEmpty ? title : '$title: $detail');

  /// The HTTP status code.
  final int status;

  /// The problem's short title.
  final String title;

  /// The stable machine code (`CREDENTIALS_REQUIRED`, `RATE_LIMITED`, ...).
  final String? code;

  /// The problem's detail sentence.
  final String? detail;

  /// The problem type URI.
  final String? type;

  /// The problem instance.
  final String? instance;

  /// Field-level validation errors, in the order the backend listed them.
  final List<FieldError> fieldErrors;

  @override
  final Duration? retryAfter;

  /// The whole decoded problem body, for code-specific fields
  /// (`retryAfterSeconds`, `requiredScope`, `capUsd`, ...).
  final Map<String, Object?> body;

  /// Whether the backend refused the caller's credentials (401) or scope (403).
  bool get isAuthFailure => status == 401 || status == 403;
}

/// The backend answered with a failure status but no ProblemDetail body (for
/// example a reverse proxy's HTML 502).
class HttpStatusException extends ApiException {
  /// Creates an exception for a non-problem failure response.
  HttpStatusException({required this.status, String? statusMessage, this.retryAfter})
    : super(
        'HTTP $status${statusMessage == null || statusMessage.isEmpty ? '' : ' $statusMessage'}',
      );

  /// The HTTP status code.
  final int status;

  @override
  final Duration? retryAfter;
}

/// A write was attempted without an admin token. Raised before any request is
/// sent; the Connect screen is where a token is entered.
class AdminTokenRequiredException extends ApiException {
  /// Creates the exception.
  const AdminTokenRequiredException()
    : super('An admin token is required for this change. Enter one on the Connect screen.');
}

/// The backend could not be reached: the connection was refused or dropped,
/// the host name did not resolve, the connection was not accepted in time,
/// or TLS failed. Only this is shown as "Backend unreachable"; a request that
/// reached the backend and failed is a [RequestFailedException] or an HTTP
/// failure.
class NetworkException extends ApiException {
  /// Creates a network exception wrapping [cause].
  NetworkException(super.message, {this.cause});

  /// The underlying error, if any.
  final Object? cause;
}

/// Why a request to a reachable backend failed without an HTTP failure status.
enum RequestFailure {
  /// The backend took the request but did not answer within the timeout.
  timeout('The backend did not answer in time'),

  /// The request was canceled before it was answered.
  canceled('Request canceled'),

  /// The backend answered, but not with what the contract describes: no
  /// body, the wrong JSON shape, or a reply the app could not read.
  unexpectedReply('Unexpected reply from the backend');

  const RequestFailure(this.heading);

  /// The heading an error surface shows.
  final String heading;
}

/// One request failed on a backend that is reachable: it timed out, was
/// canceled, or was answered with something the app could not use. The
/// screen that made the request shows this with a Retry, never as
/// "Backend unreachable".
class RequestFailedException extends ApiException {
  /// Creates the exception for [failure], with the HTTP [status] of the reply
  /// when there was one.
  RequestFailedException(this.failure, super.message, {this.status, this.cause});

  /// Why the request failed.
  final RequestFailure failure;

  /// The HTTP status of the reply, when the backend answered.
  final int? status;

  /// The underlying error, if any.
  final Object? cause;
}

/// The reply to a request for one JSON object or array that was something
/// else, named for an error surface: "a JSON array", "no body".
String jsonShapeOf(Object? data) => switch (data) {
  null => 'no body',
  Map() => 'a JSON object',
  List() => 'a JSON array',
  String() => 'text',
  _ => 'a ${data.runtimeType}',
};

/// Parses a `Retry-After` header: delay-seconds or an HTTP-date. A date in the
/// past yields [Duration.zero]; anything unparsable yields `null`.
Duration? parseRetryAfter(String? header, {DateTime? now}) {
  if (header == null) {
    return null;
  }
  final value = header.trim();
  if (value.isEmpty) {
    return null;
  }
  final seconds = int.tryParse(value);
  if (seconds != null) {
    return seconds < 0 ? null : Duration(seconds: seconds);
  }
  try {
    final date = HttpDate.parse(value);
    final delta = date.difference((now ?? DateTime.now()).toUtc());
    return delta.isNegative ? Duration.zero : delta;
  } on HttpException {
    return null;
  } on FormatException {
    return null;
  }
}

/// Maps any error thrown by a backend call to an [ApiException]. An error that
/// already is one passes through unchanged.
ApiException toApiException(Object error) {
  if (error is ApiException) {
    return error;
  }
  if (error is DioException) {
    return _fromDio(error);
  }
  if (_isConnectionFailure(error)) {
    return NetworkException('The backend could not be reached ($error).', cause: error);
  }
  return RequestFailedException(
    RequestFailure.unexpectedReply,
    'The app could not use the backend\'s reply: $error',
    cause: error,
  );
}

/// Whether [error] is a transport failure: a socket, TLS or HTTP connection
/// error rather than anything about a reply.
bool _isConnectionFailure(Object? error) =>
    error is SocketException || error is HandshakeException || error is TlsException || error is HttpException;

ApiException _fromDio(DioException error) {
  final inner = error.error;
  if (inner is ApiException) {
    return inner;
  }
  final response = error.response;
  if (response == null || response.statusCode == null) {
    return switch (error.type) {
      // The connection was made; the answer did not come in time.
      DioExceptionType.sendTimeout ||
      DioExceptionType.receiveTimeout ||
      DioExceptionType.transformTimeout => RequestFailedException(
        RequestFailure.timeout,
        _timeoutMessage(error),
        cause: error,
      ),
      DioExceptionType.cancel => RequestFailedException(
        RequestFailure.canceled,
        _networkMessage(error),
        cause: error,
      ),
      // An error that is not about the connection (one the app raised while
      // sending or reading) is not "unreachable" either.
      DioExceptionType.unknown when inner != null && !_isConnectionFailure(inner) =>
        RequestFailedException(
          RequestFailure.unexpectedReply,
          'The request failed before an answer could be read: $inner',
          cause: error,
        ),
      _ => NetworkException(_networkMessage(error), cause: error),
    };
  }
  final status = response.statusCode!;
  if (status >= 200 && status < 300) {
    // The request succeeded; reading the reply did not (a body that does
    // not match the contract the client was generated from).
    return RequestFailedException(
      RequestFailure.unexpectedReply,
      'The backend answered HTTP $status, but the app could not read the reply: ${inner ?? error.message}',
      status: status,
      cause: error,
    );
  }
  final retryAfterHeader = parseRetryAfter(response.headers.value('retry-after'));
  final problem = _decodeProblem(response.data);
  if (problem == null) {
    return HttpStatusException(
      status: status,
      statusMessage: response.statusMessage,
      retryAfter: retryAfterHeader,
    );
  }
  final retrySeconds = problem['retryAfterSeconds'];
  return ProblemException(
    status: problem['status'] is int ? problem['status']! as int : status,
    title: problem['title'] is String ? problem['title']! as String : 'HTTP $status',
    code: problem['code'] is String ? problem['code']! as String : null,
    detail: problem['detail'] is String ? problem['detail']! as String : null,
    type: problem['type'] is String ? problem['type']! as String : null,
    instance: problem['instance'] is String ? problem['instance']! as String : null,
    fieldErrors: _fieldErrors(problem['errors']),
    retryAfter: retryAfterHeader ?? (retrySeconds is int ? Duration(seconds: retrySeconds) : null),
    body: problem,
  );
}

/// Names the request that timed out and the limit it ran past, so the banner
/// says more than its heading.
String _timeoutMessage(DioException error) {
  final o = error.requestOptions;
  final limit = error.type == DioExceptionType.sendTimeout ? o.sendTimeout : o.receiveTimeout;
  final within = limit == null ? '' : ' within ${limit.inSeconds} s';
  final what = error.type == DioExceptionType.sendTimeout ? 'could not be sent' : 'got no answer';
  return '${o.method} ${o.uri.path} $what$within. The backend may be busy; retry, or narrow the request.';
}

String _networkMessage(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return 'The backend did not accept the connection in time.';
    case DioExceptionType.sendTimeout:
      return 'Sending the request to the backend timed out.';
    case DioExceptionType.receiveTimeout:
    case DioExceptionType.transformTimeout:
      return 'The backend did not answer in time.';
    case DioExceptionType.cancel:
      return 'The request was canceled.';
    case DioExceptionType.badCertificate:
      return 'The backend presented a certificate that is not trusted.';
    case DioExceptionType.connectionError:
    case DioExceptionType.badResponse:
    case DioExceptionType.unknown:
      final detail = error.message ?? error.error?.toString();
      return detail == null || detail.isEmpty
          ? 'The backend could not be reached.'
          : 'The backend could not be reached ($detail).';
  }
}

Map<String, Object?>? _decodeProblem(Object? data) {
  Object? decoded = data;
  if (data is List<int>) {
    try {
      decoded = utf8.decode(data);
    } on FormatException {
      return null;
    }
  }
  if (decoded is String) {
    try {
      decoded = jsonDecode(decoded);
    } on FormatException {
      return null;
    }
  }
  if (decoded is Map) {
    final map = <String, Object?>{
      for (final entry in decoded.entries) entry.key.toString(): entry.value,
    };
    // The contract's Problem requires `title` and `status`; anything without
    // either is some other body.
    if (map['title'] is String || map['status'] is int) {
      return map;
    }
  }
  return null;
}

List<FieldError> _fieldErrors(Object? errors) {
  if (errors is! List) {
    return const <FieldError>[];
  }
  return <FieldError>[
    for (final item in errors)
      if (item is Map)
        FieldError(
          field: item['field'] is String ? item['field']! as String : '',
          message: item['message'] is String ? item['message']! as String : item.toString(),
        ),
  ];
}
