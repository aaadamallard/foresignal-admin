import 'dart:convert';

import '../../core/format/instant_text.dart';
import '../forecasting/forecasting_drafts.dart'
    show commaList, instantProblem, jsonObjectProblem, jsonObjectText, parseJsonObject;

export '../forecasting/forecasting_drafts.dart' show commaList, jsonObjectText;

/// Alert and rule severities (`TriggerRuleInput.severity`), lowest first.
const List<String> severities = <String>['info', 'warning', 'critical'];

/// The rank of a severity: info 0, warning 1, critical 2; −1 when unknown.
int severityRank(Object? wire) => severities.indexOf('$wire');

/// Alert states (`Alert.state`).
const List<String> alertStates = <String>['firing', 'acknowledged', 'resolved'];

/// Alert-quality feedback (`AlertFeedbackInput.feedback`).
const List<String> alertFeedback = <String>['useful', 'noise', 'late', 'false_positive'];

/// Rule types (`TriggerRuleInput.type`).
const List<String> ruleTypes = <String>['record', 'count', 'absence', 'anomaly'];

/// Whether a rule [type] evaluates over a window.
bool isWindowed(String type) => type != 'record';

/// Rule modes for record rules (`TriggerRuleInput.mode`).
const List<String> ruleModes = <String>['match', 'enter', 'exit'];

/// Condition operators (`Condition.op`).
const List<String> conditionOps = <String>[
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
  'inWatchlist',
  'notInWatchlist',
];

/// Every member of `TriggerRuleInput` but the deprecated `source` and
/// `kind` aliases, which the backend refuses next to `sources` / `kinds`.
const List<String> triggerInputMembers = <String>[
  'name',
  'enabled',
  'conditions',
  'geofence',
  'mode',
  'onlyNew',
  'cooldown',
  'messageTemplate',
  'severity',
  'enrich',
  'enrichRadiusKm',
  'enrichWindow',
  'tags',
  'sources',
  'kinds',
  'bufferMeters',
  'hysteresisMeters',
  'near',
  'reappearAsEnter',
  'cooldownScope',
  'autoResolve',
  'maxAlertsPerHour',
  'autoDisableOnStorm',
  'activeFrom',
  'activeUntil',
  'activeWindow',
  'forecastHorizon',
  'escalationPolicyId',
  'geofenceRef',
  'weatherContext',
  'type',
  'window',
];

/// The members [TriggerDraft] edits field by field; the rest go in its
/// "More settings" document.
const Set<String> _triggerFormMembers = <String>{
  'name',
  'enabled',
  'type',
  'mode',
  'severity',
  'sources',
  'kinds',
  'tags',
  'cooldown',
  'messageTemplate',
  'escalationPolicyId',
  'conditions',
  'window',
};

/// Members refused on windowed rules (400 `WINDOW_RULE_INVALID`).
const Set<String> _recordOnlyMembers = <String>{'mode', 'onlyNew', 'reappearAsEnter'};

/// A starting window document per windowed rule type (`CountWindow`,
/// `AbsenceWindow`, `AnomalyWindow`).
const Map<String, Map<String, Object?>> windowTemplates = <String, Map<String, Object?>>{
  'count': <String, Object?>{'window': '1h', 'op': '>=', 'threshold': 5, 'groupBy': null},
  'absence': <String, Object?>{'window': '6h', 'coverageMin': 0.8},
  'anomaly': <String, Object?>{
    'window': '1h',
    'bucket': '1h',
    'slotMode': 'hour-of-week',
    'direction': 'up',
    'sensitivity': 'medium',
  },
};

final RegExp _tagPattern = RegExp(r'^[a-z0-9][a-z0-9_-]{0,31}$');
final RegExp _pathPattern = RegExp(r'^[A-Za-z0-9_]+(\.[A-Za-z0-9_]+)*$');
final RegExp _shorthand = RegExp(r'^(\d+)([smhd])$');
final RegExp _isoDuration = RegExp(
  r'^P(?:(\d+)W)?(?:(\d+)D)?(?:T(?=\d)(?:(\d+)H)?(?:(\d+)M)?(?:(\d+)S)?)?$',
);

