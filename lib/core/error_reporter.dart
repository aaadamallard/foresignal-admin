import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// An uncaught error the global error surface shows.
class ReportedError {
  /// Creates a report.
  const ReportedError(this.error, this.at);

  /// The error.
  final Object error;

  /// When it was reported.
  final DateTime at;
}

/// The global error surface's state: the most recent uncaught error, until
/// the operator dismisses it.
class ErrorReporter extends Notifier<ReportedError?> {
  @override
  ReportedError? build() => null;

  /// Records [error] as the latest uncaught error.
  void report(Object error) => state = ReportedError(error, DateTime.now());

  /// Clears the surface.
  void dismiss() => state = null;
}

/// The global error surface.
final errorReporterProvider = NotifierProvider<ErrorReporter, ReportedError?>(ErrorReporter.new);

/// Routes uncaught framework and platform errors to [container]'s
/// [ErrorReporter] instead of letting them end the app, and replaces the red
/// error widget with a compact inline one.
void installGlobalErrorHandlers(ProviderContainer container) {
  final previous = FlutterError.onError;
  FlutterError.onError = (details) {
    previous?.call(details);
    container.read(errorReporterProvider.notifier).report(details.exception);
  };
  PlatformDispatcher.instance.onError = (error, stack) {
    container.read(errorReporterProvider.notifier).report(error);
    return true;
  };
  ErrorWidget.builder = (details) => InlineErrorWidget(details: details);
}

/// What a widget that failed to build shows in its place.
class InlineErrorWidget extends StatelessWidget {
  /// Creates the widget for [details].
  const InlineErrorWidget({super.key, required this.details});

  /// The build failure.
  final FlutterErrorDetails details;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: const Color(0x33E5534B),
      child: Text(
        kDebugMode ? details.exceptionAsString() : 'This part of the screen failed to load.',
        style: const TextStyle(color: Color(0xFFE5534B), fontSize: 12),
      ),
    );
  }
}
