import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/error_reporter.dart';
import '../../core/form_factor.dart';
import '../../core/nav.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/theme_mode.dart';
import '../../core/ui/ui.dart';
import '../auth/auth_controller.dart';
import '../notifications/presence.dart';
import '../notifications/push_arrival_banner.dart';

/// The frame around every screen, as in the mocks: a ForeSignal sidebar with
/// Connect first (desktop) or a bottom bar (mobile), and the global error
/// surface above the content. It also reports this device's presence while
/// the app runs.
class AppShell extends ConsumerWidget {
  /// Creates the shell around [child], the current route's screen.
  const AppShell({super.key, required this.location, required this.child});

  /// The current route location.
  final String location;

  /// The current screen.
  final Widget child;

  /// The navigation entries for [formFactor]: Connect, then the sections.
  static List<NavSection> destinationsFor(FormFactor formFactor) => <NavSection>[
    connectSection,
    ...navSectionsFor(formFactor),
  ];

  /// The index of the entry [location] belongs to.
  static int selectedIndex(List<NavSection> destinations, String location) {
    final index = destinations.indexWhere(
      (d) => location == d.path || location.startsWith('${d.path}/'),
    );
    return index < 0 ? 0 : index;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formFactor = ref.watch(formFactorProvider);
    final destinations = destinationsFor(formFactor);
    final selected = selectedIndex(destinations, location);
    final body = Column(
      children: <Widget>[
        const PresenceReporter(),
        const _GlobalErrorSurface(),
        if (formFactor == FormFactor.mobile) const PushArrivalBanner(),
        _PageBackBar(
          roots: <String>[for (final d in destinations) d.path],
          mobile: formFactor == FormFactor.mobile,
        ),
        Expanded(child: child),
      ],
    );

    if (formFactor == FormFactor.mobile) {
      return Scaffold(
        appBar: AppBar(
          title: const _Brand(),
          actions: const <Widget>[ThemeModeButton(), _BackendIndicator(), AccountControl()],
        ),
        body: SafeArea(child: body),
        bottomNavigationBar: NavigationBar(
          selectedIndex: selected,
          onDestinationSelected: (i) => context.go(destinations[i].path),
          destinations: <Widget>[
            for (final d in destinations)
              NavigationDestination(icon: Icon(d.icon), label: d.barLabel ?? d.label),
          ],
        ),
      );
    }

    return Scaffold(
      body: Row(
        children: <Widget>[
          Sidebar(
            destinations: destinations,
            selected: selected,
            onSelect: (i) => context.go(destinations[i].path),
          ),
          const VerticalDivider(width: 1),
          Expanded(child: body),
        ],
      ),
    );
  }
}

/// The Back control above a page pushed from another; nothing on a section's
/// own page (a left-nav destination or one of its tabs). It follows the
/// router rather than the shell's [AppShell.location], which a pop leaves
/// unchanged.
class _PageBackBar extends StatelessWidget {
  const _PageBackBar({required this.roots, required this.mobile});

  /// The left-nav destinations' paths.
  final List<String> roots;

  /// Whether this is the mobile companion's layout.
  final bool mobile;

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    return ListenableBuilder(
      listenable: router.routerDelegate,
      builder: (context, _) {
        final location = router.state.matchedLocation;
        if (isSectionHome(location, roots)) {
          return const SizedBox.shrink();
        }
        return Padding(
          padding: mobile
              ? const EdgeInsets.fromLTRB(12, 8, 16, 0)
              : const EdgeInsets.fromLTRB(24, 14, 28, 0),
          child: BackLink(location: location),
        );
      },
    );
  }
}

/// The desktop sidebar: the ForeSignal mark, then one row per destination;
/// the selected row is a dark-blue pill with blue text.
class Sidebar extends StatelessWidget {
  /// Creates the sidebar.
  const Sidebar({
    super.key,
    required this.destinations,
    required this.selected,
    required this.onSelect,
  });

  /// The rows, in order.
  final List<NavSection> destinations;

  /// The selected row.
  final int selected;