/// A duration as the contract writes it, ISO-8601 (`PT15M`, `P7D`) or
/// shorthand (`15m`, `12h`, `7d`); `null` when it is neither.
Duration? parseDurationText(String text) {
  final t = text.trim();
  if (_shorthand.firstMatch(t) case final m?) {
    final n = int.parse(m[1]!);
    return switch (m[2]) {
      's' => Duration(seconds: n),
      'm' => Duration(minutes: n),
      'h' => Duration(hours: n),
      _ => Duration(days: n),
    };
  }
  if (t == 'P' || t == 'PT') {
    return null;
  }
  if (_isoDuration.firstMatch(t) case final m?) {
    int part(int i) => int.tryParse(m[i] ?? '') ?? 0;
    return Duration(
      days: part(1) * 7 + part(2),
      hours: part(3),
      minutes: part(4),
      seconds: part(5),
    );
  }
  return null;
}

/// The problem with a duration [text], or `null` when it reads (or is empty
/// and not [required]).
String? durationProblem(String text, {bool required = false}) {
  if (text.trim().isEmpty) {
    return required ? 'Required.' : null;
  }
  return parseDurationText(text) == null ? 'A duration such as 15m, 12h, 7d or PT15M.' : null;
}

/// The JSON array of objects in [text]; empty text is an empty list. Throws
/// [FormatException] for anything else.
List<Map<String, Object?>> parseObjectArray(String text) {
  final t = text.trim();
  if (t.isEmpty) {
    return const <Map<String, Object?>>[];
  }
  final Object? value;
  try {
    value = jsonDecode(t);
  } on FormatException catch (e) {
    throw FormatException('Not valid JSON: ${e.message}');
  }
  if (value is! List || value.any((e) => e is! Map)) {
    throw const FormatException('A JSON array of objects.');
  }
  return <Map<String, Object?>>[for (final e in value) (e as Map).cast<String, Object?>()];
}

/// [value] as indented JSON text; empty for an empty list.
String jsonArrayText(List<Object?>? value) =>
    value == null || value.isEmpty ? '' : const JsonEncoder.withIndent('  ').convert(value);

/// The problem with one trigger condition, or `null` when it is well formed.
String? conditionProblem(Map<String, Object?> c) {
  if (c['type'] == 'approach') {
    final ok = c['target'] is Map && c['withinMeters'] is num && c['withinMinutes'] is num;
    return ok ? null : 'An approach condition needs target, withinMeters and withinMinutes.';
  }
  final op = c['op'];
  if (!conditionOps.contains(op)) {
    return 'Unknown operator ${op ?? '(none)'}; one of ${conditionOps.join(' ')}.';
  }
  final path = c['path'];
  final watchlist = op == 'inWatchlist' || op == 'notInWatchlist';
  if (path == null && !watchlist) {
    return 'Operator $op needs a path.';
  }
  if (path != null && (path is! String || !_pathPattern.hasMatch(path))) {
    return 'The path "$path" is not a dot path such as payload.mag.';
  }
  if (watchlist && c['value'] is! String) {
    return 'Operator $op takes a watchlist id as its value.';
  }
  if (!c.containsKey('value')) {
    return 'Operator $op needs a value.';
  }
  return null;
}

/// A condition that scopes a rule to the entities on watchlist [id]: by the
/// payload value at [path], or by each source's declared identity when
/// [path] is empty.
Map<String, Object?> watchlistCondition(String id, {String path = '', bool negate = false}) =>
    <String, Object?>{
      if (path.trim().isNotEmpty) 'path': path.trim(),
      'op': negate ? 'notInWatchlist' : 'inWatchlist',
      'value': id,
    };

/// An editable trigger rule (`TriggerRuleInput`). `PUT` replaces the rule
/// whole, so the members the form does not show ride along in [moreText].
class TriggerDraft {
  /// A new rule with the contract defaults.
  TriggerDraft();

  /// A draft of stored [rule], keeping every input member it has.
  factory TriggerDraft.of(Map<String, Object?> rule) {
    final more = <String, Object?>{
      for (final m in triggerInputMembers)
        if (!_triggerFormMembers.contains(m) && rule[m] != null) m: rule[m],
      // A route reads back as its buffered polygon in `geofence` and its line
      // in `geofenceRoute`; the input is the line, with `bufferMeters`.
      if (rule['geofenceRoute'] != null) 'geofence': rule['geofenceRoute'],
    };
    return TriggerDraft()
      ..name = '${rule['name'] ?? ''}'
      ..enabled = rule['enabled'] as bool? ?? true
      ..type = rule['type'] as String? ?? 'record'
      ..mode = rule['mode'] as String? ?? 'match'
      ..severity = rule['severity'] as String? ?? 'warning'
      ..sources = _joined(rule['sources'])
      ..kinds = _joined(rule['kinds'])
      ..tags = _joined(rule['tags'])
      ..cooldown = rule['cooldown'] as String? ?? ''
      ..messageTemplate = rule['messageTemplate'] as String? ?? ''
      ..escalationPolicyId = rule['escalationPolicyId'] as String?
      ..conditionsText = jsonArrayText(rule['conditions'] as List<Object?>?)
      ..windowText = jsonObjectText((rule['window'] as Map?)?.cast<String, Object?>())
      ..moreText = jsonObjectText(more);
  }

