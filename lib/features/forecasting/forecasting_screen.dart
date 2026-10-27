import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../vetting/vetting_drafts.dart' show fromJsonMap;
import 'edp_panels.dart';
import 'forecast_scores.dart';
import 'forecasting_drafts.dart';
import 'forecasting_providers.dart';
import 'forecasting_widgets.dart';

/// The tabs of the Forecasting section (mock F1).
enum ForecastingTab {
  /// Registered forecasters (F1).
  forecasters('Forecasters'),

  /// Calibration by forecaster.
  calibration('Calibration'),

  /// Scorecard, head-to-head comparison and ensemble refit.
  scores('Scores'),

  /// Retrospective evaluations (backtests).
  evaluations('Evaluations'),

  /// Forecast questions.
  questions('Questions'),

  /// External data providers (EDP add-ins).
  providers('Providers'),

  /// Provider registration tokens.
  tokens('Registration Tokens'),

  /// The EDP protocol and a dry-run validator.
  protocol('Protocol');

  const ForecastingTab(this.label);

  /// The tab text.
  final String label;
}

/// Forecasters, calibration, forecast questions and external add-ins (EDP)
/// (Screens §F, desktop).
class ForecastingScreen extends ConsumerStatefulWidget {
  /// Creates the screen, opening [initialTab].
  const ForecastingScreen({super.key, this.initialTab = ForecastingTab.forecasters});

  /// The tab shown first.
  final ForecastingTab initialTab;

  @override
  ConsumerState<ForecastingScreen> createState() => _ForecastingScreenState();
}

class _ForecastingScreenState extends ConsumerState<ForecastingScreen> {
  late ForecastingTab _tab = widget.initialTab;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        PageHeader(
          title: switch (_tab) {
            ForecastingTab.forecasters => 'Forecasters',
            ForecastingTab.questions => 'Forecast Questions',
            ForecastingTab.providers => 'External Providers',
            _ => 'Forecasting',
          },
          crumbs: <Crumb>[const Crumb('Forecasting', forecastingPath), Crumb(_tab.label)],
          subtitle:
              'Every forecaster, built in or external, is scored the same way on the same resolved '
              'questions.',
        ),
        DefaultTabController(
          length: ForecastingTab.values.length,
          initialIndex: _tab.index,
          child: TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            onTap: (i) => setState(() => _tab = ForecastingTab.values[i]),
            tabs: <Widget>[
              for (final tab in ForecastingTab.values)
                Tab(key: Key('forecasting.tab.${tab.name}'), text: tab.label),
            ],
          ),
        ),
        const SizedBox(height: 20),
        switch (_tab) {
          ForecastingTab.forecasters => const ForecastersPanel(),
          ForecastingTab.calibration => const CalibrationPanel(),
          ForecastingTab.scores => const Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ScorecardPanel(),
              SizedBox(height: 16),
              CompareCard(),
              SizedBox(height: 16),
              EnsembleRefitCard(),
            ],
          ),
          ForecastingTab.evaluations => const EvaluationsPanel(),
          ForecastingTab.questions => const QuestionsPanel(),
          ForecastingTab.providers => const EdpSourcesPanel(),
          ForecastingTab.tokens => const RegistrationTokensPanel(),
          ForecastingTab.protocol => const EdpProtocolPanel(),
        },
      ],
    );
  }
}

/// The registered forecasters (mock F1): name, type, status and Configure,
/// with **Register Forecaster** for an external one.
class ForecastersPanel extends ConsumerStatefulWidget {
  /// Creates the panel.
  const ForecastersPanel({super.key});

  @override
  ConsumerState<ForecastersPanel> createState() => _ForecastersPanelState();
}

class _ForecastersPanelState extends ConsumerState<ForecastersPanel> {
  bool _registering = false;

