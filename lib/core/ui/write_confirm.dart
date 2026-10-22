import 'package:flutter/material.dart';

import '../../api/api_errors.dart';
import 'error_banner.dart';
import 'status_chip.dart';

/// The re-read after a write did not show what was written.
class WriteNotConfirmedException implements Exception {
  /// Creates the exception; [detail] says what differed.
  const WriteNotConfirmedException(this.detail);

  /// What differed between the write and the re-read.
  final String detail;

  @override
  String toString() =>
      'The backend accepted the change but reading it back showed otherwise: $detail';
}

/// Writes, then re-reads the resource to confirm the backend holds the change
/// (Architecture §4: optimistic-but-verified). Returns the re-read value.
///
/// [confirm] inspects the re-read value and returns `null` when it matches, or
/// a description of the difference, which is thrown as a
/// [WriteNotConfirmedException]. Backend failures are thrown as
/// [ApiException]s.
Future<T> writeThenConfirm<T>({
  required Future<void> Function() write,
  required Future<T> Function() reread,
  String? Function(T confirmed)? confirm,
}) async {
  try {
    await write();
  } on Object catch (error) {
    throw toApiException(error);
  }
  final T confirmed;
  try {
    confirmed = await reread();
  } on Object catch (error) {
    throw toApiException(error);
  }
  final difference = confirm?.call(confirmed);
  if (difference != null) {
    throw WriteNotConfirmedException(difference);
  }
  return confirmed;
}

/// Where a write-then-confirm stands.
sealed class WriteState {
  const WriteState();
}

/// Nothing written yet (or the form changed since).
class WriteIdle extends WriteState {
  /// Creates the idle state.
  const WriteIdle();
}

/// Writing and re-reading.
class WriteInProgress extends WriteState {
  /// Creates the in-progress state.
  const WriteInProgress();
}

/// Written and confirmed by a re-read at [at].
class WriteConfirmed extends WriteState {
  /// Creates the confirmed state.
  const WriteConfirmed(this.at);

  /// When the re-read confirmed the change.
  final DateTime at;
}

/// The write or its confirmation failed.
class WriteFailed extends WriteState {
  /// Creates the failed state.
  const WriteFailed(this.error);

  /// The failure.
  final Object error;
}

/// A one-line status for a [WriteState]: nothing, a spinner, a "Saved and
/// confirmed" chip, or the failure.
class WriteStatusLine extends StatelessWidget {
  /// Creates the status line.
  const WriteStatusLine({super.key, required this.state});

  /// The state shown.
  final WriteState state;

  @override
  Widget build(BuildContext context) {
    return switch (state) {
      WriteIdle() => const SizedBox.shrink(),
      WriteInProgress() => const Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(width: 14, height: 14, child: CircularProgressIndicator(strokeWidth: 2)),
          SizedBox(width: 8),
          Text('Saving and confirming…'),
        ],
      ),
      WriteConfirmed(:final at) => StatusChip(
        label: 'Saved and confirmed ${_time(at)}',
        tone: StatusTone.ok,
        tooltip: 'The backend was re-read after saving and holds this value.',
      ),
      WriteFailed(:final error) => ErrorBanner(
        error: error,
        title: error is WriteNotConfirmedException ? 'Saved, but not confirmed' : 'Could not save',
      ),
    };
  }

  static String _time(DateTime at) {
    String two(int n) => n.toString().padLeft(2, '0');
    return '${two(at.hour)}:${two(at.minute)}:${two(at.second)}';
  }
}
