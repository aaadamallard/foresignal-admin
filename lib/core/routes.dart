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