  static String _joined(Object? list) => list is List ? list.join(', ') : '';

  /// Up to 200 characters.
  String name = '';

  /// Whether the rule fires.
  bool enabled = true;

  /// `record`, `count`, `absence` or `anomaly`.
  String type = 'record';

  /// `match`, `enter` or `exit` (record rules only).
  String mode = 'match';

  /// `info`, `warning` or `critical`.
  String severity = 'warning';

  /// Source ids, comma-separated; empty for every source.
  String sources = '';

  /// Kinds, comma-separated; empty for every kind.
  String kinds = '';

  /// Tags copied to alerts, comma-separated.
  String tags = '';

  /// The cooldown duration; empty for the default.
  String cooldown = '';

  /// The alert message template; empty for the default.
  String messageTemplate = '';

  /// The escalation policy, or `null` for none.
  String? escalationPolicyId;

  /// The conditions, a JSON array (ANDed).
  String conditionsText = '';

  /// The window spec of a windowed rule, a JSON object.
  String windowText = '';

  /// Every other input member, a JSON object.
  String moreText = '';

  /// Problems by field; empty when the draft can be sent.
  Map<String, String> validate() {
    final errors = <String, String>{};
    final n = name.trim();
    if (n.isEmpty || n.length > 200) {
      errors['name'] = n.isEmpty ? 'Required.' : 'Up to 200 characters.';
    }
    final tagList = commaList(tags);
    if (tagList.length > 16) {
      errors['tags'] = 'Up to 16 tags.';
    } else if (tagList.where((t) => !_tagPattern.hasMatch(t)).firstOrNull case final bad?) {
      errors['tags'] = '"$bad" must be lower-case letters, digits, _ or -, up to 32.';
    }
    if (commaList(sources).length > 50) {
      errors['sources'] = 'Up to 50 sources.';
    }
    if (commaList(kinds).length > 50) {
      errors['kinds'] = 'Up to 50 kinds.';
    }
    if (durationProblem(cooldown) case final p?) {
      errors['cooldown'] = p;
    }
    try {
      for (final c in parseObjectArray(conditionsText)) {
        if (conditionProblem(c) case final p?) {
          errors['conditions'] = p;
          break;
        }
      }
    } on FormatException catch (e) {
      errors['conditions'] = e.message;
    }
    if (isWindowed(type)) {
      if (jsonObjectProblem(windowText, required: true) case final p?) {
        errors['window'] = p;
      } else if (parseJsonObject(windowText)!['window'] is! String) {
        errors['window'] = 'Needs a window length, such as "window": "1h".';
      }
    }
    if (jsonObjectProblem(moreText) case final p?) {
      errors['more'] = p;
    } else {
      final more = parseJsonObject(moreText) ?? const <String, Object?>{};
      final unknown = more.keys.where((k) => !triggerInputMembers.contains(k)).toList();
      final shown = more.keys.where(_triggerFormMembers.contains).toList();
      if (unknown.isNotEmpty) {
        errors['more'] = 'Not a rule setting: ${unknown.join(', ')}.';
      } else if (shown.isNotEmpty) {
        errors['more'] = 'Set ${shown.join(', ')} in its own field above.';
      } else if (isWindowed(type) && more.keys.any(_recordOnlyMembers.contains)) {
        errors['more'] = 'mode, onlyNew and reappearAsEnter apply to record rules only.';
      }
    }
    return errors;
  }

  /// The `TriggerRuleInput` body. Call only when [validate] is empty.
  Map<String, Object?> toJson() {
    final conditions = parseObjectArray(conditionsText);
    return <String, Object?>{
      'name': name.trim(),
      'enabled': enabled,
      'type': type,
      if (!isWindowed(type)) 'mode': mode,
      'severity': severity,
      'sources': commaList(sources),
      'kinds': commaList(kinds),
      'tags': commaList(tags),
      if (cooldown.trim().isNotEmpty) 'cooldown': cooldown.trim(),
      if (messageTemplate.trim().isNotEmpty) 'messageTemplate': messageTemplate,
      'escalationPolicyId': escalationPolicyId,
      if (conditions.isNotEmpty) 'conditions': conditions,
      if (isWindowed(type)) 'window': parseJsonObject(windowText),
      ...?parseJsonObject(moreText),
    };
  }
}

