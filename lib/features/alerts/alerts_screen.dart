import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/form_factor.dart';
import '../../core/routes.dart';
import '../../core/ui/ui.dart';
import 'alert_inbox.dart';
import 'channels.dart';
import 'escalation.dart';
import 'triggers.dart';
import 'watchlists.dart';

/// The tabs of the Alerts section, each with its own path.
enum AlertsTab {
  /// The live alert inbox.
  inbox('Inbox', alertsPath),

  /// Trigger rules.
  triggers('Triggers', alertTriggersPath),

  /// Escalation policies.
  escalation('Escalation', alertEscalationPath),

  /// Notification channels.
  channels('Channels', alertChannelsPath),

  /// Watchlists.
  watchlists('Watchlists', alertWatchlistsPath);

  const AlertsTab(this.label, this.path);

  /// The tab text.
  final String label;

  /// The tab's route.
  final String path;
}

/// Trigger rules, the alert inbox, escalation, channels and watchlists
/// (Screens §G). The mobile companion shows the inbox alone.
class AlertsScreen extends ConsumerWidget {
  /// Creates the screen on [tab].
  const AlertsScreen({super.key, this.tab = AlertsTab.inbox});

  /// The tab shown.
  final AlertsTab tab;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final desktop = ref.watch(formFactorProvider) == FormFactor.desktop;
    if (!desktop) {
      return ListView(
        padding: const EdgeInsets.all(16),
        children: const <Widget>[PageHeader(title: 'Alerts'), InboxPanel()],
      );
    }
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        PageHeader(
          title: switch (tab) {
            AlertsTab.inbox => 'Alert Inbox',
            AlertsTab.triggers => 'Trigger Rules',
            AlertsTab.escalation => 'Escalation Policies',
            AlertsTab.channels => 'Notification Channels',
            AlertsTab.watchlists => 'Watchlists',
          },
          crumbs: <Crumb>[const Crumb('Alerts', alertsPath), Crumb(tab.label)],
          subtitle: 'Rules turn records into alerts; channels and escalation carry them to people.',
        ),
        DefaultTabController(
          key: ValueKey<AlertsTab>(tab),
          length: AlertsTab.values.length,
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
                context.go(AlertsTab.values[i].path);
              },
              tabs: <Widget>[
                for (final t in AlertsTab.values) Tab(key: Key('alerts.tab.${t.name}'), text: t.label),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        switch (tab) {
          AlertsTab.inbox => const InboxPanel(),
          AlertsTab.triggers => const TriggersPanel(),
          AlertsTab.escalation => const EscalationPanel(),
          AlertsTab.channels => const ChannelsPanel(),
          AlertsTab.watchlists => const WatchlistsPanel(),
        },
      ],
    );
  }
}
