import 'package:flutter/material.dart';

import 'form_factor.dart';

/// One top-level screen group in the navigation.
class NavSection {
  /// Creates a section.
  const NavSection({
    required this.path,
    required this.label,
    required this.icon,
    required this.summary,
    required this.formFactors,
    this.barLabel,
  });

  /// The route path, e.g. `/sources`.
  final String path;

  /// The navigation label.
  final String label;

  /// The navigation icon.
  final IconData icon;

  /// What the section configures, in one sentence.
  final String summary;

  /// Which shells mount the section.
  final Set<FormFactor> formFactors;

  /// A shorter label for the phone's bottom bar, where [label] would wrap;
  /// `null` uses [label].
  final String? barLabel;
}

const Set<FormFactor> _desktop = <FormFactor>{FormFactor.desktop};
const Set<FormFactor> _both = <FormFactor>{FormFactor.desktop, FormFactor.mobile};

/// Every navigation section, in rail order. The desktop mounts all of those
/// tagged desktop; the mobile companion only those tagged mobile (Screens.md §K).
const List<NavSection> allNavSections = <NavSection>[
  NavSection(
    path: '/sources',
    label: 'Sources',
    icon: Icons.sensors,
    summary: 'The source catalog: enable, configure, set keys, and test each source.',
    formFactors: _both,
  ),
  NavSection(
    path: '/usage',
    label: 'Usage',
    icon: Icons.speed,
    summary: 'Data usage against budgets, the collector governor, rate limits and retention.',
    formFactors: _desktop,
  ),
  NavSection(
    path: '/ai',
    label: 'AI',
    icon: Icons.psychology,
    summary: 'LLM providers, roles, prompt templates and spend.',
    formFactors: _desktop,
  ),
  NavSection(
    path: '/analysis',
    label: 'Analysis',
    icon: Icons.hub,
    summary:
        'Correlation recipes, analysis cycles, assessment feedback, calibration and corroboration.',
    formFactors: _desktop,
  ),
  NavSection(
    path: '/vetting',
    label: 'Vetting',
    icon: Icons.fact_check,
    summary: 'Social and news vetting, entity resolution and ownership chains.',
    formFactors: _desktop,
  ),
  NavSection(
    path: '/forecasting',
    label: 'Forecasting',
    icon: Icons.insights,
    summary: 'Forecasters, calibration, forecast questions and external add-ins (EDP).',
    formFactors: _desktop,
  ),
  NavSection(
    path: '/alerts',
    label: 'Alerts',
    icon: Icons.notifications_active,
    summary: 'Trigger rules, the alert inbox, escalation, channels and watchlists.',
    formFactors: _both,
  ),
  NavSection(
    path: '/notifications',
    label: 'Notifications',
    barLabel: 'Notification',
    icon: Icons.inbox,
    summary: 'The notification inbox, Web Push and native push.',
    formFactors: _both,
  ),
  NavSection(
    path: '/serving',
    label: 'Serving',
    icon: Icons.output,
    summary: 'Sinks, exports and archive, peers and federation.',
    formFactors: _desktop,
  ),
  NavSection(
    path: '/system',
    label: 'System',
    icon: Icons.settings,
    summary: 'Server and security settings, tokens, signing, plugins, diagnostics and backup.',
    formFactors: _desktop,
  ),
  NavSection(
    path: '/device',
    label: 'Device',
    icon: Icons.phone_iphone,
    summary: 'Register this phone for native push.',
    formFactors: <FormFactor>{FormFactor.mobile},
  ),
];

/// The Connect screen's path; mounted on every form factor, first in the
/// sidebar as in the mocks.
const String connectPath = '/connect';

/// The Connect entry shown first in the navigation.
const NavSection connectSection = NavSection(
  path: connectPath,
  label: 'Connect',
  icon: Icons.link,
  summary: 'The backend URL and admin token.',
  formFactors: _both,
);

/// The sections mounted on [formFactor], in order.
List<NavSection> navSectionsFor(FormFactor formFactor) =>
    allNavSections.where((s) => s.formFactors.contains(formFactor)).toList(growable: false);
