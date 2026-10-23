import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/routes.dart';
import '../../core/ui/ui.dart';
import '../vetting/vetting_drafts.dart' show fromJsonMap, toJsonMap;
import 'forecast_scores.dart';
import 'forecasting_drafts.dart';
import 'forecasting_providers.dart';
import 'forecasting_widgets.dart';

/// One forecaster: its settings (`updateForecaster`, which replaces them),
/// calibration, scorecard and backtests, and — for an external one — an
/// on-demand forecast request to its provider.
class ForecasterScreen extends ConsumerWidget {
  /// Creates the page for [forecasterId].
  const ForecasterScreen({super.key, required this.forecasterId});

  /// The forecaster shown.
  final String forecasterId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        AsyncView<Json?>(
          value: ref.watch(forecasterProvider(forecasterId)),
          onRetry: () => ref.invalidate(forecastersProvider),
          data: (f) {
            if (f == null) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  PageHeader(
                    title: forecasterId,
                    crumbs: const <Crumb>[Crumb('Forecasting', forecastingPath), Crumb('Forecasters')],
                  ),
                  const ResultPanel(
                    key: Key('forecaster.missing'),
                    title: 'No such forecaster',
                    tone: StatusTone.warning,
                    message: 'It is not in the forecaster list. An external one appears once registered or once its provider sends a forecast.',
                  ),
                ],
              );
            }
            final track = jsonMap(f, 'trackRecord');
            final external = f['type'] == 'external';
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                PageHeader(
                  title: '${f['name'] ?? f['id']}',
                  crumbs: <Crumb>[
                    const Crumb('Forecasting', forecastingPath),
                    const Crumb('Forecasters', forecastingPath),
                    Crumb('${f['name'] ?? f['id']}'),
                  ],
                  subtitle: '${f['id']} · ${forecasterTypeText(f['type'])}',
                  titleTrailing: <Widget>[
                    StatusLabel(
                      key: const Key('forecaster.status'),
                      label: f['active'] == true ? 'Active' : 'Inactive',
                      tone: f['active'] == true ? StatusTone.ok : StatusTone.neutral,
                    ),
                  ],
                ),
                Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: <Widget>[
                    SizedBox(
                      width: 420,
                      child: SectionCard(
                        title: 'Summary',
                        child: KeyValueList(
                          entries: <MapEntry<String, Object>>[
                            MapEntry<String, Object>('Id', '${f['id']}'),
                            MapEntry<String, Object>('Type', forecasterTypeText(f['type'])),
                            MapEntry<String, Object>('Version', '${f['version'] ?? '—'}'),
                            MapEntry<String, Object>('Registered', whenText(f['createdAt'])),
                            MapEntry<String, Object>(
                              'Track record',
                              track == null
                                  ? 'None yet'
                                  : '${track['nResolved'] ?? 0} resolved${track['brier'] == null ? '' : ' · Brier ${fixed(track['brier'])}'}'
                                        '${track['label'] == 'insufficient' ? ' · too few to judge' : ''}',
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 640,
                      child: ForecasterSettingsCard(key: ValueKey<String>('settings.${f['id']}'), forecaster: f),
                    ),
                  ],
                ),
                if (external) ...<Widget>[
                  const SizedBox(height: 16),
                  AnalysisRequestCard(forecasterId: '${f['id']}'),
                ],
                const SizedBox(height: 16),
                CalibrationPanel(forecasterId: '${f['id']}'),
                const SizedBox(height: 16),
                ScorecardPanel(forecasterId: '${f['id']}'),
                const SizedBox(height: 16),
                EvaluationsPanel(forecasterId: '${f['id']}'),
              ],
            );
          },
        ),
      ],
    );
  }
}

/// A forecaster's name, active switch and configuration
/// (`updateForecaster`), confirmed by re-reading the forecaster list.
class ForecasterSettingsCard extends ConsumerStatefulWidget {
  /// Creates the card for [forecaster] (its wire shape).
  const ForecasterSettingsCard({super.key, required this.forecaster});

  /// The forecaster as last read.
  final Json forecaster;

  @override
  ConsumerState<ForecasterSettingsCard> createState() => _ForecasterSettingsCardState();
}

class _ForecasterSettingsCardState extends ConsumerState<ForecasterSettingsCard> {
  late ForecasterDraft _draft;
  final TextEditingController _name = TextEditingController();
  final TextEditingController _config = TextEditingController();
  Map<String, String> _errors = const <String, String>{};
  WriteState _write = const WriteIdle();

  @override
  void initState() {
    super.initState();
    _adopt();
  }

  @override
  void didUpdateWidget(ForecasterSettingsCard old) {
    super.didUpdateWidget(old);
    if (old.forecaster != widget.forecaster) {
      _adopt();
    }
  }

  void _adopt() {
    final f = widget.forecaster;
    _draft = ForecasterDraft(
      id: '${f['id']}',
      name: f['name'] as String? ?? '',
      active: f['active'] == true,
      config: jsonMap(f, 'config'),
    );
    _name.text = _draft.name;
    _config.text = _draft.configText;
  }

