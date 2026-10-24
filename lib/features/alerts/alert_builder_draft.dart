import 'alerts_drafts.dart';

/// The verdicts of `analyzeTriggerSources` (`SourceRelevance.verdict`).
const List<String> relevanceVerdicts = <String>['relevant', 'marginal', 'not-meaningful', 'unrated'];

/// Whether a verdict calls a source out: it adds little ([marginal]) or
/// nothing ([not-meaningful]) to the dataset.
bool isFlaggedVerdict(Object? verdict) => verdict == 'marginal' || verdict == 'not-meaningful';

/// The words a verdict reads as.
String verdictText(Object? verdict) => switch (verdict) {
  'relevant' => 'Relevant',
  'marginal' => 'Marginal',
  'not-meaningful' => 'Not meaningful',
  'unrated' => 'Not rated',
  _ => '$verdict',
};

/// One source's advisory verdict from `analyzeTriggerSources`.
typedef SourceVerdict = ({String sourceId, String name, String verdict, String reason});

/// What one source-relevance check said, and which selection it judged.
class RelevanceCheck {
  /// Reads a `SourceRelevanceAnalysis` made for [judged].
  RelevanceCheck.of(Map<String, Object?> analysis, List<String> judged)
    : judged = List<String>.unmodifiable(judged),
      summary = analysis['summary'] as String?,
      verdicts = <SourceVerdict>[
        for (final s in (analysis['sources'] as List<Object?>?) ?? const <Object?>[])
          if (s is Map)
            (
              sourceId: '${s['sourceId']}',
              name: '${s['name'] ?? s['sourceId']}',
              verdict: '${s['verdict']}',
              reason: '${s['reason'] ?? ''}',
            ),
      ];

  /// The sources the check judged, in order.
  final List<String> judged;

  /// The model's one sentence on the whole set, if it gave one.
  final String? summary;

  /// One verdict per judged source.
  final List<SourceVerdict> verdicts;

  /// The verdict for [sourceId], if the check judged it.
  SourceVerdict? of(String sourceId) => verdicts.where((v) => v.sourceId == sourceId).firstOrNull;

  /// The flagged verdicts among [selected]: a source already omitted is no
  /// longer called out.
  List<SourceVerdict> flagged(Iterable<String> selected) {
    final keep = selected.toSet();
    return <SourceVerdict>[
      for (final v in verdicts)
        if (isFlaggedVerdict(v.verdict) && keep.contains(v.sourceId)) v,
    ];
  }

  /// Whether [selected] holds a source the check did not judge, so a new
  /// check would say more.
  bool isStaleFor(Iterable<String> selected) => selected.any((id) => !judged.contains(id));
}

/// The operators the condition rows offer: every `Condition.op` but the
/// watchlist ones, which the full rule form adds from a watchlist picker.
const List<String> builderOps = <String>[
  '>',
  '>=',
  '<',
  '<=',
  '==',
  '!=',
  'in',
  'notIn',
  'exists',
  'startsWith',
  'matches',
];

/// The words an operator reads as in a condition row.
String opText(String op) => switch (op) {
  '>' => 'is more than',
  '>=' => 'is at least',
  '<' => 'is less than',
  '<=' => 'is at most',
  '==' => 'equals',
  '!=' => 'does not equal',
  'in' => 'is one of',
  'notIn' => 'is none of',
  'exists' => 'is present',
  'startsWith' => 'starts with',
  'matches' => 'matches the pattern',
  _ => op,
};

final RegExp _pathPattern = RegExp(r'^[A-Za-z0-9_]+(\.[A-Za-z0-9_]+)*$');

/// [text] as the scalar a condition compares with: `true` and `false` as
/// booleans, a number as a number, anything else as the text itself.
Object _scalar(String text) {
  final t = text.trim();
  if (t == 'true' || t == 'false') {
    return t == 'true';
  }
  return num.tryParse(t) ?? t;
}

/// One payload condition as the builder edits it: a dot [path], an [op] and
/// the [value] as typed.
class BuilderCondition {
  /// Creates the row.
  BuilderCondition({this.path = '', this.op = '>=', this.value = ''});

