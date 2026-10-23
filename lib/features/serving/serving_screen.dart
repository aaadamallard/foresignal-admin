import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/routes.dart';
import '../../core/ui/ui.dart';
import 'archive.dart';
import 'exports.dart';
import 'peers.dart';
import 'sinks.dart';

/// The tabs of the Serving section, each with its own path.
enum ServingTab {
  /// Outbound sinks.
  sinks('Sinks', servingPath),

  /// Export, snapshot and pack jobs.
  exports('Exports', servingExportsPath),

  /// The cold archive and holds.
  archive('Archive', servingArchivePath),

  /// Peers and federation.
  peers('Peers', servingPeersPath);

  const ServingTab(this.label, this.path);

  /// The tab text.
  final String label;

  /// The tab's route.
  final String path;
}

/// What leaves this instance (desktop): sinks, exports and the cold
/// archive, and the peers it replicates with.
class ServingScreen extends ConsumerWidget {
  /// Creates the screen on [tab].
  const ServingScreen({super.key, this.tab = ServingTab.sinks});

  /// The tab shown.
  final ServingTab tab;

  @override
  Widget build(BuildContext context, WidgetRef ref) => ListView(
    padding: const EdgeInsets.all(28),
    children: <Widget>[
      PageHeader(
        title: switch (tab) {
          ServingTab.sinks => 'Serving',
          ServingTab.exports => 'Exports',
          ServingTab.archive => 'Archive',
          ServingTab.peers => 'Peers',
        },
        crumbs: <Crumb>[const Crumb('Serving', servingPath), Crumb(tab.label)],
        subtitle: 'Sinks, exports and the cold archive, and the peers this instance replicates with.',
      ),
      DefaultTabController(
        key: ValueKey<ServingTab>(tab),
        length: ServingTab.values.length,
        initialIndex: tab.index,
        child: Builder(
          builder: (context) => TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            onTap: (i) {
              // The tab shown follows the route alone: this page can stay
              // beneath the next tab's route, and must show its own tab
              // when that one is popped.
              DefaultTabController.of(context).index = tab.index;
              context.go(ServingTab.values[i].path);
            },
            tabs: <Widget>[for (final t in ServingTab.values) Tab(key: Key('serving.tab.${t.name}'), text: t.label)],
          ),
        ),
      ),
      const SizedBox(height: 20),
      switch (tab) {
        ServingTab.sinks => const SinksPanel(),
        ServingTab.exports => const ExportsPanel(),
        ServingTab.archive => const ArchivePanel(),
        ServingTab.peers => const PeersPanel(),
      },
    ],
  );
}
