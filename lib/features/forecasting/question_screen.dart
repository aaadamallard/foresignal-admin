import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../vetting/vetting_drafts.dart' show fromJsonMap, toJsonMap;
import 'forecasting_drafts.dart';
import 'forecasting_providers.dart';
import 'forecasting_widgets.dart';

/// A forecast question: a new one (`createForecastQuestion`), or a stored
/// one with its forecasts and history, edits (`updateForecastQuestion`),
/// manual resolution and annulment.
class QuestionScreen extends ConsumerWidget {
  /// Creates the page for [questionId], or for a new question when `null`.
  const QuestionScreen({super.key, this.questionId});

  /// The question shown; `null` for a new one.
  final String? questionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = questionId;
    if (id == null) {
      return ListView(
        padding: const EdgeInsets.all(28),
        children: const <Widget>[
          PageHeader(
            title: 'New Question',
            crumbs: <Crumb>[Crumb('Forecasting', forecastingPath), Crumb('Questions', forecastingPath), Crumb('New')],
            subtitle: 'Every forecaster sees the title, criteria and resolver exactly as written here.',
          ),
          QuestionForm(),
        ],
      );
    }
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        AsyncView<Json>(
          value: ref.watch(questionProvider(id)),
          onRetry: () => ref.invalidate(questionProvider(id)),
          data: (q) => _QuestionBody(question: q),
        ),
      ],
    );
  }
}

class _QuestionBody extends StatelessWidget {
  const _QuestionBody({required this.question});

  final Json question;

  @override
  Widget build(BuildContext context) {
    final q = question;
    final status = q['status'] as String?;
    final resolution = jsonMap(q, 'resolution');
    final annulment = jsonMap(q, 'annulment');
    final resolver = jsonMap(q, 'resolver');
    final outcomes = jsonMap(q, 'outcomes');
    final links = jsonMap(q, 'links');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        PageHeader(
          title: '${q['title']}',
          crumbs: const <Crumb>[Crumb('Forecasting', forecastingPath), Crumb('Questions', forecastingPath), Crumb('Question')],
          subtitle: '${wireText('${q['type']}')} · ${q['category']} · ${q['id']}',
          titleTrailing: <Widget>[stateLabel(status, key: const Key('question.status'))],
        ),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: <Widget>[
            SizedBox(
              width: 520,
              child: SectionCard(
                title: 'Summary',
                child: KeyValueList(
                  key: const Key('question.summary'),
                  entries: <MapEntry<String, Object>>[
                    MapEntry<String, Object>('Criteria', '${q['resolutionCriteria'] ?? '—'}'),
                    MapEntry<String, Object>(
                      'Resolver',
                      '${wireText('${resolver?['type'] ?? q['resolverType'] ?? '—'}')}'
                          '${resolver?['version'] == null ? '' : ' (version ${resolver!['version']})'}',
                    ),
                    if (outcomes?['labels'] case final List<Object?> l) MapEntry<String, Object>('Outcomes', l.join(', ')),
                    if (q['type'] == 'numeric' && outcomes != null)
                      MapEntry<String, Object>(
                        'Range',
                        '${outcomes['lower'] ?? '−∞'} to ${outcomes['upper'] ?? '∞'}${outcomes['unit'] == null ? '' : ' ${outcomes['unit']}'}',
                      ),
                    MapEntry<String, Object>('Opens', whenText(q['opensAt'])),
                    MapEntry<String, Object>('Closes', whenText(q['closesAt'])),
                    MapEntry<String, Object>('Resolve by', whenText(q['resolveBy'])),
                    if ((q['tags'] as List<Object?>?)?.isNotEmpty == true)
                      MapEntry<String, Object>('Tags', (q['tags']! as List<Object?>).join(', ')),
                    if (links != null && links.isNotEmpty)
                      MapEntry<String, Object>(
                        'Linked',
                        <String>[for (final e in links.entries) if (e.value != null) '${e.key} ${e.value}'].join(' · '),
                      ),
                    MapEntry<String, Object>('Origin', '${q['origin'] ?? '—'}${q['private'] == true ? ' · private' : ''}'),
                    MapEntry<String, Object>('Forecasts', '${q['forecastCount'] ?? 0}'),
                    MapEntry<String, Object>(
                      'Ensemble',
                      '${pct(q['ensembleProbability'])}${q['estimativeTerm'] == null ? '' : ' · ${q['estimativeTerm']}'}',
                    ),
                    if (resolution != null)
                      MapEntry<String, Object>(
                        'Resolved',
                        '${resolution['outcome'] ?? resolution['value'] ?? '—'} · ${whenText(resolution['resolvedAt'])}'
                            '${resolution['resolvedBy'] == null ? '' : ' by ${resolution['resolvedBy']}'}'
                            '${resolution['early'] == true ? ' · early' : ''}',
                      ),
                    if (resolution?['note'] != null) MapEntry<String, Object>('Resolution note', '${resolution!['note']}'),
                    if ((resolution?['evidence'] as List<Object?>?)?.isNotEmpty == true)
                      MapEntry<String, Object>('Evidence', (resolution!['evidence']! as List<Object?>).join(', ')),
                    if (annulment != null)
                      MapEntry<String, Object>(
                        'Annulled',
                        '${annulment['reason'] ?? annulment['code'] ?? '—'} · ${whenText(annulment['at'])}'
                            '${annulment['by'] == null ? '' : ' by ${annulment['by']}'}',
                      ),
                  ],
                ),
              ),
            ),
            if (status == 'open' || status == 'closed')
              SizedBox(
                width: 520,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ResolveCard(key: ValueKey<String>('resolve.${q['id']}'), question: q),
                    const SizedBox(height: 16),
                    AnnulCard(key: ValueKey<String>('annul.${q['id']}'), question: q),
                  ],
                ),
              ),
          ],
        ),
        for (final c in <Object?>[
          ...(resolution?['caveats'] as List<Object?>?) ?? const <Object?>[],
          ...(q['baselineNotes'] as List<Object?>?) ?? const <Object?>[],
        ])
          Footnote(caveatText(c)),
        const SizedBox(height: 16),
        _LatestForecasts(question: q),
        const SizedBox(height: 16),
        QuestionHistoryCard(questionId: '${q['id']}', type: '${q['type']}'),
        if (status == 'open') ...<Widget>[
          const SizedBox(height: 16),
          SectionCard(
            title: 'Edit',
            subtitle:
                'Title, tags, close, criteria and resolver can change while the question is open. '
                'Once forecasts exist the backend may refuse changes to criteria or resolver.',
            child: QuestionForm(key: ValueKey<String>('edit.${q['id']}'), question: q),
          ),
        ],
      ],
    );
  }
}

