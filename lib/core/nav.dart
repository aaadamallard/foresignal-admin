import 'package:flutter/material.dart';

import 'form_factor.dart';
import 'permissions.dart';

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
    this.readPermissions = const <String>{},
    this.writePermissions = const <String>{},
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

  /// The permissions that mount the section: a signed-in user sees it when
  /// they hold at least one. Empty means everyone.
  final Set<String> readPermissions;

  /// The permissions that let a signed-in user change what the section
  /// configures: without any of them, the section is view-only. Empty means
  /// everyone who can see it.
  final Set<String> writePermissions;
}

const Set<FormFactor> _desktop = <FormFactor>{FormFactor.desktop};

/// Usage: the collector, budgets, rate limits and retention.
const Set<String> _usage = <String>{
  Permissions.collectorSettings,
  Permissions.collectionManage,
  Permissions.storageManage,
  Permissions.systemSettings,
};

/// AI: the shared and personal LLM providers.
const Set<String> _ai = <String>{Permissions.llmSharedManage, Permissions.selfLlm};

/// Serving: sinks, exports, archive and peers.
const Set<String> _serving = <String>{
  Permissions.systemSettings,
  Permissions.dataExport,
  Permissions.storageManage,
  Permissions.networkManage,
};

const Set<FormFactor> _both = <FormFactor>{FormFactor.desktop, FormFactor.mobile};

/// Every navigation section, in rail order. The desktop mounts all of those
/// tagged desktop; the mobile companion only those tagged mobile (Screens.md §K).
/// Each names the permissions that show it and that let a user change it,
/// from the `x-foresignal-permission` of the operations it calls.
const List<NavSection> allNavSections = <NavSection>[
  NavSection(
    path: '/sources',
    label: 'Sources',
    icon: Icons.sensors,
    summary: 'The source catalog: enable, configure, set keys, and test each source.',
    formFactors: _both,
    readPermissions: <String>{Permissions.dataRead, Permissions.collectionManage, Permissions.selfSources},
    writePermissions: <String>{Permissions.collectionManage, Permissions.selfSources},
  ),
  NavSection(
    path: '/usage',
    label: 'Usage',
    icon: Icons.speed,
    summary: 'Data usage against budgets, the collector governor, rate limits and retention.',
    formFactors: _desktop,
    readPermissions: _usage,
    writePermissions: _usage,
  ),
  NavSection(
    path: '/ai',
    label: 'AI',
    icon: Icons.psychology,
    summary: 'LLM providers, roles, prompt templates and spend.',
    formFactors: _desktop,
    readPermissions: _ai,
    writePermissions: _ai,
  ),
  NavSection(
    path: '/analysis',
    label: 'Analysis',
    icon: Icons.hub,
    summary:
        'Correlation recipes, analysis cycles, assessment feedback, calibration and corroboration.',
    formFactors: _desktop,
    readPermissions: <String>{Permissions.intelRead},
    writePermissions: <String>{Permissions.systemSettings},
  ),
  NavSection(
    path: '/vetting',
    label: 'Vetting',
    icon: Icons.fact_check,
    summary: 'Social and news vetting, entity resolution and ownership chains.',
    formFactors: _desktop,
    readPermissions: <String>{Permissions.intelRead, Permissions.dataRead},
    writePermissions: <String>{Permissions.systemSettings},
  ),
  NavSection(
    path: '/forecasting',
    label: 'Forecasting',
    icon: Icons.insights,
    summary: 'Forecasters, calibration, forecast questions and external add-ins (EDP).',
    formFactors: _desktop,
    readPermissions: <String>{Permissions.forecastRead},
    writePermissions: <String>{Permissions.systemSettings},
  ),
  NavSection(
    path: '/alerts',
    label: 'Alerts',
    icon: Icons.notifications_active,
    summary: 'Trigger rules, the alert inbox, escalation, channels and watchlists.',
    formFactors: _both,
    readPermissions: <String>{Permissions.dataRead, Permissions.selfAlerts, Permissions.selfChannels, Permissions.channelsGlobal},
    writePermissions: <String>{Permissions.selfAlerts, Permissions.selfChannels, Permissions.channelsGlobal},
  ),
  NavSection(
    path: '/notifications',
    label: 'Notifications',
    barLabel: 'Notification',
    icon: Icons.inbox,
    summary: 'The notification inbox, Web Push and native push.',
    formFactors: _both,
    readPermissions: <String>{Permissions.dataRead, Permissions.selfPreferences},
    writePermissions: <String>{Permissions.selfPreferences, Permissions.systemSettings},
  ),
  NavSection(
    path: '/serving',
    label: 'Serving',
    icon: Icons.output,
    summary: 'Sinks, exports and archive, peers and federation.',
    formFactors: _desktop,
    readPermissions: _serving,
    writePermissions: _serving,
  ),
  NavSection(
    path: '/storage',
    label: 'Storage',
    icon: Icons.storage,
    summary: 'Disk, memory and database gauges, the history cap, archival and backup.',
    formFactors: _desktop,
    readPermissions: <String>{Permissions.storageManage},
    writePermissions: <String>{Permissions.storageManage},
  ),
  NavSection(
    path: '/users',
    label: 'Users & Roles',
    barLabel: 'Users',
    icon: Icons.manage_accounts,
    summary: 'Who can sign in, their roles and lifecycle, and the roles themselves.',
    formFactors: _desktop,
    readPermissions: <String>{Permissions.usersManage, Permissions.rolesManage},
    writePermissions: <String>{Permissions.usersManage, Permissions.rolesManage},
  ),
  NavSection(
    path: '/system',
    label: 'System',
    icon: Icons.settings,
    summary: 'Server and security settings, tokens, signing, plugins, network and sourcing, diagnostics and backup.',
    formFactors: _desktop,
    readPermissions: <String>{
      Permissions.systemSettings,
      Permissions.usersManage,
      Permissions.auditRead,
      Permissions.storageManage,
      Permissions.networkManage,
    },
    writePermissions: <String>{
      Permissions.systemSettings,
      Permissions.usersManage,
      Permissions.networkManage,
    },
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
