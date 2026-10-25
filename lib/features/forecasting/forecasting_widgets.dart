import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../sources/source_test_results.dart';

/// A number with [digits] decimals, or `—`.
String fixed(Object? n, [int digits = 3]) => n is num ? n.toStringAsFixed(digits) : '—';

/// A share 0–1 as a whole percentage, or `—`.
String pct(Object? n) => n is num ? '${(n * 100).round()}%' : '—';

/// An ISO instant from a wire object as UTC text, or `—`.
String whenText(Object? iso) {
  final t = iso is String ? DateTime.tryParse(iso) : null;
  return t == null ? '—' : utcText(t);
}

/// A forecaster type (wire name) as text: `llm` is "LLM".
String forecasterTypeText(Object? wire) => switch (wire) {
  'llm' => 'LLM',
  'indicator-bayes' => 'Indicator (Bayes)',
  null => '—',
  _ => wireText('$wire'),
};

/// A caveat (`Caveat`: code and text) or a plain note, as text.
String caveatText(Object? c) => c is Map ? '${c['text'] ?? c['code']}' : '$c';

/// The tone of a forecaster, question, provider, binding or evaluation state.
StatusTone forecastingTone(String? wire) => switch (wire) {
  'active' || 'ok' || 'done' || 'resolved' || 'open' || 'same' => StatusTone.ok,
  'failed' || 'error' || 'suspended' || 'annulled' => StatusTone.error,
  'pending' || 'queued' || 'running' || 'backfilling' || 'insufficient' => StatusTone.warning,
  'closed' || 'disabled' => StatusTone.neutral,
  // us-english-allow-start: ForecastEvaluation.status wire value
  'cancelled' => StatusTone.neutral,
  // us-english-allow-end
  _ => StatusTone.neutral,
};

/// The words for a wire state, in US English even where the wire value is
/// not.
String stateText(Object? wire) => switch (wire) {
  null => '—',
  // us-english-allow-start: ForecastEvaluation.status wire value
  'cancelled' => 'Canceled',
  // us-english-allow-end
  _ => wireText('$wire'),
};

/// A wire state as a [StatusLabel].
Widget stateLabel(Object? wire, {Key? key, String? tooltip}) => StatusLabel(
  key: key,
  label: stateText(wire),
  tone: forecastingTone(wire as String?),
  tooltip: tooltip,
);

/// A multi-line monospace field for a JSON document, with its problem.
class JsonField extends StatelessWidget {
  /// Creates the field.
  const JsonField({
    super.key,
    required this.controller,
    this.error,
    this.hint,
    this.minLines = 4,
    this.maxLines = 16,
  });

  /// The text.
  final TextEditingController controller;

  /// The problem shown under it.
  final String? error;

  /// Shown when empty.
  final String? hint;

  /// The fewest lines shown.
  final int minLines;

  /// The most lines shown before it scrolls.
  final int maxLines;

  @override
  Widget build(BuildContext context) => TextField(
    controller: controller,
    minLines: minLines,
    maxLines: maxLines,
    style: const TextStyle(fontFamily: 'monospace', fontSize: 13),
    decoration: InputDecoration(hintText: hint, errorText: error, isDense: true),
  );
}

/// A one-line text field with its problem.
class PlainField extends StatelessWidget {
  /// Creates the field.
  const PlainField({
    super.key,
    required this.controller,
    this.error,
    this.hint,
    this.onSubmitted,
    this.maxLines = 1,
  });

  /// The text.
  final TextEditingController controller;

  /// The problem shown under it.
  final String? error;

  /// Shown when empty.
  final String? hint;

  /// Called on Enter.
  final ValueChanged<String>? onSubmitted;

  /// The most lines shown; more than one makes it grow with its text.
  final int maxLines;

  @override
  Widget build(BuildContext context) => TextField(
    controller: controller,
    onSubmitted: onSubmitted,
    minLines: 1,
    maxLines: maxLines,
    decoration: InputDecoration(hintText: hint, errorText: error, isDense: true),
  );
}

/// A dropdown of wire names, shown as text.
class WireDropdown extends StatelessWidget {
  /// Creates the dropdown.
  const WireDropdown({
    super.key,
    required this.value,
    required this.values,
    required this.onChanged,
    this.labels,
    this.error,
    this.hint,
  });

  /// The selected wire name; `null` for none.
  final String? value;

  /// The choices, by wire name.
  final List<String> values;

  /// Called with the new wire name.
  final ValueChanged<String> onChanged;

  /// Display text by wire name; [wireText] otherwise.
  final Map<String, String>? labels;

  /// The problem shown under it.
  final String? error;

  /// Shown when nothing is chosen.
  final String? hint;

  @override
  Widget build(BuildContext context) => DropdownButtonFormField<String>(
    initialValue: value == null || value!.isEmpty ? null : value,
    isExpanded: true,
    style: Theme.of(context).textTheme.bodyMedium,
    hint: hint == null ? null : Text(hint!),
    decoration: InputDecoration(isDense: true, errorText: error),
    items: withCurrentItem(<DropdownMenuItem<String>>[
      for (final v in values)
        DropdownMenuItem<String>(value: v, child: Text(labels?[v] ?? wireText(v))),
    ], value == null || value!.isEmpty ? null : value),
    onChanged: (v) {
      if (v != null) {
        onChanged(v);
      }
    },
  );
}

/// An inline "are you sure" row: [message], a danger [action] and Cancel.
class ConfirmRow extends StatelessWidget {
  /// Creates the row.
  const ConfirmRow({
    super.key,
    required this.message,
    required this.action,
    required this.onConfirm,
    required this.onCancel,
    this.confirmKey,
  });

  /// What will happen.
  final String message;

  /// The danger button's label.
  final String action;

  /// Does it.
  final VoidCallback onConfirm;

  /// Does not.
  final VoidCallback onCancel;

  /// The danger button's key.
  final Key? confirmKey;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: 8),
    child: Row(
      children: <Widget>[
        Expanded(child: Text(message)),
        DangerButton(key: confirmKey, label: action, onPressed: onConfirm),
        const SizedBox(width: 8),
        TextButton(onPressed: onCancel, child: const Text('Cancel')),
      ],
    ),
  );
}

/// A muted footnote.
class Footnote extends StatelessWidget {
  /// Creates the note.
  const Footnote(this.text, {super.key});

  /// The note.
  final String text;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(top: 8),
    child: Text(text, style: TextStyle(color: AdminPalette.of(context).muted, fontSize: 12)),
  );
}

/// Tracks one write in a [WriteState] and shows it with [WriteStatusLine].
mixin WriteTracking<T extends ConsumerStatefulWidget> on ConsumerState<T> {
  /// The last write's state.
  WriteState write = const WriteIdle();

  /// Whether a write is running.
  bool get busy => write is WriteInProgress;

  /// Runs [action], recording progress, confirmation or failure; returns its
  /// result, or `null` when it failed.
  Future<R?> track<R>(Future<R> Function() action) async {
    setState(() => write = const WriteInProgress());
    try {
      final result = await action();
      if (mounted) {
        setState(() => write = WriteConfirmed(DateTime.now()));
      }
      return result;
    } on Object catch (e) {
      if (mounted) {
        setState(() => write = WriteFailed(e));
      }
      return null;
    }
  }

  /// The status line, left-aligned.
  Widget get statusLine => Align(alignment: Alignment.topLeft, child: WriteStatusLine(state: write));

  /// The problem code of a failed write, or `null`.
  String? get failedCode => switch (write) {
    WriteFailed(error: ProblemException(:final code)) => code,
    _ => null,
  };
}
