import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_widgets.dart';
import '../serving/serving_widgets.dart' show SwitchField;
import 'system_drafts.dart';
import 'system_providers.dart';

/// The tone of a `SettingsWarning` or system warning [severity].
StatusTone warningTone(Object? severity) => switch (severity) {
  'critical' => StatusTone.error,
  'info' => StatusTone.info,
  _ => StatusTone.warning,
};

/// The backend's warnings about a settings object, one panel each, or
/// nothing when there are none.
class SettingsWarnings extends StatelessWidget {
  /// Creates the list for [warnings] (`SettingsWarning`s).
  const SettingsWarnings({super.key, required this.warnings});

  /// The warnings as read.
  final Object? warnings;

  @override
  Widget build(BuildContext context) {
    final list = <Json>[
      if (warnings is List)
        for (final w in warnings! as List)
          if (w is Map) w.cast<String, Object?>(),
    ];
    if (list.isEmpty) {
      return const SizedBox.shrink();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        for (final w in list)
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ResultPanel(
              key: Key('warning.${w['code']}'),
              title: wireText('${w['code']}'),
              tone: warningTone(w['severity']),
              message: '${w['message'] ?? ''}',
            ),
          ),
      ],
    );
  }
}

/// Any of [values] as filter chips.
class ChoiceChips extends StatelessWidget {
  /// Creates the chips.
  const ChoiceChips({
    super.key,
    required this.values,
    required this.selected,
    required this.onChanged,
    this.labels,
    this.error,
    this.keyPrefix,
  });

  /// Every value.
  final List<String> values;

  /// The chosen values.
  final List<String> selected;

  /// Called with the chosen values, in [values] order.
  final ValueChanged<List<String>> onChanged;

  /// Display names of [values].
  final Map<String, String>? labels;

  /// The problem shown under them.
  final String? error;

  /// Starts each chip's key, followed by `.` and its value.
  final String? keyPrefix;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Wrap(
        spacing: 8,
        runSpacing: 8,
        children: <Widget>[
          for (final v in values)
            FilterChip(
              key: keyPrefix == null ? null : Key('$keyPrefix.$v'),
              label: Text(labels?[v] ?? v),
              selected: selected.contains(v),
              onSelected: (on) => onChanged(<String>[
                for (final x in values)
                  if (x == v ? on : selected.contains(x)) x,
              ]),
            ),
        ],
      ),
      if (error case final e?)
        Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Text(e, style: TextStyle(color: AdminPalette.of(context).error, fontSize: 12)),
        ),
    ],
  );
}

/// A settings resource in a card: read with GET, edited through its
/// group's fields, replaced with PUT, and confirmed by reading it back.
class SettingsGroupCard extends ConsumerWidget {
  /// Creates the card for [group].
  const SettingsGroupCard({super.key, required this.group});

  /// The resource and its fields.
  final SettingsGroup group;

  @override
  Widget build(BuildContext context, WidgetRef ref) => SectionCard(
    key: Key('settings.${group.id}'),
    title: group.title,
    subtitle: group.subtitle,
    child: AsyncView<Json>(
      value: ref.watch(settingsResourceProvider(group.path)),
      onRetry: () => ref.invalidate(settingsResourceProvider(group.path)),
      data: (stored) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (group.readOnly.contains('warnings')) SettingsWarnings(warnings: stored['warnings']),
          FieldsForm(
            key: ValueKey<String>('form.${group.id}'),
            idPrefix: group.id,
            fields: group.fields,
            stored: stored,
            readOnly: group.readOnly,
            check: group.check,
            save: (body) async {
              final dio = ref.read(backendDioProvider);
              final confirmed = await writeThenConfirm<Json>(
                write: () => jsonCall(dio, 'PUT', group.path, body: body),
                reread: () => jsonObjectCall(dio, 'GET', group.path),
                confirm: (read) => sentDifference(body, read),
              );
              ref.invalidate(settingsResourceProvider(group.path));
              return confirmed;
            },
          ),
        ],
      ),
    ),
  );
}

/// Edits [fields] of the JSON object [stored]. Saving builds the object to
/// send (unedited members kept as read, [readOnly] ones dropped), checks it,
/// and hands it to [save], which writes and confirms it and returns the
/// object as now stored.
class FieldsForm extends ConsumerStatefulWidget {
  /// Creates the form.
  const FieldsForm({
    super.key,
    required this.idPrefix,
    required this.fields,
    required this.stored,
    required this.save,
    this.readOnly = const <String>{},
    this.check,
    this.saveLabel = 'Save Changes',
    this.onCancel,
  });

  /// Starts each field's key: `<idPrefix>.<path>`.
  final String idPrefix;

  /// The fields edited.
  final List<SettingField> fields;

  /// The object as read.
  final Json stored;

  /// Writes and confirms the object; returns it as stored.
  final Future<Json> Function(Json body) save;

