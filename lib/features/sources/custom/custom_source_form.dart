import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../api/api.dart';
import '../../../core/ui/ui.dart';
import 'custom_source_draft.dart';

/// The custom source definition form, for create and edit. [onSave] sends
/// the draft and confirms it (it throws on failure); the form validates
/// first and shows the result.
class CustomSourceForm extends StatefulWidget {
  /// Creates the form over [draft].
  const CustomSourceForm({
    super.key,
    required this.draft,
    required this.onSave,
    this.saveLabel = 'Save Changes',
    this.leading = const <Widget>[],
  });

  /// The draft edited in place.
  final CustomSourceDraft draft;

  /// Sends and confirms the draft.
  final Future<void> Function(CustomSourceDraft draft) onSave;

  /// The Save button text.
  final String saveLabel;

  /// Widgets at the left of the action row (a Delete button).
  final List<Widget> leading;

  @override
  State<CustomSourceForm> createState() => _CustomSourceFormState();
}

class _CustomSourceFormState extends State<CustomSourceForm> {
  Map<String, String> _errors = const <String, String>{};
  WriteState _write = const WriteIdle();

  CustomSourceDraft get _d => widget.draft;

  Future<void> _save() async {
    final errors = _d.validate();
    setState(() => _errors = errors);
    if (errors.isNotEmpty) {
      return;
    }
    setState(() => _write = const WriteInProgress());
    try {
      await widget.onSave(_d);
      if (mounted) {
        setState(() => _write = WriteConfirmed(DateTime.now()));
      }
    } on Object catch (error) {
      if (!mounted) {
        return;
      }
      setState(() {
        _write = WriteFailed(error);
        if (error is ProblemException) {
          _errors = <String, String>{for (final f in error.fieldErrors) f.field: f.message};
        }
      });
    }
  }

  Widget _text(
    String key,
    String value,
    ValueChanged<String> onChanged, {
    String? hint,
    bool numeric = false,
    int maxLines = 1,
    bool enabled = true,
  }) {
    return TextFormField(
      key: Key('custom.$key'),
      initialValue: value,
      enabled: enabled,
      maxLines: maxLines,
      style: maxLines > 1 ? const TextStyle(fontFamily: 'monospace', fontSize: 13) : null,
      inputFormatters: numeric
          ? <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly]
          : null,
      decoration: InputDecoration(hintText: hint, errorText: _errors[key], errorMaxLines: 3),
      onChanged: onChanged,
    );
  }

  Widget _switch(String key, bool value, ValueChanged<bool> onChanged) => Align(
    alignment: Alignment.centerLeft,
    child: Switch(
      key: Key('custom.$key'),
      value: value,
      onChanged: (v) => setState(() => onChanged(v)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        LabeledField(
          label: 'ID',
          help: _d.isNew ? 'custom-…, fixed once created' : 'Fixed',
          field: _text('id', _d.id, (v) => _d.id = v, enabled: _d.isNew),
        ),
        LabeledField(label: 'Name', field: _text('name', _d.name, (v) => _d.name = v)),
        LabeledField(
          label: 'Description',
          field: _text('description', _d.description, (v) => _d.description = v),
        ),
        LabeledField(
          label: 'Kinds',
          help: 'Comma-separated, e.g. sensor-reading',
          field: _text('kinds', _d.kinds, (v) => _d.kinds = v, hint: 'sensor-reading'),
        ),
        LabeledField(
          label: 'Attribution',
          field: _text('attribution', _d.attribution, (v) => _d.attribution = v),
        ),
        LabeledField(
          label: 'Record TTL',
          help: 'How long a record stays current',
          field: _text('recordTtl', _d.recordTtl, (v) => _d.recordTtl = v, hint: '7d'),
        ),
        LabeledField(
          label: 'Requests per minute',
          help: '1–6000, default 60',
          field: _text(
            'rateLimitPerMinute',
            _d.rateLimitPerMinute,
            (v) => _d.rateLimitPerMinute = v,
            numeric: true,
          ),
        ),
        LabeledField(
          label: 'Records per minute',
          help: '1–60000, default 6000',
          field: _text(
            'recordsPerMinute',
            _d.recordsPerMinute,
            (v) => _d.recordsPerMinute = v,
            numeric: true,
          ),
        ),
        LabeledField(
          label: 'Allowed senders',
          help: 'CIDR ranges, comma-separated; empty allows private ranges only',
          field: _text(
            'ingestAllowCidrs',
            _d.allowCidrs,
            (v) => _d.allowCidrs = v,
            hint: '192.168.1.0/24',
          ),
        ),
        LabeledField(
          label: 'Private',
          help: 'Personal data: kept out of anonymous reads and egress',
          field: _switch('private', _d.private, (v) => _d.private = v),
        ),
        LabeledField(
          label: 'Key in the URL path',
          help: 'For senders that cannot set a header',
          field: _switch('allowPathKey', _d.allowPathKey, (v) => _d.allowPathKey = v),
        ),
        LabeledField(
          label: 'Capture samples',
          help: 'Keep the last 5 requests (redacted) for mapping tests; turns off after 1 h',
          field: _switch('captureSamples', _d.captureSamples, (v) => _d.captureSamples = v),
        ),
        LabeledField(
          label: 'Mapping',
          help: 'A RecordMapping (JSON) for the mapping format and device presets',
          field: _text(
            'mapping',
            _d.mapping,
            (v) => _d.mapping = v,
            maxLines: 8,
            hint: '{"version": 1, "externalId": …, "observedAt": …}',
          ),
        ),
        FormActions(
          busy: _write is WriteInProgress,
          saveLabel: widget.saveLabel,
          onSave: _save,
          leading: <Widget>[
            ...widget.leading,
            WriteStatusLine(state: _write),
          ],
        ),
      ],
    );
  }
}
