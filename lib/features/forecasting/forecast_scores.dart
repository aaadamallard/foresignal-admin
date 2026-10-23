import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../vetting/vetting_drafts.dart' show fromJsonMap, toJsonMap;
import 'forecasting_drafts.dart';
import 'forecasting_providers.dart';
import 'forecasting_widgets.dart';

/// A dropdown of the registered forecasters, by id; [allLabel] adds an
/// "all" choice whose value is the empty string.
class ForecasterPicker extends ConsumerWidget {
  /// Creates the picker.
  const ForecasterPicker({
    super.key,
    required this.value,
    required this.onChanged,
    this.allLabel,
    this.error,
  });

  /// The selected forecaster id; empty for all.
  final String value;

  /// Called with the new id.
  final ValueChanged<String> onChanged;

  /// The text of an "all forecasters" choice; `null` for none.
  final String? allLabel;

  /// The problem shown under it.
  final String? error;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final all = ref.watch(forecastersProvider).value ?? const <Json>[];
    final ids = <String>[if (allLabel != null) '', for (final f in all) f['id']! as String];
    return WireDropdown(
      value: value,
      values: ids,
      error: error,
      hint: 'Forecaster',
      labels: <String, String>{
        '': ?allLabel,
        for (final f in all) f['id']! as String: '${f['name'] ?? f['id']} (${f['id']})',
      },
      onChanged: onChanged,
    );
  }
}

/// A calibration result (`getForecastCalibration`): a binary one as
/// reliability bins with the CORP decomposition; a numeric one as quantile
/// coverage and PIT bins.
class CalibrationView extends StatelessWidget {
  /// Creates the view of [calibration].
  const CalibrationView({super.key, required this.calibration});

  /// The calibration, in its wire shape.
  final Json calibration;

