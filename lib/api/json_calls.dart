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
}) async {
  try {
    final response = await dio.request<Object?>(
      path,
      data: body,
      queryParameters: query,
      options: Options(method: method, headers: headers, contentType: body == null ? null : Headers.jsonContentType),
    );
    return response.data;
  } on Object catch (error) {
    throw toApiException(error);
  }
}

/// [jsonCall] for an operation answering one JSON object.
Future<Map<String, Object?>> jsonObjectCall(
  Dio dio,
  String method,
  String path, {
  Object? body,
  Map<String, Object?>? query,
  Map<String, Object?>? headers,
}) async {
  final data = await jsonCall(dio, method, path, body: body, query: query, headers: headers);
  if (data is! Map) {
    throw NetworkException('The backend answered without the expected object.');
  }
  return data.cast<String, Object?>();
}

/// [jsonCall] for an operation answering a JSON array of objects.
Future<List<Map<String, Object?>>> jsonArrayCall(
  Dio dio,
  String path, {
  Map<String, Object?>? query,
}) async {
  final data = await jsonCall(dio, 'GET', path, query: query);
  if (data is! List) {
    throw NetworkException('The backend answered without the expected array.');
  }
  return <Map<String, Object?>>[
    for (final e in data)
      if (e is Map) e.cast<String, Object?>(),
  ];
}
