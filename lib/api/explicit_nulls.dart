import 'package:dio/dio.dart';

/// The request `extra` key naming the body members to send as JSON `null`.
const String explicitNullsKey = 'foresignal.explicitNulls';

/// The `extra` for a generated-client call that must send each of [keys] as an
/// explicit `null`, as the contract's patches use to clear a value. The
/// generated serializers leave a null member out, which means "unchanged".
Map<String, dynamic> explicitNulls(Iterable<String> keys) => <String, dynamic>{
  explicitNullsKey: List<String>.of(keys),
};

/// Writes the members named under [explicitNullsKey] into a JSON object body as
/// `null` before the request is sent. Requests without the key pass unchanged.
class ExplicitNullsInterceptor extends Interceptor {
  /// Creates the interceptor.
  const ExplicitNullsInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final keys = options.extra[explicitNullsKey];
    if (keys is List && keys.isNotEmpty) {
      final data = options.data;
      options.data = <String, Object?>{
        if (data is Map) ...data.cast<String, Object?>(),
        for (final key in keys) '$key': null,
      };
    }
    handler.next(options);
  }
}