/// An expiry for a mute or snooze (`TriggerMuteInput`, `SnoozeInput`):
/// exactly one of a duration ([forText]) or an instant ([untilText]).
class ExpiryDraft {
  /// Creates the draft with [forText] filled.
  ExpiryDraft({this.forText = ''});

  /// A duration such as `4h`.
  String forText;

  /// A UTC date or date-time.
  String untilText = '';

  /// Problems by field (`for`, `until`); empty when the draft can be sent.
  /// The duration must lie within [min] and [max] when given.
  Map<String, String> validate({Duration? min, Duration? max}) {
    final hasFor = forText.trim().isNotEmpty;
    final hasUntil = untilText.trim().isNotEmpty;
    if (hasFor == hasUntil) {
      return <String, String>{'for': hasFor ? 'Give a duration or an end, not both.' : 'Give a duration or an end.'};
    }
    if (hasUntil) {
      return <String, String>{'until': ?instantProblem(untilText)};
    }
    final d = parseDurationText(forText);
    if (d == null) {
      return <String, String>{'for': 'A duration such as 30m, 4h or 2d.'};
    }
    if ((min != null && d < min) || (max != null && d > max)) {
      return <String, String>{'for': 'Between ${_span(min)} and ${_span(max)}.'};
    }
    return const <String, String>{};
  }

  static String _span(Duration? d) => d == null
      ? '—'
      : d.inDays >= 1 && d.inHours % 24 == 0
      ? '${d.inDays} ${d.inDays == 1 ? 'day' : 'days'}'
      : '${d.inHours} ${d.inHours == 1 ? 'hour' : 'hours'}';

  /// The body: `{"for": …}` or `{"until": …}`.
  Map<String, Object?> toJson() => forText.trim().isNotEmpty
      ? <String, Object?>{'for': forText.trim()}
      : <String, Object?>{'until': parseInstantText(untilText)!.toIso8601String()};
}

/// An optional note and feedback for acknowledging or resolving an alert
/// (`AlertTransitionInput`), or feedback alone (`AlertFeedbackInput`).
class AlertNoteDraft {
  /// The feedback, or `null` for none.
  String? feedback;

  /// Up to 2000 characters.
  String note = '';

  /// Problems by field; [feedbackRequired] for `setAlertFeedback`.
  Map<String, String> validate({bool feedbackRequired = false}) => <String, String>{
    if (feedbackRequired && feedback == null) 'feedback': 'Choose one.',
    if (note.length > 2000) 'note': 'Up to 2000 characters.',
  };

  /// The body, leaving out what is empty.
  Map<String, Object?> toJson() => <String, Object?>{
    'feedback': ?feedback,
    if (note.trim().isNotEmpty) 'note': note.trim(),
  };
}

/// One editable escalation step (`EscalationStep`).
class EscalationStepDraft {
  /// Creates a step.
  EscalationStepDraft({this.afterMinutes = '', Set<String>? channelIds, this.includePush = false})
    : channelIds = channelIds ?? <String>{};

  /// Minutes after the alert fired, 1–1440.
  String afterMinutes;

  /// The channels it notifies.
  final Set<String> channelIds;

  /// Whether it also sends native push.
  bool includePush;
}

/// An editable escalation policy (`EscalationPolicyInput`).
class EscalationPolicyDraft {
  /// A new policy with one step.
  EscalationPolicyDraft() : steps = <EscalationStepDraft>[EscalationStepDraft(afterMinutes: '15')];

