import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_widgets.dart' show whenText;
import '../serving/serving_widgets.dart' show countText;
import '../sources/source_widgets.dart' show byteText;
import 'system_drafts.dart';
import 'system_providers.dart';
import 'system_widgets.dart';

/// The tone of the system [status] (`ok`, `degraded`, `down`).
StatusTone systemStatusTone(Object? status) => switch (status) {
  'ok' || 'up' => StatusTone.ok,
  'degraded' => StatusTone.warning,
  'down' => StatusTone.error,
  _ => StatusTone.neutral,
};

/// [seconds] of uptime as days, hours and minutes.
String uptimeText(Object? seconds) {
  if (seconds is! num) {
    return '—';
  }
  final d = Duration(seconds: seconds.round());
  final parts = <String>[
    if (d.inDays > 0) '${d.inDays} d',
    if (d.inHours % 24 > 0) '${d.inHours % 24} h',
    '${d.inMinutes % 60} min',
  ];
  return parts.join(' ');
}

String _bytes(Object? v) => v is num ? byteText(v) : '—';

String _text(Object? v) => v == null || '$v'.isEmpty ? '—' : '$v';

/// The Overview tab: the instance's health and what it holds
/// (`getSystem`), and the client contract in force (`getContract`).
class SystemOverviewPanel extends ConsumerWidget {
  /// Creates the panel.
  const SystemOverviewPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => AsyncView<Json>(
    value: ref.watch(systemInfoProvider),
    onRetry: () => ref.invalidate(systemInfoProvider),
    data: (s) => _Overview(system: s),
  );
}

class _Overview extends ConsumerWidget {
  const _Overview({required this.system});

  final Json system;

