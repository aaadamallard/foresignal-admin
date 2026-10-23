import 'package:built_value/serializer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../sources/source_test_results.dart';
import 'analysis_drafts.dart';
import 'analysis_providers.dart';
import 'analysis_screen.dart';

/// One intelligence event: what the engine inferred and why, its members,
/// the operator's edits (`updateIntelEvent`, optimistic on `version`),
/// adding and removing members, merging, and the change log.
class EventScreen extends ConsumerWidget {
  /// Creates the page for [eventId].
  const EventScreen({super.key, required this.eventId});

  /// The event shown.
  final String eventId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        AsyncView<IntelligenceEvent>(
          value: ref.watch(intelEventProvider(eventId)),
          onRetry: () => ref.invalidate(intelEventProvider(eventId)),
          data: (e) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              PageHeader(
                title: e.title,
                crumbs: <Crumb>[const Crumb('Analysis', analysisPath), Crumb(e.title)],
                subtitle: '${wireLabel(e.type)} · ${wireLabel(e.origin)} · version ${e.version}',
                titleTrailing: <Widget>[
                  StatusLabel(
                    key: const Key('event.status'),
                    label: wireLabel(e.status),
                    tone: statusTone(wireOf(e.status)),
                  ),
                  const SizedBox(width: 8),
                  StatusLabel(
                    label:
                        '${wireLabel(e.severity)}${e.severityOverridden == true ? ' (set by hand)' : ''}',
                    tone: severityTone(e.severity),
                  ),
                ],
              ),
              if (e.mergedInto case final into?) ...<Widget>[
                ResultPanel(
                  title: 'Merged',
                  tone: StatusTone.info,
                  message: 'This event was merged into another.',
                  child: TextButton(
                    key: const Key('event.mergedInto'),
                    onPressed: () => context.go(analysisEventPath(into)),
                    child: Text('Open $into'),
                  ),
                ),
                const SizedBox(height: 16),
              ],
              Align(
                alignment: Alignment.topLeft,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1000),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      EventSummaryCard(event: e),
                      const SizedBox(height: 16),
                      EventEditCard(key: ValueKey<String>('edit.${e.id}'), event: e),
                      const SizedBox(height: 16),
                      EventMembersCard(key: ValueKey<String>('members.${e.version}'), event: e),
                      const SizedBox(height: 16),
                      EventMergeCard(event: e),
                      if (e.log case final log? when log.isNotEmpty) ...<Widget>[
                        const SizedBox(height: 16),
                        SectionCard(
                          title: 'Change log',
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              for (final l in log.toList().reversed)
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 3),
                                  child: Text(
                                    '${utcText(l.at)}  ${wireLabel(l.action)} by ${l.actor}',
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/// What the engine inferred, how confident it is, and the speculation it
/// labels as such.
class EventSummaryCard extends StatelessWidget {
  /// Creates the card.
  const EventSummaryCard({super.key, required this.event});

  /// The event.
  final IntelligenceEvent event;

  @override
  Widget build(BuildContext context) {
    final e = event;
    final i = e.inference;
    final s = e.speculation;
    final muted = AdminPalette.of(context).muted;
    return SectionCard(
      key: const Key('event.summary'),
      title: 'Inference',
      subtitle: i.explanation,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          KeyValueList(
            entries: <MapEntry<String, Object>>[
              MapEntry<String, Object>(
                'Confidence',
                '${percent(i.confidence)} · ${wireLabel(i.confidenceLabel)}'
                    '${i.calibrated ? ' · calibrated' : ' · raw, not yet calibrated'}'
                    '${i.rawConfidence == null || i.calibrated == false ? '' : ' (raw ${percent(i.rawConfidence)})'}',
              ),
              MapEntry<String, Object>('Method', i.confidenceMethod),
              MapEntry<String, Object>(
                'Evidence',
                '${wireLabel(i.evidenceQuality)} · ${e.evidence.memberCount} members'
                    '${e.evidence.signalFamilies == null ? '' : ' · families ${e.evidence.signalFamilies!.join(', ')}'}',
              ),
              MapEntry<String, Object>(
                'Time',
                '${utcText(i.startTime)} – ${i.endTime == null ? 'ongoing' : utcText(i.endTime)}',
              ),
              if (i.lastEvidenceAt != null)
                MapEntry<String, Object>('Last evidence', utcText(i.lastEvidenceAt)),
              if (i.regionTags case final r? when r.isNotEmpty)
                MapEntry<String, Object>('Regions', r.join(', ')),
              MapEntry<String, Object>(
                'Detector',
                e.recipeId == null || e.recipeId == e.detector.name
                    ? '${e.recipeId == null ? '' : 'Recipe '}${e.detector.name} version '
                          '${e.recipeVersion ?? e.detector.version}'
                    : '${e.detector.name} ${e.detector.version} · recipe ${e.recipeId} '
                          'version ${e.recipeVersion ?? '?'}',
              ),
              if (e.notes case final n? when n.isNotEmpty) MapEntry<String, Object>('Notes', n),
            ],
          ),
          if (s.narrative != null || s.alternatives.isNotEmpty) ...<Widget>[
            const Divider(height: 24),
            Text(
              'Speculation${s.narrativeOrigin == null ? '' : ' · written by an LLM'}',
              style: TextStyle(color: muted, fontSize: 12, fontWeight: FontWeight.w600),
            ),
            if (s.narrative case final n?) ...<Widget>[const SizedBox(height: 4), Text(n)],
            for (final a in s.alternatives)
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text('Alternative: ${a.hypothesis} — ${a.basis}'),
              ),
          ],
        ],
      ),
    );
  }
}

/// The severity choice that clears an override (sent as `severity: null`).
const String _computedSeverity = 'computed';

/// Edits the title, status, severity and notes. Only changed members are
/// sent, with the version last read as `If-Match`; a stale version is
/// refused (409) and the page offers a reload. An overridden severity can be
/// cleared back to the computed one.
class EventEditCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const EventEditCard({super.key, required this.event});

