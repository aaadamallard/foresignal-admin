import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../api/api.dart';
import '../../../core/routes.dart';
import '../../../core/theme.dart';
import '../../../core/ui/ui.dart';
import '../source_providers.dart';
import '../source_test_results.dart';
import 'custom_source_draft.dart';
import 'custom_source_form.dart';
import 'custom_sources_screen.dart';

/// The devices bound to a custom source (`listIngestDevices`).
final ingestDevicesProvider = FutureProvider.family<List<IngestDevice>, String>((
  ref,
  sourceId,
) async {
  final api = ref.watch(foresignalApiProvider);
  final list = await callApiRequired(
    () => api.getIngestApi().listIngestDevices(sourceId: sourceId),
  );
  return list.toList();
});

/// The last captured requests of a custom source (`listCustomSourceSamples`).
final customSourceSamplesProvider = FutureProvider.family<List<CapturedSample>, String>((
  ref,
  sourceId,
) async {
  final api = ref.watch(foresignalApiProvider);
  final list = await callApiRequired(
    () => api.getIngestApi().listCustomSourceSamples(sourceId: sourceId),
  );
  return list.toList();
});

/// The tabs of a custom source.
enum CustomSourceTab {
  /// The definition form.
  definition('Definition'),

  /// The source ingest key and device keys.
  keys('Keys & Devices'),

  /// Captured samples and the mapping test.
  mapping('Samples & Mapping');

  const CustomSourceTab(this.label);

  /// The tab text.
  final String label;
}

/// One custom push source: its definition (`updateCustomSource`, delete), its
/// keys (`rotateIngestKey`, `createIngestDevice`, `rotateIngestDeviceKey`),
/// and its captured samples with a mapping test (`testCustomSourceMapping`).
class CustomSourceScreen extends ConsumerStatefulWidget {
  /// Creates the screen for [sourceId].
  const CustomSourceScreen({super.key, required this.sourceId});

  /// The custom source id.
  final String sourceId;

  @override
  ConsumerState<CustomSourceScreen> createState() => _CustomSourceScreenState();
}

class _CustomSourceScreenState extends ConsumerState<CustomSourceScreen> {
  CustomSourceTab _tab = CustomSourceTab.definition;
  CustomSourceDraft? _draft;
  CustomSource? _draftOf;
  bool _confirmDelete = false;
  Object? _deleteError;