  /// Called with the tapped row's index.
  final ValueChanged<int> onSelect;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      color: AdminPalette.of(context).sidebar,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Padding(padding: EdgeInsets.fromLTRB(18, 20, 18, 18), child: _Brand()),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                children: <Widget>[
                  for (var i = 0; i < destinations.length; i++)
                    _SidebarItem(
                      section: destinations[i],
                      selected: i == selected,
                      onTap: () => onSelect(i),
                    ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 4),
              child: AccountControl(expanded: true),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Row(
                children: <Widget>[
                  Expanded(child: _BackendIndicator(expanded: true)),
                  ThemeModeButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SidebarItem extends StatelessWidget {
  const _SidebarItem({required this.section, required this.selected, required this.onTap});

  final NavSection section;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = selected ? AdminPalette.of(context).primaryText : AdminPalette.of(context).muted;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Material(
        color: selected ? AdminPalette.of(context).sidebarSelected : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          key: Key('nav.${section.path}'),
          borderRadius: BorderRadius.circular(8),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: <Widget>[
                Icon(section.icon, size: 18, color: color),
                const SizedBox(width: 12),
                Flexible(
                  child: Text(
                    section.label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: selected
                          ? AdminPalette.of(context).primaryText
                          : AdminPalette.of(context).text.withValues(alpha: 0.85),
                      fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// The ForeSignal mark: a blue ring icon and the name.
class _Brand extends StatelessWidget {
  const _Brand();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(Icons.radio_button_checked, color: AdminPalette.of(context).primary, size: 22),
        const SizedBox(width: 8),
        const Flexible(
          child: Text(
            'ForeSignal',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
          ),
        ),
      ],
    );
  }
}

/// Shows which backend the app is pointed at; tapping opens Connect.
class _BackendIndicator extends ConsumerWidget {
  const _BackendIndicator({this.expanded = false});

  final bool expanded;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final url = ref.watch(backendEndpointProvider);
    final tone = url == null ? StatusTone.neutral : StatusTone.ok;
    final icon = Icon(
      url == null ? Icons.cloud_off : Icons.cloud_done,
      size: 18,
      color: tone.colorOf(context),
    );
    if (!expanded) {
      return IconButton(
        tooltip: url == null ? 'Not connected' : 'Connected to $url',
        icon: icon,
        onPressed: () => context.go(connectPath),
      );
    }
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () => context.go(connectPath),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: <Widget>[
            icon,
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                url == null ? 'Not connected' : url.host,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 12, color: AdminPalette.of(context).muted),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Who is signed in, with Sign out; or Sign in when nobody is (the app may
/// be running on the admin token, or read-only).
class AccountControl extends ConsumerWidget {
  /// Creates the control; [expanded] shows the email beside the icon (the
  /// desktop sidebar), otherwise an icon with a menu (the phone's app bar).
  const AccountControl({super.key, this.expanded = false});

  /// Whether to show the email beside the icon.
  final bool expanded;

  Future<void> _signOut(BuildContext context, WidgetRef ref) async {
    final failure = await ref.read(authControllerProvider).signOut();
    if (!context.mounted) {
      return;
    }
    if (failure != null) {
      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
        SnackBar(content: Text('Signed out here; the backend did not confirm: ${failure.message}')),
      );
    }
    context.go(loginPath);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(sessionControllerProvider).session;
    final muted = AdminPalette.of(context).muted;
    if (session == null) {
      if (!expanded) {
        return IconButton(
          key: const Key('shell.signIn'),
          tooltip: 'Sign in',
          icon: const Icon(Icons.login, size: 20),
          onPressed: () => context.go(loginPath),
        );
      }
      return TextButton.icon(
        key: const Key('shell.signIn'),
        style: TextButton.styleFrom(alignment: Alignment.centerLeft),
        onPressed: () => context.go(loginPath),
        icon: const Icon(Icons.login, size: 18),
        label: const Text('Sign in'),
      );
    }
    final who = session.email ?? session.tokenPrefix ?? 'Signed in';
    if (!expanded) {
      return PopupMenuButton<String>(
        key: const Key('shell.account'),
        tooltip: who,
        icon: const Icon(Icons.account_circle),
        onSelected: (_) => _signOut(context, ref),
        itemBuilder: (context) => <PopupMenuEntry<String>>[
          PopupMenuItem<String>(enabled: false, child: Text(who)),
          const PopupMenuItem<String>(key: Key('shell.signOut'), value: 'signOut', child: Text('Sign out')),
        ],
      );
    }
    return Row(
      children: <Widget>[
        Icon(Icons.account_circle, size: 18, color: muted),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            who,
            key: const Key('shell.user'),
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 12, color: muted),
          ),
        ),
        IconButton(
          key: const Key('shell.signOut'),
          tooltip: 'Sign out',
          icon: const Icon(Icons.logout, size: 18),
          onPressed: () => _signOut(context, ref),
        ),
      ],
    );
  }
}

/// The global error surface: the latest uncaught error, dismissible.
class _GlobalErrorSurface extends ConsumerWidget {
  const _GlobalErrorSurface();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reported = ref.watch(errorReporterProvider);
    if (reported == null) {
      return const SizedBox.shrink();
    }
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Stack(
        children: <Widget>[
          ErrorBanner(error: reported.error, title: 'Unexpected error'),
          Positioned(
            right: 4,
            top: 4,
            child: IconButton(
              key: const Key('globalError.dismiss'),
              tooltip: 'Dismiss',
              icon: const Icon(Icons.close, size: 18),
              onPressed: () => ref.read(errorReporterProvider.notifier).dismiss(),
            ),
          ),
        ],
      ),
    );
  }
}