  /// A draft of stored [policy].
  factory EscalationPolicyDraft.of(Map<String, Object?> policy) {
    final repeat = (policy['repeat'] as Map?)?.cast<String, Object?>();
    final stopOn = (policy['stopOn'] as Map?)?.cast<String, Object?>();
    return EscalationPolicyDraft()
      ..name = '${policy['name'] ?? ''}'
      ..steps
          .replaceRange(0, 1, <EscalationStepDraft>[
            for (final s in (policy['steps'] as List<Object?>?) ?? const <Object?>[])
              if (s is Map)
                EscalationStepDraft(
                  afterMinutes: '${s['afterMinutes'] ?? ''}',
                  channelIds: <String>{...((s['channelIds'] as List<Object?>?) ?? const <Object?>[]).map((e) => '$e')},
                  includePush: s['includePush'] == true,
                ),
          ])
      ..repeat = repeat != null
      ..everyMinutes = '${repeat?['everyMinutes'] ?? '30'}'
      ..maxTimes = '${repeat?['maxTimes'] ?? '3'}'
      ..stopOnResolve = stopOn?['resolve'] as bool? ?? true
      ..stopOnSnooze = stopOn?['snooze'] as bool? ?? true;
  }

  /// Up to 200 characters.
  String name = '';

  /// The steps, in order.
  final List<EscalationStepDraft> steps;

  /// Whether the last step repeats.
  bool repeat = false;

  /// Minutes between repeats.
  String everyMinutes = '30';

  /// Repeats, 1–10.
  String maxTimes = '3';

  /// Whether resolving the alert stops escalation.
  bool stopOnResolve = true;

  /// Whether snoozing the alert stops escalation.
  bool stopOnSnooze = true;

  /// Problems by field (`name`, `steps`, `step.<i>`, `everyMinutes`,
  /// `maxTimes`); empty when the draft can be sent.
  Map<String, String> validate() {
    final errors = <String, String>{};
    final n = name.trim();
    if (n.isEmpty || n.length > 200) {
      errors['name'] = n.isEmpty ? 'Required.' : 'Up to 200 characters.';
    }
    if (steps.isEmpty) {
      errors['steps'] = 'At least one step.';
    }
    var previous = 0;
    for (var i = 0; i < steps.length; i++) {
      final m = int.tryParse(steps[i].afterMinutes.trim());
      if (m == null || m < 1 || m > 1440) {
        errors['step.$i'] = 'Minutes, 1 to 1440.';
      } else if (m <= previous) {
        errors['step.$i'] = 'Later than the step before.';
      } else {
        previous = m;
      }
    }
    if (repeat) {
      final every = int.tryParse(everyMinutes.trim());
      if (every == null || every < 1) {
        errors['everyMinutes'] = 'Whole minutes, at least 1.';
      }
      final times = int.tryParse(maxTimes.trim());
      if (times == null || times < 1 || times > 10) {
        errors['maxTimes'] = '1 to 10.';
      }
    }
    return errors;
  }

  /// The `EscalationPolicyInput` body. Call only when [validate] is empty.
  Map<String, Object?> toJson() => <String, Object?>{
    'name': name.trim(),
    'steps': <Object?>[
      for (final s in steps)
        <String, Object?>{
          'afterMinutes': int.parse(s.afterMinutes.trim()),
          'channelIds': s.channelIds.toList(),
          'includePush': s.includePush,
        },
    ],
    'repeat': repeat
        ? <String, Object?>{'everyMinutes': int.parse(everyMinutes.trim()), 'maxTimes': int.parse(maxTimes.trim())}
        : null,
    'stopOn': <String, Object?>{'resolve': stopOnResolve, 'snooze': stopOnSnooze},
  };
}

/// The members of `ChannelInput` beyond those [ChannelDraft] edits field by
/// field; they ride along in its "More settings" document.
const List<String> channelMoreMembers = <String>[
  'waitForEnrichmentSeconds',
  'timezone',
  'quietHours',
  'groupWindowSeconds',
  'backlogCap',
  'editInPlace',
  'deferWhileActiveSeconds',
  'acceptExercise',
  'language',
];

/// One field a channel type declares (`ChannelType.configFields` /
/// `secretFields`).
typedef ChannelField = ({
  String name,
  String type,
  bool required,
  String? description,
  Object? defaultValue,
  List<String> allowed,
});

/// The fields of channel [type] under [key] (`configFields` or
/// `secretFields`).
List<ChannelField> channelFields(Map<String, Object?>? type, String key) => <ChannelField>[
  for (final f in (type?[key] as List<Object?>?) ?? const <Object?>[])
    if (f is Map)
      (
        name: '${f['name']}',
        type: '${f['type'] ?? 'string'}',
        required: f['required'] == true,
        description: f['description'] as String?,
        defaultValue: f['default'],
        allowed: <String>[...((f['allowed'] as List<Object?>?) ?? const <Object?>[]).map((e) => '$e')],
      ),
];

