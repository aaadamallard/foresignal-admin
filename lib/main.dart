import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';

/// Starts ForeSignal Admin inside a Riverpod [ProviderScope].
void main() {
  runApp(const ProviderScope(child: ForeSignalAdminApp()));
}