String _forecastValue(Json f) {
  if (f['probability'] is num) {
    return pct(f['probability']);
  }
  if (jsonMap(f, 'quantiles') case final qs?) {
    return 'p05 ${qs['p05'] ?? '—'} · p50 ${qs['p50'] ?? '—'} · p95 ${qs['p95'] ?? '—'}';
  }
  if (jsonMap(f, 'distribution') case final d?) {
    return <String>[for (final e in d.entries) '${e.key} ${pct(e.value)}'].join(' · ');
  }
  return '—';
}

class _LatestForecasts extends StatelessWidget {
  const _LatestForecasts({required this.question});

  final Json question;

  @override
  Widget build(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    final rows = jsonList(question, 'latestForecasts');
    final scores = <String, Json>{for (final s in jsonList(question, 'scores')) '${s['forecasterId']}': s};
    return SectionCard(
      title: 'Latest forecasts',
      child: DataTableCard<Json>(
        key: const Key('question.forecasts'),
        rows: rows,
        empty: 'No forecasts yet.',
        columns: <TableColumnSpec<Json>>[
          TableColumnSpec<Json>(
            label: 'Forecaster',
            cell: (f) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('${f['forecasterId']}', style: const TextStyle(fontWeight: FontWeight.w600)),
                Text(forecasterTypeText(f['forecasterType']), style: TextStyle(color: muted, fontSize: 12)),
              ],
            ),
          ),
          TableColumnSpec<Json>(label: 'Made', cell: (f) => Text(whenText(f['madeAt']))),
          TableColumnSpec<Json>(
            label: 'Forecast',
            cell: (f) => Tooltip(
              message: '${f['estimativeTerm'] ?? ''}${f['recalibrated'] == true ? ' · recalibrated' : ''}',
              child: Text(_forecastValue(f)),
            ),
          ),
          TableColumnSpec<Json>(
            label: 'Rationale',
            cell: (f) => ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 360),
              child: Tooltip(
                message: '${f['rationale'] ?? ''}',
                child: Text('${f['rationale'] ?? '—'}', maxLines: 1, overflow: TextOverflow.ellipsis),
              ),
            ),
          ),
          TableColumnSpec<Json>(
            label: 'Score',
            numeric: true,
            cell: (f) {
              final s = scores['${f['forecasterId']}'];
              return Text(s == null ? '—' : fixed(s['brier'] ?? s['crps'] ?? s['rps'] ?? s['logScore']));
            },
          ),
        ],
      ),
    );
  }
}

