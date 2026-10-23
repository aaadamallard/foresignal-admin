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

/// Trigger rules.
const String alertTriggersPath = '/alerts/triggers';

/// Notification channels.
const String alertChannelsPath = '/alerts/channels';

/// Native and Web Push configuration.
const String pushPath = '/notifications/push';

/// The section root a [path] belongs to: `/sources/x/test` → `/sources`.
String sectionRootOf(String path) {
  final segments = Uri.parse(path).pathSegments;
  return segments.isEmpty ? '/' : '/${segments.first}';
}