  Json? _m(String key) => system[key] is Map ? (system[key]! as Map).cast<String, Object?>() : null;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = system;
    final db = _m('database');
    final records = _m('records');
    final sources = _m('sources');
    final scheduler = _m('scheduler');
    final writer = _m('ingestWriter');
    final catchUp = _m('catchUp');
    final streams = _m('streams');
    final notifications = _m('notifications');
    final llm = _m('llm');
    final search = _m('search');
    final mcp = _m('mcp');
    final sinks = _m('sinks');
    final exports = _m('exports');
    final archive = _m('archive');
    final holds = _m('holds');
    final rasters = _m('rasters');
    final mqtt = _m('mqtt');
    final limits = _m('limits');
    final security = _m('security');
    final warnings = <Json>[
      if (s['warnings'] is List)
        for (final w in s['warnings']! as List)
          if (w is Map) w.cast<String, Object?>(),
      if (security?['warnings'] is List)
        for (final w in security!['warnings']! as List)
          if (w is Map) w.cast<String, Object?>(),
    ];
    final cards = <Widget>[
      if (db != null)
        _Facts('Database', 'system.database', <MapEntry<String, Object>>[
          MapEntry<String, Object>(
            'Status',
            StatusLabel(label: wireText(_text(db['status'])), tone: systemStatusTone(db['status'])),
          ),
          MapEntry<String, Object>('Size', _bytes(db['sizeBytes'])),
          MapEntry<String, Object>('PostGIS', _text(db['postgisVersion'])),
        ]),
      if (records != null)
        _Facts('Records', 'system.records', <MapEntry<String, Object>>[
          MapEntry<String, Object>('Current', countText(records['current'])),
          MapEntry<String, Object>('Versions', countText(records['versions'])),
          MapEntry<String, Object>('Last seq', countText(records['lastSeq'])),
        ]),
      if (sources != null)
        _Facts('Sources', 'system.sources', <MapEntry<String, Object>>[
          MapEntry<String, Object>('Enabled', '${countText(sources['enabled'])} of ${countText(sources['total'])}'),
          MapEntry<String, Object>('Healthy', countText(sources['healthy'])),
          MapEntry<String, Object>(
            'Degraded',
            StatusLabel(
              label: countText(sources['degraded']),
              tone: (sources['degraded'] as num? ?? 0) > 0 ? StatusTone.warning : StatusTone.neutral,
              showIcon: false,
            ),
          ),
          MapEntry<String, Object>(
            'Failing',
            StatusLabel(
              label: countText(sources['failing']),
              tone: (sources['failing'] as num? ?? 0) > 0 ? StatusTone.error : StatusTone.neutral,
              showIcon: false,
            ),
          ),
        ]),
      if (scheduler != null || writer != null)
        _Facts('Ingest', 'system.ingest', <MapEntry<String, Object>>[
          if (scheduler != null) ...<MapEntry<String, Object>>[
            MapEntry<String, Object>('Scheduler', scheduler['running'] == true ? 'Running' : 'Stopped'),
            MapEntry<String, Object>('Scheduled sources', countText(scheduler['scheduledSources'])),
            MapEntry<String, Object>(
              'Active',
              '${countText(scheduler['activeFetches'])} fetches, ${countText(scheduler['activeStreams'])} streams',
            ),
          ],
          if (writer != null) ...<MapEntry<String, Object>>[
            MapEntry<String, Object>(
              'Writer',
              StatusLabel(
                label: wireText(_text(writer['state'])),
                tone: writer['state'] == 'RUNNING' ? StatusTone.ok : StatusTone.error,
              ),
            ),
            MapEntry<String, Object>('Queue', countText(writer['queueDepth'] ?? scheduler?['ingestQueueDepth'])),
            MapEntry<String, Object>('Last ingested', whenText(writer['lastIngestedAt'])),
            if (writer['warnings'] is List && (writer['warnings']! as List).isNotEmpty)
              MapEntry<String, Object>('Writer warnings', (writer['warnings']! as List).join('\n')),
          ],
          if (catchUp != null)
            MapEntry<String, Object>(
              'Catching up',
              catchUp['catchingUp'] == true
                  ? StatusLabel(label: 'Yes, ${countText(catchUp['triggerLagSeq'])} seq behind', tone: StatusTone.warning)
                  : 'No',
            ),
        ]),
      if (streams != null || notifications != null)
        _Facts('Streams and Delivery', 'system.streams', <MapEntry<String, Object>>[
          if (streams != null) ...<MapEntry<String, Object>>[
            MapEntry<String, Object>('Stream clients', '${countText(streams['clients'])} of ${countText(streams['maxClients'])}'),
            MapEntry<String, Object>(
              'Subscribers',
              'changes ${countText(streams['changeSubscribers'])}, alerts ${countText(streams['alertSubscribers'])}, '
                  'events ${countText(streams['eventSubscribers'])}',
            ),
          ],
          if (notifications != null) ...<MapEntry<String, Object>>[
            MapEntry<String, Object>('Channels', countText(notifications['channels'])),
            MapEntry<String, Object>('Pending deliveries', countText(notifications['pendingDeliveries'])),
            MapEntry<String, Object>('Failed, 24 h', countText(notifications['failedLast24h'])),
          ],
          if (mqtt != null)
            MapEntry<String, Object>(
              'MQTT',
              '${countText(mqtt['connected'])} of ${countText(mqtt['connections'])} connected'
                  '${mqtt['lastError'] == null ? '' : '\n${mqtt['lastError']}'}',
            ),
        ]),
      if (llm != null || search != null || mcp != null)
        _Facts('AI, Search and MCP', 'system.ai', <MapEntry<String, Object>>[
          if (llm != null) ...<MapEntry<String, Object>>[
            MapEntry<String, Object>('LLM', llm['configured'] == true ? 'Configured' : 'Not configured'),
            MapEntry<String, Object>(
              'Providers',
              'chat ${_text(llm['chatProvider'])}, embeddings ${_text(llm['embeddingProvider'])}',
            ),
            MapEntry<String, Object>('Tokens today', countText(llm['tokensToday'])),
          ],
          if (search != null) ...<MapEntry<String, Object>>[
            MapEntry<String, Object>(
              'Semantic search',
              search['semanticEnabled'] == true
                  ? 'On, ${wireText(_text(search['reindexState']))}'
                  : 'Off${search['reason'] == null ? '' : ': ${search['reason']}'}',
            ),
            MapEntry<String, Object>(
              'Documents',
              '${countText(search['documents'])}, ${countText(search['backlog'])} waiting',
            ),
          ],
          if (mcp != null)
            MapEntry<String, Object>(
              'MCP',
              mcp['enabled'] == true
                  ? 'On, ${countText(mcp['sessions'])} ${mcp['sessions'] == 1 ? 'session' : 'sessions'}, ${countText(mcp['tools'])} tools'
                  : 'Off',
            ),
        ]),
      if (sinks != null || exports != null || archive != null || holds != null)
        _Facts('Serving', 'system.serving', <MapEntry<String, Object>>[
          if (sinks != null)
            MapEntry<String, Object>('Sinks', '${countText(sinks['enabled'])} enabled, ${countText(sinks['failing'])} failing'),
          if (exports != null) ...<MapEntry<String, Object>>[
            MapEntry<String, Object>(
              'Exports',
              '${countText(exports['queued'])} queued, ${countText(exports['running'])} running '
                  '(at most ${countText(exports['maxConcurrent'])})',
            ),
            MapEntry<String, Object>('Export disk', '${_bytes(exports['bytes'])} of ${_bytes(exports['quotaBytes'])}'),
          ],
          if (archive != null)
            MapEntry<String, Object>(
              'Archive',
              archive['enabled'] == true
                  ? '${wireText(_text(archive['target']))}, ${_bytes(archive['bytes'])}; last run ${whenText(archive['lastRunAt'])}'
                  : 'Off',
            ),
          if (holds != null)
            MapEntry<String, Object>('Holds', '${countText(holds['count'])} holding ${countText(holds['rows'])} rows'),
        ]),
      if (rasters != null)
        _Facts('Rasters', 'system.rasters', <MapEntry<String, Object>>[
          MapEntry<String, Object>('Profile', wireText(_text(rasters['profile']))),
          MapEntry<String, Object>('Products', '${countText(rasters['products'])}, ${countText(rasters['frames'])} frames'),
          MapEntry<String, Object>('Stores', '${_bytes(rasters['storeBytes'])} frames, ${_bytes(rasters['mediaBytes'])} media'),
          MapEntry<String, Object>(
            'Disk quota',
            StatusLabel(
              label: '${rasters['diskQuotaPct'] is num ? '${(rasters['diskQuotaPct']! as num).round()}%' : '—'} '
                  'of ${_text(rasters['diskQuotaGb'])} GB',
              tone: (rasters['diskQuotaPct'] as num? ?? 0) >= 90 ? StatusTone.warning : StatusTone.neutral,
              showIcon: false,
            ),
          ),
          MapEntry<String, Object>('Downloaded today', '${_text(rasters['mbDownloadedToday'])} MB'),
        ]),
      if (limits != null)
        _Facts('Limits', 'system.limits', <MapEntry<String, Object>>[
          MapEntry<String, Object>('Page', '${countText(limits['pageMax'])}, history ${countText(limits['historyPageMax'])}'),
          MapEntry<String, Object>('Live entities', countText(limits['liveMaxEntities'])),
          MapEntry<String, Object>(
            'Ingest',
            '${countText(limits['ingestMaxRecords'])} records, ${_bytes(limits['ingestMaxBytes'])}',
          ),
          MapEntry<String, Object>('Tile features', countText(limits['tileMaxFeatures'])),
          MapEntry<String, Object>('Client buffer', countText(limits['sseClientBuffer'])),
        ]),
      const _ContractCard(),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SectionCard(
          key: const Key('system.status'),
          title: 'Instance',
          subtitle: 'What /v1/system reports now.',
          actions: <Widget>[
            IconButton(
              key: const Key('system.refresh'),
              tooltip: 'Refresh',
              onPressed: () {
                ref.invalidate(systemInfoProvider);
                ref.invalidate(contractProvider);
              },
              icon: const Icon(Icons.refresh),
            ),
          ],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              KeyValueList(
                entries: <MapEntry<String, Object>>[
                  MapEntry<String, Object>(
                    'Status',
                    StatusLabel(label: wireText(_text(s['status'])), tone: systemStatusTone(s['status'])),
                  ),
                  MapEntry<String, Object>('Version', '${_text(s['version'])} (API ${_text(s['apiVersion'])})'),
                  MapEntry<String, Object>('Mode', s['mode'] == 'edge' ? 'Edge' : 'Full'),
                  MapEntry<String, Object>('Started', whenText(s['startedAt'])),
                  MapEntry<String, Object>('Uptime', uptimeText(s['uptimeSeconds'])),
                  if (security != null)
                    MapEntry<String, Object>(
                      'Reads',
                      security['openReads'] == true
                          ? 'Open${security['anonymousRestricted'] == true ? ', restricted for anonymous callers' : ''}'
                          : 'Token required',
                    ),
                ],
              ),
              if (warnings.isNotEmpty) ...<Widget>[
                const SizedBox(height: 14),
                SettingsWarnings(key: const Key('system.warnings'), warnings: warnings),
              ],
              if (s['features'] is Map) ...<Widget>[
                const SizedBox(height: 10),
                _Features(features: (s['features']! as Map).cast<String, Object?>()),
              ],
            ],
          ),
        ),
        const SizedBox(height: 20),
        LayoutBuilder(
          builder: (context, box) {
            final columns = box.maxWidth >= 1100 ? 3 : (box.maxWidth >= 700 ? 2 : 1);
            final width = (box.maxWidth - 20 * (columns - 1)) / columns;
            return Wrap(
              spacing: 20,
              runSpacing: 20,
              children: <Widget>[for (final c in cards) SizedBox(width: width, child: c)],
            );
          },
        ),
        if (s['history'] case {'tiers': final List<Object?> tiers} when tiers.isNotEmpty) ...<Widget>[
          const SizedBox(height: 20),
          _HistoryCard(history: (s['history']! as Map).cast<String, Object?>(), tiers: tiers),
        ],
      ],
    );
  }
}