  @override
  void dispose() {
    _name.dispose();
    _config.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    _draft
      ..name = _name.text
      ..configText = _config.text;
    final errors = _draft.validate();
    setState(() => _errors = errors);
    if (errors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final id = _draft.id;
    final body = _draft.updateJson();
    setState(() => _write = const WriteInProgress());
    try {
      await writeThenConfirm<Json?>(
        write: () => callApiRequired(
          () => api.getForecastsApi().updateForecaster(
            // The generated client inserts path parameters unencoded, and an
            // external id (`edp:{sourceId}/{streamId}`) holds a slash.
            forecasterId: Uri.encodeComponent(id),
            forecasterUpdate: fromJsonMap<ForecasterUpdate>(api.serializers, body),
          ),
        ),
        reread: () async {
          ref.invalidate(forecastersProvider);
          return ref.read(forecasterProvider(id).future);
        },
        confirm: (got) {
          if (got == null) {
            return 'the forecaster no longer reads back';
          }
          if (got['active'] != body['active']) {
            return 'active reads back ${got['active']}';
          }
          if (body['name'] != null && got['name'] != body['name']) {
            return 'the name reads back "${got['name']}"';
          }
          return null;
        },
      );
      if (mounted) {
        setState(() => _write = WriteConfirmed(DateTime.now()));
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() => _write = WriteFailed(e));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final external = widget.forecaster['type'] == 'external';
    return SectionCard(
      key: const Key('forecaster.settings'),
      title: 'Settings',
      subtitle: 'Saving replaces the configuration whole.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          LabeledField(
            label: 'Name',
            field: PlainField(key: const Key('forecaster.name'), controller: _name, error: _errors['name']),
          ),
          LabeledField(
            label: 'Active',
            help: 'Inactive forecasters stop forecasting and leave the ensemble.',
            field: Align(
              alignment: Alignment.centerLeft,
              child: Switch(
                key: const Key('forecaster.active'),
                value: _draft.active,
                onChanged: (v) => setState(() => _draft.active = v),
              ),
            ),
          ),
          LabeledField(
            label: 'Configuration',
            help: external
                ? 'JSON. externalMinResolved sets how many resolved questions it needs before entering the ensemble; sourceId and streamId pin backtests to its provider.'
                : 'JSON, as the forecaster type reads it.',
            field: JsonField(key: const Key('forecaster.config'), controller: _config, error: _errors['config']),
          ),
          FormActions(
            busy: _write is WriteInProgress,
            onSave: _save,
            onReset: () => setState(() {
              _adopt();
              _errors = const <String, String>{};
              _write = const WriteIdle();
            }),
            leading: <Widget>[WriteStatusLine(state: _write)],
          ),
        ],
      ),
    );
  }
}

/// Asks an external forecaster's provider for a forecast on one question now
/// (`requestAnalysis`, 155). The provider must declare an analysis-request
/// transport.
class AnalysisRequestCard extends ConsumerStatefulWidget {
  /// Creates the card for [forecasterId].
  const AnalysisRequestCard({super.key, required this.forecasterId});

  /// The external forecaster asked.
  final String forecasterId;

  @override
  ConsumerState<AnalysisRequestCard> createState() => _AnalysisRequestCardState();
}

class _AnalysisRequestCardState extends ConsumerState<AnalysisRequestCard>
    with WriteTracking<AnalysisRequestCard> {
  final AnalysisRequestDraft _draft = AnalysisRequestDraft();
  final TextEditingController _question = TextEditingController();
  final TextEditingController _horizon = TextEditingController();
  Map<String, String> _errors = const <String, String>{};
  Json? _result;

  @override
  void dispose() {
    _question.dispose();
    _horizon.dispose();
    super.dispose();
  }

  Future<void> _request() async {
    _draft
      ..questionId = _question.text
      ..horizon = _horizon.text;
    final errors = _draft.validate();
    setState(() => _errors = errors);
    if (errors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final got = await track(
      () => callApiRequired(
        () => api.getExternalApi().requestAnalysis(
          analysisRequestSubmission: fromJsonMap<AnalysisRequestSubmission>(
            api.serializers,
            _draft.toJson(widget.forecasterId),
          ),
        ),
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
    final parts = edpForecasterParts(widget.forecasterId);
    return SectionCard(
      key: const Key('forecaster.analysis'),
      title: 'Request a forecast now',
      subtitle:
          'Asks the provider for a forecast on one open question. It answers at once or later through '
          'its callback; either way the forecast is recorded like any other.',
      actions: <Widget>[
        if (parts != null)
          TextButton(
            onPressed: () => context.go(forecastingProviderPath(parts.sourceId)),
            child: Text('Provider ${parts.sourceId}'),
          ),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          LabeledField(
            label: 'Question id',
            field: PlainField(key: const Key('analysis.question'), controller: _question, error: _errors['questionId']),
          ),
          LabeledField(
            label: 'Orientation',
            help: 'Inverse when the provider answers the negation of the question.',
            field: WireDropdown(
              value: _draft.orientation,
              values: const <String>['same', 'inverse'],
              onChanged: (v) => setState(() => _draft.orientation = v),
            ),
          ),
          LabeledField(
            label: 'Horizon',
            help: 'Optional, passed to the provider, such as P7D.',
            field: PlainField(controller: _horizon),
          ),
          FormActions(
            busy: busy,
            saveLabel: 'Request',
            onSave: _request,
            leading: <Widget>[if (write is WriteFailed) WriteStatusLine(state: write)],
          ),
          if (r != null)
            ResultPanel(
              key: const Key('analysis.result'),
              title: r['recorded'] == true ? 'Forecast recorded' : 'Request sent',
              message: r['recorded'] == true
                  ? 'The provider answered at once.'
                  : 'The provider will answer through its callback.',
              details: <MapEntry<String, Object>>[
                MapEntry<String, Object>('Correlation', '${r['correlationId']}'),
                if (r['forecastId'] != null) MapEntry<String, Object>('Forecast', '${r['forecastId']}'),
              ],
            ),
        ],
      ),
    );
  }
}