  @override
  Widget build(BuildContext context) {
    final c = calibration;
    final numeric = c['type'] == 'numeric';
    return Column(
      key: Key(numeric ? 'calibration.numeric' : 'calibration.binary'),
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Wrap(
          spacing: 12,
          runSpacing: 8,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            stateLabel(c['label'], tooltip: 'ok needs enough resolved questions to read the curve'),
            Text('${c['n'] ?? 0} resolved'),
            if (!numeric) Text(c['method'] == 'corp' ? 'CORP curve' : 'Binned (fewer than 50 resolved)'),
            if (!numeric && c['sharpness'] != null) Text('Sharpness ${fixed(c['sharpness'])}'),
            Text(
              'Scorer ${c['scorerVersion'] ?? '—'} · ${whenText(c['computedAt'])}',
              style: TextStyle(color: AdminPalette.of(context).muted, fontSize: 12),
            ),
          ],
        ),
        const SizedBox(height: 12),
        if (numeric) ..._numeric(context, c) else ..._binary(context, c),
      ],
    );
  }

  List<Widget> _binary(BuildContext context, Json c) {
    final bins = jsonList(c, 'bins');
    final d = jsonMap(c, 'decomposition');
    return <Widget>[
      if (d != null) ...<Widget>[
        KeyValueList(
          entries: <MapEntry<String, Object>>[
            MapEntry<String, Object>('Score (Brier)', fixed(d['score'])),
            MapEntry<String, Object>('Miscalibration', fixed(d['miscalibration'])),
            MapEntry<String, Object>('Discrimination', fixed(d['discrimination'])),
            MapEntry<String, Object>('Uncertainty', fixed(d['uncertainty'])),
          ],
        ),
        const SizedBox(height: 12),
      ],
      DataTableCard<Json>(
        key: const Key('calibration.bins'),
        rows: bins,
        empty: 'No bins yet.',
        columns: <TableColumnSpec<Json>>[
          TableColumnSpec<Json>(label: 'Forecast', cell: (b) => Text('${pct(b['lower'])}–${pct(b['upper'])}')),
          TableColumnSpec<Json>(label: 'Questions', numeric: true, cell: (b) => Text('${b['n'] ?? 0}')),
          TableColumnSpec<Json>(label: 'Mean forecast', numeric: true, cell: (b) => Text(pct(b['meanForecast']))),
          TableColumnSpec<Json>(label: 'Observed', numeric: true, cell: (b) => Text(pct(b['observedFrequency']))),
          TableColumnSpec<Json>(
            label: 'Reliability',
            cell: (b) => ReliabilityBar(
              forecast: (b['meanForecast'] as num?)?.toDouble(),
              observed: (b['observedFrequency'] as num?)?.toDouble(),
            ),
          ),
        ],
      ),
      const Footnote('The bar is how often it happened; the tick is what was forecast. They meet when calibrated.'),
    ];
  }

  List<Widget> _numeric(BuildContext context, Json c) {
    final quantiles = jsonList(c, 'quantileReliability');
    final pit = jsonMap(c, 'pit');
    final pitBins = jsonList(pit, 'bins');
    final summary = jsonMap(c, 'summary');
    final pitMax = pitBins.fold<double>(0, (m, b) {
      final f = (b['frequency'] as num?)?.toDouble() ?? 0;
      final e = (b['expected'] as num?)?.toDouble() ?? 0;
      return math.max(m, math.max(f, e));
    });
    return <Widget>[
      if (summary != null) ...<Widget>[
        KeyValueList(
          entries: <MapEntry<String, Object>>[
            MapEntry<String, Object>('Mean coverage error', fixed(summary['meanAbsoluteCoverageError'])),
            MapEntry<String, Object>('Largest deviation', fixed(summary['maxCoverageDeviation'])),
          ],
        ),
        const SizedBox(height: 12),
      ],
      Text('Quantile coverage', style: Theme.of(context).textTheme.titleSmall),
      const SizedBox(height: 8),
      DataTableCard<Json>(
        key: const Key('calibration.quantiles'),
        rows: quantiles,
        empty: 'No quantiles yet.',
        columns: <TableColumnSpec<Json>>[
          TableColumnSpec<Json>(label: 'Quantile', cell: (q) => Text('${q['quantile'] ?? q['level']}')),
          TableColumnSpec<Json>(label: 'Questions', numeric: true, cell: (q) => Text('${q['n'] ?? 0}')),
          TableColumnSpec<Json>(label: 'Nominal', numeric: true, cell: (q) => Text(pct(q['nominal']))),
          TableColumnSpec<Json>(label: 'Empirical', numeric: true, cell: (q) => Text(pct(q['empirical']))),
          TableColumnSpec<Json>(
            label: 'Coverage',
            cell: (q) => ReliabilityBar(
              forecast: (q['nominal'] as num?)?.toDouble(),
              observed: (q['empirical'] as num?)?.toDouble(),
              observedLabel: 'Empirical',
              forecastLabel: 'nominal',
            ),
          ),
        ],
      ),
      const Footnote('Empirical is how often the outcome fell at or below the quantile; nominal is how often it should.'),
      const SizedBox(height: 16),
      Text('PIT histogram${pit?['n'] == null ? '' : ' (${pit!['n']} outcomes)'}', style: Theme.of(context).textTheme.titleSmall),
      const SizedBox(height: 8),
      DataTableCard<Json>(
        key: const Key('calibration.pit'),
        rows: pitBins,
        empty: 'No PIT bins yet.',
        columns: <TableColumnSpec<Json>>[
          TableColumnSpec<Json>(label: 'PIT', cell: (b) => Text('${fixed(b['lower'], 2)}–${fixed(b['upper'], 2)}')),
          TableColumnSpec<Json>(label: 'Count', numeric: true, cell: (b) => Text('${b['count'] ?? 0}')),
          TableColumnSpec<Json>(label: 'Frequency', numeric: true, cell: (b) => Text(pct(b['frequency']))),
          TableColumnSpec<Json>(label: 'Expected', numeric: true, cell: (b) => Text(pct(b['expected']))),
          TableColumnSpec<Json>(
            label: 'Shape',
            cell: (b) => ReliabilityBar(
              forecast: (b['expected'] as num?)?.toDouble(),
              observed: (b['frequency'] as num?)?.toDouble(),
              observedLabel: 'Frequency',
              forecastLabel: 'expected',
              max: pitMax <= 0 ? 1 : pitMax,
            ),
          ),
        ],
      ),
      const Footnote(
        'Calibrated when each bin holds its expected share. Too many outcomes in the outer bins means '
        'intervals too narrow (overconfident); too few means too wide. Bars are scaled to the tallest bin.',
      ),
    ];
  }
}

/// Calibration by forecaster and category.
class CalibrationPanel extends ConsumerStatefulWidget {
  /// Creates the panel, optionally fixed to [forecasterId].
  const CalibrationPanel({super.key, this.forecasterId});

  /// The forecaster shown; `null` to choose one.
  final String? forecasterId;