  /// The event as last read.
  final IntelligenceEvent event;

  @override
  ConsumerState<EventEditCard> createState() => _EventEditCardState();
}

class _EventEditCardState extends ConsumerState<EventEditCard> {
  late final TextEditingController _title = TextEditingController(text: widget.event.title);
  late final TextEditingController _notes = TextEditingController(text: widget.event.notes ?? '');
  late String _status = wireOf(widget.event.status);
  late String _severity = wireOf(widget.event.severity);
  WriteState _write = const WriteIdle();
  String? _problem;

  @override
  void dispose() {
    _title.dispose();
    _notes.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(EventEditCard old) {
    super.didUpdateWidget(old);
    // A save re-reads the event: take its values, keeping the confirmation.
    if (widget.event.version != old.event.version) {
      _title.text = widget.event.title;
      _notes.text = widget.event.notes ?? '';
      _status = wireOf(widget.event.status);
      _severity = wireOf(widget.event.severity);
    }
  }

  /// The members that differ from the event as read.
  Map<String, Object?> _patch() {
    final e = widget.event;
    return <String, Object?>{
      if (_title.text.trim() != e.title) 'title': _title.text.trim(),
      if (_status != wireOf(e.status)) 'status': _status,
      if (_severity == _computedSeverity && e.severityOverridden == true)
        'severity': null
      else if (_severity != _computedSeverity && _severity != wireOf(e.severity))
        'severity': _severity,
      if (_notes.text != (e.notes ?? '')) 'notes': _notes.text,
    };
  }

  Future<void> _save() async {
    final patch = _patch();
    final title = _title.text.trim();
    if (title.isEmpty || title.length > 200) {
      setState(() => _problem = 'A title of 1 to 200 characters.');
      return;
    }
    if (patch.isEmpty) {
      setState(() => _problem = 'Nothing has changed.');
      return;
    }
    setState(() {
      _problem = null;
      _write = const WriteInProgress();
    });
    final api = ref.read(foresignalApiProvider);
    final intel = api.getIntelligenceApi();
    final id = widget.event.id;
    // A null member clears a value; the generated serializer would leave it out.
    final nulls = <String>[
      for (final entry in patch.entries)
        if (entry.value == null) entry.key,
    ];
    try {
      await writeThenConfirm<IntelligenceEvent>(
        write: () => intel.updateIntelEvent(
          eventId: id,
          ifMatch: '${widget.event.version}',
          intelEventPatch:
              api.serializers.deserialize(
                    <String, Object?>{
                      for (final entry in patch.entries)
                        if (entry.value != null) entry.key: entry.value,
                    },
                    specifiedType: const FullType(IntelEventPatch),
                  )!
                  as IntelEventPatch,
          extra: nulls.isEmpty ? null : explicitNulls(nulls),
        ),
        reread: () => callApiRequired(() => intel.getIntelEvent(eventId: id)),
        confirm: (got) => <String>[
          if (patch.containsKey('title') && got.title != patch['title']) 'title',
          if (patch.containsKey('status') && wireOf(got.status) != patch['status']) 'status',
          if (patch.containsKey('severity') &&
              (patch['severity'] == null
                  ? got.severityOverridden == true
                  : wireOf(got.severity) != patch['severity']))
            'severity',
          if (patch.containsKey('notes') && (got.notes ?? '') != patch['notes']) 'notes',
        ].let((d) => d.isEmpty ? null : 'read back different: ${d.join(', ')}'),
      );
      if (mounted) {
        setState(() => _write = WriteConfirmed(DateTime.now()));
        ref.invalidate(intelEventProvider(id));
        ref.invalidate(intelEventsProvider);
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() => _write = WriteFailed(e));
      }
    }
  }

