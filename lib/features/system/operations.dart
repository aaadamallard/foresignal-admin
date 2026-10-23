import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_widgets.dart';
import 'settings_tabs.dart';
import 'system_drafts.dart';
import 'system_providers.dart';
import 'system_widgets.dart';

/// The Operations tab: the notification pause, the watchdog, weather
/// ingestion, metric projections and infrastructure dependency rules.
class OperationsPanel extends StatelessWidget {
  /// Creates the panel.
  const OperationsPanel({super.key});

  @override
  Widget build(BuildContext context) => const SettingsColumn(
    children: <Widget>[
      SettingsGroupCard(group: notificationGroup),
      SettingsGroupCard(group: watchdogGroup),
      SettingsGroupCard(group: weatherGroup),
      MetricProjectionsCard(),
      InfraRulesCard(),
    ],
  );
}

/// Replaces the list member [member] of the resource at [path] with
/// [items], keeping its other members as [stored] holds them, and confirms
/// the list by reading it back.
Future<Json> replaceList(
  WidgetRef ref,
  String path,
  Json stored,
  String member,
  List<Json> items,
) async {
  final body = deepCopy(stored)..[member] = items;
  final dio = ref.read(backendDioProvider);
  final confirmed = await writeThenConfirm<Json>(
    write: () => jsonCall(dio, 'PUT', path, body: body),
    reread: () => jsonObjectCall(dio, 'GET', path),
    confirm: (read) {
      final list = read[member];
      if (list is! List || list.length != items.length) {
        return 'The backend holds ${list is List ? list.length : 0} items, not ${items.length}.';
      }
      return sentDifference(items, list, member);
    },
  );
  ref.invalidate(settingsResourceProvider(path));
  return confirmed;
}

List<Json> _items(Object? list) => <Json>[
  if (list is List)
    for (final x in list)
      if (x is Map) x.cast<String, Object?>(),
];

/// Payload fields served as Prometheus gauges (`getMetricSettings` /
/// `updateMetricSettings`).
class MetricProjectionsCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const MetricProjectionsCard({super.key});

  @override
  ConsumerState<MetricProjectionsCard> createState() => _MetricProjectionsCardState();
}

class _MetricProjectionsCardState extends ConsumerState<MetricProjectionsCard> with WriteTracking<MetricProjectionsCard> {
  /// The projection being edited: its index, -1 for a new one, or `null`.
  int? _editing;
  int? _deleting;

  Future<void> _delete(Json stored, int index) async {
    final items = _items(stored['projections'])..removeAt(index);
    await track(() => replaceList(ref, metricSettingsPath, stored, 'projections', items));
    if (mounted) {
      setState(() => _deleting = null);
    }
  }

  /// A projection as the form edits it: its labels as a `name = path` map.
  static Json _editable(Json p) => <String, Object?>{
    ...p,
    'labels': <String, Object?>{
      for (final l in _items(p['labels'])) '${l['name']}': l['path'],
    },
  };

