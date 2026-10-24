import '../api/api.dart';

/// How long the app waits before its one automatic reload of a failed load.
const Duration automaticRetryDelay = Duration(seconds: 5);

/// The app's automatic retry of a failed provider (Riverpod's `retry`): at
/// most one reload, [automaticRetryDelay] after the failure, and only when
/// the request may not have reached the backend at all: the connection
/// failed ([NetworkException]) or a gateway in front of the backend answered
/// 502 or 504 without a problem body.
///
/// Everything else stays failed until the person presses Retry: a timeout or
/// a backend 503 (the backend is busy, and asking again adds to its load), a
/// problem the backend reported, a reply the app cannot read, and any error
/// in the app itself. Riverpod's own default reloads up to ten times, 200 ms
/// apart and doubling, which multiplied the load on a struggling backend.
Duration? appRetry(int retryCount, Object error) {
  if (retryCount >= 1) {
    return null;
  }
  return switch (error) {
    NetworkException() => automaticRetryDelay,
    HttpStatusException(status: 502 || 504) => automaticRetryDelay,
    _ => null,
  };
}