/// The standing forecast per day for each forecaster
/// (`getForecastQuestionHistory`), newest first.
class QuestionHistoryCard extends ConsumerWidget {
  /// Creates the card for [questionId] of [type].
  const QuestionHistoryCard({super.key, required this.questionId, required this.type});

  /// The question.
  final String questionId;

  /// Its type, by wire name.
  final String type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SectionCard(
      title: 'History',
      subtitle: 'The standing forecast at the end of each day, per forecaster.',
      child: AsyncView<Json>(
        value: ref.watch(questionHistoryProvider(questionId)),
        onRetry: () => ref.invalidate(questionHistoryProvider(questionId)),
        data: (h) {
          final rows = <({String date, String forecaster, Json point})>[
            for (final s in jsonList(h, 'series'))
              for (final p in jsonList(s, 'points'))
                (date: '${p['date']}', forecaster: '${s['forecasterId']}', point: p),
          ]..sort((a, b) => b.date.compareTo(a.date));
          return DataTableCard<({String date, String forecaster, Json point})>(
            key: const Key('question.history'),
            rows: rows.take(200).toList(),
            empty: 'No history yet.',
            columns: <TableColumnSpec<({String date, String forecaster, Json point})>>[
              TableColumnSpec<({String date, String forecaster, Json point})>(label: 'Day', cell: (r) => Text(r.date)),
              TableColumnSpec<({String date, String forecaster, Json point})>(
                label: 'Forecaster',
                cell: (r) => Text(r.forecaster),
              ),
              TableColumnSpec<({String date, String forecaster, Json point})>(
                label: 'Forecast',
                cell: (r) => Text(_forecastValue(r.point)),
              ),
            ],
          );
        },
      ),
    );
  }
}

/// The question form: everything for a new question, or the members that may
/// change (title, tags, close, criteria, resolver) for a stored one.
class QuestionForm extends ConsumerStatefulWidget {
  /// Creates the form, editing [question] (its wire shape) when given.
  const QuestionForm({super.key, this.question});

  /// The question edited; `null` for a new one.
  final Json? question;

  @override
  ConsumerState<QuestionForm> createState() => _QuestionFormState();
}

class _QuestionFormState extends ConsumerState<QuestionForm> with WriteTracking<QuestionForm> {
  late QuestionDraft _draft;
  final Map<String, TextEditingController> _c = <String, TextEditingController>{
    for (final k in <String>[
      'title',
      'category',
      'tags',
      'criteria',
      'resolver',
      'opensAt',
      'closesAt',
      'resolveBy',
      'labels',
      'unit',
      'lower',
      'upper',
      'links',
      'dedupKey',
    ])
      k: TextEditingController(),
  };
  Map<String, String> _errors = const <String, String>{};
  Json? _existing;
  bool _unchanged = false;

  @override
  void initState() {
    super.initState();
    _adopt();
  }

  @override
  void didUpdateWidget(QuestionForm old) {
    super.didUpdateWidget(old);
    if (old.question != widget.question) {
      _adopt();
    }
  }

  void _adopt() {
    final q = widget.question;
    _draft = q == null ? QuestionDraft() : QuestionDraft.of(q);
    final d = _draft;
    for (final MapEntry(:key, :value) in <String, String>{
      'title': d.title,
      'category': d.category,
      'tags': d.tags,
      'criteria': d.criteria,
      'resolver': d.resolverText,
      'opensAt': d.opensAt,
      'closesAt': d.closesAt,
      'resolveBy': d.resolveBy,
      'labels': d.labels,
      'unit': d.unit,
      'lower': d.lower,
      'upper': d.upper,
      'links': d.linksText,
      'dedupKey': d.dedupKey,
    }.entries) {
      _c[key]!.text = value;
    }
  }

  @override
  void dispose() {
    for (final c in _c.values) {
      c.dispose();
    }
    super.dispose();
  }

  void _resolverType(String type) {
    final current = _c['resolver']!.text.trim();
    final oldTemplate = jsonObjectText(resolverTemplates[_draft.resolverType]).trim();
    setState(() {
      _draft.resolverType = type;
      if (current.isEmpty || current == oldTemplate) {
        _c['resolver']!.text = jsonObjectText(resolverTemplates[type]);
      }
    });
  }

