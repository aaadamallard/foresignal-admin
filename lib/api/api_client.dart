import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foresignal_api/foresignal_api.dart';

import 'admin_auth_interceptor.dart';
import 'admin_token_store.dart';
import 'api_errors.dart';
import 'backend_endpoint.dart';

/// How long to wait for the backend to accept a connection.
const Duration connectTimeout = Duration(seconds: 10);

/// How long to wait for a (non-streaming) response.
const Duration receiveTimeout = Duration(seconds: 60);

/// Builds the [Dio] every backend call goes through: the base URL, the admin
/// bearer token, and `Accept` for JSON and ProblemDetail bodies.
Dio createBackendDio({required Uri? baseUrl, required AdminTokenStore tokenStore}) {
  final dio = Dio(
    BaseOptions(
      baseUrl: baseUrl?.toString() ?? '',
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
      headers: <String, Object>{'Accept': 'application/json, application/problem+json'},
    ),
  );
  dio.interceptors.add(AdminAuthInterceptor(tokenStore));
  return dio;
}

/// The [Dio] for the current backend URL and token store.
final backendDioProvider = Provider<Dio>((ref) {
  final dio = createBackendDio(
    baseUrl: ref.watch(backendEndpointProvider),
    tokenStore: ref.watch(adminTokenStoreProvider),
  );
  ref.onDispose(dio.close);
  return dio;
});

/// The generated ForeSignal client, over [backendDioProvider]. Every backend
/// call in the app goes through it.
final foresignalApiProvider = Provider<ForesignalApi>((ref) {
  // An empty interceptor list keeps the generated auth interceptors off: the
  // admin token is added by [AdminAuthInterceptor] alone.
  return ForesignalApi(dio: ref.watch(backendDioProvider), interceptors: const <Interceptor>[]);
});

/// Awaits a generated-client call and returns its body, turning any failure
/// into an [ApiException]. A 2xx response with no body returns `null`.
Future<T?> callApi<T>(Future<Response<T>> Function() call) async {
  try {
    final response = await call();
    return response.data;
  } on Object catch (error) {
    throw toApiException(error);
  }
}

/// Like [callApi], for calls whose 2xx response always carries a body. Throws
/// a [NetworkException] if the body is missing.
Future<T> callApiRequired<T>(Future<Response<T>> Function() call) async {
  final data = await callApi<T>(call);
  if (data == null) {
    throw NetworkException('The backend answered without the expected body.');
  }
  return data;
}
