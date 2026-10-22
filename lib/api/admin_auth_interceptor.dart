import 'package:dio/dio.dart';

import 'admin_token_store.dart';
import 'api_errors.dart';

/// Adds `Authorization: Bearer <admin token>` to every request when a token is
/// stored, and refuses a write (any method but GET, HEAD and OPTIONS) before it
/// is sent when none is. Reads stay callable without a token: the backend
/// serves them openly while `security.openReads` is on.
class AdminAuthInterceptor extends Interceptor {
  /// Creates the interceptor over [store].
  AdminAuthInterceptor(this.store);

  /// Where the token is read from, on every request.
  final AdminTokenStore store;

  static const Set<String> _readMethods = <String>{'GET', 'HEAD', 'OPTIONS'};

  /// Whether [method] is a write that needs the admin token.
  static bool isWrite(String method) => !_readMethods.contains(method.toUpperCase());

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await store.read();
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
      handler.next(options);
      return;
    }
    options.headers.remove('Authorization');
    if (isWrite(options.method)) {
      handler.reject(
        DioException(
          requestOptions: options,
          type: DioExceptionType.cancel,
          error: const AdminTokenRequiredException(),
        ),
      );
      return;
    }
    handler.next(options);
  }
}
