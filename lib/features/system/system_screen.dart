import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/access.dart';
import '../../core/permissions.dart';
import '../../core/routes.dart';
import '../../core/ui/ui.dart';
import '../network/network_panel.dart';
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

  /// Egress routing and the first-party aggregators (`network.manage`).
  network('Network / Sourcing', systemNetworkPath, needs: Permissions.networkManage),

  /// Settings export and import.
  backup('Backup', systemBackupPath);

  const SystemTab(this.label, this.path, {this.needs});

  /// The tab text.
  final String label;

  /// The tab's route.
  final String path;

  /// The permission without which the tab is not shown, if any.
  final String? needs;
}

/// The operator's control over the instance itself (desktop): its health,
/// server and security settings, tokens and keys, signing, plugins,
/// operations settings and backup.
class SystemScreen extends ConsumerWidget {
  /// Creates the screen on [tab].
  const SystemScreen({super.key, this.tab = SystemTab.overview});

  /// The tab shown.
  final SystemTab tab;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final access = ref.watch(accessProvider);
    final tabs = <SystemTab>[
      for (final t in SystemTab.values)
        if (t.needs == null || access.can(t.needs!)) t,
    ];
    final allowed = tabs.contains(tab);
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        PageHeader(
          title: tab == SystemTab.overview ? 'System' : tab.label,
          crumbs: <Crumb>[const Crumb('System', systemPath), Crumb(tab.label)],
          subtitle: 'Server and security settings, tokens and keys, signing, plugins, network and '
              'sourcing, diagnostics and backup.',
        ),
        DefaultTabController(
          key: ValueKey<String>('${tab.name}/${tabs.length}'),
          length: tabs.length,
          initialIndex: allowed ? tabs.indexOf(tab) : 0,
          child: Builder(
            builder: (context) => TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              onTap: (i) {
                // The tab shown follows the route alone (see ServingScreen).
                DefaultTabController.of(context).index = allowed ? tabs.indexOf(tab) : 0;
                context.go(tabs[i].path);
              },
              tabs: <Widget>[for (final t in tabs) Tab(key: Key('system.tab.${t.name}'), text: t.label)],
            ),
          ),
        ),
        const SizedBox(height: 20),
        if (!allowed)
          PermissionDeniedPanel(permissions: <String>{?tab.needs})
        else
          switch (tab) {
            SystemTab.overview => const SystemOverviewPanel(),
            SystemTab.server => const ServerSettingsPanel(),
            SystemTab.security => const SecurityPanel(),
            SystemTab.tokens => const TokensPanel(),
            SystemTab.signing => const SigningPanel(),
            SystemTab.plugins => const PluginsPanel(),
            SystemTab.operations => const OperationsPanel(),
            SystemTab.network => const NetworkPanel(),
            SystemTab.backup => const BackupPanel(),
          },
      ],
    );
  }
}