/// Whether a secret field is a `prefix.<Name>` wildcard, such as webhook
/// `header.<Name>`.
bool isWildcardField(String name) => name.endsWith('.<Name>');

/// A config [value] of field [type] as the text a field holds.
String configText(String type, Object? value) => switch (value) {
  null => '',
  final List<Object?> l when type == 'string-list' => l.join(', '),
  final Map<Object?, Object?> m => jsonObjectText(m.cast<String, Object?>()),
  _ => '$value',
};

/// An editable notification channel (`ChannelInput`) of one type, whose
/// `configFields` and `secretFields` shape the form.
class ChannelDraft {
  /// A new channel of [type] (a `ChannelType`).
  ChannelDraft(this.type) {
    final offered = <String>[...((type['events'] as List<Object?>?) ?? const <Object?>[]).map((e) => '$e')];
    events.add(offered.isEmpty || offered.contains('alert') ? 'alert' : offered.first);
  }

  /// A draft of stored [channel] of [type].
  factory ChannelDraft.of(Map<String, Object?> type, Map<String, Object?> channel) {
    final config = (channel['config'] as Map?)?.cast<String, Object?>() ?? const <String, Object?>{};
    final fields = channelFields(type, 'configFields');
    final known = <String>{for (final f in fields) f.name};
    final ruleIds = channel['ruleIds'] as List<Object?>?;
    final d = ChannelDraft(type)
      ..name = '${channel['name'] ?? ''}'
      ..enabled = channel['enabled'] as bool? ?? true
      ..minSeverity = channel['minSeverity'] as String?
      ..allRules = ruleIds == null
      ..titleTemplate = channel['titleTemplate'] as String? ?? ''
      ..bodyTemplate = channel['bodyTemplate'] as String? ?? ''
      ..otherConfigText = jsonObjectText(<String, Object?>{
        for (final e in config.entries)
          if (!known.contains(e.key)) e.key: e.value,
      })
      ..moreText = jsonObjectText(<String, Object?>{
        for (final m in channelMoreMembers)
          if (channel[m] != null) m: channel[m],
      });
    d.events
      ..clear()
      ..addAll(<String>[...((channel['events'] as List<Object?>?) ?? const <Object?>[]).map((e) => '$e')]);
    d.ruleIds.addAll(<String>[...?ruleIds?.map((e) => '$e')]);
    for (final f in fields) {
      d.config[f.name] = configText(f.type, config[f.name]);
    }
    d.secretsSet.addAll(<String>[...((channel['secretFields'] as List<Object?>?) ?? const <Object?>[]).map((e) => '$e')]);
    return d;
  }

  /// The channel type (`ChannelType`).
  final Map<String, Object?> type;

  /// Up to 200 characters.
  String name = '';

  /// Whether it sends.
  bool enabled = true;

  /// The events it receives, by wire name.
  final Set<String> events = <String>{};

  /// The lowest severity it receives; `null` for all.
  String? minSeverity;

  /// Whether every rule's alerts reach it (`ruleIds: null`).
  bool allRules = true;

  /// The rules whose alerts reach it when not [allRules].
  final Set<String> ruleIds = <String>{};

  /// The title template; empty for the default.
  String titleTemplate = '';

  /// The body template; empty for the default.
  String bodyTemplate = '';

  /// Config field text by field name.
  final Map<String, String> config = <String, String>{};

  /// Config members the type does not declare (actions, map attachments,
  /// units), a JSON object.
  String otherConfigText = '';

  /// Secret text by field name; a wildcard field holds a JSON object of
  /// names to values.
  final Map<String, String> secrets = <String, String>{};

  /// The secret fields the backend reports set.
  final Set<String> secretsSet = <String>{};

  /// Other `ChannelInput` members, a JSON object.
  String moreText = '';

  /// Whether any secret was typed, so the save replaces every secret.
  bool get replacesSecrets => secrets.values.any((v) => v.trim().isNotEmpty);