  @override
  Widget build(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    return SectionCard(
      key: const Key('metrics'),
      title: 'Metric Projections',
      subtitle: 'Payload fields served at /v1/metrics as Prometheus gauges named foresignal_data_<name>.',
      actions: <Widget>[
        if (_editing == null)
          TonalButton(
            key: const Key('metrics.add'),
            label: 'Add Projection',
            icon: Icons.add,
            onPressed: () => setState(() => _editing = -1),
          ),
      ],
      child: AsyncView<Json>(
        value: ref.watch(settingsResourceProvider(metricSettingsPath)),
        onRetry: () => ref.invalidate(settingsResourceProvider(metricSettingsPath)),
        data: (stored) {
          final items = _items(stored['projections']);
          final editing = _editing;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              if (items.isEmpty && editing == null)
                Text('No projections. Add one to graph a payload field.', style: TextStyle(color: muted))
              else if (items.isNotEmpty)
                DataTableCard<int>(
                  key: const Key('metrics.table'),
                  rows: <int>[for (var i = 0; i < items.length; i++) i],
                  selected: (i) => i == editing,
                  onTap: (i) => setState(() => _editing = i),
                  columns: <TableColumnSpec<int>>[
                    TableColumnSpec<int>(
                      label: 'Gauge',
                      cell: (i) => Text('foresignal_data_${items[i]['name']}', style: const TextStyle(fontFamily: 'monospace', fontSize: 13)),
                    ),
                    TableColumnSpec<int>(
                      label: 'Source',
                      cell: (i) => Text('${items[i]['source']}${items[i]['kind'] == null ? '' : ' · ${items[i]['kind']}'}'),
                    ),
                    TableColumnSpec<int>(label: 'Path', cell: (i) => Text('${items[i]['path']}')),
                    TableColumnSpec<int>(label: 'Labels', cell: (i) => Text(metricLabelsText(items[i]['labels']).replaceAll('\n', ', '))),
                    TableColumnSpec<int>(
                      label: '',
                      cell: (i) => IconButton(
                        key: Key('metrics.delete.$i'),
                        tooltip: 'Delete',
                        onPressed: busy ? null : () => setState(() => _deleting = i),
                        icon: const Icon(Icons.delete_outline, size: 20),
                      ),
                    ),
                  ],
                ),
              if (_deleting case final d? when d < items.length) ...<Widget>[
                const SizedBox(height: 10),
                ConfirmRow(
                  message: 'Delete foresignal_data_${items[d]['name']}? Its series stop at once.',
                  action: 'Delete',
                  confirmKey: const Key('metrics.delete.confirm'),
                  onConfirm: () => _delete(stored, d),
                  onCancel: () => setState(() => _deleting = null),
                ),
              ],
              if (write is WriteFailed) ...<Widget>[const SizedBox(height: 8), statusLine],
              if (editing != null) ...<Widget>[
                const SizedBox(height: 16),
                Text(editing < 0 ? 'New projection' : 'Edit ${items[editing]['name']}', style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 10),
                FieldsForm(
                  key: ValueKey<String>('metrics.form.$editing'),
                  idPrefix: 'metric',
                  fields: <SettingField>[
                    ...metricProjectionFields.take(4),
                    const SettingField(
                      'labels',
                      'Labels',
                      kind: SettingKind.keyValues,
                      maxItems: 4,
                      help: 'name = path, one per line, up to 4; empty for source and external_id.',
                      hint: 'station = payload.stationId',
                    ),
                    ...metricProjectionFields.skip(4),
                  ],
                  stored: editing < 0 ? <String, Object?>{} : _editable(items[editing]),
                  saveLabel: editing < 0 ? 'Add Projection' : 'Save Projection',
                  onCancel: () => setState(() => _editing = null),
                  check: (body) => metricProjectionProblems(body, <Object?>[
                    for (var i = 0; i < items.length; i++)
                      if (i != editing) items[i]['name'],
                  ]),
                  save: (body) async {
                    final labels = (body['labels'] as Map?) ?? const <String, Object?>{};
                    final projection = <String, Object?>{
                      ...body,
                      'labels': <Json>[
                        for (final e in labels.entries) <String, Object?>{'name': e.key, 'path': e.value},
                      ],
                    };
                    final next = <Json>[
                      for (var i = 0; i < items.length; i++) i == editing ? projection : items[i],
                      if (editing < 0) projection,
                    ];
                    await replaceList(ref, metricSettingsPath, stored, 'projections', next);
                    if (mounted) {
                      setState(() => _editing = null);
                    }
                    return body;
                  },
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}

/// The infrastructure dependency rules (`getInfraRules` /
/// `updateInfraRules`): each rule on or off, its method, relation,
/// confidence and parameters.
class InfraRulesCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const InfraRulesCard({super.key});

  @override
  ConsumerState<InfraRulesCard> createState() => _InfraRulesCardState();
}

class _InfraRulesCardState extends ConsumerState<InfraRulesCard> {
  String? _editing;

  @override
  Widget build(BuildContext context) => SectionCard(
    key: const Key('infra'),
    title: 'Infrastructure Rules',
    subtitle: 'How dependencies between infrastructure entities are inferred.',
    child: AsyncView<Json>(
      value: ref.watch(settingsResourceProvider(infraRulesPath)),
      onRetry: () => ref.invalidate(settingsResourceProvider(infraRulesPath)),
      data: (stored) {
        final rules = _items(stored['rules']);
        final editing = rules.where((r) => r['id'] == _editing).firstOrNull;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            if (stored['version'] != null) ...<Widget>[
              Footnote('Rule set ${stored['version']}.'),
              const SizedBox(height: 8),
            ],
            DataTableCard<Json>(
              key: const Key('infra.table'),
              rows: rules,
              empty: 'No rules.',
              selected: (r) => r['id'] == _editing,
              onTap: (r) => setState(() => _editing = '${r['id']}'),
              columns: <TableColumnSpec<Json>>[
                TableColumnSpec<Json>(label: 'Rule', cell: (r) => Text(infraRuleNames['${r['id']}'] ?? '${r['id']}')),
                TableColumnSpec<Json>(
                  label: 'State',
                  cell: (r) => StatusLabel(
                    label: r['enabled'] == true ? 'On' : 'Off',
                    tone: r['enabled'] == true ? StatusTone.ok : StatusTone.neutral,
                  ),
                ),
                TableColumnSpec<Json>(label: 'Method', cell: (r) => Text(wireText('${r['method'] ?? '—'}'))),
                TableColumnSpec<Json>(label: 'Relation', cell: (r) => Text(wireText('${r['relation'] ?? '—'}'))),
                TableColumnSpec<Json>(label: 'Confidence', cell: (r) => Text(wireText('${r['label'] ?? '—'}'))),
                TableColumnSpec<Json>(
                  label: 'Parameters',
                  cell: (r) => Text(
                    <String>[
                      if (r['params'] is Map)
                        for (final e in (r['params']! as Map).entries) '${e.key} ${e.value}',
                    ].join(', '),
                  ),
                ),
              ],
            ),
            if (editing != null) ...<Widget>[
              const SizedBox(height: 16),
              Text(infraRuleNames['${editing['id']}'] ?? '${editing['id']}', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(height: 10),
              FieldsForm(
                key: ValueKey<String>('infra.form.${editing['id']}'),
                idPrefix: 'infra',
                fields: infraRuleFields,
                stored: editing,
                saveLabel: 'Save Rule',
                onCancel: () => setState(() => _editing = null),
                save: (body) async {
                  final next = <Json>[for (final r in rules) r['id'] == editing['id'] ? body : r];
                  await replaceList(ref, infraRulesPath, stored, 'rules', next);
                  if (mounted) {
                    setState(() => _editing = null);
                  }
                  return body;
                },
              ),
            ],
          ],
        );
      },
    ),
  );
}