  void _read() {
    final d = _draft
      ..title = _c['title']!.text
      ..category = _c['category']!.text
      ..tags = _c['tags']!.text
      ..criteria = _c['criteria']!.text
      ..resolverText = _c['resolver']!.text
      ..opensAt = _c['opensAt']!.text
      ..closesAt = _c['closesAt']!.text
      ..resolveBy = _c['resolveBy']!.text
      ..labels = _c['labels']!.text
      ..unit = _c['unit']!.text
      ..lower = _c['lower']!.text
      ..upper = _c['upper']!.text
      ..linksText = _c['links']!.text
      ..dedupKey = _c['dedupKey']!.text;
    _errors = d.validate();
  }

  Future<void> _save() async {
    setState(() {
      _read();
      _existing = null;
      _unchanged = false;
    });
    if (_errors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final forecasts = api.getForecastsApi();
    if (_draft.editing) {
      final id = '${widget.question!['id']}';
      final patch = _draft.patchJson();
      if (patch.isEmpty) {
        setState(() => _unchanged = true);
        return;
      }
      final got = await track(
        () => writeThenConfirm<ForecastQuestion>(
          write: () => callApiRequired(
            () => forecasts.updateForecastQuestion(
              questionId: id,
              forecastQuestionPatch: fromJsonMap<ForecastQuestionPatch>(api.serializers, patch),
            ),
          ),
          reread: () => callApiRequired(() => forecasts.getForecastQuestion(questionId: id)),
          confirm: (got) => patch['title'] != null && got.title != patch['title'] ? 'the title reads back "${got.title}"' : null,
        ),
      );
      if (got != null && mounted) {
        ref.invalidate(questionProvider(id));
        ref.invalidate(questionsProvider);
      }
      return;
    }
    int? status;
    final got = await track(
      () => callApiRequired(() async {
        final r = await forecasts.createForecastQuestion(
          forecastQuestionInput: fromJsonMap<ForecastQuestionInput>(api.serializers, _draft.inputJson()),
        );
        status = r.statusCode;
        return r;
      }),
    );
    if (got == null || !mounted) {
      return;
    }
    ref.invalidate(questionsProvider);
    if (status == 200) {
      setState(() {
        _existing = toJsonMap(api.serializers, got);
        write = const WriteIdle();
      });
      return;
    }
    context.go(forecastingQuestionPath(got.id));
  }

  String? get _problem => switch (failedCode) {
    'RESOLVER_INVALID' => 'The backend refused the resolver. Check its members against the resolver type.',
    'QUESTION_IMMUTABLE' => 'Forecasts already rest on these criteria or this resolver, so they can no longer change.',
    'QUESTION_CLOSED' => 'The question is no longer open.',
    _ => null,
  };

  Widget _field(
    String label,
    String key, {
    String? help,
    String? hint,
    bool json = false,
    int minLines = 4,
    int maxLines = 1,
  }) => LabeledField(
    label: label,
    help: help,
    field: json
        ? JsonField(key: Key('question.$key'), controller: _c[key]!, error: _errors[key], hint: hint, minLines: minLines)
        : PlainField(key: Key('question.$key'), controller: _c[key]!, error: _errors[key], hint: hint, maxLines: maxLines),
  );

  @override
  Widget build(BuildContext context) {
    final editing = _draft.editing;
    final type = _draft.type;
    final existing = _existing;
    final form = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        _field('Title', 'title', help: 'Up to 300 characters.'),
        if (!editing) ...<Widget>[
          LabeledField(
            label: 'Type',
            field: WireDropdown(
              key: const Key('question.type'),
              value: type,
              values: questionTypes,
              onChanged: (v) => setState(() => _draft.type = v),
            ),
          ),
          if (type == 'multiple' || type == 'ordered')
            _field('Outcomes', 'labels', help: 'Comma-separated labels${type == 'ordered' ? ', lowest first' : ''}.'),
          if (type == 'numeric') ...<Widget>[
            _field('Unit', 'unit'),
            _field('Lower bound', 'lower'),
            _field('Upper bound', 'upper'),
          ],
          _field('Category', 'category', hint: 'maritime'),
        ],
        _field('Tags', 'tags', help: 'Comma-separated.'),
        _field('Resolution criteria', 'criteria', help: 'Shown verbatim to every forecaster. Up to 2000 characters.', maxLines: 5),
        LabeledField(
          label: 'Resolver',
          help: 'Manual is resolved by an operator; the others resolve themselves from data.',
          field: WireDropdown(
            key: const Key('question.resolverType'),
            value: _draft.resolverType,
            values: resolverTypes,
            onChanged: _resolverType,
          ),
        ),
        _field(
          'Resolver members',
          'resolver',
          help: 'JSON: the members this resolver type reads. A starting template fills in when the type changes.',
          json: true,
        ),
        if (!editing) _field('Opens', 'opensAt', help: 'A UTC date or date-time; empty for now.'),
        _field('Closes', 'closesAt', help: 'When forecasting closes. A UTC date or date-time.', hint: '2026-12-01'),
        if (!editing) ...<Widget>[
          _field('Resolve by', 'resolveBy', help: 'On or after the close.', hint: '2026-12-15'),
          _field(
            'Links',
            'links',
            help: 'JSON: situationId, hypothesisSetId, precursorId, findingId, seriesRef or outlookId.',
            json: true,
            minLines: 2,
          ),
          _field('Dedup key', 'dedupKey', help: 'Creating again with the same key returns the existing question.'),
          LabeledField(
            label: 'Private',
            field: Align(
              alignment: Alignment.centerLeft,
              child: Switch(value: _draft.private, onChanged: (v) => setState(() => _draft.private = v)),
            ),
          ),
        ],
        FormActions(
          busy: busy,
          saveLabel: editing ? 'Save Changes' : 'Create Question',
          onSave: _save,
          onReset: editing ? () => setState(_adopt) : null,
          leading: <Widget>[
            if (_unchanged) const Text('Nothing changed.') else if (_problem == null) WriteStatusLine(state: write),
          ],
        ),
        if (_problem case final p?) ResultPanel(title: 'Not saved', tone: StatusTone.warning, message: p),
        if (existing != null)
          ResultPanel(
            key: const Key('question.existing'),
            title: 'Already exists',
            tone: StatusTone.info,
            message: 'A question with this dedup key already exists: "${existing['title']}". Nothing was created.',
            child: Align(
              alignment: Alignment.centerLeft,
              child: TonalButton(
                label: 'Open It',
                onPressed: () => context.go(forecastingQuestionPath('${existing['id']}')),
              ),
            ),
          ),
      ],
    );
    return editing ? form : SectionCard(title: 'Question', child: form);
  }
}