  /// The row for stored [condition], or `null` when a row cannot show it
  /// exactly: an approach or watchlist condition, or a string value a row
  /// would read back as a number or boolean. Such a condition is kept as it
  /// is.
  static BuilderCondition? of(Map<String, Object?> condition) {
    final op = condition['op'];
    final path = condition['path'];
    if (condition['type'] != null || op is! String || !builderOps.contains(op) || path is! String) {
      return null;
    }
    final keys = condition.keys.toSet()..removeAll(<String>['path', 'op', 'value']);
    if (keys.isNotEmpty) {
      return null;
    }
    String? text(Object? v) => switch (v) {
      final bool b => '$b',
      final num n => '$n',
      final String s when _scalar(s) is String && s == s.trim() && !s.contains(',') => s,
      _ => null,
    };
    final value = condition['value'];
    final String? shown;
    if (op == 'in' || op == 'notIn') {
      if (value is! List || value.isEmpty) {
        return null;
      }
      final parts = value.map(text).toList();
      shown = parts.contains(null) ? null : parts.join(', ');
    } else if (op == 'matches' || op == 'startsWith') {
      shown = value is String ? value : null;
    } else {
      shown = text(value);
    }
    return shown == null ? null : BuilderCondition(path: path, op: op, value: shown);
  }

  /// The payload dot path, such as `mag` or `properties.depth`.
  String path;

  /// The operator, one of [builderOps].
  String op;

  /// The value as typed: a number, text, `true`/`false`, or for `in` and
  /// `notIn` a comma-separated list.
  String value;

  /// The problem with this row, or `null` when it can be sent.
  String? problem() {
    final p = path.trim();
    if (p.isEmpty) {
      return 'Choose a field.';
    }
    if (!_pathPattern.hasMatch(p)) {
      return 'A field is a dot path such as mag or properties.depth.';
    }
    final v = value.trim();
    switch (op) {
      case '>' || '>=' || '<' || '<=':
        return num.tryParse(v) == null ? 'A number.' : null;
      case 'exists':
        return v == 'true' || v == 'false' ? null : 'Yes or no.';
      case 'in' || 'notIn':
        final items = commaList(v);
        if (items.isEmpty) {
          return 'One or more values, comma-separated.';
        }
        final types = items.map((i) => switch (_scalar(i)) {
          bool() => 'yes/no',
          num() => 'number',
          _ => 'text',
        });
        return types.toSet().length > 1 ? 'All numbers, all text, or all true/false.' : null;
      case 'startsWith' || 'matches':
        if (v.isEmpty) {
          return 'Required.';
        }
        return v.length > 256 ? 'Up to 256 characters.' : null;
      default:
        return v.isEmpty ? 'Required.' : null;
    }
  }

  /// The `Condition`. Call only when [problem] is `null`.
  Map<String, Object?> toJson() {
    final v = value.trim();
    return <String, Object?>{
      'path': path.trim(),
      'op': op,
      'value': switch (op) {
        'in' || 'notIn' => commaList(v).map(_scalar).toList(),
        'exists' => v == 'true',
        'startsWith' || 'matches' => value,
        _ => _scalar(v),
      },
    };
  }

  /// The row in words, such as `mag is at least 5`.
  String describe() => op == 'exists'
      ? '${path.trim()} ${value.trim() == 'false' ? 'is absent' : 'is present'}'
      : '${path.trim()} ${opText(op)} ${value.trim()}';
}

/// How a channel receives a rule's alerts.
enum ChannelRoute {
  /// The channel takes every rule's alerts (`ruleIds: null`).
  everyRule,

  /// The channel lists the rule.
  listed,

  /// The channel does not take the rule's alerts.
  none,
}

/// How [channel] receives rule [ruleId]'s alerts; [ruleId] `null` is a rule
/// not yet saved, which no channel lists.
ChannelRoute channelRoute(Map<String, Object?> channel, String? ruleId) {
  final ids = channel['ruleIds'];
  if (ids == null) {
    return ChannelRoute.everyRule;
  }
  return ruleId != null && ids is List && ids.contains(ruleId) ? ChannelRoute.listed : ChannelRoute.none;
}

/// Whether [channel] subscribes to alerts at all (`events` holds `alert`).
bool takesAlerts(Map<String, Object?> channel) =>
    ((channel['events'] as List<Object?>?) ?? const <Object?>['alert']).contains('alert');

