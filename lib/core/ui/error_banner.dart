import 'package:flutter/material.dart';

import '../../api/api_errors.dart';
import '../access.dart';
import '../theme.dart';
import 'permission_gate.dart';

/// Shows a failed backend call where it happened: a refusal or failure
/// (ProblemDetail) with its status, code and field errors, a request that
/// timed out or was answered with something unexpected, a missing token, or
/// — only for a connection that could not be made — an unreachable server.
/// It is never a crash screen.
class ErrorBanner extends StatelessWidget {
  /// Creates a banner for [error]; [onRetry] adds a Retry button.
  const ErrorBanner({super.key, required this.error, this.onRetry, this.title});

  /// The error to show. An [ApiException] is shown in full; anything else by
  /// its `toString()`.
  final Object error;

  /// Called by the Retry button, when given.
  final VoidCallback? onRetry;

  /// An optional heading, e.g. "Could not save".
  final String? title;

  @override
  Widget build(BuildContext context) {
    // A signed-in user refused for a permission: the shared denied panel,
    // naming what the action needed.
    if (isPermissionDenied(error)) {
      final problem = error as ProblemException;
      final needed = requiredPermissionOf(problem);
      return PermissionDeniedPanel(
        permissions: needed == null ? const <String>{} : <String>{needed},
        detail: problem.detail,
        title: title ?? 'Permission needed',
      );
    }
    final theme = Theme.of(context);
    final api = error is ApiException ? error as ApiException : null;
    final lines = <String>[];
    var heading = title;
    var color = AdminPalette.of(context).error;
    switch (api) {
      case ProblemException(:final status, :final code, :final fieldErrors, :final retryAfter):
        heading ??= status >= 500 ? 'The backend failed' : 'The backend refused this';
        lines.add(api.message);
        lines.add(code == null ? 'HTTP $status' : 'HTTP $status · $code');
        lines.addAll(fieldErrors.map((e) => '• $e'));
        if (retryAfter != null) {
          lines.add('Retry after ${retryAfter.inSeconds} s.');
        }
      case AdminTokenRequiredException():
        heading ??= 'Sign-in required';
        color = AdminPalette.of(context).warning;
        lines.add(api.message);
      case NetworkException():
        heading ??= 'Backend unreachable';
        lines.add(api.message);
      case RequestFailedException(:final failure, :final status):
        heading ??= failure.heading;
        lines.add(api.message);
        if (status != null && !api.message.contains('HTTP $status')) {
          lines.add('HTTP $status');
        }
      case HttpStatusException(:final status):
        heading ??= 'Unexpected response';
        lines.add('The backend (or a proxy in front of it) answered HTTP $status without details.');
      case null:
        heading ??= 'Something went wrong';
        lines.add(error.toString());
    }
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.10),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withValues(alpha: 0.5)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.error_outline, color: color, size: 20),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(heading, style: theme.textTheme.titleSmall?.copyWith(color: color)),
                const SizedBox(height: 4),
                for (final line in lines) SelectableText(line, style: theme.textTheme.bodySmall),
              ],
            ),
          ),
          if (onRetry != null) TextButton(onPressed: onRetry, child: const Text('Retry')),
        ],
      ),
    );
  }
}