/// Resolves a question by hand (`resolveForecastQuestion`): an outcome or
/// value, the evidence it rests on and a note.
class ResolveCard extends ConsumerStatefulWidget {
  /// Creates the card for [question] (its wire shape).
  const ResolveCard({super.key, required this.question});

  /// The question resolved.
  final Json question;

  @override
  ConsumerState<ResolveCard> createState() => _ResolveCardState();
}

class _ResolveCardState extends ConsumerState<ResolveCard> with WriteTracking<ResolveCard> {
  late final ResolutionDraft _draft = ResolutionDraft(
    type: '${widget.question['type']}',
    labels: <String>[
      for (final l in (jsonMap(widget.question, 'outcomes')?['labels'] as List<Object?>?) ?? const <Object?>[]) '$l',
    ],
  );
  final TextEditingController _value = TextEditingController();
  final TextEditingController _evidence = TextEditingController();
  final TextEditingController _note = TextEditingController();
  Map<String, String> _errors = const <String, String>{};
  bool _confirming = false;

  @override
  void dispose() {
    _value.dispose();
    _evidence.dispose();
    _note.dispose();
    super.dispose();
  }

  void _check() {
    _draft
      ..value = _value.text
      ..evidence = _evidence.text
      ..note = _note.text;
    final errors = _draft.validate();
    setState(() {
      _errors = errors;
      _confirming = errors.isEmpty;
    });
  }

  Future<void> _resolve() async {
    setState(() => _confirming = false);
    final api = ref.read(foresignalApiProvider);
    final forecasts = api.getForecastsApi();
    final id = '${widget.question['id']}';
    final got = await track(
      () => writeThenConfirm<ForecastQuestion>(
        write: () => callApiRequired(
          () => forecasts.resolveForecastQuestion(
            questionId: id,
            forecastResolutionInput: fromJsonMap<ForecastResolutionInput>(api.serializers, _draft.toJson()),
          ),
        ),
        reread: () => callApiRequired(() => forecasts.getForecastQuestion(questionId: id)),
        confirm: (got) => wireOf(got.status) == 'resolved' ? null : 'the question reads back ${wireOf(got.status)}',
      ),
    );
    if (got != null && mounted) {
      ref
        ..invalidate(questionProvider(id))
        ..invalidate(questionsProvider);
    }
  }