  /// Problems by field (`name`, `events`, `rules`, `config.<name>`,
  /// `secret.<name>`, `otherConfig`, `more`); empty when the draft can be
  /// sent. A new channel ([creating]) needs its required secrets. Only
  /// these rules with none chosen is a problem unless [allowNoRules].
  Map<String, String> validate({required bool creating, bool allowNoRules = false}) {
    final errors = <String, String>{};
    final n = name.trim();
    if (n.isEmpty || n.length > 200) {
      errors['name'] = n.isEmpty ? 'Required.' : 'Up to 200 characters.';
    }
    if (events.isEmpty) {
      errors['events'] = 'At least one event.';
    }
    if (!allRules && ruleIds.isEmpty && !allowNoRules) {
      errors['rules'] = 'Choose rules, or send every rule.';
    }
    for (final f in channelFields(type, 'configFields')) {
      if (_fieldProblem(f, config[f.name] ?? '') case final p?) {
        errors['config.${f.name}'] = p;
      }
    }
    final secretFields = channelFields(type, 'secretFields');
    if (creating || replacesSecrets) {
      for (final f in secretFields) {
        final text = secrets[f.name] ?? '';
        if (isWildcardField(f.name)) {
          if (jsonObjectProblem(text) case final p?) {
            errors['secret.${f.name}'] = p;
          }
        } else if (f.required && text.trim().isEmpty) {
          errors['secret.${f.name}'] = creating ? 'Required.' : 'Required when replacing secrets.';
        }
      }
    }
    if (jsonObjectProblem(otherConfigText) case final p?) {
      errors['otherConfig'] = p;
    }
    if (jsonObjectProblem(moreText) case final p?) {
      errors['more'] = p;
    } else {
      final unknown = (parseJsonObject(moreText) ?? const <String, Object?>{}).keys
          .where((k) => !channelMoreMembers.contains(k))
          .toList();
      if (unknown.isNotEmpty) {
        errors['more'] = 'Not a channel setting here: ${unknown.join(', ')}.';
      }
    }
    return errors;
  }

  static String? _fieldProblem(ChannelField f, String text) {
    final t = text.trim();
    if (t.isEmpty) {
      return f.required ? 'Required.' : null;
    }
    return switch (f.type) {
      'integer' => int.tryParse(t) == null ? 'A whole number.' : null,
      'number' => num.tryParse(t) == null ? 'A number.' : null,
      'boolean' => t == 'true' || t == 'false' ? null : 'true or false.',
      'url' => Uri.tryParse(t)?.hasScheme == true ? null : 'A URL with its scheme.',
      'enum' => f.allowed.isEmpty || f.allowed.contains(t) ? null : 'One of ${f.allowed.join(', ')}.',
      'map' => jsonObjectProblem(t),
      _ => null,
    };
  }

  static Object? _fieldValue(ChannelField f, String text) {
    final t = text.trim();
    return switch (f.type) {
      'integer' => int.parse(t),
      'number' => num.parse(t),
      'boolean' => t == 'true',
      'string-list' => commaList(t),
      'map' => parseJsonObject(t),
      _ => t,
    };
  }

  /// The `ChannelInput` body. Secrets go only when creating or when any was
  /// typed, since a sent `secrets` object replaces them all. Call only when
  /// [validate] is empty.
  Map<String, Object?> toJson({required bool creating}) {
    final secretValues = <String, Object?>{};
    for (final f in channelFields(type, 'secretFields')) {
      final text = (secrets[f.name] ?? '').trim();
      if (text.isEmpty) {
        continue;
      }
      if (isWildcardField(f.name)) {
        final prefix = f.name.substring(0, f.name.length - '<Name>'.length);
        for (final e in parseJsonObject(text)!.entries) {
          secretValues['$prefix${e.key}'] = e.value;
        }
      } else {
        secretValues[f.name] = text;
      }
    }
    return <String, Object?>{
      'name': name.trim(),
      'type': type['id'],
      'enabled': enabled,
      'events': events.toList(),
      'minSeverity': ?minSeverity,
      'ruleIds': allRules ? null : ruleIds.toList(),
      'titleTemplate': titleTemplate.trim().isEmpty ? null : titleTemplate,
      'bodyTemplate': bodyTemplate.trim().isEmpty ? null : bodyTemplate,
      'config': <String, Object?>{
        ...?parseJsonObject(otherConfigText),
        for (final f in channelFields(type, 'configFields'))
          if ((config[f.name] ?? '').trim().isNotEmpty) f.name: _fieldValue(f, config[f.name]!),
      },
      if (creating || replacesSecrets) 'secrets': secretValues,
      ...?parseJsonObject(moreText),
    };
  }
}

/// Watchlist identities (`WatchlistInput.identity`).
const List<String> watchlistIdentities = <String>[
  'icao24',
  'registration',
  'callsign',
  'mmsi',
  'imo',
  'entity',
  'custom',
];

/// Watchlist normalizations (`WatchlistInput.normalize`).
const List<String> watchlistNormalizations = <String>['upper', 'lower', 'digits', 'none'];

