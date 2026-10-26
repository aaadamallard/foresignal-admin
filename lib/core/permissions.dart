/// The permission catalog's keys (OpenAPI `Permission`, `listPermissions`),
/// by catalog group. They are wire strings, compared exactly as the server
/// sends them: never re-spelled, and a key this build has not seen is still
/// honored wherever the server returns it.
abstract final class Permissions {
  // Identity.

  /// Create, edit, suspend and delete user accounts.
  static const String usersManage = 'users.manage';

  /// Create, edit and delete custom roles.
  static const String rolesManage = 'roles.manage';

  // Platform (global).

  /// Change instance-wide server settings.
  static const String systemSettings = 'system.settings';

  /// Choose the sources the instance collects.
  static const String collectionManage = 'collection.manage';

  /// Tune the collector's pacing and budgets.
  static const String collectorSettings = 'collector.settings';

  /// Manage the shared LLM providers and budgets.
  static const String llmSharedManage = 'llm.shared.manage';

  /// Manage the instance-wide notification channels.
  static const String channelsGlobal = 'channels.global';

  /// Manage disk, retention, archival and backup.
  static const String storageManage = 'storage.manage';

  /// Manage egress routing and first-party aggregators.
  static const String networkManage = 'network.manage';

  /// Read the audit log.
  static const String auditRead = 'audit.read';

  // Self-service.

  /// Choose one's own enabled sources over the shared collection.
  static const String selfSources = 'self.sources';

  /// Own alert rules.
  static const String selfAlerts = 'self.alerts';

  /// Own notification channels.
  static const String selfChannels = 'self.channels';

  /// Own personal LLM providers.
  static const String selfLlm = 'self.llm';

  /// Own saved views.
  static const String selfViews = 'self.views';

  /// Change one's own preferences.
  static const String selfPreferences = 'self.preferences';

  /// Own workspaces.
  static const String selfWorkspaces = 'self.workspaces';

  // Data.

  /// Read collected records.
  static const String dataRead = 'data.read';

  /// Export collected records.
  static const String dataExport = 'data.export';

  /// Read intelligence events and analyses.
  static const String intelRead = 'intel.read';

  /// Read forecasts and questions.
  static const String forecastRead = 'forecast.read';

  /// The Identity group.
  static const Set<String> identity = <String>{usersManage, rolesManage};

  /// The Platform group.
  static const Set<String> platform = <String>{
    systemSettings,
    collectionManage,
    collectorSettings,
    llmSharedManage,
    channelsGlobal,
    storageManage,
    networkManage,
    auditRead,
  };

  /// The Self-service group.
  static const Set<String> self = <String>{
    selfSources,
    selfAlerts,
    selfChannels,
    selfLlm,
    selfViews,
    selfPreferences,
    selfWorkspaces,
  };

  /// The Data group.
  static const Set<String> data = <String>{dataRead, dataExport, intelRead, forecastRead};

  /// Every key this build knows, in catalog order.
  static const Set<String> all = <String>{...identity, ...platform, ...self, ...data};
}

/// The built-in role tiers, each the union of permissions the catalog gives
/// it (the backend's `BuiltInRole`). A check against a tier asks whether the
/// user holds every one of those permissions, never what the role is named:
/// a custom role with the same permissions passes the same checks.
enum RoleTier {
  /// Every permission.
  admin('Admin', Permissions.all),

  /// All Platform and all Data permissions.
  operator('Operator', <String>{...Permissions.platform, ...Permissions.data}),

  /// All Self-service and all Data permissions.
  editor('Editor', <String>{...Permissions.self, ...Permissions.data}),

  /// Read-only: `data.read`, `self.views` and `self.preferences`.
  viewer('Viewer', <String>{
    Permissions.dataRead,
    Permissions.selfViews,
    Permissions.selfPreferences,
  }),

  /// `audit.read` and `data.read`.
  auditor('Auditor', <String>{Permissions.auditRead, Permissions.dataRead});

  const RoleTier(this.label, this.permissions);

  /// The built-in role's display name.
  final String label;

  /// The permissions the tier is made of.
  final Set<String> permissions;
}