class _Features extends StatelessWidget {
  const _Features({required this.features});

  final Json features;

  @override
  Widget build(BuildContext context) {
    final palette = AdminPalette.of(context);
    final names = features.keys.toList()..sort();
    return Wrap(
      key: const Key('system.features'),
      spacing: 6,
      runSpacing: 6,
      children: <Widget>[
        for (final n in names)
          Chip(
            visualDensity: VisualDensity.compact,
            avatar: Icon(
              features[n] == true ? Icons.check : Icons.remove,
              size: 16,
              color: features[n] == true ? palette.ok : palette.muted,
            ),
            label: Text(n, style: TextStyle(color: features[n] == true ? null : palette.muted)),
          ),
      ],
    );
  }
}

class _Facts extends StatelessWidget {
  const _Facts(this.title, this.keyName, this.entries);

  final String title;
  final String keyName;
  final List<MapEntry<String, Object>> entries;

  @override
  Widget build(BuildContext context) => SectionCard(
    key: Key(keyName),
    title: title,
    child: KeyValueList(entries: entries, keyWidth: 140),
  );
}

class _ContractCard extends ConsumerWidget {
  const _ContractCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) => SectionCard(
    key: const Key('system.contract'),
    title: 'Client Contract',
    child: AsyncView<Json>(
      value: ref.watch(contractProvider),
      onRetry: () => ref.invalidate(contractProvider),
      data: (c) => KeyValueList(
        keyWidth: 140,
        entries: <MapEntry<String, Object>>[
          MapEntry<String, Object>('Contract', _text(c['contractVersion'])),
          MapEntry<String, Object>('Context schema', _text(c['contextSchemaVersion'])),
          MapEntry<String, Object>('Deep links', _text(c['deepLinkVersion'])),
          MapEntry<String, Object>('Object types', (c['objectTypes'] as List?)?.join(', ') ?? '—'),
          MapEntry<String, Object>('Relation types', (c['relationTypes'] as List?)?.join(', ') ?? '—'),
        ],
      ),
    ),
  );
}

