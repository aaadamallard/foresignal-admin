/// Route paths shared between screens, so a deep link and the screen it
/// opens agree. A path whose screen is not mounted yet falls back to its
/// section (see `routerProvider`).
library;

/// The setup wizard (desktop).
const String setupPath = '/setup';

/// The source catalog.
const String sourcesPath = '/sources';

/// Custom push sources.
const String customSourcesPath = '$sourcesPath/custom';

/// One custom push source.
String customSourcePath(String sourceId) => '$customSourcesPath/${Uri.encodeComponent(sourceId)}';

/// One source's detail and configuration.
String sourceDetailPath(String sourceId) => '$sourcesPath/${Uri.encodeComponent(sourceId)}';

/// One source's credentials.
String sourceCredentialsPath(String sourceId) => '${sourceDetailPath(sourceId)}/credentials';

/// One source's test-and-validate page.
String sourceTestPath(String sourceId) => '${sourceDetailPath(sourceId)}/test';

/// Usage, budgets, the collector governor, rate limits and retention.
const String usagePath = '/usage';

/// AI configuration: providers, roles, options, templates and usage.
const String aiPath = '/ai';

/// Adds an LLM provider.
const String aiNewProviderPath = '$aiPath/new-provider';

/// One LLM provider.
String aiProviderPath(String providerId) => '$aiPath/providers/${Uri.encodeComponent(providerId)}';

/// Correlation, analysis cycles, assessments, calibration, corroboration.
const String analysisPath = '/analysis';

/// Authors a correlation recipe.
const String analysisNewRecipePath = '$analysisPath/new-recipe';

/// One correlation recipe.
String analysisRecipePath(String recipeId) =>
    '$analysisPath/recipes/${Uri.encodeComponent(recipeId)}';

/// One intelligence event.
String analysisEventPath(String eventId) => '$analysisPath/events/${Uri.encodeComponent(eventId)}';

/// One situation: why it is warning, its members, assessment and timeline.
String analysisSituationPath(String situationId) =>
    '$analysisPath/situations/${Uri.encodeComponent(situationId)}';

/// Creates an analysis cycle.
const String analysisNewCyclePath = '$analysisPath/new-cycle';

/// One analysis cycle and its runs.
String analysisCyclePath(String cycleId) => '$analysisPath/cycles/${Uri.encodeComponent(cycleId)}';

/// One cycle run.
String analysisRunPath(String runId) => '$analysisPath/runs/${Uri.encodeComponent(runId)}';

/// Social and news vetting, entity resolution and ownership chains.
const String vettingPath = '/vetting';

/// One claim.
String vettingClaimPath(String claimId) => '$vettingPath/claims/${Uri.encodeComponent(claimId)}';

/// One social platform adapter, by wire id.
String vettingPlatformPath(String platformId) =>
    '$vettingPath/platforms/${Uri.encodeComponent(platformId)}';

/// One resolved entity.
String vettingEntityPath(String entityId) =>
    '$vettingPath/entities/${Uri.encodeComponent(entityId)}';

/// Forecasters, calibration, forecast questions and external add-ins (EDP).
const String forecastingPath = '/forecasting';

/// One forecaster.
String forecastingForecasterPath(String forecasterId) =>
    '$forecastingPath/forecasters/${Uri.encodeComponent(forecasterId)}';

/// A new forecast question.
const String forecastingNewQuestionPath = '$forecastingPath/new-question';

/// One forecast question.
String forecastingQuestionPath(String questionId) =>
    '$forecastingPath/questions/${Uri.encodeComponent(questionId)}';

/// One external data provider (EDP source).
String forecastingProviderPath(String sourceId) =>
    '$forecastingPath/providers/${Uri.encodeComponent(sourceId)}';

/// The alert inbox.
const String alertsPath = '/alerts';

/// One alert.
String alertPath(int alertId) => '$alertsPath/inbox/$alertId';

/// Trigger rules.
const String alertTriggersPath = '$alertsPath/triggers';

/// One trigger rule.
String alertTriggerPath(String ruleId) => '$alertTriggersPath/${Uri.encodeComponent(ruleId)}';

/// Authors a trigger rule.
const String alertNewTriggerPath = '$alertsPath/new-trigger';

/// The Alert Builder for a new rule.
const String alertBuilderPath = '$alertsPath/builder';

/// The Alert Builder for stored rule [ruleId].
String alertBuilderRulePath(String ruleId) => '$alertBuilderPath/${Uri.encodeComponent(ruleId)}';

/// Escalation policies.
const String alertEscalationPath = '$alertsPath/escalation';

/// One escalation policy.
String alertPolicyPath(String policyId) => '$alertEscalationPath/${Uri.encodeComponent(policyId)}';

/// Creates an escalation policy.
const String alertNewPolicyPath = '$alertsPath/new-policy';

/// Notification channels.
const String alertChannelsPath = '$alertsPath/channels';

