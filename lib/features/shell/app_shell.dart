import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/error_reporter.dart';
import '../../core/form_factor.dart';
import '../../core/nav.dart';
import '../../core/theme.dart';
import '../../core/theme_mode.dart';
import '../../core/ui/ui.dart';
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
        Expanded(child: child),
      ],
    );

    if (formFactor == FormFactor.mobile) {
      return Scaffold(
        appBar: AppBar(
          title: const _Brand(),
          actions: const <Widget>[ThemeModeButton(), _BackendIndicator()],
        ),
        body: SafeArea(child: body),
        bottomNavigationBar: NavigationBar(
          selectedIndex: selected,
          onDestinationSelected: (i) => context.go(destinations[i].path),
          destinations: <Widget>[
            for (final d in destinations) NavigationDestination(icon: Icon(d.icon), label: d.label),
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
                Text(
                  section.label,
                  style: TextStyle(
                    color: selected
                        ? AdminPalette.of(context).primaryText
                        : AdminPalette.of(context).text.withValues(alpha: 0.85),
                    fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
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
        const Text('ForeSignal', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
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