  @override
  Widget build(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          children: <Widget>[
            const Spacer(),
            IconButton(
              tooltip: 'Refresh',
              onPressed: () => ref.invalidate(forecastersProvider),
              icon: const Icon(Icons.refresh),
            ),
            const SizedBox(width: 8),
            TonalButton(
              key: const Key('forecasters.register'),
              label: 'Register Forecaster',
              icon: Icons.add,
              onPressed: () => setState(() => _registering = !_registering),
            ),
          ],
        ),
        const SizedBox(height: 12),
        if (_registering) ...<Widget>[
          RegisterForecasterCard(onDone: () => setState(() => _registering = false)),
          const SizedBox(height: 16),
        ],
        AsyncView<List<Json>>(
          value: ref.watch(forecastersProvider),
          onRetry: () => ref.invalidate(forecastersProvider),
          data: (rows) => DataTableCard<Json>(
            key: const Key('forecasters.table'),
            rows: rows,
            empty: 'No forecasters yet. Register Forecaster adds one.',
            onTap: (f) => context.go(forecastingForecasterPath('${f['id']}')),
            columns: <TableColumnSpec<Json>>[
              TableColumnSpec<Json>(
                label: 'Name',
                cell: (f) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('${f['name'] ?? f['id']}', style: const TextStyle(fontWeight: FontWeight.w600)),
                    Text('${f['id']}', style: TextStyle(color: muted, fontSize: 12)),
                  ],
                ),
              ),
              TableColumnSpec<Json>(label: 'Type', cell: (f) => Text(forecasterTypeText(f['type']))),
              TableColumnSpec<Json>(
                label: 'Status',
                cell: (f) => StatusLabel(
                  label: f['active'] == true ? 'Active' : 'Inactive',
                  tone: f['active'] == true ? StatusTone.ok : StatusTone.neutral,
                ),
              ),
              TableColumnSpec<Json>(
                label: 'Track record',
                cell: (f) {
                  final t = jsonMap(f, 'trackRecord');
                  return t == null
                      ? Text('—', style: TextStyle(color: muted))
                      : Text(
                          '${t['nResolved'] ?? 0} resolved${t['brier'] == null ? '' : ' · Brier ${fixed(t['brier'])}'}'
                          '${t['label'] == 'insufficient' ? ' · too few' : ''}',
                        );
                },
              ),
              TableColumnSpec<Json>(label: 'Version', cell: (f) => Text('${f['version'] ?? '—'}')),
              TableColumnSpec<Json>(
                label: 'Actions',
                cell: (f) => TonalButton(
                  key: Key('forecasters.configure.${f['id']}'),
                  label: 'Configure',
                  onPressed: () => context.go(forecastingForecasterPath('${f['id']}')),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/// Pre-registers an external forecaster (`registerExternalForecaster`), so
/// it can be named and configured before its provider sends a forecast.
class RegisterForecasterCard extends ConsumerStatefulWidget {
  /// Creates the card; [onDone] closes it.
  const RegisterForecasterCard({super.key, required this.onDone});

  /// Called when it is canceled or the forecaster is registered.
  final VoidCallback onDone;

  @override
  ConsumerState<RegisterForecasterCard> createState() => _RegisterForecasterCardState();
}

class _RegisterForecasterCardState extends ConsumerState<RegisterForecasterCard>
    with WriteTracking<RegisterForecasterCard> {
  final ForecasterDraft _draft = ForecasterDraft();
  final TextEditingController _id = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _config = TextEditingController();
  Map<String, String> _errors = const <String, String>{};

  @override
  void dispose() {
    _id.dispose();
    _name.dispose();
    _config.dispose();
    super.dispose();
  }

  void _fillFromId() {
    final parts = edpForecasterParts(_id.text.trim());
    if (parts != null) {
      _config.text = jsonObjectText(externalForecasterConfig(parts.sourceId, parts.streamId));
    }
  }

  Future<void> _register() async {
    _draft
      ..id = _id.text
      ..name = _name.text
      ..configText = _config.text;
    final errors = _draft.validate(register: true);
    setState(() => _errors = errors);
    if (errors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final got = await track(
      () => callApiRequired(
        () => api.getForecastsApi().registerExternalForecaster(
          externalForecasterRegistration: fromJsonMap<ExternalForecasterRegistration>(
            api.serializers,
            _draft.registrationJson(),
          ),
        ),
      ),
    );
    if (got != null && mounted) {
      ref.invalidate(forecastersProvider);
      widget.onDone();
      context.go(forecastingForecasterPath(got.id));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      key: const Key('forecasters.registerCard'),
      title: 'Register an external forecaster',
      subtitle:
          'External forecasters normally appear when their provider first sends a forecast. '
          'Registering one first lets it be named, configured and backtested beforehand.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          LabeledField(
            label: 'Forecaster id',
            help: 'By convention edp:{sourceId}/{streamId}.',
            field: Row(
              children: <Widget>[
                Expanded(
                  child: PlainField(
                    key: const Key('forecasters.new.id'),
                    controller: _id,
                    hint: 'edp:timesfm/daily',
                    error: _errors['id'],
                  ),
                ),
                const SizedBox(width: 8),
                TextButton(onPressed: _fillFromId, child: const Text('Configuration from id')),
              ],
            ),
          ),
          LabeledField(
            label: 'Name',
            help: 'Up to 200 characters; empty uses the id.',
            field: PlainField(key: const Key('forecasters.new.name'), controller: _name, error: _errors['name']),
          ),
          LabeledField(
            label: 'Configuration',
            help: 'JSON. sourceId and streamId pin backtests to the provider; externalMinResolved sets how many resolved questions it needs before it counts.',
            field: JsonField(key: const Key('forecasters.new.config'), controller: _config, error: _errors['config']),
          ),
          FormActions(
            busy: busy,
            saveLabel: 'Register',
            onSave: _register,
            onReset: widget.onDone,
            leading: <Widget>[if (write is WriteFailed) WriteStatusLine(state: write)],
          ),
        ],
      ),
    );
  }
}

/// The forecast questions, filtered by status and category, with **New
/// Question**.
class QuestionsPanel extends ConsumerStatefulWidget {
  /// Creates the panel.
  const QuestionsPanel({super.key});

  @override
  ConsumerState<QuestionsPanel> createState() => _QuestionsPanelState();
}

class _QuestionsPanelState extends ConsumerState<QuestionsPanel> {
  QuestionFilter _filter = (statuses: const <String>{'open'}, category: null);
  final TextEditingController _category = TextEditingController();

  static const List<String> _statuses = <String>['open', 'closed', 'resolved', 'annulled'];

  @override
  void dispose() {
    _category.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Wrap(
          spacing: 8,
          runSpacing: 8,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            for (final s in _statuses)
              FilterChip(
                key: Key('questions.status.$s'),
                label: Text(wireText(s)),
                selected: _filter.statuses.contains(s),
                onSelected: (on) => setState(
                  () => _filter = (
                    statuses: on ? <String>{..._filter.statuses, s} : (<String>{..._filter.statuses}..remove(s)),
                    category: _filter.category,
                  ),
                ),
              ),
            SizedBox(
              width: 200,
              child: PlainField(
                key: const Key('questions.category'),
                controller: _category,
                hint: 'Category',
                onSubmitted: (t) => setState(
                  () => _filter = (statuses: _filter.statuses, category: t.trim().isEmpty ? null : t.trim()),
                ),
              ),
            ),
            IconButton(
              tooltip: 'Refresh',
              onPressed: () => ref.invalidate(questionsProvider(_filter)),
              icon: const Icon(Icons.refresh),
            ),
            TonalButton(
              key: const Key('questions.new'),
              label: 'New Question',
              icon: Icons.add,
              onPressed: () => context.go(forecastingNewQuestionPath),
            ),
          ],
        ),
        const SizedBox(height: 16),
        AsyncView<List<Json>>(
          value: ref.watch(questionsProvider(_filter)),
          onRetry: () => ref.invalidate(questionsProvider(_filter)),
          data: (rows) => DataTableCard<Json>(
            key: const Key('questions.table'),
            rows: rows,
            empty: 'No questions match these filters. Widen the status or category to see more.',
            onTap: (q) => context.go(forecastingQuestionPath('${q['id']}')),
            columns: <TableColumnSpec<Json>>[
              TableColumnSpec<Json>(
                label: 'Question',
                cell: (q) => ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 420),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('${q['title']}', maxLines: 1, overflow: TextOverflow.ellipsis),
                      Text(
                        '${wireText('${q['type']}')} · ${q['category']} · resolver ${q['resolverType'] ?? jsonMap(q, 'resolver')?['type'] ?? '—'}',
                        style: TextStyle(color: muted, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              TableColumnSpec<Json>(label: 'Closes', cell: (q) => Text(whenText(q['closesAt']))),
              TableColumnSpec<Json>(
                label: 'Forecasts',
                numeric: true,
                cell: (q) => Text('${q['forecastCount'] ?? 0}'),
              ),
              TableColumnSpec<Json>(
                label: 'Ensemble',
                numeric: true,
                cell: (q) => Tooltip(
                  message: '${q['estimativeTerm'] ?? ''}',
                  child: Text(pct(q['ensembleProbability'])),
                ),
              ),
              TableColumnSpec<Json>(
                label: 'Status',
                cell: (q) => stateLabel(
                  q['status'],
                  tooltip: q['resolvedOutcome'] != null
                      ? 'Resolved ${q['resolvedOutcome']}'
                      : q['resolvedValue'] != null
                      ? 'Resolved at ${q['resolvedValue']}'
                      : null,
                ),
              ),
              TableColumnSpec<Json>(
                label: 'Actions',
                cell: (q) => TonalButton(
                  key: Key('questions.view.${q['id']}'),
                  label: 'View',
                  onPressed: () => context.go(forecastingQuestionPath('${q['id']}')),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