  bool get _conflict => switch (_write) {
    WriteFailed(error: ProblemException(code: 'EVENT_VERSION_CONFLICT')) => true,
    _ => false,
  };

  @override
  Widget build(BuildContext context) {
    final palette = AdminPalette.of(context);
    void changed() {
      if (_write is! WriteIdle || _problem != null) {
        setState(() {
          _write = const WriteIdle();
          _problem = null;
        });
      }
    }

    return SectionCard(
      key: const Key('event.edit'),
      title: 'Edit',
      subtitle:
          'Saved against version ${widget.event.version}; if someone else changed the event '
          'first, the save is refused and nothing is lost here.',
      child: Column(
        children: <Widget>[
          LabeledField(
            label: 'Title',
            field: TextField(
              key: const Key('event.title'),
              controller: _title,
              onChanged: (_) => changed(),
            ),
          ),
          LabeledField(
            label: 'Status',
            help: 'Only an operator or agent may dismiss.',
            field: DropdownButtonFormField<String>(
              key: const Key('event.statusField'),
              style: Theme.of(context).textTheme.bodyMedium,
              initialValue: _status,
              items: <DropdownMenuItem<String>>[
                for (final s in const <String>['emerging', 'active', 'resolved', 'dismissed'])
                  DropdownMenuItem<String>(value: s, child: Text(wireText(s))),
              ],
              onChanged: (v) {
                _status = v ?? _status;
                changed();
              },
            ),
          ),
          LabeledField(
            label: 'Severity',
            help: widget.event.severityOverridden == true
                ? 'Overridden; the override is in the log. Computed clears it and restores '
                      'the severity it replaced.'
                : 'Setting it records an override in the log.',
            field: DropdownButtonFormField<String>(
              key: const Key('event.severityField'),
              style: Theme.of(context).textTheme.bodyMedium,
              initialValue: _severity,
              items: <DropdownMenuItem<String>>[
                for (final s in const <String>['info', 'warning', 'critical'])
                  DropdownMenuItem<String>(value: s, child: Text(wireText(s))),
                if (widget.event.severityOverridden == true)
                  const DropdownMenuItem<String>(
                    key: Key('event.severity.computed'),
                    value: _computedSeverity,
                    child: Text('Computed (clear override)'),
                  ),
              ],
              onChanged: (v) {
                _severity = v ?? _severity;
                changed();
              },
            ),
          ),
          LabeledField(
            label: 'Notes',
            field: TextField(
              key: const Key('event.notes'),
              controller: _notes,
              maxLines: 3,
              onChanged: (_) => changed(),
            ),
          ),
          FormActions(
            busy: _write is WriteInProgress,
            onSave: _save,
            leading: <Widget>[
              if (_problem case final p?)
                Text(p, style: TextStyle(color: palette.error))
              else if (_conflict)
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Changed by someone else since it was opened.',
                      style: TextStyle(color: palette.error),
                    ),
                    TextButton(
                      key: const Key('event.reload'),
                      onPressed: () => ref.invalidate(intelEventProvider(widget.event.id)),
                      child: const Text('Reload'),
                    ),
                  ],
                )
              else
                WriteStatusLine(state: _write),
            ],
          ),
        ],
      ),
    );
  }
}