class _HistoryCard extends StatelessWidget {
  const _HistoryCard({required this.history, required this.tiers});

  final Json history;
  final List<Object?> tiers;

  @override
  Widget build(BuildContext context) => SectionCard(
    key: const Key('system.history'),
    title: 'History Storage',
    subtitle: 'Record versions by tier.',
    child: DataTableCard<Json>(
      rows: <Json>[
        for (final t in tiers)
          if (t is Map) t.cast<String, Object?>(),
      ],
      columns: <TableColumnSpec<Json>>[
        TableColumnSpec<Json>(label: 'Tier', cell: (t) => Text(wireText('${t['tier']}'))),
        TableColumnSpec<Json>(label: 'Partitions', numeric: true, cell: (t) => Text(countText(t['partitions']))),
        TableColumnSpec<Json>(label: 'Rows', numeric: true, cell: (t) => Text(countText(t['rows']))),
        TableColumnSpec<Json>(label: 'Size', numeric: true, cell: (t) => Text(_bytes(t['bytes']))),
        TableColumnSpec<Json>(
          label: 'Window',
          numeric: true,
          cell: (t) => Text(t['windowDays'] is num ? '${t['windowDays']} d' : '—'),
        ),
        TableColumnSpec<Json>(label: 'Headroom', numeric: true, cell: (t) => Text(countText(t['headroomSeq']))),
        TableColumnSpec<Json>(
          label: 'Thinned',
          numeric: true,
          cell: (t) => Text(t['downsampledLeaves'] is num && t['downsampledLeaves'] != 0 ? countText(t['downsampledLeaves']) : '—'),
        ),
      ],
    ),
  );
}
