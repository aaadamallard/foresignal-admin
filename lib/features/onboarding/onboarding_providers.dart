import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../forecasting/forecasting_providers.dart' show Json;

/// Whether the backend still needs first-run setup (`getFirstRunStatus`,
/// readable before any account exists): `firstRun`, `hasUsers`,
/// `smtpConfigured` and `sourcesEnabled`.
final firstRunStatusProvider = FutureProvider<Json>(
  (ref) => jsonObjectCall(ref.watch(backendDioProvider), 'GET', '/v1/system/first-run'),
);

/// Whether [status] (a `FirstRunStatus`) says the instance has no users yet.
/// Anything but an explicit `true` is not a first run: a backend without the
/// operation keeps the usual landing.
bool isFirstRun(Json? status) => status?['firstRun'] == true;