  /// Members dropped before sending.
  final Set<String> readOnly;

  /// Problems across fields, by path, for the object about to be sent.
  final Map<String, String> Function(Json body)? check;

  /// The Save button text.
  final String saveLabel;

  /// Closes the form; shown as Cancel in place of Reset when given.
  final VoidCallback? onCancel;

  @override
  ConsumerState<FieldsForm> createState() => _FieldsFormState();
}

class _FieldsFormState extends ConsumerState<FieldsForm> with WriteTracking<FieldsForm> {
  late Json _stored = widget.stored;
  final Map<String, TextEditingController> _c = <String, TextEditingController>{};
  final Map<String, Object?> _picks = <String, Object?>{};
  Map<String, String> _errors = const <String, String>{};

  List<SettingField> get _fields => widget.fields;

  @override
  void initState() {
    super.initState();
    _load();
  }

  void _load() {
    for (final f in _fields) {
      if (f.isText) {
        _c.putIfAbsent(f.path, TextEditingController.new).text = settingText(f, _stored);
      } else {
        _picks[f.path] = settingPick(f, _stored);
      }
    }
  }

  @override
  void dispose() {
    for (final c in _c.values) {
      c.dispose();
    }
    super.dispose();
  }

  Map<String, String> get _texts => <String, String>{for (final e in _c.entries) e.key: e.value.text};

  Future<void> _save() async {
    final problems = settingsProblems(_fields, _texts, _picks);
    final body = problems.isEmpty ? settingsBody(_stored, _fields, _texts, _picks, readOnly: widget.readOnly) : null;
    if (body != null) {
      problems.addAll(widget.check?.call(body) ?? const <String, String>{});
    }
    setState(() => _errors = problems);
    if (body == null || problems.isNotEmpty) {
      return;
    }
    final confirmed = await track(() => widget.save(body));
    if (confirmed != null && mounted) {
      setState(() {
        _stored = confirmed;
        _load();
      });
    } else if (write case WriteFailed(error: ProblemException(:final fieldErrors)) when fieldErrors.isNotEmpty) {
      setState(() => _errors = <String, String>{for (final f in fieldErrors) f.field: f.message});
    }
  }

  Widget _field(SettingField f) {
    final id = '${widget.idPrefix}.${f.path}';
    final key = Key(id);
    final error = _errors[f.path];
    final Widget field = switch (f.kind) {
      SettingKind.toggle => SwitchField(
        key: key,
        value: _picks[f.path] == true,
        onChanged: (v) => setState(() => _picks[f.path] = v),
      ),
      SettingKind.choice => WireDropdown(
        key: key,
        value: f.nullable ? (_picks[f.path] as String? ?? '') : _picks[f.path] as String?,
        values: <String>[if (f.nullable) '', ...f.values],
        labels: <String, String>{if (f.nullable) '': 'None', ...?f.labels},
        error: error,
        onChanged: (v) => setState(() => _picks[f.path] = v.isEmpty ? null : v),
      ),
      SettingKind.choices => ChoiceChips(
        key: key,
        keyPrefix: id,
        values: f.values,
        labels: f.labels,
        selected: <String>[...?(_picks[f.path] as List<String>?)],
        error: error,
        onChanged: (v) => setState(() => _picks[f.path] = v),
      ),
      SettingKind.lines || SettingKind.keyValues => PlainField(
        key: key,
        controller: _c[f.path]!,
        error: error,
        hint: f.hint,
        maxLines: 8,
      ),
      SettingKind.json => JsonField(key: key, controller: _c[f.path]!, error: error, hint: f.hint, minLines: 3, maxLines: 10),
      _ => PlainField(key: key, controller: _c[f.path]!, error: error, hint: f.hint),
    };
    return LabeledField(label: f.label, help: f.help, field: field);
  }

  @override
  Widget build(BuildContext context) {
    final known = <String>{for (final f in _fields) f.path};
    final other = _errors.entries.where((e) => !known.contains(e.key)).toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        for (final f in _fields) _field(f),
        if (other.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              other.map((e) => '${e.key}: ${e.value}').join('\n'),
              key: Key('${widget.idPrefix}.problems'),
              style: TextStyle(color: AdminPalette.of(context).error),
            ),
          ),
        FormActions(
          key: Key('${widget.idPrefix}.actions'),
          busy: busy,
          saveLabel: widget.saveLabel,
          onSave: _save,
          onReset: widget.onCancel == null
              ? () => setState(() {
                  _errors = const <String, String>{};
                  _load();
                })
              : null,
          leading: <Widget>[
            if (widget.onCancel case final cancel?)
              TextButton(key: Key('${widget.idPrefix}.cancel'), onPressed: busy ? null : cancel, child: const Text('Cancel')),
            statusLine,
          ],
        ),
      ],
    );
  }
}
