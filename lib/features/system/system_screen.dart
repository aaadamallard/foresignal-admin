import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/routes.dart';
import '../../core/ui/ui.dart';
import 'backup.dart';
import 'operations.dart';
import 'overview.dart';
import 'plugins.dart';
import 'settings_tabs.dart';
import 'signing.dart';
import 'tokens.dart';

/// The tabs of the System section, each with its own path.
enum SystemTab {
  /// Health, diagnostics and the client contract.
  overview('Overview', systemPath),

  /// Server settings.
  server('Server', systemServerPath),

  /// Security and access.
  security('Security', systemSecurityPath),

  /// Tokens and keys.
  tokens('Tokens', systemTokensPath),

  /// Signing keys and attributions.
  signing('Signing', systemSigningPath),

  /// Parser plugins.
  plugins('Plugins', systemPluginsPath),

  /// Notification pause, watchdog, weather, metrics and infrastructure.
  operations('Operations', systemOperationsPath),

  /// Settings export and import.
  backup('Backup', systemBackupPath);

  const SystemTab(this.label, this.path);

  /// The tab text.
  final String label;

  /// The tab's route.
  final String path;
}

/// The operator's control over the instance itself (desktop): its health,
/// server and security settings, tokens and keys, signing, plugins,
/// operations settings and backup.
class SystemScreen extends StatelessWidget {
  /// Creates the screen on [tab].
  const SystemScreen({super.key, this.tab = SystemTab.overview});

  /// The tab shown.
  final SystemTab tab;

  @override
  Widget build(BuildContext context) => ListView(
    padding: const EdgeInsets.all(28),
    children: <Widget>[
      PageHeader(
        title: tab == SystemTab.overview ? 'System' : tab.label,
        crumbs: <Crumb>[const Crumb('System', systemPath), Crumb(tab.label)],
        subtitle: 'Server and security settings, tokens and keys, signing, plugins, diagnostics and backup.',
      ),
      DefaultTabController(
        key: ValueKey<SystemTab>(tab),
        length: SystemTab.values.length,
        initialIndex: tab.index,
        child: Builder(
          builder: (context) => TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            onTap: (i) {
              // The tab shown follows the route alone (see ServingScreen).
              DefaultTabController.of(context).index = tab.index;
              context.go(SystemTab.values[i].path);
            },
            tabs: <Widget>[for (final t in SystemTab.values) Tab(key: Key('system.tab.${t.name}'), text: t.label)],
          ),
        ),
      ),
      const SizedBox(height: 20),
      switch (tab) {
        SystemTab.overview => const SystemOverviewPanel(),
        SystemTab.server => const ServerSettingsPanel(),
        SystemTab.security => const SecurityPanel(),
        SystemTab.tokens => const TokensPanel(),
        SystemTab.signing => const SigningPanel(),
        SystemTab.plugins => const PluginsPanel(),
        SystemTab.operations => const OperationsPanel(),
        SystemTab.backup => const BackupPanel(),
      },
    ],
  );
}
