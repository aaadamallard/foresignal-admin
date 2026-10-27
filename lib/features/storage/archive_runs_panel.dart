import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/permissions.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_providers.dart' show Json;
import '../forecasting/forecasting_widgets.dart'
    show ConfirmRow, Footnote, PlainField, WriteTracking, whenText;
import '../serving/archive.dart' show ArchiveSettingsForm, dateProblem;
import '../serving/serving_providers.dart' show archiveSettingsProvider;
import 'storage_providers.dart';

/// The Archive tab: where cold segments go (the archive settings, with the
/// `local` / `s3` / `glacier` target, the cutoff and the schedule), a run on
/// request (`runArchive`), and the inventory (`listArchives`) with a restore
/// per segment (`restoreArchive`).
class ArchiveRunsPanel extends ConsumerWidget {
  /// Creates the panel.
  const ArchiveRunsPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      SectionCard(
        key: const Key('storage.archive.settings'),
        title: 'Archive Target',
        subtitle:
            'An external disk, an S3 bucket, or S3 with an archival storage class. "Archive, '
            'then purge": data past the cutoff is written, verified, then removed from the database.',
        child: AsyncView<Json>(
          value: ref.watch(archiveSettingsProvider),
          onRetry: () => ref.invalidate(archiveSettingsProvider),
          data: (s) =>
              ArchiveSettingsForm(key: const ValueKey<String>('storage.archive'), settings: s),
        ),
      ),
      const SizedBox(height: 20),
      const ArchiveRunCard(),
      const SizedBox(height: 20),
      const ArchiveInventoryCard(),
    ],
  );
}

/// Runs an archive now (`runArchive`), optionally with a cutoff override or
/// as a dry run that only counts.
class ArchiveRunCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const ArchiveRunCard({super.key});

  @override
  ConsumerState<ArchiveRunCard> createState() => _ArchiveRunCardState();
}