  Future<void> _delete() async {
    final api = ref.read(foresignalApiProvider);
    try {
      await callApi(() => api.getIngestApi().deleteCustomSource(sourceId: widget.sourceId));
      ref
        ..invalidate(customSourcesProvider)
        ..invalidate(sourceListProvider);
      final list = await ref.read(customSourcesProvider.future);
      if (list.any((s) => s.id == widget.sourceId)) {
        throw WriteNotConfirmedException('${widget.sourceId} is still listed');
      }
      if (mounted) {
        context.go(customSourcesPath);
      }
    } on Object catch (error) {
      if (mounted) {
        setState(() {
          _confirmDelete = false;
          _deleteError = error;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final api = ref.watch(foresignalApiProvider);
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        AsyncView<List<CustomSource>>(
          value: ref.watch(customSourcesProvider),
          onRetry: () => ref.invalidate(customSourcesProvider),
          data: (list) {
            final source = list.where((s) => s.id == widget.sourceId).firstOrNull;
            if (source == null) {
              return ErrorBanner(
                error: NetworkException('No custom source ${widget.sourceId}.'),
                onRetry: () => ref.invalidate(customSourcesProvider),
              );
            }
            // Keep the operator's edits until the stored source changes.
            if (_draftOf != source) {
              _draftOf = source;
              _draft = CustomSourceDraft.edit(source, api.serializers);
            }
            final draft = _draft!;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                PageHeader(
                  title: source.name,
                  crumbs: <Crumb>[
                    const Crumb('Sources', sourcesPath),
                    const Crumb('Custom push sources', customSourcesPath),
                    Crumb(source.id),
                  ],
                  subtitle: source.description,
                  actions: <Widget>[
                    TonalButton(
                      label: 'Test & Validate',
                      icon: Icons.play_arrow,
                      onPressed: () => context.go(sourceTestPath(source.id)),
                    ),
                  ],
                ),
                if (_deleteError case final error?) ...<Widget>[
                  ErrorBanner(error: error, title: 'Could not delete'),
                  const SizedBox(height: 16),
                ],
                DefaultTabController(
                  length: CustomSourceTab.values.length,
                  initialIndex: _tab.index,
                  child: TabBar(
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    onTap: (i) => setState(() => _tab = CustomSourceTab.values[i]),
                    tabs: <Widget>[
                      for (final tab in CustomSourceTab.values)
                        Tab(key: Key('custom.tab.${tab.name}'), text: tab.label),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                switch (_tab) {
                  CustomSourceTab.definition => SectionCard(
                    title: 'Definition',
                    child: CustomSourceForm(
                      key: ValueKey<Object>(draft),
                      draft: draft,
                      onSave: (d) async {
                        final input = d.toInput();
                        await writeThenConfirm<List<CustomSource>>(
                          write: () => api.getIngestApi().updateCustomSource(
                            sourceId: source.id,
                            customSourceInput: input,
                          ),
                          reread: () async {
                            ref.invalidate(customSourcesProvider);
                            return ref.read(customSourcesProvider.future);
                          },
                          confirm: (list) {
                            final s = list.where((x) => x.id == source.id).firstOrNull;
                            if (s == null) {
                              return 'the source is gone';
                            }
                            return s.name == input.name && s.kinds == input.kinds
                                ? null
                                : 'the re-read definition differs';
                          },
                        );
                        ref.invalidate(sourceListProvider);
                      },
                      leading: <Widget>[
                        if (!_confirmDelete)
                          DangerButton(
                            key: const Key('custom.delete'),
                            label: 'Delete',
                            onPressed: () => setState(() => _confirmDelete = true),
                          )
                        else ...<Widget>[
                          DangerButton(
                            key: const Key('custom.confirmDelete'),
                            label: 'Delete — ingest stops',
                            onPressed: _delete,
                          ),
                          TextButton(
                            onPressed: () => setState(() => _confirmDelete = false),
                            child: const Text('Cancel'),
                          ),
                        ],
                      ],
                    ),
                  ),
                  CustomSourceTab.keys => KeysPanel(source: source),
                  CustomSourceTab.mapping => MappingPanel(source: source, draft: draft),
                },
              ],
            );
          },
        ),
      ],
    );
  }
}

/// The source ingest key and the device keys.
class KeysPanel extends ConsumerStatefulWidget {
  /// Creates the panel for [source].
  const KeysPanel({super.key, required this.source});

  /// The custom source.
  final CustomSource source;

  @override
  ConsumerState<KeysPanel> createState() => _KeysPanelState();
}

class _KeysPanelState extends ConsumerState<KeysPanel> {
  ({String label, String key, Widget Function(bool revealed)? extra})? _secret;
  Object? _error;
  bool _busy = false;
  bool _confirmRotate = false;
  final TextEditingController _externalId = TextEditingController();
  final TextEditingController _name = TextEditingController();

  @override
  void dispose() {
    _externalId.dispose();
    _name.dispose();
    super.dispose();
  }

  String get _id => widget.source.id;

  Future<void> _run(Future<void> Function() action) async {
    setState(() {
      _busy = true;
      _error = null;
      _secret = null;
      _confirmRotate = false;
    });
    try {
      await action();
    } on Object catch (error) {
      if (mounted) {
        setState(() => _error = error);
      }
    } finally {
      if (mounted) {
        setState(() => _busy = false);
        ref
          ..invalidate(ingestDevicesProvider(_id))
          ..invalidate(customSourcesProvider);
      }
    }
  }

  Widget Function(bool revealed)? _setup(IngestDeviceSetup setup, String key) {
    final lines = <String>[
      if (setup.traccar?.serverUrl case final url?) 'Traccar / OsmAnd: $url',
      if (setup.overland?.endpoint case final url?) 'Overland: $url',
      if (setup.gpslogger?.urlTemplate case final url?) 'GPSLogger: $url',
    ];
    if (lines.isEmpty) {
      return null;
    }
    final text = lines.join('\n');
    // The URLs embed the key: masked with it until it is revealed.
    return (revealed) =>
        SelectableText(revealed ? text : OneTimeSecret.maskSecret(text, key));
  }

  @override
  Widget build(BuildContext context) {
    final ingest = ref.read(foresignalApiProvider).getIngestApi();
    final muted = AdminPalette.of(context).muted;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        if (_secret case final s?) ...<Widget>[
          OneTimeSecret(
            label: s.label,
            secret: s.key,
            extra: s.extra,
            onDismiss: () => setState(() => _secret = null),
          ),
          const SizedBox(height: 16),
        ],
        if (_error case final e?) ...<Widget>[ErrorBanner(error: e), const SizedBox(height: 16)],
        SectionCard(
          title: 'Source ingest key',
          subtitle: 'Authenticates any sender for this source.',
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  widget.source.ingestKeyPrefix == null
                      ? 'Key prefix not reported'
                      : 'Current key starts ${widget.source.ingestKeyPrefix}…',
                  style: TextStyle(color: muted),
                ),
              ),
              if (!_confirmRotate)
                OutlinedButton(
                  key: const Key('custom.rotateKey'),
                  onPressed: _busy ? null : () => setState(() => _confirmRotate = true),
                  child: const Text('Rotate key'),
                )
              else ...<Widget>[
                DangerButton(
                  key: const Key('custom.confirmRotate'),
                  label: 'Rotate — the old key stops working',
                  onPressed: () => _run(() async {
                    final r = await callApiRequired(() => ingest.rotateIngestKey(sourceId: _id));
                    if (mounted) {
                      setState(
                        () => _secret = (label: 'New ingest key', key: r.ingestKey, extra: null),
                      );
                    }
                  }),
                ),
                TextButton(
                  onPressed: () => setState(() => _confirmRotate = false),
                  child: const Text('Cancel'),
                ),
              ],
            ],
          ),
        ),
        const SizedBox(height: 16),
        SectionCard(
          title: 'Devices',
          subtitle: 'A device key works only for this source and pins the external id it reports.',
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              AsyncView<List<IngestDevice>>(
                value: ref.watch(ingestDevicesProvider(_id)),
                onRetry: () => ref.invalidate(ingestDevicesProvider(_id)),
                data: (devices) => DataTableCard<IngestDevice>(
                  rows: devices,
                  empty: 'No device keys yet.',
                  columns: <TableColumnSpec<IngestDevice>>[
                    TableColumnSpec<IngestDevice>(label: 'Name', cell: (d) => Text(d.name)),
                    TableColumnSpec<IngestDevice>(
                      label: 'External id',
                      cell: (d) => Text(d.externalId),
                    ),
                    TableColumnSpec<IngestDevice>(
                      label: 'Key',
                      cell: (d) => Text('${d.keyPrefix}…'),
                    ),
                    TableColumnSpec<IngestDevice>(
                      label: 'Last seen',
                      cell: (d) => Text(utcText(d.lastSeenAt)),
                    ),
                    TableColumnSpec<IngestDevice>(
                      label: '',
                      cell: (d) => d.revokedAt != null
                          ? const StatusLabel(label: 'Revoked', tone: StatusTone.neutral)
                          : TonalButton(
                              key: Key('custom.rotateDevice.${d.id}'),
                              label: 'Rotate key',
                              onPressed: _busy
                                  ? null
                                  : () => _run(() async {
                                      final r = await callApiRequired(
                                        () => ingest.rotateIngestDeviceKey(
                                          sourceId: _id,
                                          deviceId: d.id,
                                        ),
                                      );
                                      if (mounted) {
                                        setState(
                                          () => _secret = (
                                            label: 'New key for ${r.name}',
                                            key: r.key,
                                            extra: _setup(r.setup, r.key),
                                          ),
                                        );
                                      }
                                    }),
                            ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 220,
                    child: TextField(
                      key: const Key('custom.device.externalId'),
                      controller: _externalId,
                      decoration: const InputDecoration(hintText: 'External id'),
                    ),
                  ),
                  SizedBox(
                    width: 220,
                    child: TextField(
                      key: const Key('custom.device.name'),
                      controller: _name,
                      decoration: const InputDecoration(hintText: 'Device name'),
                    ),
                  ),
                  FilledButton.icon(
                    key: const Key('custom.device.add'),
                    onPressed: _busy
                        ? null
                        : () {
                            final externalId = _externalId.text.trim();
                            final name = _name.text.trim();
                            if (externalId.isEmpty || name.isEmpty) {
                              setState(
                                () => _error = const FormatException(
                                  'Enter the device external id and a name.',
                                ),
                              );
                              return;
                            }
                            _run(() async {
                              final r = await callApiRequired(
                                () => ingest.createIngestDevice(
                                  sourceId: _id,
                                  ingestDeviceInput: IngestDeviceInput(
                                    (b) => b
                                      ..externalId = externalId
                                      ..name = name,
                                  ),
                                ),
                              );
                              _externalId.clear();
                              _name.clear();
                              if (mounted) {
                                setState(
                                  () => _secret = (
                                    label: 'Device key for ${r.name}',
                                    key: r.key,
                                    extra: _setup(r.setup, r.key),
                                  ),
                                );
                              }
                            });
                          },
                    icon: const Icon(Icons.add, size: 18),
                    label: const Text('Add Device'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/// Captured samples and a mapping test over them.
class MappingPanel extends ConsumerStatefulWidget {
  /// Creates the panel for [source]; [draft] holds a proposed mapping.
  const MappingPanel({super.key, required this.source, required this.draft});

  /// The custom source.
  final CustomSource source;

  /// The definition draft (its mapping text is the proposed mapping).
  final CustomSourceDraft draft;

  @override
  ConsumerState<MappingPanel> createState() => _MappingPanelState();
}

class _MappingPanelState extends ConsumerState<MappingPanel> {
  bool _busy = false;
  MappingTestResult? _result;
  Object? _error;

  Future<void> _test({required bool proposed}) async {
    setState(() {
      _busy = true;
      _result = null;
      _error = null;
    });
    try {
      final mapping = proposed ? widget.draft.proposedMapping() : null;
      final result = await callApiRequired(
        () => ref
            .read(foresignalApiProvider)
            .getIngestApi()
            .testCustomSourceMapping(
              sourceId: widget.source.id,
              mappingTestRequest: mapping == null
                  ? null
                  : MappingTestRequest((b) => b.mapping.replace(mapping)),
            ),
      );
      if (mounted) {
        setState(() => _result = result);
      }
    } on Object catch (error) {
      if (mounted) {
        setState(() => _error = error);
      }
    } finally {
      if (mounted) {
        setState(() => _busy = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final id = widget.source.id;
    final muted = AdminPalette.of(context).muted;
    final capturing = widget.source.captureSamples ?? false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SectionCard(
          title: 'Mapping test',
          subtitle: 'Runs a mapping over the captured samples. Nothing is written.',
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: <Widget>[
                  FilledButton(
                    key: const Key('custom.testStored'),
                    onPressed: _busy ? null : () => _test(proposed: false),
                    child: const Text('Test stored mapping'),
                  ),
                  OutlinedButton(
                    key: const Key('custom.testProposed'),
                    onPressed: _busy || widget.draft.mapping.trim().isEmpty
                        ? null
                        : () => _test(proposed: true),
                    child: const Text('Test the mapping in Definition'),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              if (_busy) const LinearProgressIndicator(),
              if (_error case final e?) ErrorBanner(error: e),
              if (_result case final r?) _results(r),
            ],
          ),
        ),
        const SizedBox(height: 16),
        SectionCard(
          title: 'Captured samples',
          subtitle: capturing
              ? 'The last 5 requests, redacted.'
              : 'Sample capture is off; turn it on in Definition to keep the next requests.',
          actions: <Widget>[
            IconButton(
              tooltip: 'Refresh',
              icon: const Icon(Icons.refresh, size: 18),
              onPressed: () => ref.invalidate(customSourceSamplesProvider(id)),
            ),
          ],
          child: AsyncView<List<CapturedSample>>(
            value: ref.watch(customSourceSamplesProvider(id)),
            onRetry: () => ref.invalidate(customSourceSamplesProvider(id)),
            data: (samples) => samples.isEmpty
                ? Text('No samples captured.', style: TextStyle(color: muted))
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      for (final s in samples)
                        ExpansionTile(
                          tilePadding: EdgeInsets.zero,
                          title: Text(
                            '${s.method.name} ${s.format ?? '(default)'} · ${utcText(s.receivedAt)}',
                          ),
                          subtitle: Text(
                            '${s.contentType ?? '—'} · ${s.bodyBytes ?? 0} bytes'
                            '${(s.truncated ?? false) ? ' (truncated)' : ''}',
                          ),
                          children: <Widget>[
                            SelectableText(
                              s.body ?? '',
                              style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
                            ),
                          ],
                        ),
                    ],
                  ),
          ),
        ),
      ],
    );
  }

  Widget _results(MappingTestResult r) {
    final records = r.samples.fold<int>(0, (n, s) => n + s.records.length);
    final rejections = r.samples.fold<int>(0, (n, s) => n + s.rejections.length);
    final warnings = r.samples.fold<int>(0, (n, s) => n + s.warnings.length);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        ResultPanel(
          key: const Key('custom.mappingResult'),
          title: r.samples.isEmpty
              ? 'No samples to test'
              : rejections == 0
              ? 'Mapping produced $records record${records == 1 ? '' : 's'}'
              : 'Mapping rejected $rejections item${rejections == 1 ? '' : 's'}',
          tone: r.samples.isEmpty
              ? StatusTone.neutral
              : rejections == 0
              ? StatusTone.ok
              : StatusTone.warning,
          details: <MapEntry<String, Object>>[
            MapEntry<String, Object>('Mapping', r.mappingSource.name),
            MapEntry<String, Object>('Samples', '${r.samples.length}'),
            MapEntry<String, Object>('Records', '$records'),
            MapEntry<String, Object>('Warnings', '$warnings'),
          ],
        ),
        for (final s in r.samples)
          for (final rej in s.rejections)
            Text(
              'Rejected item ${rej.index}: ${rej.reason}${rej.externalId == null ? '' : ' (${rej.externalId})'}',
            ),
        for (final s in r.samples)
          for (final w in s.warnings) Text('Warning ${w.code}: ${w.message}'),
      ],
    );
  }
}
