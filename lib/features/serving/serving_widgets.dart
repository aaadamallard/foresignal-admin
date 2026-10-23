import 'dart:async';

import 'package:dio/dio.dart' show Response;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_widgets.dart';
import 'serving_drafts.dart';
import 'serving_providers.dart';

/// The tone of a sink state (`Sink.state`, `SinkStatus.state`).
StatusTone sinkStateTone(Object? state) => switch (state) {
  'RUNNING' => StatusTone.ok,
  'RESYNCING' => StatusTone.info,
  'FAILING' => StatusTone.error,
  _ => StatusTone.neutral,
};

// us-english-allow-start: the egress guard's own reason codes
// (`SinkStatus.denied.byReason`).
const Map<String, String> _deniedReasonNames = <String, String>{
  'licence-forbidden': 'license forbids it',
  'licence-local-only': 'license keeps it local',
};
// us-english-allow-end

/// A reason the egress guard refused a record, as people read it; an
/// unknown reason is shown as sent.
String deniedReasonText(String reason) => _deniedReasonNames[reason] ?? (reason == 'private' ? 'private source' : reason);

/// The tone of an export job status.
StatusTone exportStatusTone(Object? status) => switch (status) {
  'DONE' => StatusTone.ok,
  'QUEUED' || 'RUNNING' => StatusTone.info,
  'FAILED' => StatusTone.error,
  'EXPIRED' => StatusTone.warning,
  _ => StatusTone.neutral,
};

/// The tone of a peer's runtime state (`Peer.state`).
StatusTone peerStateTone(Object? state) => switch (state) {
  'streaming' || 'receiving' => StatusTone.ok,
  'connecting' || 'resyncing' => StatusTone.info,
  'failing' => StatusTone.error,
  _ => StatusTone.neutral,
};

/// A whole number from the wire with thousands separators, or `—`.
String countText(Object? n) {
  if (n is! num) {
    return '—';
  }
  final digits = n.round().abs().toString();
  final out = StringBuffer(n < 0 ? '-' : '');
  for (var i = 0; i < digits.length; i++) {
    if (i > 0 && (digits.length - i) % 3 == 0) {
      out.write(',');
    }
    out.write(digits[i]);
  }
  return out.toString();
}

/// A switch on its own line, for a form.
class SwitchField extends StatelessWidget {
  /// Creates the switch.
  const SwitchField({super.key, required this.value, required this.onChanged});

  /// Whether it is on.
  final bool value;

  /// Called with the new value.
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) => Align(
    alignment: Alignment.centerLeft,
    child: Switch(value: value, onChanged: onChanged),
  );
}

/// Monospace [text] with a copy button.
class CopyLine extends StatelessWidget {
  /// Creates the line.
  const CopyLine(this.text, {super.key, this.copyKey});

  /// The text shown and copied.
  final String text;

  /// The copy button's key.
  final Key? copyKey;

  @override
  Widget build(BuildContext context) => Row(
    children: <Widget>[
      Flexible(
        child: SelectableText(text, style: const TextStyle(fontFamily: 'monospace', fontSize: 13)),
      ),
      const SizedBox(width: 6),
      IconButton(
        key: copyKey,
        tooltip: 'Copy',
        visualDensity: VisualDensity.compact,
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(minWidth: 28, minHeight: 28),
        onPressed: () => unawaited(Clipboard.setData(ClipboardData(text: text))),
        icon: const Icon(Icons.copy, size: 18),
      ),
    ],
  );
}

/// The sources, kinds, bounding box and place of a [ScopeDraft], each kept
/// in the draft as it is typed.
class ScopeFields extends StatefulWidget {
  /// Creates the fields for [draft]; [prefix] starts each field's key.
  const ScopeFields({super.key, required this.draft, required this.prefix, this.errors = const {}, this.place = true});

  /// The scope edited.
  final ScopeDraft draft;

  /// The key prefix (`sink.filter`).
  final String prefix;

  /// Problems by field (`bbox`).
  final Map<String, String> errors;

  /// Whether the place field is shown.
  final bool place;

  @override
  State<ScopeFields> createState() => _ScopeFieldsState();
}

class _ScopeFieldsState extends State<ScopeFields> {
  late final TextEditingController _sources = _bound(widget.draft.sources, (v) => widget.draft.sources = v);
  late final TextEditingController _kinds = _bound(widget.draft.kinds, (v) => widget.draft.kinds = v);
  late final TextEditingController _bbox = _bound(widget.draft.bbox, (v) => widget.draft.bbox = v);
  late final TextEditingController _place = _bound(widget.draft.placeId, (v) => widget.draft.placeId = v);

  TextEditingController _bound(String text, void Function(String) set) {
    final c = TextEditingController(text: text);
    c.addListener(() => set(c.text));
    return c;
  }

  @override
  void dispose() {
    _sources.dispose();
    _kinds.dispose();
    _bbox.dispose();
    _place.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      LabeledField(
        label: 'Sources',
        help: 'Source ids, comma-separated; empty for every source.',
        field: PlainField(key: Key('${widget.prefix}.sources'), controller: _sources),
      ),
      LabeledField(
        label: 'Kinds',
        help: 'Record kinds, comma-separated; empty for every kind.',
        field: PlainField(key: Key('${widget.prefix}.kinds'), controller: _kinds),
      ),
      LabeledField(
        label: 'Bounding box',
        help: 'min lon, min lat, max lon, max lat (WGS84); empty for anywhere.',
        field: PlainField(
          key: Key('${widget.prefix}.bbox'),
          controller: _bbox,
          error: widget.errors['bbox'],
        ),
      ),
      if (widget.place)
        LabeledField(
          label: 'Place',
          help: 'A place id whose geometry filters records; empty for none.',
          field: PlainField(key: Key('${widget.prefix}.placeId'), controller: _place),
        ),
    ],
  );
}

