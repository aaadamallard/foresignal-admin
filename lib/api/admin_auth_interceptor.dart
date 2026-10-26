import 'package:dio/dio.dart';

import 'admin_token_store.dart';
import 'api_errors.dart';
import 'session_store.dart';

/// Which credential a request carried, recorded in its `extra` under
/// [AdminAuthInterceptor.credentialKey].
enum RequestCredential {
  /// A signed-in user's session token.
  session,

  /// The pasted admin token (the machine and break-glass fallback).
  adminToken,

  /// Nothing: a read, or one of the open sign-in operations.
  none,
}

/// Adds `Authorization: Bearer <credential>` to every request. A signed-in
/// session's token wins when there is one; the pasted admin token is the
/// fallback. A write (any method but GET, HEAD and OPTIONS) with neither is
/// refused before it is sent, except the open sign-in operations
/// ([openWritePaths]), which never carry a credential. Reads stay callable
/// without one: the backend serves them openly while `security.openReads` is
/// on.
///
/// A 401 answering a request that carried the current session's token means
/// the session ended: the session is cleared and [onSessionEnded] runs once.
class AdminAuthInterceptor extends Interceptor {
  /// Creates the interceptor over the admin-token [store] and, when given,
  /// the [sessions] store.
  AdminAuthInterceptor(this.store, {this.sessions, this.onSessionEnded});

  /// Where the admin token is read from, on every request.
  final AdminTokenStore store;

  /// Where the session is read from, on every request; `null` uses the admin
  /// token alone.
  final SessionStore? sessions;

  /// Called after a 401 cleared the session the request carried.
  final void Function()? onSessionEnded;

  /// The `RequestOptions.extra` key recording the [RequestCredential] sent.
  static const String credentialKey = 'foresignal.credential';

  static const Set<String> _readMethods = <String>{'GET', 'HEAD', 'OPTIONS'};

  /// The open (`security: [{}]`) sign-in operations: `login`,
  /// `activateAccount`, `resetPassword` and `requestPasswordReset`. They are
  /// writes that need no credential, and are sent without one so a stale
  /// session cannot spoil them.
  static const Set<String> openWritePaths = <String>{
    '/v1/auth/login',
    '/v1/auth/activate',
    '/v1/auth/password/reset',
    '/v1/auth/password/reset-request',
  };

  /// Whether [method] is a write that needs a credential.
  static bool isWrite(String method) => !_readMethods.contains(method.toUpperCase());

  /// Whether [options] is one of the [openWritePaths].
  static bool isOpenSignIn(RequestOptions options) {
    final path = options.uri.path;
    return openWritePaths.any(path.endsWith);
  }

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    if (isOpenSignIn(options)) {
      options.headers.remove('Authorization');
      options.extra[credentialKey] = RequestCredential.none;
      handler.next(options);
      return;
    }
    final session = await sessions?.read();
    if (session != null && session.token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer ${session.token}';
      options.extra[credentialKey] = RequestCredential.session;
      handler.next(options);
      return;
    }
    final token = await store.read();
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
      options.extra[credentialKey] = RequestCredential.adminToken;
      handler.next(options);
      return;
    }
    options.headers.remove('Authorization');
    options.extra[credentialKey] = RequestCredential.none;
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

  @override
  Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {
    await _endSessionOn401(err.response);
    handler.next(err);
  }

  @override
  Future<void> onResponse(Response<dynamic> response, ResponseInterceptorHandler handler) async {
    // A client that accepts every status still hands a 401 back here.
    await _endSessionOn401(response);
    handler.next(response);
  }

  Future<void> _endSessionOn401(Response<dynamic>? response) async {
    final sessions = this.sessions;
    if (sessions == null || response?.statusCode != 401) {
      return;
    }
    final options = response!.requestOptions;
    if (options.extra[credentialKey] != RequestCredential.session) {
      return;
    }
    // Only the session this request carried: a newer sign-in made while the
    // request was in flight stays.
    final current = await sessions.read();
    if (current == null || options.headers['Authorization'] != 'Bearer ${current.token}') {
      return;
    }
    await sessions.clear();
    onSessionEnded?.call();
  }
}
