import 'package:flutter/material.dart';

import '../../api/api.dart';
import '../../core/format/duration_text.dart';
import '../../core/ui/ui.dart';

/// A source health status as the mocks show it: "● Healthy", "● Degraded".
class HealthLabel extends StatelessWidget {
  /// Creates the label.
  const HealthLabel({super.key, required this.status, this.tooltip});

  /// The status.
  final HealthStatus status;

  /// Shown on hover (the backend's reason or last error).
  final String? tooltip;

  /// The tone for [status].
  static StatusTone toneOf(HealthStatus status) => switch (status.name) {
    'healthy' => StatusTone.ok,
    'degraded' => StatusTone.warning,
    'failing' => StatusTone.error,
    _ => StatusTone.neutral,
  };

  /// [status] as a capitalized word.
  static String labelOf(HealthStatus status) {
    final name = status.name;
    return name.isEmpty ? name : '${name[0].toUpperCase()}${name.substring(1)}';
  }

  @override
  Widget build(BuildContext context) {
    return StatusLabel(
      label: labelOf(status),
      tone: toneOf(status),
      icon: Icons.circle,
      tooltip: tooltip,
    );
  }
}

/// Where a source's credentials stand.
enum CredentialState {
  /// The source needs no key.
  notNeeded('Not needed', StatusTone.neutral),

  /// A required key is stored.
  set('Set', StatusTone.ok),

  /// A required key is missing.
  missing('Not set', StatusTone.error);

  const CredentialState(this.label, this.tone);

  /// The table text.
  final String label;

  /// The color role.
  final StatusTone tone;

  /// The state of [source].
  static CredentialState of(SourceSummary source) {
    if (source.credentialsRequired != true) {
      return source.credentialsSet == true ? set : notNeeded;
    }
    return source.credentialsSet == true ? set : missing;
  }
}

/// The credentials column: "Set", "Not set", "Not needed".
class CredentialLabel extends StatelessWidget {
  /// Creates the label for [source].
  const CredentialLabel({super.key, required this.source});

  /// The source.
  final SourceSummary source;

  @override
  Widget build(BuildContext context) {
    final state = CredentialState.of(source);
    return StatusLabel(label: state.label, tone: state.tone, showIcon: false);
  }
}

/// Today's request count against the daily budget: "1.8K / 10K".
String usageText(int? usedToday, Budget? budget) {
  final used = usedToday == null ? '—' : compactCount(usedToday);
  if (budget == null) {
    return used;
  }
  return '$used / ${compactCount(budget.perDay)}';
}

/// [n] with a K or M suffix past a thousand: `1834` → `1.8K`.
String compactCount(num n) {
  String trim(double v) {
    final s = v.toStringAsFixed(1);
    return s.endsWith('.0') ? s.substring(0, s.length - 2) : s;
  }

  if (n.abs() >= 1000000) {
    return '${trim(n / 1000000)}M';
  }
  if (n.abs() >= 1000) {
    return '${trim(n / 1000)}K';
  }
  return '$n';
}

/// A source's interval for a table cell.
String intervalText(String? interval) => displayDurationText(interval);

/// The hover text for a source's health: its reason and last error.
String? healthTooltip(SourceHealth? health) {
  if (health == null) {
    return null;
  }
  final parts = <String>[
    if (health.statusReason case final reason? when reason.isNotEmpty) reason,
    if (health.lastError case final error? when error.isNotEmpty) 'Last error: $error',
    if (health.consecutiveFailures > 0) '${health.consecutiveFailures} consecutive failures',
  ];
  return parts.isEmpty ? null : parts.join('\n');
}