  @override
  ConsumerState<CalibrationPanel> createState() => _CalibrationPanelState();
}

class _CalibrationPanelState extends ConsumerState<CalibrationPanel> {
  late String _forecaster = widget.forecasterId ?? '';
  final TextEditingController _category = TextEditingController();
  CalibrationQuery? _query;

  @override
  void initState() {
    super.initState();
    if (widget.forecasterId != null) {
      _query = (forecaster: widget.forecasterId!, category: null);
    }
  }

  @override
  void dispose() {
    _category.dispose();
    super.dispose();
  }

  void _show() {
    if (_forecaster.isEmpty) {
      return;
    }
    final c = _category.text.trim();
    setState(() => _query = (forecaster: _forecaster, category: c.isEmpty ? null : c));
  }

  @override
  Widget build(BuildContext context) {
    final q = _query;
    return SectionCard(
      title: 'Calibration',
      subtitle: 'How often forecasts came true at each level. Numeric forecasters show quantile coverage and the PIT histogram instead.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Wrap(
            spacing: 12,
            runSpacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: <Widget>[
              if (widget.forecasterId == null)
                SizedBox(
                  width: 340,
                  child: ForecasterPicker(
                    key: const Key('calibration.forecaster'),
                    value: _forecaster,
                    onChanged: (v) => setState(() => _forecaster = v),
                  ),
                ),
              SizedBox(
                width: 200,
                child: PlainField(
                  key: const Key('calibration.category'),
                  controller: _category,
                  hint: 'Category (all)',
                  onSubmitted: (_) => _show(),
                ),
              ),
              TonalButton(
                key: const Key('calibration.show'),
                label: 'Show',
                // Disabled until a forecaster is chosen, so the click is not silently ignored.
                onPressed: _forecaster.isEmpty ? null : _show,
              ),
            ],
          ),
          const SizedBox(height: 16),
          if (q != null)
            AsyncView<Json>(
              value: ref.watch(calibrationProvider(q)),
              onRetry: () => ref.invalidate(calibrationProvider(q)),
              data: (c) => CalibrationView(calibration: c),
            ),
        ],
      ),
    );
  }
}

/// Scorecard rows (`ScorecardEntry`) as a table.
class ScorecardTable extends StatelessWidget {
  /// Creates the table of [entries].
  const ScorecardTable({super.key, required this.entries});

  /// The rows, in their wire shape.
  final List<Json> entries;

  @override
  Widget build(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    return DataTableCard<Json>(
      key: const Key('scorecard.table'),
      rows: entries,
      empty: 'No scored forecasters.',
      columns: <TableColumnSpec<Json>>[
        TableColumnSpec<Json>(
          label: 'Forecaster',
          cell: (e) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('${e['forecasterId']}', style: const TextStyle(fontWeight: FontWeight.w600)),
              Text(forecasterTypeText(e['forecasterType']), style: TextStyle(color: muted, fontSize: 12)),
            ],
          ),
        ),
        TableColumnSpec<Json>(label: 'Category', cell: (e) => Text('${e['category'] ?? 'All'}')),
        TableColumnSpec<Json>(
          label: 'Resolved / forecasts',
          numeric: true,
          cell: (e) => Text('${e['nResolved'] ?? 0} / ${e['nForecasts'] ?? 0}'),
        ),
        TableColumnSpec<Json>(label: 'Brier', numeric: true, cell: (e) => Text(fixed(e['brier']))),
        TableColumnSpec<Json>(label: 'Log', numeric: true, cell: (e) => Text(fixed(e['logScore']))),
        TableColumnSpec<Json>(
          label: 'CRPS / RPS',
          numeric: true,
          cell: (e) => Text(e['crps'] != null ? fixed(e['crps']) : fixed(e['rps'])),
        ),
        TableColumnSpec<Json>(
          label: 'Skill',
          numeric: true,
          cell: (e) {
            final s = jsonMap(e, 'skill');
            final i = jsonMap(s, 'interval');
            return Tooltip(
              message: s == null
                  ? 'No skill score'
                  : 'Against ${s['reference'] ?? 'the reference'} on ${s['nShared'] ?? 0} shared questions'
                        '${i == null ? '' : ', ${fixed(i['lower'], 2)} to ${fixed(i['upper'], 2)}'}',
              child: Text(fixed(s?['value'], 2)),
            );
          },
        ),
        TableColumnSpec<Json>(
          label: 'Reliability / resolution',
          numeric: true,
          cell: (e) {
            final m = jsonMap(e, 'murphy');
            return Text('${fixed(m?['reliability'])} / ${fixed(m?['resolution'])}');
          },
        ),
        TableColumnSpec<Json>(
          label: 'Bias',
          numeric: true,
          cell: (e) {
            final b = jsonMap(e, 'bias');
            return Tooltip(
              message: b == null ? '' : 'Hedged share ${pct(b['hedgedShare'])} · mean on no ${pct(b['meanForecastOnNo'])}',
              child: Text(fixed(b?['meanForecastMinusObserved'], 2)),
            );
          },
        ),
        TableColumnSpec<Json>(label: 'Weight', numeric: true, cell: (e) => Text(fixed(e['ensembleWeight'], 2))),
        TableColumnSpec<Json>(label: 'Label', cell: (e) => stateLabel(e['label'])),
      ],
    );
  }
}