/// A Delete card: a danger button, an inline confirm, then [delete] and
/// [gone] to confirm it reads back as deleted, then [after].
class ServingDeleteCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const ServingDeleteCard({
    super.key,
    required this.keyPrefix,
    required this.buttonLabel,
    required this.message,
    required this.delete,
    required this.gone,
    required this.after,
    this.subtitle,
  });

  /// The key prefix (`sink.delete`).
  final String keyPrefix;

  /// The button text ("Delete Sink").
  final String buttonLabel;

  /// The confirm question.
  final String message;

  /// What the deletion takes with it.
  final String? subtitle;

  /// Deletes.
  final Future<void> Function() delete;

  /// Whether a re-read finds it gone.
  final Future<bool> Function() gone;

  /// Called once it is confirmed gone.
  final VoidCallback after;

  @override
  ConsumerState<ServingDeleteCard> createState() => _ServingDeleteCardState();
}

class _ServingDeleteCardState extends ConsumerState<ServingDeleteCard> with WriteTracking<ServingDeleteCard> {
  bool _confirming = false;

  Future<void> _delete() async {
    final ok = await track(() async {
      await widget.delete();
      if (!await widget.gone()) {
        throw const WriteNotConfirmedException('It still reads back.');
      }
      return true;
    });
    if (ok == true && mounted) {
      widget.after();
    }
  }

  @override
  Widget build(BuildContext context) => SectionCard(
    key: Key(widget.keyPrefix),
    title: 'Delete',
    subtitle: widget.subtitle,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        if (_confirming)
          ConfirmRow(
            message: widget.message,
            action: 'Delete',
            confirmKey: Key('${widget.keyPrefix}.confirm'),
            onConfirm: _delete,
            onCancel: () => setState(() => _confirming = false),
          )
        else
          Align(
            alignment: Alignment.centerLeft,
            child: DangerButton(
              key: Key('${widget.keyPrefix}.start'),
              label: widget.buttonLabel,
              onPressed: busy ? null : () => setState(() => _confirming = true),
            ),
          ),
        if (write is WriteFailed) ...<Widget>[const SizedBox(height: 8), statusLine],
      ],
    ),
  );
}

/// Whether [read] fails with a 404, i.e. the thing is gone.
Future<bool> readsAsGone<T>(Future<Response<T>> Function() read) async {
  try {
    await callApi(read);
  } on ProblemException catch (e) {
    if (e.status == 404) {
      return true;
    }
    rethrow;
  } on HttpStatusException catch (e) {
    if (e.status == 404) {
      return true;
    }
    rethrow;
  }
  return false;
}

/// An export's or partition's license sidecar:
/// each license with its sources and rows, the attributions to show, and
/// what was left out.
class LicenseSummaryView extends StatelessWidget {
  /// Creates the view of [summary].
  const LicenseSummaryView({super.key, required this.summary});

  /// The summary as read.
  final Json summary;

  @override
  Widget build(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    final licenses = jsonList(summary, licensesMember);
    final attributions = jsonList(summary, 'attributions');
    final excluded = jsonList(summary, 'excluded');
    final personal = <Object?>[...?summary['personalUseSources'] as List<Object?>?];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        if (summary['personalUseOnly'] == true) ...<Widget>[
          ResultPanel(
            title: 'Personal use only',
            tone: StatusTone.warning,
            message: personal.isEmpty
                ? 'Do not redistribute.'
                : 'Do not redistribute. Included only for personal use: ${personal.join(', ')}.',
          ),
          const SizedBox(height: 8),
        ],
        for (final l in licenses)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: Text(_licenseLine(l)),
          ),
        if (licenses.isEmpty) Text('No licenses listed.', style: TextStyle(color: muted)),
        if (attributions.isNotEmpty) ...<Widget>[
          const SizedBox(height: 10),
          Text('Attribution', style: Theme.of(context).textTheme.labelLarge),
          for (final a in attributions)
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Text(
                '${a['text']}${a['requiredDisplay'] == true ? ' (must be shown)' : ''}',
                style: TextStyle(color: muted),
              ),
            ),
        ],
        if (excluded.isNotEmpty) ...<Widget>[
          const SizedBox(height: 10),
          Text('Left out', style: Theme.of(context).textTheme.labelLarge),
          for (final e in excluded)
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Text(
                e['sourceId'] == null
                    ? <String>[for (final v in e.values) '$v'].join(' · ')
                    : '${e['sourceId']}${e['reason'] == null ? '' : ': ${deniedReasonText('${e['reason']}')}'}',
                style: TextStyle(color: muted),
              ),
            ),
        ],
      ],
    );
  }

  static String _licenseLine(Json l) {
    final terms = jsonMap(l, 'terms');
    final name = terms?['name'] ?? terms?['id'] ?? l['id'] ?? l[licenseMember] ?? 'License';
    final sources = l['sources'] is List ? (l['sources'] as List).join(', ') : null;
    return <String>[
      '$name',
      ?sources,
      if (l['rows'] != null) '${countText(l['rows'])} rows',
    ].join(' · ');
  }
}