/// One notification channel.
String alertChannelPath(String channelId) => '$alertChannelsPath/${Uri.encodeComponent(channelId)}';

/// Creates a notification channel.
const String alertNewChannelPath = '$alertsPath/new-channel';

/// Watchlists.
const String alertWatchlistsPath = '$alertsPath/watchlists';

/// One watchlist and its items.
String alertWatchlistPath(String watchlistId) =>
    '$alertWatchlistsPath/${Uri.encodeComponent(watchlistId)}';

/// The notification inbox.
const String notificationsPath = '/notifications';

/// One notification.
String notificationPath(int id) => '$notificationsPath/inbox/$id';

/// Native push: providers and registered devices.
const String pushPath = '$notificationsPath/push';

/// One native push provider.
String pushProviderPath(String providerId) => '$pushPath/providers/${Uri.encodeComponent(providerId)}';

/// A new native push provider.
const String pushNewProviderPath = '$pushPath/new-provider';

/// One registered native device.
String pushDevicePath(String deviceId) => '$pushPath/devices/${Uri.encodeComponent(deviceId)}';

/// Web Push: the VAPID key and browser subscriptions.
const String webPushPath = '$notificationsPath/web-push';

/// The mobile companion's own push registration.
const String devicePath = '/device';

/// Serving: outbound sinks.
const String servingPath = '/serving';

/// One sink.
String servingSinkPath(String sinkId) => '$servingPath/sinks/${Uri.encodeComponent(sinkId)}';

/// A new sink.
const String servingNewSinkPath = '$servingPath/new-sink';

/// Export, snapshot and pack jobs.
const String servingExportsPath = '$servingPath/exports';

/// One export job.
String servingExportPath(String exportId) => '$servingExportsPath/${Uri.encodeComponent(exportId)}';

/// A new export, snapshot or pack.
const String servingNewExportPath = '$servingPath/new-export';

/// The cold archive and holds.
const String servingArchivePath = '$servingPath/archive';

/// Peers and federation.
const String servingPeersPath = '$servingPath/peers';

/// One peer.
String servingPeerPath(String peerId) => '$servingPeersPath/${Uri.encodeComponent(peerId)}';

/// A new peer.
const String servingNewPeerPath = '$servingPath/new-peer';

/// System: the instance's health and the client contract.
const String systemPath = '/system';

/// Server settings.
const String systemServerPath = '$systemPath/server';

/// Security and access.
const String systemSecurityPath = '$systemPath/security';

/// Tokens and keys.
const String systemTokensPath = '$systemPath/tokens';

/// Signing keys and attributions.
const String systemSigningPath = '$systemPath/signing';

/// Parser plugins.
const String systemPluginsPath = '$systemPath/plugins';

/// Notification pause, watchdog, weather, metrics and infrastructure rules.
const String systemOperationsPath = '$systemPath/operations';

/// Settings export and import.
const String systemBackupPath = '$systemPath/backup';

/// The section root a [path] belongs to: `/sources/x/test` → `/sources`.
String sectionRootOf(String path) {
  final segments = Uri.parse(path).pathSegments;
  return segments.isEmpty ? '/' : '/${segments.first}';
}

/// Paths that open a section's own page on one of its tabs. Like the
/// section root, they are the home of their section, not a page pushed
/// from another one, so they get no Back control.
const Set<String> sectionTabPaths = <String>{
  alertTriggersPath,
  alertEscalationPath,
  alertChannelsPath,
  alertWatchlistsPath,
  pushPath,
  webPushPath,
  servingExportsPath,
  servingArchivePath,
  servingPeersPath,
  systemServerPath,
  systemSecurityPath,
  systemTokensPath,
  systemSigningPath,
  systemPluginsPath,
  systemOperationsPath,
  systemBackupPath,
};

/// Whether [location] is the home of a section — one of the [roots] (the
/// left-nav destinations, Connect included) or one of its tabs
/// ([sectionTabPaths]) — rather than a page pushed from another.
bool isSectionHome(String location, Iterable<String> roots) {
  final path = Uri.parse(location).path;
  return roots.contains(path) || sectionTabPaths.contains(path);
}

/// Where Back leads from [location] when there is no history to return to:
/// the nearest enclosing path that is a page of its own ([routeExists]), so
/// `/analysis/events/E` → `/analysis` (there is no `/analysis/events` page)
/// and `/alerts/triggers/R` → `/alerts/triggers`. Falls back to the
/// section root.
String backTargetOf(String location, {required bool Function(String path) routeExists}) {
  final segments = Uri.parse(location).pathSegments.where((s) => s.isNotEmpty).toList();
  for (var n = segments.length - 1; n >= 1; n--) {
    final candidate = '/${segments.take(n).map(Uri.encodeComponent).join('/')}';
    if (routeExists(candidate)) {
      return candidate;
    }
  }
  return sectionRootOf(location);
}