class _ArchiveRunCardState extends ConsumerState<ArchiveRunCard>
    with WriteTracking<ArchiveRunCard> {
  final TextEditingController _cutoff = TextEditingController();
  bool _dryRun = true;
  bool _confirming = false;
  String? _cutoffError;
  Json? _result;

  @override
  void dispose() {
    _cutoff.dispose();
    super.dispose();
  }

  String? _cutoffIso() {
    final t = _cutoff.text.trim();
    return t.isEmpty ? null : '${t}T00:00:00Z';
  }

  void _ask() {
    var problem = dateProblem(_cutoff.text);
    final iso = _cutoffIso();
    if (problem == null && iso != null && !DateTime.parse(iso).isBefore(DateTime.now().toUtc())) {
      problem = 'The cutoff must be in the past.';
    }
    setState(() {
      _cutoffError = problem;
      _confirming = problem == null;
      _result = null;
    });
  }

  Future<void> _run() async {
    setState(() => _confirming = false);
    final body = <String, Object?>{'dryRun': _dryRun, 'cutoff': ?_cutoffIso()};
    final result = await track(
      () => jsonObjectCall(ref.read(backendDioProvider), 'POST', '/v1/archives/run', body: body),
    );
    if (result != null && mounted) {
      setState(() => _result = result);
      if (!_dryRun) {
        ref.invalidate(archivesProvider);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final cutoff = _cutoff.text.trim();
    return SectionCard(
      key: const Key('storage.archive.run'),
      title: 'Run Archive',
      subtitle: 'Archives data older than the configured cutoff, or the date given here.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          LabeledField(
            label: 'Cutoff override',
            help: 'Optional; a past date (yyyy-mm-dd, UTC). Empty uses the configured cutoff.',
            field: PlainField(
              key: const Key('archiveRun.cutoff'),
              controller: _cutoff,
              hint: 'yyyy-mm-dd',
              error: _cutoffError,
            ),
          ),
          CheckboxListTile(
            key: const Key('archiveRun.dryRun'),
            contentPadding: EdgeInsets.zero,
            controlAffinity: ListTileControlAffinity.leading,
            value: _dryRun,
            onChanged: busy ? null : (v) => setState(() => _dryRun = v ?? true),
            title: const Text('Dry run'),
            subtitle: const Text('Count what would be archived; nothing is written or purged.'),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 12,
            runSpacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: <Widget>[
              PermissionGate(
                permission: Permissions.storageManage,
                child: TonalButton(
                  key: const Key('archiveRun.start'),
                  label: _dryRun ? 'Count' : 'Run Archive',
                  icon: Icons.archive_outlined,
                  onPressed: busy ? null : _ask,
                ),
              ),
              statusLine,
            ],
          ),
          if (_confirming) ...<Widget>[
            const SizedBox(height: 12),
            ConfirmRow(
              confirmKey: const Key('archiveRun.confirm'),
              message: _dryRun
                  ? 'Count what an archive ${cutoff.isEmpty ? 'at the configured cutoff' : 'before $cutoff'} '
                        'would take?'
                  : 'Archive data ${cutoff.isEmpty ? 'past the configured cutoff' : 'before $cutoff'}? '
                        'Once verified, it is purged from the database.',
              action: _dryRun ? 'Count' : 'Archive',
              onConfirm: _run,
              onCancel: () => setState(() => _confirming = false),
            ),
          ],
          if (_result case final r?) ...<Widget>[
            const SizedBox(height: 12),
            ResultPanel(
              key: const Key('archiveRun.result'),
              title: r['status'] == 'pending' && _dryRun ? 'Would archive' : 'Archive started',
              tone: StatusTone.info,
              details: <MapEntry<String, Object>>[
                MapEntry<String, Object>('Rows', '${r['itemCount'] ?? '—'}'),
                if (r['cutoff'] != null) MapEntry<String, Object>('Cutoff', whenText(r['cutoff'])),
                if (r['id'] != null) MapEntry<String, Object>('Archive', '${r['id']}'),
                MapEntry<String, Object>('Status', wireText('${r['status']}')),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

/// The tone of an archive or backup [status].
StatusTone storageStatusTone(Object? status) => switch (status) {
  'complete' || 'purged' || 'restored' => StatusTone.ok,
  'failed' => StatusTone.error,
  'pending' || 'running' || 'verifying' || 'restoring' => StatusTone.info,
  _ => StatusTone.neutral,
};

/// The archive inventory (`listArchives`) with a restore per segment.
class ArchiveInventoryCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const ArchiveInventoryCard({super.key});

  @override
  ConsumerState<ArchiveInventoryCard> createState() => _ArchiveInventoryCardState();
}

class _ArchiveInventoryCardState extends ConsumerState<ArchiveInventoryCard>
    with WriteTracking<ArchiveInventoryCard> {
  String? _restoring;

  Future<void> _restore(String id) async {
    setState(() => _restoring = null);
    final done = await track(
      () => jsonObjectCall(
        ref.read(backendDioProvider),
        'POST',
        '/v1/archives/${Uri.encodeComponent(id)}/restore',
        body: const <String, Object?>{'confirm': true},
      ),
    );
    if (done != null && mounted) {
      ref.invalidate(archivesProvider);
    }
  }

  @override
  Widget build(BuildContext context) => SectionCard(
    key: const Key('storage.archive.inventory'),
    title: 'Archives',
    subtitle: 'Every archive segment, where it is, and whether it is still in the database.',
    actions: <Widget>[
      IconButton(
        tooltip: 'Refresh',
        onPressed: () => ref.invalidate(archivesProvider),
        icon: const Icon(Icons.refresh),
      ),
    ],
    child: AsyncView<List<Json>>(
      value: ref.watch(archivesProvider),
      onRetry: () => ref.invalidate(archivesProvider),
      data: (archives) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          DataTableCard<Json>(
            rows: archives,
            empty: 'No archives yet. Run Archive, with Dry run off, makes one.',
            columns: <TableColumnSpec<Json>>[
              TableColumnSpec<Json>(label: 'Created', cell: (a) => Text(whenText(a['createdAt']))),
              TableColumnSpec<Json>(
                label: 'Status',
                cell: (a) => StatusChip(
                  label: wireText('${a['status']}'),
                  tone: storageStatusTone(a['status']),
                  tooltip: a['error'] as String?,
                ),
              ),
              TableColumnSpec<Json>(label: 'Target', cell: (a) => Text(wireText('${a['target']}'))),
              TableColumnSpec<Json>(label: 'Cutoff', cell: (a) => Text(whenText(a['cutoff']))),
              TableColumnSpec<Json>(
                label: 'Rows',
                numeric: true,
                cell: (a) => Text('${a['itemCount'] ?? '—'}'),
              ),
              TableColumnSpec<Json>(
                label: 'Size',
                numeric: true,
                cell: (a) => Text(storageBytesText(a['sizeBytes'])),
              ),
              TableColumnSpec<Json>(
                label: 'In database',
                cell: (a) => Text(a['purgedFromHot'] == true ? 'Purged' : 'Yes'),
              ),
              TableColumnSpec<Json>(
                label: '',
                cell: (a) => a['purgedFromHot'] == true && a['status'] != 'restoring'
                    ? PermissionGate(
                        permission: Permissions.storageManage,
                        child: TextButton(
                          key: Key('archive.restore.${a['id']}'),
                          onPressed: busy ? null : () => setState(() => _restoring = '${a['id']}'),
                          child: const Text('Restore'),
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
            ],
          ),
          if (_restoring case final id?) ...<Widget>[
            const SizedBox(height: 12),
            ConfirmRow(
              confirmKey: const Key('archive.confirmRestore'),
              message:
                  'Restore archive $id into the database? A Glacier segment is thawed first, '
                  'which can take hours.',
              action: 'Restore',
              onConfirm: () => _restore(id),
              onCancel: () => setState(() => _restoring = null),
            ),
          ],
          const SizedBox(height: 8),
          statusLine,
          if (archives.length >= storageMaxPages * storagePageSize)
            Footnote('Showing the newest ${archives.length} archives.'),
        ],
      ),
    ),
  );
}
