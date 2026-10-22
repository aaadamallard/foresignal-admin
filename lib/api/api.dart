/// The app's single entry point to the ForeSignal backend: the generated
/// client plus the wrapper that configures, authenticates and types it.
library;

export 'package:foresignal_api/foresignal_api.dart';

export 'admin_auth_interceptor.dart';
export 'admin_token_store.dart';
export 'api_client.dart';
export 'api_errors.dart';
export 'backend_endpoint.dart';
export 'sse.dart';
