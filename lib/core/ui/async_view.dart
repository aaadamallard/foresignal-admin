import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'error_banner.dart';

/// Renders an [AsyncValue]: a progress indicator while loading, an
/// [ErrorBanner] (with Retry) on failure, and [data] once loaded. A refresh
/// keeps the previous data on screen; a refresh that fails says so above it,
/// so stale data never passes for a successful reload.
class AsyncView<T> extends StatelessWidget {
  /// Creates the view.
  const AsyncView({super.key, required this.value, required this.data, this.onRetry});

  /// The async state.
  final AsyncValue<T> value;

  /// Builds the loaded state.
  final Widget Function(T value) data;

  /// Called by the error banner's Retry button.
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    // Kept through Riverpod's automatic retries (loading, with the error and
    // the earlier value still attached) until a load succeeds.
    if (value.hasValue && value.hasError) {
      final banner = ErrorBanner(
        key: const Key('asyncView.refreshFailed'),
        title: 'Refresh failed; showing what was loaded before',
        error: value.error!,
        onRetry: onRetry,
      );
      final loaded = data(value.requireValue);
      // [data] may fill a bounded height (a list in an Expanded) or size
      // itself inside a scroll view; keep both working under the banner.
      return LayoutBuilder(
        builder: (context, constraints) => Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: constraints.hasBoundedWidth ? CrossAxisAlignment.stretch : CrossAxisAlignment.start,
          children: <Widget>[
            banner,
            const SizedBox(height: 12),
            if (constraints.hasBoundedHeight) Flexible(child: loaded) else loaded,
          ],
        ),
      );
    }
    if (value.hasValue) {
      return data(value.requireValue);
    }
    if (value.hasError) {
      return ErrorBanner(error: value.error!, onRetry: onRetry);
    }
    return const Padding(
      padding: EdgeInsets.all(24),
      child: Center(child: CircularProgressIndicator()),
    );
  }
}
