import 'package:flutter/material.dart';

import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import 'vetting_drafts.dart';

/// A titled group of a [PathDraftForm]: the paths it shows, in order.
typedef PathGroup = ({String title, String? subtitle, List<String> paths});

/// Edits a [PathDraft] in groups and saves it through [save], which writes
/// the document and confirms it by re-reading (see `writeThenConfirm`).
///
/// [keyPrefix] names the field keys: `<keyPrefix>.<path>`.
class PathDraftForm extends StatefulWidget {
  /// Creates the form.
  const PathDraftForm({
    super.key,
    required this.draft,
    required this.groups,
    required this.save,
    required this.reset,
    required this.keyPrefix,
    this.note,
  });

  /// The draft edited.
  final PathDraft draft;

  /// The groups shown.
  final List<PathGroup> groups;

  /// Writes and confirms the draft; throws on a refusal or a mismatch.
  final Future<void> Function(PathDraft draft) save;

  /// A fresh draft of the document as last read, for Reset.
  final PathDraft Function() reset;

  /// The field key prefix.
  final String keyPrefix;

  /// A line above the groups.
  final String? note;

  @override
  State<PathDraftForm> createState() => _PathDraftFormState();
}

class _PathDraftFormState extends State<PathDraftForm> {
  late PathDraft _d = widget.draft;
  // Bumped by Reset and by a re-read, so every field rebuilds from the draft.
  int _generation = 0;
  Map<String, String> _errors = const <String, String>{};
  WriteState _write = const WriteIdle();

  @override
  void didUpdateWidget(PathDraftForm old) {
    super.didUpdateWidget(old);
    // A save re-reads the document: adopt it, keeping the confirmation shown.
    if (canonicalJson(widget.draft.base) != canonicalJson(old.draft.base)) {
      _d = widget.draft;
      _generation++;
    }
  }

  void _changed() {
    if (_write is! WriteIdle) {
      setState(() => _write = const WriteIdle());
    }
  }

  Future<void> _save() async {
    final errors = _d.validate();
    setState(() => _errors = errors);
    if (errors.isNotEmpty) {
      return;
    }
    setState(() => _write = const WriteInProgress());
    try {
      await widget.save(_d);
      if (mounted) {
        setState(() => _write = WriteConfirmed(DateTime.now()));
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() => _write = WriteFailed(e));
      }
    }
  }

  Widget _field(PathField f) {
    final key = Key('${widget.keyPrefix}.${f.path}');
    if (f.kind == PathKind.boolean) {
      return LabeledField(
        label: f.label,
        help: f.help,
        field: Align(
          alignment: Alignment.centerLeft,
          child: Switch(
            key: key,
            value: _d.bools[f.path] ?? false,
            onChanged: (v) => setState(() {
              _d.bools[f.path] = v;
              _changed();
            }),
          ),
        ),
      );
    }
    if (f.kind == PathKind.choice) {
      final value = _d.text[f.path];
      return LabeledField(
        label: f.label,
        help: f.help,
        field: DropdownButtonFormField<String>(
          key: key,
          style: Theme.of(context).textTheme.bodyMedium,
          initialValue: f.options.contains(value) ? value : null,
          hint: f.defaultValue == null ? null : Text('Default ${f.defaultValue}'),
          decoration: InputDecoration(errorText: _errors[f.path]),
          items: <DropdownMenuItem<String>>[
            for (final o in f.options) DropdownMenuItem<String>(value: o, child: Text(o)),
          ],
          onChanged: (v) {
            _d.text[f.path] = v ?? '';
            _changed();
          },
        ),
      );
    }
    final multiline = f.kind == PathKind.json;
    return LabeledField(
      label: f.label,
      help: f.help,
      field: TextFormField(
        key: key,
        initialValue: _d.text[f.path],
        maxLines: multiline ? 5 : 1,
        minLines: multiline ? 2 : 1,
        style: multiline ? const TextStyle(fontFamily: 'monospace', fontSize: 13) : null,
        decoration: InputDecoration(
          hintText: f.defaultValue == null ? null : 'Default ${f.defaultValue}',
          errorText: _errors[f.path],
          errorMaxLines: 3,
        ),
        onChanged: (v) {
          _d.text[f.path] = v;
          _changed();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final byPath = <String, PathField>{for (final f in _d.fields) f.path: f};
    final palette = AdminPalette.of(context);
    return Align(
      alignment: Alignment.topLeft,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 880),
        child: KeyedSubtree(
          key: ValueKey<int>(_generation),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              if (widget.note case final n?) ...<Widget>[
                Text(n, style: TextStyle(color: palette.muted)),
                const SizedBox(height: 12),
              ],
              for (final g in widget.groups) ...<Widget>[
                SectionCard(
                  title: g.title,
                  subtitle: g.subtitle,
                  child: Column(children: <Widget>[for (final p in g.paths) _field(byPath[p]!)]),
                ),
                const SizedBox(height: 16),
              ],
              FormActions(
                busy: _write is WriteInProgress,
                onSave: _save,
                onReset: () => setState(() {
                  _d = widget.reset();
                  _generation++;
                  _errors = const <String, String>{};
                  _write = const WriteIdle();
                }),
                leading: <Widget>[
                  if (_errors.isNotEmpty)
                    Text('Fix the marked fields.', style: TextStyle(color: palette.error))
                  else
                    WriteStatusLine(state: _write),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
