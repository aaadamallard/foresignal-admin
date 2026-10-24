import 'package:dio/dio.dart';

import 'api_errors.dart';

/// Calls a contract operation with plain JSON bodies over the configured
/// backend [dio] (base URL, admin token, timeouts), for the operations whose
/// shapes the generated client cannot carry:
///
/// - `TriggerRuleInput.window` is a `oneOf` of `CountWindow`, `AbsenceWindow`
///   and `AnomalyWindow` without a discriminator; every window document
///   matches more than one, so the generated deserializer refuses any rule
///   with a window, and with it the whole `listTriggers` response.
/// - `ChannelInput.config` and `Channel.config` allow additional properties
///   (each type's `configFields`), which the generated model drops: a
///   channel's URL, topic or broker never reaches the backend or the screen.
/// - `markNotificationsRead` takes its body as a `JsonObject`, which the
///   generated method hands to dio unserialized, so it fails before sending.
///
/// [path] is sent as given, with any extra [headers], so its segments must already be encoded. Every
/// failure is thrown as an [ApiException].
Future<Object?> jsonCall(
  Dio dio,
  String method,
  String path, {
  Object? body,
  Map<String, Object?>? query,
  Map<String, Object?>? headers,
}) async => (await _send(dio, method, path, body: body, query: query, headers: headers)).data;

Future<Response<Object?>> _send(
  Dio dio,
  String method,
  String path, {
  Object? body,
  Map<String, Object?>? query,
  Map<String, Object?>? headers,
}) async {
  try {
    return await dio.request<Object?>(
      path,
      data: body,
      queryParameters: query,
      options: Options(method: method, headers: headers, contentType: body == null ? null : Headers.jsonContentType),
    );
  } on Object catch (error) {
    throw toApiException(error);
  }
}

/// The reply to [method] [path] was not the JSON [expected]: a request that
/// failed on a reachable backend, with what came back instead.
RequestFailedException _unexpected(String method, String path, Response<Object?> response, String expected) =>
    RequestFailedException(
      RequestFailure.unexpectedReply,
      '$method $path answered HTTP ${response.statusCode} with ${jsonShapeOf(response.data)}, '
      'not the expected $expected.',
      status: response.statusCode,
    );

/// [jsonCall] for an operation answering one JSON object.
Future<Map<String, Object?>> jsonObjectCall(
  Dio dio,
  String method,
  String path, {
  Object? body,
  Map<String, Object?>? query,
  Map<String, Object?>? headers,
}) async {
  final response = await _send(dio, method, path, body: body, query: query, headers: headers);
  final data = response.data;
  if (data is! Map) {
    throw _unexpected(method, path, response, 'JSON object');
  }
  return data.cast<String, Object?>();
}

/// [jsonCall] for an operation answering a JSON array of objects.
Future<List<Map<String, Object?>>> jsonArrayCall(
  Dio dio,
  String path, {
  Map<String, Object?>? query,
}) async {
  final response = await _send(dio, 'GET', path, query: query);
  final data = response.data;
  if (data is! List) {
    throw _unexpected('GET', path, response, 'JSON array');
  }
  return <Map<String, Object?>>[
    for (final e in data)
      if (e is Map) e.cast<String, Object?>(),
  ];
}