extension<T> on T {
  R let<R>(R Function(T) f) => f(this);
}

/// The event's members, with remove, and a form adding one.
class EventMembersCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const EventMembersCard({super.key, required this.event});

  /// The event.
  final IntelligenceEvent event;

  @override
  ConsumerState<EventMembersCard> createState() => _EventMembersCardState();
}

class _EventMembersCardState extends ConsumerState<EventMembersCard> {
  String? _confirmRemove;
  String? _removing;
  Object? _removeError;
  bool _adding = false;
  String _type = 'record';
  String _role = 'supporting';
  final Map<String, TextEditingController> _text = <String, TextEditingController>{
    for (final k in const <String>[
      'sourceId',
      'externalId',
      'seq',
      'alertId',
      'anomalyId',
      'eventId',
      'signalFamily',
    ])
      k: TextEditingController(),
  };
  String? _problem;
  WriteState _add = const WriteIdle();

  @override
  void dispose() {
    for (final c in _text.values) {
      c.dispose();
    }
    super.dispose();
  }

  String _t(String key) => _text[key]!.text.trim();

  Future<void> _remove(IntelEventMember m) async {
    final id = widget.event.id;
    final intel = ref.read(foresignalApiProvider).getIntelligenceApi();
    setState(() {
      _confirmRemove = null;
      _removing = m.id;
      _removeError = null;
    });
    try {
      await writeThenConfirm<IntelligenceEvent>(
        write: () => intel.removeIntelEventMember(eventId: id, memberId: m.id),
        reread: () => callApiRequired(() => intel.getIntelEvent(eventId: id)),
        confirm: (got) =>
            got.evidence.members.any((x) => x.id == m.id) ? 'the member is still listed' : null,
      );
      if (mounted) {
        ref.invalidate(intelEventProvider(id));
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() {
          _removing = null;
          _removeError = e;
        });
      }
    }
  }

  Future<void> _addMember() async {
    final body = <String, Object?>{
      'memberType': _type,
      'role': _role,
      if (_t('signalFamily').isNotEmpty) 'signalFamily': _t('signalFamily'),
    };
    String? problem;
    switch (_type) {
      case 'record':
        final seq = int.tryParse(_t('seq'));
        if (_t('sourceId').isEmpty || _t('externalId').isEmpty || seq == null) {
          problem = 'A record needs its source, external id and sequence number.';
        }
        body
          ..['sourceId'] = _t('sourceId')
          ..['externalId'] = _t('externalId')
          ..['seq'] = seq;
      case 'alert' || 'anomaly':
        final n = int.tryParse(_t('${_type}Id'));
        if (n == null) {
          problem = 'The $_type id, a number.';
        }
        body['${_type}Id'] = n;
      case 'event':
        if (_t('eventId').isEmpty) {
          problem = 'The id of the event to add.';
        }
        body['eventId'] = _t('eventId');
    }
    setState(() => _problem = problem);
    if (problem != null) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final intel = api.getIntelligenceApi();
    final id = widget.event.id;
    setState(() => _add = const WriteInProgress());
    String? added;
    try {
      await writeThenConfirm<IntelligenceEvent>(
        write: () async {
          final m = await callApiRequired(
            () => intel.addIntelEventMember(
              eventId: id,
              intelEventMemberInput:
                  api.serializers.deserialize(
                        body,
                        specifiedType: const FullType(IntelEventMemberInput),
                      )!
                      as IntelEventMemberInput,
            ),
          );
          added = m.id;
        },
        reread: () => callApiRequired(() => intel.getIntelEvent(eventId: id)),
        confirm: (got) =>
            got.evidence.members.any((x) => x.id == added) ? null : 'the new member is not listed',
      );
      if (mounted) {
        ref.invalidate(intelEventProvider(id));
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() => _add = WriteFailed(e));
      }
    }
  }

  String _ref(IntelEventMember m) => switch (wireOf(m.memberType)) {
    'record' => '${m.sourceId ?? '?'} / ${m.externalId ?? '?'} #${m.seq ?? '?'}',
    'alert' => 'alert ${m.alertId}',
    'anomaly' => 'anomaly ${m.anomalyId}',
    _ => 'event ${m.eventId}',
  };

  String _why(IntelEventMember m) {
    final j = m.joinReason;
    if (j == null) {
      return m.addedBy;
    }
    return <String>[
      if (j.clause != null) j.clause!,
      if (j.distanceKm != null) '${j.distanceKm!.toStringAsFixed(1)} km',
      if (j.dtMinutes != null) '${j.dtMinutes!.round()} min',
      if (j.regionTag != null) j.regionTag!,
      if (j.matchedKeys case final k? when k.isNotEmpty) k.join(', '),
    ].join(' · ');
  }

  Widget _field(String key, String label) => Padding(
    padding: const EdgeInsets.only(right: 12, bottom: 8),
    child: SizedBox(
      width: 200,
      child: TextField(
        key: Key('event.add.$key'),
        controller: _text[key],
        decoration: InputDecoration(labelText: label),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final e = widget.event;
    final palette = AdminPalette.of(context);
    final members = e.evidence.members.toList();
    return SectionCard(
      key: const Key('event.members'),
      title: 'Members (${e.evidence.memberCount})',
      actions: <Widget>[
        if (!_adding)
          TonalButton(
            key: const Key('event.addMember'),
            label: 'Add Member',
            icon: Icons.add,
            onPressed: () => setState(() => _adding = true),
          ),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (_adding) ...<Widget>[
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 12, bottom: 8),
                  child: SizedBox(
                    width: 160,
                    child: DropdownButtonFormField<String>(
                      key: const Key('event.add.type'),
                      style: Theme.of(context).textTheme.bodyMedium,
                      initialValue: _type,
                      decoration: const InputDecoration(labelText: 'Member'),
                      items: <DropdownMenuItem<String>>[
                        for (final t in const <String>['record', 'alert', 'anomaly', 'event'])
                          DropdownMenuItem<String>(value: t, child: Text(wireText(t))),
                      ],
                      onChanged: (v) => setState(() => _type = v ?? _type),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12, bottom: 8),
                  child: SizedBox(
                    width: 160,
                    child: DropdownButtonFormField<String>(
                      key: const Key('event.add.role'),
                      style: Theme.of(context).textTheme.bodyMedium,
                      initialValue: _role,
                      decoration: const InputDecoration(labelText: 'Role'),
                      items: <DropdownMenuItem<String>>[
                        for (final r in memberRoles)
                          DropdownMenuItem<String>(value: r, child: Text(wireText(r))),
                      ],
                      onChanged: (v) => setState(() => _role = v ?? _role),
                    ),
                  ),
                ),
                if (_type == 'record') ...<Widget>[
                  _field('sourceId', 'Source id'),
                  _field('externalId', 'External id'),
                  _field('seq', 'Sequence'),
                ],
                if (_type == 'alert') _field('alertId', 'Alert id'),
                if (_type == 'anomaly') _field('anomalyId', 'Anomaly id'),
                if (_type == 'event') _field('eventId', 'Event id'),
                _field('signalFamily', 'Signal family (optional)'),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: _problem != null
                      ? Text(_problem!, style: TextStyle(color: palette.error))
                      : WriteStatusLine(state: _add),
                ),
                TextButton(
                  onPressed: () => setState(() => _adding = false),
                  child: const Text('Cancel'),
                ),
                const SizedBox(width: 8),
                FilledButton(
                  key: const Key('event.add.save'),
                  onPressed: _add is WriteInProgress ? null : _addMember,
                  child: const Text('Add'),
                ),
              ],
            ),
            const Divider(height: 24),
          ],
          if (members.where((m) => m.id == _confirmRemove).firstOrNull case final m?) ...<Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Remove ${m.kind == null ? '' : '${m.kind} · '}${_ref(m)} from this event?',
                  ),
                ),
                TextButton(
                  onPressed: () => setState(() => _confirmRemove = null),
                  child: const Text('Cancel'),
                ),
                const SizedBox(width: 8),
                DangerButton(
                  key: Key('event.confirmRemove.${m.id}'),
                  label: 'Remove',
                  onPressed: () => _remove(m),
                ),
              ],
            ),
            const SizedBox(height: 8),
          ],
          if (_removeError case final err?) ...<Widget>[
            ErrorBanner(error: err, title: 'The member was not removed'),
            const SizedBox(height: 8),
          ],
          DataTableCard<IntelEventMember>(
            rows: members,
            empty: 'No members.',
            columns: <TableColumnSpec<IntelEventMember>>[
              TableColumnSpec<IntelEventMember>(
                label: 'Role',
                cell: (m) => StatusLabel(
                  label: wireLabel(m.role),
                  tone: wireOf(m.role) == 'contradicting' ? StatusTone.warning : StatusTone.neutral,
                ),
              ),
              TableColumnSpec<IntelEventMember>(
                label: 'Member',
                cell: (m) => Text('${m.kind == null ? '' : '${m.kind} · '}${_ref(m)}'),
              ),
              TableColumnSpec<IntelEventMember>(
                label: 'Observed',
                cell: (m) => Text(utcText(m.observedAt)),
              ),
              TableColumnSpec<IntelEventMember>(
                label: 'Family · weight',
                cell: (m) => Text(
                  '${m.signalFamily ?? '—'} · ${m.weight?.toStringAsFixed(2) ?? '—'}',
                  style: TextStyle(color: palette.muted),
                ),
              ),
              TableColumnSpec<IntelEventMember>(
                label: 'Why it joined',
                cell: (m) => ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 240),
                  child: Text(
                    _why(m),
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: palette.muted),
                  ),
                ),
              ),
              TableColumnSpec<IntelEventMember>(
                label: '',
                cell: (m) => _removing == m.id
                    ? const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : IconButton(
                        key: Key('event.remove.${m.id}'),
                        tooltip: 'Remove member',
                        onPressed: () => setState(() => _confirmRemove = m.id),
                        icon: const Icon(Icons.remove_circle_outline),
                      ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Merges this event into another (`mergeIntelEvent`); this one is then
/// marked as merged and its members move.
class EventMergeCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const EventMergeCard({super.key, required this.event});

  /// The event merged.
  final IntelligenceEvent event;

  @override
  ConsumerState<EventMergeCard> createState() => _EventMergeCardState();
}

class _EventMergeCardState extends ConsumerState<EventMergeCard> {
  final TextEditingController _into = TextEditingController();
  bool _confirm = false;
  WriteState _write = const WriteIdle();

  @override
  void dispose() {
    _into.dispose();
    super.dispose();
  }

  Future<void> _merge() async {
    final into = _into.text.trim();
    final id = widget.event.id;
    final intel = ref.read(foresignalApiProvider).getIntelligenceApi();
    setState(() {
      _confirm = false;
      _write = const WriteInProgress();
    });
    try {
      await writeThenConfirm<IntelligenceEvent>(
        write: () => intel.mergeIntelEvent(
          eventId: id,
          intelEventMergeInput: IntelEventMergeInput((b) => b.intoId = into),
        ),
        reread: () => callApiRequired(() => intel.getIntelEvent(eventId: id)),
        confirm: (got) => got.mergedInto == into ? null : 'the event does not read back as merged',
      );
      if (!mounted) {
        return;
      }
      ref
        ..invalidate(intelEventProvider(id))
        ..invalidate(intelEventProvider(into))
        ..invalidate(intelEventsProvider);
      context.go(analysisEventPath(into));
    } on Object catch (e) {
      if (mounted) {
        setState(() => _write = WriteFailed(e));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.event.mergedInto != null) {
      return const SizedBox.shrink();
    }
    return SectionCard(
      title: 'Merge',
      subtitle: 'Moves every member into another event and marks this one as merged.',
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 320,
            child: TextField(
              key: const Key('event.merge.into'),
              controller: _into,
              decoration: const InputDecoration(labelText: 'Into event id'),
              onChanged: (_) => setState(() {
                _confirm = false;
                _write = const WriteIdle();
              }),
            ),
          ),
          const SizedBox(width: 12),
          if (!_confirm)
            TonalButton(
              key: const Key('event.merge'),
              label: 'Merge…',
              onPressed: _into.text.trim().isEmpty || _into.text.trim() == widget.event.id
                  ? null
                  : () => setState(() => _confirm = true),
            )
          else ...<Widget>[
            DangerButton(
              key: const Key('event.merge.confirm'),
              label: 'Merge into ${_into.text.trim()}',
              onPressed: _merge,
            ),
            TextButton(
              onPressed: () => setState(() => _confirm = false),
              child: const Text('Cancel'),
            ),
          ],
          const SizedBox(width: 12),
          Expanded(child: WriteStatusLine(state: _write)),
        ],
      ),
    );
  }
}