  @override
  Widget build(BuildContext context) {
    final numeric = _draft.type == 'numeric';
    return SectionCard(
      key: const Key('question.resolve'),
      title: 'Resolve',
      subtitle: 'Records the outcome now and scores every forecast. It cannot be undone.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (numeric)
            LabeledField(
              label: 'Value',
              field: PlainField(key: const Key('resolve.value'), controller: _value, error: _errors['value']),
            )
          else
            LabeledField(
              label: 'Outcome',
              field: WireDropdown(
                key: const Key('resolve.outcome'),
                value: _draft.outcome,
                values: _draft.choices,
                labels: <String, String>{for (final c in _draft.choices) c: c},
                error: _errors['outcome'],
                onChanged: (v) => setState(() => _draft.outcome = v),
              ),
            ),
          LabeledField(
            label: 'Evidence',
            help: 'Refs, comma or space separated, such as record:source/id.',
            field: PlainField(key: const Key('resolve.evidence'), controller: _evidence, error: _errors['evidence']),
          ),
          LabeledField(
            label: 'Note',
            field: PlainField(key: const Key('resolve.note'), controller: _note, error: _errors['note']),
          ),
          if (_confirming)
            ConfirmRow(
              message: 'Resolve as ${numeric ? _draft.value.trim() : _draft.outcome}? Every forecast is scored on it.',
              action: 'Resolve',
              confirmKey: const Key('resolve.confirm'),
              onConfirm: _resolve,
              onCancel: () => setState(() => _confirming = false),
            )
          else
            FormActions(
              busy: busy,
              saveLabel: 'Resolve',
              onSave: _check,
              leading: <Widget>[
                if (failedCode == 'QUESTION_CLOSED')
                  const Text('Already resolved or annulled.')
                else
                  WriteStatusLine(state: write),
              ],
            ),
        ],
      ),
    );
  }
}

/// Annuls a question with a reason (`annulForecastQuestion`): it is then
/// never scored.
class AnnulCard extends ConsumerStatefulWidget {
  /// Creates the card for [question] (its wire shape).
  const AnnulCard({super.key, required this.question});

  /// The question annulled.
  final Json question;

  @override
  ConsumerState<AnnulCard> createState() => _AnnulCardState();
}

class _AnnulCardState extends ConsumerState<AnnulCard> with WriteTracking<AnnulCard> {
  final TextEditingController _reason = TextEditingController();
  String? _error;
  bool _confirming = false;

  @override
  void dispose() {
    _reason.dispose();
    super.dispose();
  }

  void _check() {
    final r = _reason.text.trim();
    setState(() {
      _error = r.isEmpty || r.length > 2000 ? 'A reason of 1 to 2000 characters.' : null;
      _confirming = _error == null;
    });
  }

  Future<void> _annul() async {
    setState(() => _confirming = false);
    final api = ref.read(foresignalApiProvider);
    final forecasts = api.getForecastsApi();
    final id = '${widget.question['id']}';
    final got = await track(
      () => writeThenConfirm<ForecastQuestion>(
        write: () => callApiRequired(
          () => forecasts.annulForecastQuestion(
            questionId: id,
            forecastAnnulInput: fromJsonMap<ForecastAnnulInput>(api.serializers, <String, Object?>{
              'reason': _reason.text.trim(),
            }),
          ),
        ),
        reread: () => callApiRequired(() => forecasts.getForecastQuestion(questionId: id)),
        confirm: (got) => wireOf(got.status) == 'annulled' ? null : 'the question reads back ${wireOf(got.status)}',
      ),
    );
    if (got != null && mounted) {
      ref
        ..invalidate(questionProvider(id))
        ..invalidate(questionsProvider);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      key: const Key('question.annul'),
      title: 'Annul',
      subtitle: 'For a question that cannot be resolved fairly. Annulled questions are never scored.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          LabeledField(
            label: 'Reason',
            field: PlainField(key: const Key('annul.reason'), controller: _reason, error: _error),
          ),
          if (_confirming)
            ConfirmRow(
              message: 'Annul this question? It is never scored.',
              action: 'Annul',
              confirmKey: const Key('annul.confirm'),
              onConfirm: _annul,
              onCancel: () => setState(() => _confirming = false),
            )
          else
            FormActions(
              busy: busy,
              saveLabel: 'Annul',
              onSave: _check,
              leading: <Widget>[WriteStatusLine(state: write)],
            ),
        ],
      ),
    );
  }
}
