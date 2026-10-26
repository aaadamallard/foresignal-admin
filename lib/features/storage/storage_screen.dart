import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/routes.dart';
import '../../core/ui/ui.dart';
import 'archive_runs_panel.dart';
import 'backup_panel.dart';
import 'resources_panel.dart';
import 'retention_cap_panel.dart';

/// The tabs of the Storage section, each its own route.
enum StorageTab {
  /// Live gauges and their thresholds.
  resources('Resources', storagePath),

  /// The history cap, with what it would prune.
  retention('Retention', storageRetentionPath),

  /// Cold-storage archival: target, runs and inventory.
  archive('Archive', storageArchivePath),

  /// Database backup: settings, runs, history and restore.
  backup('Backup', storageBackupPath);

  const StorageTab(this.label, this.path);

  /// The tab text.
  final String label;

  /// The tab's route.
  final String path;
}

/// Storage (desktop, `storage.manage`): the operator's control plane over
/// the instance's disk, memory and database — gauges and thresholds, the
/// history cap, archival and backup.
class StorageScreen extends ConsumerWidget {
  /// Creates the screen on [tab].
  const StorageScreen({super.key, this.tab = StorageTab.resources});

  /// The tab shown.
  final StorageTab tab;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        PageHeader(
          title: tab == StorageTab.resources ? 'Storage' : tab.label,
          crumbs: <Crumb>[const Crumb('Storage', storagePath), Crumb(tab.label)],
          subtitle:
              'How full the instance is, how much history it keeps, and where old data and '
              'backups go.',
        ),
        DefaultTabController(
          key: ValueKey<StorageTab>(tab),
          length: StorageTab.values.length,
          initialIndex: tab.index,
          child: Builder(
            builder: (context) => TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              onTap: (i) {
                // The tab shown follows the route alone (see SystemScreen).
                DefaultTabController.of(context).index = tab.index;
                context.go(StorageTab.values[i].path);
              },
              tabs: <Widget>[
                for (final t in StorageTab.values)
                  Tab(key: Key('storage.tab.${t.name}'), text: t.label),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        switch (tab) {
          StorageTab.resources => const ResourcesPanel(),
          StorageTab.retention => const RetentionCapPanel(),
          StorageTab.archive => const ArchiveRunsPanel(),
          StorageTab.backup => const BackupPanel(),
        },
      ],
    );
  }
}