/// The scorecard (`getForecastScorecard`) filtered by forecaster, category and
/// resolution window.
class ScorecardPanel extends ConsumerStatefulWidget {
  /// Creates the panel, optionally fixed to [forecasterId].
  const ScorecardPanel({super.key, this.forecasterId});

  /// The forecaster shown; `null` to choose (or show all).
  final String? forecasterId;

  @override
  ConsumerState<ScorecardPanel> createState() => _ScorecardPanelState();
}

class _ScorecardPanelState extends ConsumerState<ScorecardPanel> {
  late String _forecaster = widget.forecasterId ?? '';
  final TextEditingController _category = TextEditingController();
  final TextEditingController _from = TextEditingController();
  final TextEditingController _to = TextEditingController();
  Map<String, String> _errors = const <String, String>{};
  late ScorecardQuery _query = (forecaster: widget.forecasterId, category: null, from: null, to: null);

  @override
  void dispose() {
    _category.dispose();
    _from.dispose();
    _to.dispose();
    super.dispose();
  }

  void _show() {
    final errors = <String, String>{
      'from': ?instantProblem(_from.text),
      'to': ?instantProblem(_to.text),
    };
    setState(() {
      _errors = errors;
      if (errors.isEmpty) {
        final c = _category.text.trim();
        _query = (
          forecaster: _forecaster.isEmpty ? null : _forecaster,
          category: c.isEmpty ? null : c,
          from: parseInstantText(_from.text),
          to: parseInstantText(_to.text),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      title: 'Scorecard',
      subtitle: 'Proper scores on resolved questions: lower Brier, log and CRPS are better; skill above 0 beats the reference.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Wrap(
            spacing: 12,
            runSpacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: <Widget>[
              if (widget.forecasterId == null)
                SizedBox(
                  width: 340,
                  child: ForecasterPicker(
                    key: const Key('scorecard.forecaster'),
                    value: _forecaster,
                    allLabel: 'All forecasters',
                    onChanged: (v) => setState(() => _forecaster = v),
                  ),
                ),
              SizedBox(width: 160, child: PlainField(controller: _category, hint: 'Category (all)')),
              SizedBox(width: 170, child: PlainField(controller: _from, hint: 'Resolved from', error: _errors['from'])),
              SizedBox(width: 170, child: PlainField(controller: _to, hint: 'Resolved before', error: _errors['to'])),
              TonalButton(key: const Key('scorecard.show'), label: 'Show', onPressed: _show),
            ],
          ),
          const SizedBox(height: 16),
          AsyncView<Json>(
            value: ref.watch(scorecardProvider(_query)),
            onRetry: () => ref.invalidate(scorecardProvider(_query)),
            data: (s) => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ScorecardTable(entries: jsonList(s, 'entries')),
                Footnote(
                  '${s['retrospective'] == true ? 'Retrospective (backtest) scores. ' : ''}'
                  'Scorer ${s['scorerVersion'] ?? '—'} · computed ${whenText(s['computedAt'])}',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Two forecasters compared on the questions both forecast
/// (`compareForecasters`).
class CompareCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const CompareCard({super.key});

  @override
  ConsumerState<CompareCard> createState() => _CompareCardState();
}

class _CompareCardState extends ConsumerState<CompareCard> with WriteTracking<CompareCard> {
  String _a = '';
  String _b = '';
  final TextEditingController _category = TextEditingController();
  Json? _result;

  @override
  void dispose() {
    _category.dispose();
    super.dispose();
  }

  Future<void> _compare() async {
    if (_a.isEmpty || _b.isEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final c = _category.text.trim();
    final got = await track(
      () => callApiRequired(
        () => api.getForecastsApi().compareForecasters(a: _a, b: _b, category: c.isEmpty ? null : c),
      ),
    );
    if (got != null && mounted) {
      setState(() {
        _result = toJsonMap(api.serializers, got);
        write = const WriteIdle();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final r = _result;
    final i = jsonMap(r, 'interval');
    final diff = r?['meanDifference'] as num?;
    return SectionCard(
      title: 'Compare two forecasters',
      subtitle: 'Mean Brier on the questions both forecast. A negative difference favors A.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Wrap(
            spacing: 12,
            runSpacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 300,
                child: ForecasterPicker(key: const Key('compare.a'), value: _a, onChanged: (v) => setState(() => _a = v)),
              ),
              SizedBox(
                width: 300,
                child: ForecasterPicker(key: const Key('compare.b'), value: _b, onChanged: (v) => setState(() => _b = v)),
              ),
              SizedBox(width: 160, child: PlainField(controller: _category, hint: 'Category (all)')),
              TonalButton(
                key: const Key('compare.go'),
                label: 'Compare',
                onPressed: busy || _a.isEmpty || _b.isEmpty ? null : _compare,
              ),
            ],
          ),
          statusLine,
          if (r != null) ...<Widget>[
            const SizedBox(height: 12),
            KeyValueList(
              key: const Key('compare.result'),
              entries: <MapEntry<String, Object>>[
                MapEntry<String, Object>('Shared questions', '${r['nShared'] ?? 0}'),
                MapEntry<String, Object>('Mean Brier, A', '${fixed(r['meanScoreA'])} (${r['a']})'),
                MapEntry<String, Object>('Mean Brier, B', '${fixed(r['meanScoreB'])} (${r['b']})'),
                MapEntry<String, Object>(
                  'Difference',
                  '${fixed(diff)}${diff == null || diff == 0 ? '' : diff < 0 ? ' — A is better' : ' — B is better'}',
                ),
                if (i != null)
                  MapEntry<String, Object>(
                    'Interval',
                    '${fixed(i['lower'])} to ${fixed(i['upper'])}${i['level'] == null ? '' : ' at ${pct(i['level'])}'}'
                        '${i['method'] == null ? '' : ' (${i['method']})'}',
                  ),
                MapEntry<String, Object>('Label', wireText('${r['label'] ?? '—'}')),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

/// Refits the ensemble's recalibration and weights now
/// (`refitForecastEnsemble`).
class EnsembleRefitCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const EnsembleRefitCard({super.key});

  @override
  ConsumerState<EnsembleRefitCard> createState() => _EnsembleRefitCardState();
}

class _EnsembleRefitCardState extends ConsumerState<EnsembleRefitCard> with WriteTracking<EnsembleRefitCard> {
  Json? _result;

  Future<void> _refit() async {
    final api = ref.read(foresignalApiProvider);
    final got = await track(() => callApiRequired(() => api.getForecastsApi().refitForecastEnsemble()));
    if (got != null && mounted) {
      setState(() => _result = toJsonMap(api.serializers, got));
      ref.invalidate(scorecardProvider);
    }
  }

  @override
  Widget build(BuildContext context) {
    final r = _result;
    final x = jsonMap(r, 'extremizing');
    final weights = jsonList(r, 'weights');
    final platt = <String, Json>{
      for (final p in jsonList(r, 'platt')) '${p['forecasterId']}|${p['category']}': p,
    };
    return SectionCard(
      title: 'Ensemble refit',
      subtitle: 'Refits per-forecaster recalibration (Platt) and ensemble weights from resolved questions. It runs on its own schedule too.',
      actions: <Widget>[
        TonalButton(key: const Key('ensemble.refit'), label: 'Refit Now', onPressed: busy ? null : _refit),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          statusLine,
          if (r != null) ...<Widget>[
            KeyValueList(
              key: const Key('ensemble.result'),
              entries: <MapEntry<String, Object>>[
                MapEntry<String, Object>('Fitted', whenText(r['fittedAt'])),
                if (x != null)
                  MapEntry<String, Object>(
                    'Extremizing',
                    '${x['enabled'] == true ? 'On' : 'Off'} · a ${fixed(x['a'], 2)} · ${x['nResolutions'] ?? 0} resolutions, '
                        '${x['distinctForecasterTypes'] ?? 0} forecaster types · log score ${fixed(x['logScoreImprovement'])} better',
                  ),
              ],
            ),
            const SizedBox(height: 12),
            DataTableCard<Json>(
              rows: weights,
              empty: 'No weights fitted.',
              columns: <TableColumnSpec<Json>>[
                TableColumnSpec<Json>(label: 'Forecaster', cell: (w) => Text('${w['forecasterId']}')),
                TableColumnSpec<Json>(label: 'Category', cell: (w) => Text('${w['category'] ?? 'All'}')),
                TableColumnSpec<Json>(label: 'Weight', numeric: true, cell: (w) => Text(fixed(w['weight'], 2))),
                TableColumnSpec<Json>(label: 'Questions', numeric: true, cell: (w) => Text('${w['n'] ?? 0}')),
                TableColumnSpec<Json>(
                  label: 'Platt a / b',
                  numeric: true,
                  cell: (w) {
                    final p = platt['${w['forecasterId']}|${w['category']}'];
                    return Text(p == null ? '—' : '${fixed(p['a'], 2)} / ${fixed(p['b'], 2)}');
                  },
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

/// Retrospective evaluations (backtests): start one, then follow it by id.
/// The contract has no list of evaluations, so only those started or opened
/// here are shown.
class EvaluationsPanel extends ConsumerStatefulWidget {
  /// Creates the panel, optionally fixed to [forecasterId].
  const EvaluationsPanel({super.key, this.forecasterId});

  /// The forecaster evaluated; `null` to choose.
  final String? forecasterId;

  @override
  ConsumerState<EvaluationsPanel> createState() => _EvaluationsPanelState();
}

class _EvaluationsPanelState extends ConsumerState<EvaluationsPanel> with WriteTracking<EvaluationsPanel> {
  late final EvaluationDraft _draft = EvaluationDraft()..forecasterId = widget.forecasterId ?? '';
  final TextEditingController _from = TextEditingController();
  final TextEditingController _to = TextEditingController();
  final TextEditingController _categories = TextEditingController();
  final TextEditingController _max = TextEditingController();
  final TextEditingController _openId = TextEditingController();
  Map<String, String> _errors = const <String, String>{};
  final Map<String, Json> _evaluations = <String, Json>{};
  Timer? _poll;

  @override
  void dispose() {
    _poll?.cancel();
    for (final c in <TextEditingController>[_from, _to, _categories, _max, _openId]) {
      c.dispose();
    }
    super.dispose();
  }

  void _keep(ForecastEvaluation e) {
    final api = ref.read(foresignalApiProvider);
    final json = toJsonMap(api.serializers, e);
    setState(() => _evaluations[e.id] = json);
    _schedule();
  }

  bool _live(Json e) => e['status'] == 'queued' || e['status'] == 'running';

  void _schedule() {
    _poll?.cancel();
    if (_evaluations.values.any(_live)) {
      _poll = Timer(const Duration(seconds: 3), _refresh);
    }
  }

  Future<void> _refresh() async {
    final forecasts = ref.read(foresignalApiProvider).getForecastsApi();
    for (final id in <String>[for (final e in _evaluations.values) if (_live(e)) e['id']! as String]) {
      try {
        final e = await callApiRequired(() => forecasts.getForecastEvaluation(evaluationId: id));
        if (!mounted) {
          return;
        }
        _keep(e);
      } on Object {
        // The next poll tries again; the row keeps its last state.
      }
    }
  }

  Future<void> _start() async {
    _draft
      ..from = _from.text
      ..to = _to.text
      ..categories = _categories.text
      ..maxQuestions = _max.text;
    final errors = _draft.validate();
    setState(() => _errors = errors);
    if (errors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final got = await track(
      () => callApiRequired(
        () => api.getForecastsApi().createForecastEvaluation(
          forecastEvaluationRequest: fromJsonMap<ForecastEvaluationRequest>(api.serializers, _draft.toJson()),
        ),
      ),
    );
    if (got != null && mounted) {
      setState(() => write = const WriteIdle());
      _keep(got);
    }
  }

  Future<void> _open() async {
    final id = _openId.text.trim();
    if (id.isEmpty) {
      return;
    }
    final forecasts = ref.read(foresignalApiProvider).getForecastsApi();
    final got = await track(() => callApiRequired(() => forecasts.getForecastEvaluation(evaluationId: id)));
    if (got != null && mounted) {
      _openId.clear();
      setState(() => write = const WriteIdle());
      _keep(got);
    }
  }

  String? get _problem => switch (failedCode) {
    'KNOWLEDGE_CUTOFF_REQUIRED' =>
      'This forecaster has no declared knowledge cutoff, so a backtest could leak the future. Set one in its configuration first.',
    'BACKTEST_IN_PROGRESS' => 'An evaluation of this forecaster is already running.',
    _ => null,
  };

  @override
  Widget build(BuildContext context) {
    final rows = _evaluations.values.toList().reversed.toList();
    return SectionCard(
      title: 'Retrospective evaluation',
      subtitle:
          'Replays resolved questions to the forecaster as of each question\'s open date. Questions '
          'whose answer may have been in its training data are skipped.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (widget.forecasterId == null)
            LabeledField(
              label: 'Forecaster',
              field: ForecasterPicker(
                key: const Key('evaluation.forecaster'),
                value: _draft.forecasterId,
                error: _errors['forecasterId'],
                onChanged: (v) => setState(() => _draft.forecasterId = v),
              ),
            ),
          LabeledField(
            label: 'Resolved from',
            field: PlainField(key: const Key('evaluation.from'), controller: _from, hint: '2026-01-01', error: _errors['from']),
          ),
          LabeledField(
            label: 'Resolved before',
            field: PlainField(key: const Key('evaluation.to'), controller: _to, hint: '2026-07-01', error: _errors['to']),
          ),
          LabeledField(
            label: 'Categories',
            help: 'Comma-separated; empty for all.',
            field: PlainField(controller: _categories),
          ),
          LabeledField(
            label: 'Most questions',
            help: '1 to 10000; empty for the backend default.',
            field: PlainField(controller: _max, error: _errors['maxQuestions']),
          ),
          const SizedBox(height: 8),
          Align(
            alignment: Alignment.centerLeft,
            child: TonalButton(key: const Key('evaluation.start'), label: 'Start Evaluation', onPressed: busy ? null : _start),
          ),
          if (_problem case final p?) ...<Widget>[
            const SizedBox(height: 8),
            ResultPanel(title: 'Not started', tone: StatusTone.warning, message: p),
          ] else
            statusLine,
          const SizedBox(height: 16),
          Row(
            children: <Widget>[
              SizedBox(
                width: 320,
                child: PlainField(controller: _openId, hint: 'Evaluation id', onSubmitted: (_) => _open()),
              ),
              const SizedBox(width: 8),
              TonalButton(label: 'Open', onPressed: busy ? null : _open),
            ],
          ),
          const SizedBox(height: 12),
          DataTableCard<Json>(
            key: const Key('evaluation.list'),
            rows: rows,
            empty: 'No evaluation started or opened here yet.',
            columns: <TableColumnSpec<Json>>[
              TableColumnSpec<Json>(label: 'Evaluation', cell: (e) => SelectableText('${e['id']}')),
              TableColumnSpec<Json>(label: 'Forecaster', cell: (e) => Text('${e['forecasterId']}')),
              TableColumnSpec<Json>(label: 'Window', cell: (e) => Text('${whenText(e['from'])} – ${whenText(e['to'])}')),
              TableColumnSpec<Json>(label: 'Status', cell: (e) => stateLabel(e['status'], tooltip: e['error'] as String?)),
              TableColumnSpec<Json>(label: 'Progress', numeric: true, cell: (e) => Text(pct(e['progress']))),
              TableColumnSpec<Json>(
                label: 'Evaluated / considered',
                numeric: true,
                cell: (e) {
                  final s = jsonMap(e, 'skipped');
                  return Tooltip(
                    message: 'Skipped for leakage risk ${s?['leakageRisk'] ?? 0}, other ${s?['other'] ?? 0}',
                    child: Text('${e['questionsEvaluated'] ?? 0} / ${e['questionsConsidered'] ?? 0}'),
                  );
                },
              ),
            ],
          ),
          for (final e in rows)
            if (jsonMap(e, 'scorecard') case final s?) ...<Widget>[
              const SizedBox(height: 12),
              Text('Scorecard of ${e['id']}', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(height: 8),
              ScorecardTable(entries: jsonList(s, 'entries')),
              for (final c in (e['caveats'] as List<Object?>?) ?? const <Object?>[]) Footnote(caveatText(c)),
            ],
        ],
      ),
    );
  }
}
