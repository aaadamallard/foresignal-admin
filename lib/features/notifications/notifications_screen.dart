import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/form_factor.dart';
import '../../core/routes.dart';
import '../../core/ui/ui.dart';
import 'notification_inbox.dart';
import 'push_native.dart';
import 'web_push.dart';

/// The tabs of the Notifications section, each with its own path.
enum NotificationsTab {
  /// The notification inbox.
  inbox('Inbox', notificationsPath),

  /// Native push providers and devices.
  push('Native Push', pushPath),

  /// Web Push.
  webPush('Web Push', webPushPath);

  const NotificationsTab(this.label, this.path);

  /// The tab text.
  final String label;

  /// The tab's route.
  final String path;
}

/// The notification inbox, native push and Web Push (Screens §H). The
/// mobile companion shows the inbox alone; it registers itself for push on
/// its Device page.
class NotificationsScreen extends ConsumerWidget {
  /// Creates the screen on [tab].
  const NotificationsScreen({super.key, this.tab = NotificationsTab.inbox});

  /// The tab shown.
  final NotificationsTab tab;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final desktop = ref.watch(formFactorProvider) == FormFactor.desktop;
    if (!desktop) {
      return ListView(
        padding: const EdgeInsets.all(16),
        children: const <Widget>[
          PageHeader(title: 'Notifications', actions: <Widget>[PresenceLine()]),
          NotificationsInboxPanel(),
        ],
      );
    }
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        PageHeader(
          title: switch (tab) {
            NotificationsTab.inbox => 'Notifications',
            NotificationsTab.push => 'Native Push',
            NotificationsTab.webPush => 'Web Push',
          },
          crumbs: <Crumb>[const Crumb('Notifications', notificationsPath), Crumb(tab.label)],
          subtitle: 'What reached this device, and how alerts reach phones and browsers.',
          actions: const <Widget>[PresenceLine()],
        ),
        DefaultTabController(
          key: ValueKey<NotificationsTab>(tab),
          length: NotificationsTab.values.length,
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
                context.go(NotificationsTab.values[i].path);
              },
              tabs: <Widget>[
                for (final t in NotificationsTab.values) Tab(key: Key('notifications.tab.${t.name}'), text: t.label),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        switch (tab) {
          NotificationsTab.inbox => const NotificationsInboxPanel(),
          NotificationsTab.push => const NativePushPanel(),
          NotificationsTab.webPush => const WebPushPanel(),
        },
      ],
    );
  }
}