/// The `ChannelInput` that routes rule [ruleId] to [channel] of [type]
/// ([route] true) or stops routing it there ([route] false), keeping every
/// other setting. Routing a channel that takes no alerts subscribes it to
/// alerts, scoped to this rule when it took every rule; stopping leaves a
/// channel that takes every rule as it is. `null` when nothing changes.
Map<String, Object?>? routeChannelBody(
  Map<String, Object?> type,
  Map<String, Object?> channel,
  String ruleId, {
  required bool route,
}) {
  final draft = ChannelDraft.of(type, channel);
  final current = channelRoute(channel, ruleId);
  final alerts = takesAlerts(channel);
  if (route) {
    if (alerts && current != ChannelRoute.none) {
      return null;
    }
    if (!alerts) {
      draft.events.add('alert');
      if (current == ChannelRoute.everyRule) {
        draft.allRules = false;
      }
    }
    if (!draft.allRules) {
      draft.ruleIds.add(ruleId);
    }
  } else {
    if (current != ChannelRoute.listed) {
      return null;
    }
    draft.ruleIds.remove(ruleId);
  }
  return draft.toJson(creating: false);
}

/// The source, trigger and delivery choices of the Alert Builder over a
/// [TriggerDraft], which carries every other member of the rule unchanged.
class AlertBuilderDraft {
  /// A new rule: no sources, no conditions, the contract defaults.
  AlertBuilderDraft() : rule = TriggerDraft();

  /// A draft of stored [stored], with the channels that list it selected.
  AlertBuilderDraft.of(Map<String, Object?> stored, List<Map<String, Object?>> channels)
    : rule = TriggerDraft.of(stored) {
    sources.addAll(<String>[...((stored['sources'] as List<Object?>?) ?? const <Object?>[]).map((e) => '$e')]);
    kinds.addAll(<String>[...((stored['kinds'] as List<Object?>?) ?? const <Object?>[]).map((e) => '$e')]);
    for (final c in (stored['conditions'] as List<Object?>?) ?? const <Object?>[]) {
      final m = c is Map ? c.cast<String, Object?>() : <String, Object?>{};
      final row = BuilderCondition.of(m);
      if (row == null) {
        kept.add(m);
      } else {
        conditions.add(row);
      }
    }
    final id = '${stored['id']}';
    for (final c in channels) {
      if (takesAlerts(c) && channelRoute(c, id) == ChannelRoute.listed) {
        channelIds.add('${c['id']}');
      }
    }
    routedAtLoad.addAll(channelIds);
  }

  /// The rule's other members (name, severity, enabled, mode, cooldown and
  /// the rest), sent back as they are.
  final TriggerDraft rule;

  /// The dataset: source ids in the order chosen; empty for every source.
  final List<String> sources = <String>[];

  /// The kinds the rule fires on; empty for every kind.
  final Set<String> kinds = <String>{};

  /// The conditions the rows edit (ANDed).
  final List<BuilderCondition> conditions = <BuilderCondition>[];

  /// Stored conditions no row can show exactly; sent back unchanged.
  final List<Map<String, Object?>> kept = <Map<String, Object?>>[];

  /// The channels that list this rule.
  final Set<String> channelIds = <String>{};

  /// The channels that listed the rule when it was opened.
  final Set<String> routedAtLoad = <String>{};

  /// Problems by field (`name`, `sources`, `kinds`, `condition.<n>`); empty
  /// when the rule can be saved.
  Map<String, String> validate() {
    final errors = <String, String>{};
    final n = rule.name.trim();
    if (n.isEmpty || n.length > 200) {
      errors['name'] = n.isEmpty ? 'Name the alert.' : 'Up to 200 characters.';
    }
    if (sources.length > 50) {
      errors['sources'] = 'Up to 50 sources.';
    }
    if (kinds.length > 50) {
      errors['kinds'] = 'Up to 50 kinds.';
    }
    for (var i = 0; i < conditions.length; i++) {
      if (conditions[i].problem() case final p?) {
        errors['condition.$i'] = p;
      }
    }
    return errors;
  }

  /// The `TriggerRuleInput`. Call only when [validate] is empty.
  Map<String, Object?> toJson() {
    rule
      ..sources = sources.join(', ')
      ..kinds = kinds.join(', ')
      ..conditionsText = jsonArrayText(<Object?>[...kept, for (final c in conditions) c.toJson()]);
    return rule.toJson();
  }
}