/// An editable watchlist (`WatchlistInput`).
class WatchlistDraft {
  /// A new watchlist.
  WatchlistDraft();

  /// A draft of stored [list].
  factory WatchlistDraft.of(Map<String, Object?> list) => WatchlistDraft()
    ..name = '${list['name'] ?? ''}'
    ..identity = list['identity'] as String? ?? 'custom'
    ..normalize = list['normalize'] as String?
    ..description = list['description'] as String? ?? '';

  /// Up to 200 characters.
  String name = '';

  /// What the values identify; fixed once created.
  String identity = 'mmsi';

  /// The normalization; `null` for the identity's default.
  String? normalize;

  /// A description.
  String description = '';

  /// Problems by field; empty when the draft can be sent.
  Map<String, String> validate() {
    final n = name.trim();
    return <String, String>{
      if (n.isEmpty) 'name': 'Required.',
      if (n.length > 200) 'name': 'Up to 200 characters.',
    };
  }

  /// The `WatchlistInput` body.
  Map<String, Object?> toJson() => <String, Object?>{
    'name': name.trim(),
    'identity': identity,
    'normalize': ?normalize,
    'description': description.trim().isEmpty ? null : description.trim(),
  };
}

/// Watchlist items typed one per line as `value` or `value, label`.
List<Map<String, Object?>> parseItemLines(String text) => <Map<String, Object?>>[
  for (final line in const LineSplitter().convert(text))
    if (line.trim().isNotEmpty)
      () {
        final comma = line.indexOf(',');
        final value = (comma < 0 ? line : line.substring(0, comma)).trim();
        final label = comma < 0 ? '' : line.substring(comma + 1).trim();
        return <String, Object?>{'value': value, if (label.isNotEmpty) 'label': label};
      }(),
];

/// Splits one CSV line, honoring double-quoted fields with `""` escapes.
List<String> _csvFields(String line) {
  final out = <String>[];
  final field = StringBuffer();
  var quoted = false;
  for (var i = 0; i < line.length; i++) {
    final c = line[i];
    if (quoted) {
      if (c == '"' && i + 1 < line.length && line[i + 1] == '"') {
        field.write('"');
        i++;
      } else if (c == '"') {
        quoted = false;
      } else {
        field.write(c);
      }
    } else if (c == '"') {
      quoted = true;
    } else if (c == ',') {
      out.add(field.toString());
      field.clear();
    } else {
      field.write(c);
    }
  }
  out.add(field.toString());
  return out;
}

/// Watchlist items from CSV with the header `value[,label,notes,tags]`, the
/// shape `exportWatchlist` writes. Tags within a cell are separated by `;`.
/// Throws [FormatException] when the header has no `value` column.
List<Map<String, Object?>> parseWatchlistCsv(String text) {
  final lines = const LineSplitter().convert(text.trim()).where((l) => l.trim().isNotEmpty).toList();
  if (lines.isEmpty) {
    return const <Map<String, Object?>>[];
  }
  final header = _csvFields(lines.first).map((h) => h.trim().toLowerCase()).toList();
  final valueAt = header.indexOf('value');
  if (valueAt < 0) {
    throw const FormatException('The first line must be a header naming a value column.');
  }
  String? cell(List<String> row, String name) {
    final i = header.indexOf(name);
    final v = i < 0 || i >= row.length ? '' : row[i].trim();
    return v.isEmpty ? null : v;
  }

  return <Map<String, Object?>>[
    for (final line in lines.skip(1))
      () {
        final row = _csvFields(line);
        final tags = cell(row, 'tags');
        return <String, Object?>{
          'value': cell(row, 'value') ?? '',
          'label': ?cell(row, 'label'),
          'notes': ?cell(row, 'notes'),
          if (tags != null)
            'tags': <String>[
              for (final t in tags.split(';'))
                if (t.trim().isNotEmpty) t.trim(),
            ],
        };
      }(),
  ];
}

/// Watchlist items from pasted text: a JSON array of items, or CSV.
/// Throws [FormatException] when it is neither.
List<Map<String, Object?>> parseWatchlistImport(String text) {
  final t = text.trimLeft();
  if (t.startsWith('[')) {
    final items = parseObjectArray(t);
    if (items.any((i) => i['value'] is! String)) {
      throw const FormatException('Every item needs a string value.');
    }
    return items;
  }
  return parseWatchlistCsv(text);
}
