import '../../api/api.dart';
import 'source_widgets.dart';

/// The catalog's enabled tabs.
enum EnabledFilter {
  /// Every source.
  all('All Sources'),

  /// Enabled sources only.
  enabled('Enabled'),

  /// Disabled sources only.
  disabled('Disabled');

  const EnabledFilter(this.label);

  /// The tab text.
  final String label;
}

/// The catalog's filters: tab, search text, kind, collection mode, credential
/// state and health. A `null` field means "any".
class SourceFilter {
  /// Creates a filter.
  const SourceFilter({
    this.enabled = EnabledFilter.all,
    this.query = '',
    this.kind,
    this.mode,
    this.credentials,
    this.health,
  });

  /// The enabled tab.
  final EnabledFilter enabled;

  /// Case-insensitive text matched against the id and name.
  final String query;

  /// A record kind the source must produce.
  final String? kind;

  /// The collection mode.
  final SourceSummaryModeEnum? mode;

  /// The credential state.
  final CredentialState? credentials;

  /// The health status.
  final HealthStatus? health;

  /// A copy with the given fields replaced. Pass a `() => null` closure to
  /// clear a nullable field.
  SourceFilter copyWith({
    EnabledFilter? enabled,
    String? query,
    String? Function()? kind,
    SourceSummaryModeEnum? Function()? mode,
    CredentialState? Function()? credentials,
    HealthStatus? Function()? health,
  }) => SourceFilter(
    enabled: enabled ?? this.enabled,
    query: query ?? this.query,
    kind: kind == null ? this.kind : kind(),
    mode: mode == null ? this.mode : mode(),
    credentials: credentials == null ? this.credentials : credentials(),
    health: health == null ? this.health : health(),
  );

  /// Whether [source] passes every filter except the enabled tab, so the tab
  /// counts reflect the other filters.
  bool matchesIgnoringTab(SourceSummary source) {
    final q = query.trim().toLowerCase();
    if (q.isNotEmpty &&
        !source.id.toLowerCase().contains(q) &&
        !source.name.toLowerCase().contains(q)) {
      return false;
    }
    if (kind != null && !source.kinds.contains(kind)) {
      return false;
    }
    if (mode != null && source.mode != mode) {
      return false;
    }
    if (credentials != null && CredentialState.of(source) != credentials) {
      return false;
    }
    if (health != null && source.status != health) {
      return false;
    }
    return true;
  }

  /// Whether [source] passes every filter.
  bool matches(SourceSummary source) {
    final tab = switch (enabled) {
      EnabledFilter.all => true,
      EnabledFilter.enabled => source.enabled,
      EnabledFilter.disabled => !source.enabled,
    };
    return tab && matchesIgnoringTab(source);
  }

  /// [sources] that pass, sorted by name.
  List<SourceSummary> apply(Iterable<SourceSummary> sources) =>
      sources.where(matches).toList()..sort((a, b) => a.name.compareTo(b.name));
}

/// Every kind any of [sources] produces, sorted.
List<String> kindsOf(Iterable<SourceSummary> sources) =>
    <String>{for (final s in sources) ...s.kinds}.toList()..sort();
