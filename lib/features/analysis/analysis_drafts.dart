import 'dart:convert';

import 'package:built_value/serializer.dart';

import '../../api/api.dart';
import '../../core/format/duration_text.dart';

final RegExp _slug = RegExp(r'^[a-z0-9]+(-[a-z0-9]+)*$');
final RegExp _ulid = RegExp(r'^[0-9A-HJKMNP-TV-Z]{26}$');
final RegExp _dotPath = RegExp(r'^[A-Za-z0-9_]+(\.[A-Za-z0-9_]+)*$');

/// The recipe types (`CorrelationRecipeDefinition.type`), by wire name.
const List<String> recipeTypes = <String>[
  'maritime-disruption',
  'aviation-anomaly',
  'infrastructure-disruption',
  'weather-impact',
  'seismic',
  'custom',
];

/// The member roles of a join, by wire name.
const List<String> memberRoles = <String>['supporting', 'contradicting', 'context'];

/// The condition operators (`Condition.op`).
const Set<String> conditionOps = <String>{
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
};

/// `a, b, c` → `['a', 'b', 'c']`, dropping empties.
List<String> splitList(String text) => <String>[
  for (final part in text.split(','))
    if (part.trim().isNotEmpty) part.trim(),
];

/// A list as `a, b, c`.
String joinList(Object? list) => list is List ? list.join(', ') : '';

String _json(Object? value) =>
    value == null ? '' : const JsonEncoder.withIndent('  ').convert(value);

/// Checks a JSON list of conditions, returning the list, or a problem as a
/// `String`.
Object _conditions(String text) {
  if (text.trim().isEmpty) {
    return const <Object?>[];
  }
  final Object? parsed;
  try {
    parsed = jsonDecode(text);
  } on FormatException catch (e) {
    return 'Not JSON: ${e.message}';
  }
  if (parsed is! List) {
    return 'A JSON list of conditions, such as [{"path": "mag", "op": ">=", "value": 5}].';
  }
  for (final c in parsed) {
    if (c is! Map || !c.containsKey('op') || !c.containsKey('value')) {
      return 'Every condition needs "op" and "value".';
    }
    if (!conditionOps.contains(c['op'])) {
      return 'Unknown operator ${c['op']}.';
    }
    final path = c['path'];
    final watchlist = c['op'] == 'inWatchlist' || c['op'] == 'notInWatchlist';
    if (path == null ? !watchlist : (path is! String || !_dotPath.hasMatch(path))) {
      return 'Condition paths are dot paths such as payload.mag; only the watchlist '
          'operators may leave it out.';
    }
  }
  return parsed;
}

/// One join clause of a recipe, as typed.
class JoinDraft {
  /// A draft of [json], a stored join clause.
  JoinDraft([Map<String, Object?> json = const <String, Object?>{}])
    : base = Map<String, Object?>.from(json),
      kinds = joinList(json['kinds']),
      conditions = _json(json['conditions']),
      withinKm = json['withinKm']?.toString() ?? '',
      sameRegion = json['sameRegion'] as String?,
      sameEntity = json['sameEntity'] == true,
      sharedAttribute = json['sharedAttribute'] as String? ?? '',
      before = (json['window'] as Map?)?['before'] as String? ?? '',
      after = (json['window'] as Map?)?['after'] as String? ?? '',
      role = json['role'] as String?,
      signalFamily = json['signalFamily'] as String? ?? '',
      weight = json['weight']?.toString() ?? '';

  /// The stored clause, so members the form does not show go back.
  final Map<String, Object?> base;

  /// Candidate kinds, comma separated.
  String kinds;

  /// Candidate conditions, as JSON.
  String conditions;

  /// The distance limit, in kilometers.
  String withinKm;

  /// `country` or `admin1`, or `null`.
  String? sameRegion;

  /// Whether a candidate must resolve to a seed member's entity.
  bool sameEntity;

  /// The payload dot path whose value must equal a seed member's (157).
  String sharedAttribute;

  /// The window before the seed.
  String before;

  /// The window after the seed.
  String after;

  /// The member role, or `null` for the default.
  String? role;

  /// The signal family.
  String signalFamily;

  /// The weight, 0 to 1.
  String weight;

  /// Problems by field, keyed `join.<index>.<field>`.
  void validate(int index, Map<String, String> errors) {
    void bad(String field, String message) => errors['join.$index.$field'] = message;
    if (_conditions(conditions) case final String problem) {
      bad('conditions', problem);
    }
    if (withinKm.trim().isNotEmpty && (num.tryParse(withinKm.trim()) ?? -1) < 0) {
      bad('withinKm', 'A distance in kilometers.');
    }
    final shared = sharedAttribute.trim();
    if (shared.isNotEmpty && !_dotPath.hasMatch(shared)) {
      bad('sharedAttribute', 'A payload dot path, such as registeredAddress or officer.name.');
    }
    for (final (field, value) in <(String, String)>[('before', before), ('after', after)]) {
      if (value.trim().isNotEmpty && parseDurationText(value) == null) {
        bad(field, 'A duration such as 30m, 6h or P7D.');
      }
    }
    if (weight.trim().isNotEmpty) {
      final w = num.tryParse(weight.trim());
      if (w == null || w < 0 || w > 1) {
        bad('weight', 'A number from 0 to 1.');
      }
    }
  }

  /// The clause as JSON. Call [validate] first.
  Map<String, Object?> toJson() {
    final json = Map<String, Object?>.from(base)
      ..remove('kinds')
      ..remove('conditions')
      ..remove('withinKm')
      ..remove('sameRegion')
      ..remove('sameEntity')
      ..remove('sharedAttribute')
      ..remove('window')
      ..remove('role')
      ..remove('signalFamily')
      ..remove('weight');
    final conditionList = _conditions(conditions);
    return <String, Object?>{
      ...json,
      if (splitList(kinds).isNotEmpty) 'kinds': splitList(kinds),
      if (conditionList is List && conditionList.isNotEmpty) 'conditions': conditionList,
      'withinKm': ?num.tryParse(withinKm.trim()),
      'sameRegion': ?sameRegion,
      if (sameEntity) 'sameEntity': true,
      if (sharedAttribute.trim().isNotEmpty) 'sharedAttribute': sharedAttribute.trim(),
      if (before.trim().isNotEmpty || after.trim().isNotEmpty)
        'window': <String, Object?>{
          if (before.trim().isNotEmpty) 'before': before.trim(),
          if (after.trim().isNotEmpty) 'after': after.trim(),
        },
      'role': ?role,
      if (signalFamily.trim().isNotEmpty) 'signalFamily': signalFamily.trim(),
      'weight': ?num.tryParse(weight.trim()),
    };
  }
}

/// The author / edit form of a correlation recipe.
///
/// A bundled recipe's definition is managed by the backend's classpath, so
/// only `enabled` and the parameter overrides are sent for it
/// (`updateRecipe`); an operator-authored recipe also sends its full
/// definition (157). Members of the definition the form does not show are
/// sent back unchanged.
class RecipeDraft {
  /// A draft for a new recipe.
  RecipeDraft.create()
    : stored = null,
      definition = <String, Object?>{
        'type': 'custom',
        'seed': <String, Object?>{'kinds': <String>[]},
      },
      enabled = true {
    _readDefinition();
  }

  /// A draft of [recipe], as last read.
  RecipeDraft.edit(CorrelationRecipe recipe, Serializers serializers)
    : stored = recipe,
      definition =
          (serializers.serialize(
                    recipe.definition,
                    specifiedType: const FullType(CorrelationRecipeDefinition),
                  )!
                  as Map<Object?, Object?>)
              .cast<String, Object?>(),
      enabled = recipe.enabled {
    id = recipe.id;
    params = _json(recipe.params?.map((k, v) => MapEntry(k, v?.value)).toMap());
    if (params == '{}') {
      params = '';
    }
    _readDefinition();
  }

  /// The recipe as last read; `null` while authoring one.
  final CorrelationRecipe? stored;

  /// The stored definition, as JSON.
  final Map<String, Object?> definition;

  /// Whether this authors a recipe.
  bool get creating => stored == null;

  /// Whether the definition can be edited: operator-authored recipes only.
  bool get definitionEditable =>
      stored == null ||
      (stored!.origin == null ? stored!.builtIn != true : wireOf(stored!.origin!) == 'operator');

  /// The recipe id (a slug).
  String id = '';

  /// Whether the recipe runs.
  bool enabled;

  /// Parameter overrides, as a JSON object.
  String params = '';

  /// `definition.type`.
  String type = 'custom';

  /// Seed kinds, comma separated.
  String seedKinds = '';

  /// Seed sources, comma separated.
  String seedSources = '';

  /// Seed conditions, as JSON.
  String seedConditions = '';

  /// The scalar members, by name: `minMembers`, `minSignalFamilies`,
  /// `activateMembers`, `activateConfidence`, `activateModalities`,
  /// `dedupRadiusKm`, `dedupWindow`, `quietPeriod`, `reopenWindow`.
  final Map<String, String> text = <String, String>{};

  /// The join clauses.
  final List<JoinDraft> joins = <JoinDraft>[];

  /// The contradiction clauses, as JSON.
  String contradictions = '';

  /// The rule → severity map, as JSON.
  String severityMap = '';

  void _readDefinition() {
    final d = definition;
    type = d['type'] as String? ?? 'custom';
    final seed = (d['seed'] as Map?)?.cast<String, Object?>() ?? const <String, Object?>{};
    seedKinds = joinList(seed['kinds']);
    seedSources = joinList(seed['sources']);
    seedConditions = _json(seed['conditions']);
    final activate = (d['activateAt'] as Map?) ?? const <String, Object?>{};
    final dedup = (d['dedup'] as Map?) ?? const <String, Object?>{};
    text
      ..['minMembers'] = d['minMembers']?.toString() ?? ''
      ..['minSignalFamilies'] = d['minSignalFamilies']?.toString() ?? ''
      ..['activateMembers'] = activate['members']?.toString() ?? ''
      ..['activateConfidence'] = activate['confidence']?.toString() ?? ''
      ..['activateModalities'] = activate['modalities']?.toString() ?? ''
      ..['dedupRadiusKm'] = dedup['radiusKm']?.toString() ?? ''
      ..['dedupWindow'] = dedup['window']?.toString() ?? ''
      ..['quietPeriod'] = d['quietPeriod']?.toString() ?? ''
      ..['reopenWindow'] = d['reopenWindow']?.toString() ?? '';
    joins
      ..clear()
      ..addAll(<JoinDraft>[
        for (final j in (d['joins'] as List?) ?? const <Object?>[])
          JoinDraft((j as Map).cast<String, Object?>()),
      ]);
    contradictions = _json(d['contradictions']);
    severityMap = _json(d['severityMap']);
  }

  String _t(String key) => (text[key] ?? '').trim();

  /// Problems by field; empty when the draft can be sent.
  Map<String, String> validate() {
    final errors = <String, String>{};
    if (creating && (id.trim().isEmpty || id.trim().length > 64 || !_slug.hasMatch(id.trim()))) {
      errors['id'] = 'A slug: lowercase words joined by single hyphens, at most 64.';
    }
    if (params.trim().isNotEmpty) {
      try {
        if (jsonDecode(params) is! Map) {
          errors['params'] = 'A JSON object of parameter overrides.';
        }
      } on FormatException catch (e) {
        errors['params'] = 'Not JSON: ${e.message}';
      }
    }
    if (!definitionEditable) {
      return errors;
    }
    if (splitList(seedKinds).isEmpty && splitList(seedSources).isEmpty) {
      errors['seedKinds'] = 'Name the kinds or sources that seed an event.';
    }
    if (_conditions(seedConditions) case final String problem) {
      errors['seedConditions'] = problem;
    }
    for (final key in const <String>[
      'minMembers',
      'minSignalFamilies',
      'activateMembers',
      'activateModalities',
    ]) {
      if (_t(key).isNotEmpty && (int.tryParse(_t(key)) ?? 0) < 1) {
        errors[key] = 'A whole number of at least 1.';
      }
    }
    if (_t('activateConfidence').isNotEmpty) {
      final c = num.tryParse(_t('activateConfidence'));
      if (c == null || c < 0 || c > 1) {
        errors['activateConfidence'] = 'A number from 0 to 1.';
      }
    }
    if (_t('dedupRadiusKm').isNotEmpty && (num.tryParse(_t('dedupRadiusKm')) ?? -1) < 0) {
      errors['dedupRadiusKm'] = 'A distance in kilometers.';
    }
    for (final key in const <String>['dedupWindow', 'quietPeriod', 'reopenWindow']) {
      if (_t(key).isNotEmpty && parseDurationText(_t(key)) == null) {
        errors[key] = 'A duration such as 30m, 6h or P7D.';
      }
    }
    for (var i = 0; i < joins.length; i++) {
      joins[i].validate(i, errors);
    }
    for (final (key, text, wantList) in <(String, String, bool)>[
      ('contradictions', contradictions, true),
      ('severityMap', severityMap, false),
    ]) {
      if (text.trim().isEmpty) {
        continue;
      }
      try {
        final Object? parsed = jsonDecode(text);
        if (wantList ? parsed is! List : parsed is! Map) {
          errors[key] = wantList ? 'A JSON list of clauses.' : 'A JSON object of rule → severity.';
        } else if (wantList &&
            (parsed! as List).any((Object? c) => c is! Map || c['alternative'] is! String)) {
          errors[key] = 'Every contradiction clause needs an "alternative".';
        } else if (!wantList &&
            (parsed as Map).values.any(
              (v) => !<String>{'info', 'warning', 'critical'}.contains(v),
            )) {
          errors[key] = 'Severities are info, warning or critical.';
        }
      } on FormatException catch (e) {
        errors[key] = 'Not JSON: ${e.message}';
      }
    }
    return errors;
  }

  /// The definition as JSON. Call [validate] first.
  Map<String, Object?> definitionJson() {
    num? n(String key) => num.tryParse(_t(key));
    int? i(String key) => int.tryParse(_t(key));
    final seed = <String, Object?>{
      ...((definition['seed'] as Map?)?.cast<String, Object?>() ?? const <String, Object?>{}),
    }..removeWhere((k, _) => k == 'kinds' || k == 'sources' || k == 'conditions');
    final seedConditionList = _conditions(seedConditions);
    final activate = <String, Object?>{
      'members': ?i('activateMembers'),
      'confidence': ?n('activateConfidence'),
      'modalities': ?i('activateModalities'),
    };
    final dedup = <String, Object?>{
      'radiusKm': ?n('dedupRadiusKm'),
      if (_t('dedupWindow').isNotEmpty) 'window': _t('dedupWindow'),
    };
    final json = Map<String, Object?>.from(definition)
      ..removeWhere(
        (k, _) => const <String>{
          'type',
          'seed',
          'joins',
          'minMembers',
          'minSignalFamilies',
          'activateAt',
          'contradictions',
          'severityMap',
          'dedup',
          'quietPeriod',
          'reopenWindow',
        }.contains(k),
      );
    return <String, Object?>{
      ...json,
      'type': type,
      'seed': <String, Object?>{
        ...seed,
        if (splitList(seedKinds).isNotEmpty) 'kinds': splitList(seedKinds),
        if (splitList(seedSources).isNotEmpty) 'sources': splitList(seedSources),
        if (seedConditionList is List && seedConditionList.isNotEmpty)
          'conditions': seedConditionList,
      },
      if (joins.isNotEmpty) 'joins': <Object?>[for (final j in joins) j.toJson()],
      'minMembers': ?i('minMembers'),
      'minSignalFamilies': ?i('minSignalFamilies'),
      if (activate.isNotEmpty) 'activateAt': activate,
      if (contradictions.trim().isNotEmpty) 'contradictions': jsonDecode(contradictions),
      if (severityMap.trim().isNotEmpty) 'severityMap': jsonDecode(severityMap),
      if (dedup.isNotEmpty) 'dedup': dedup,
      if (_t('quietPeriod').isNotEmpty) 'quietPeriod': _t('quietPeriod'),
      if (_t('reopenWindow').isNotEmpty) 'reopenWindow': _t('reopenWindow'),
    };
  }

  /// The `createRecipe` body as JSON.
  Map<String, Object?> createJson() => <String, Object?>{
    'id': id.trim(),
    'definition': definitionJson(),
    'enabled': enabled,
  };

  /// The `updateRecipe` body as JSON: enabled and overrides, and the
  /// definition when it may be replaced.
  Map<String, Object?> updateJson() => <String, Object?>{
    'enabled': enabled,
    'params': params.trim().isEmpty ? <String, Object?>{} : jsonDecode(params),
    if (definitionEditable) 'definition': definitionJson(),
  };

  /// `null` when [reread] holds what was sent, or what differs.
  String? confirm(CorrelationRecipe reread, Serializers serializers) {
    final differs = <String>[
      if (reread.enabled != enabled) 'enabled: sent $enabled, read back ${reread.enabled}',
    ];
    if (definitionEditable) {
      final got = serializers.serialize(
        reread.definition,
        specifiedType: const FullType(CorrelationRecipeDefinition),
      );
      // Compared as canonical JSON, numbers normalized, so 5 and 5.0 agree.
      if (_canonical(definitionJson()) != _canonical(got)) {
        differs.add('the definition read back differs from the one sent');
      }
    }
    return differs.isEmpty ? null : differs.join('; ');
  }
}

String _canonical(Object? value) {
  Object? norm(Object? v) => switch (v) {
    final Map<Object?, Object?> m => <String, Object?>{
      for (final k in (m.keys.map((k) => k.toString()).toList()..sort())) k: norm(m[k]),
    },
    final List<Object?> l => l.map(norm).toList(),
    final num n => n.toDouble(),
    _ => v,
  };
  return jsonEncode(norm(value));
}

/// The cycle roles, by wire name.
const List<String> cycleRoles = <String>['analyst', 'red-team', 'forecaster', 'proposer'];

/// The create / replace form of an analysis cycle (`AnalysisCycleInput`).
/// `updateAnalysisCycle` replaces the definition, so every member with a
/// value is sent; an empty one takes its default.
class CycleDraft {
  /// A draft for a new cycle.
  CycleDraft.create() : stored = null, base = const <String, Object?>{} {
    text
      ..['cron'] = '0 7 * * *'
      ..['timezone'] = 'UTC'
      ..['samples'] = '3';
    roles.add('analyst');
  }

  /// A draft of [cycle], as last read.
  CycleDraft.edit(AnalysisCycle cycle, Serializers serializers)
    : stored = cycle,
      base =
          (serializers.serialize(cycle, specifiedType: const FullType(AnalysisCycle))!
                  as Map<Object?, Object?>)
              .cast<String, Object?>() {
    final b = base;
    final schedule = (b['schedule'] as Map?) ?? const <String, Object?>{};
    final scope = (b['scope'] as Map?) ?? const <String, Object?>{};
    text
      ..['name'] = b['name'] as String? ?? ''
      ..['cron'] = schedule['cron'] as String? ?? ''
      ..['timezone'] = schedule['timezone'] as String? ?? ''
      ..['analystProfileId'] = b['analystProfileId'] as String? ?? ''
      ..['forecasterProviders'] = joinList(b['forecasterProviders'])
      ..['samples'] = b['samples']?.toString() ?? ''
      ..['maxQuestions'] = b['maxQuestions']?.toString() ?? ''
      ..['maxTokensPerCycle'] = b['maxTokensPerCycle']?.toString() ?? ''
      ..['channelIds'] = joinList(b['channelIds'])
      ..['regionCodes'] = joinList(scope['regionCodes'])
      ..['themes'] = joinList(scope['themes'])
      ..['situationIds'] = joinList(scope['situationIds'])
      ..['sourceIds'] = joinList(scope['sourceIds'])
      ..['categories'] = joinList(scope['categories']);
    final sets = scope['hypothesisSetIds'];
    cadenceMatchSets = sets == 'cadence-match';
    text['hypothesisSetIds'] = sets is List ? sets.join(', ') : '';
    cadence = b['cadence'] as String? ?? 'daily';
    notifyMinPriority = b['notifyMinPriority'] as String?;
    enabled = b['enabled'] as bool? ?? true;
    roles
      ..clear()
      ..addAll(<String>[for (final r in (b['roles'] as List?) ?? const <Object?>[]) r as String]);
  }

  /// The cycle as last read; `null` while creating one.
  final AnalysisCycle? stored;

  /// The stored cycle, as JSON.
  final Map<String, Object?> base;

  /// The text members, by name.
  final Map<String, String> text = <String, String>{};

  /// `daily`, `weekly` or `monthly`.
  String cadence = 'daily';

  /// `low`, `normal` or `high`, or `null` for the default.
  String? notifyMinPriority;

  /// Whether the cycle runs on its schedule.
  bool enabled = true;

  /// `scope.hypothesisSetIds = "cadence-match"`.
  bool cadenceMatchSets = false;

  /// The LLM roles that run, by wire name.
  final Set<String> roles = <String>{};

  String _t(String key) => (text[key] ?? '').trim();

  /// Problems by field; empty when the draft can be sent.
  Map<String, String> validate() {
    final errors = <String, String>{};
    if (_t('name').isEmpty || _t('name').length > 200) {
      errors['name'] = 'A name of 1 to 200 characters.';
    }
    if (_t('cron').split(RegExp(r'\s+')).length != 5) {
      errors['cron'] = 'Five cron fields: minute hour day-of-month month day-of-week.';
    }
    if (_t('timezone').isEmpty || _t('timezone').contains(' ')) {
      errors['timezone'] = 'An IANA timezone such as UTC or Europe/London.';
    }
    if (_t('analystProfileId').isNotEmpty && !_ulid.hasMatch(_t('analystProfileId'))) {
      errors['analystProfileId'] = 'An analyst profile id (a ULID), or empty for none.';
    }
    final samples = int.tryParse(_t('samples'));
    if (_t('samples').isNotEmpty && (samples == null || samples < 1 || samples > 7)) {
      errors['samples'] = 'A whole number from 1 to 7.';
    }
    for (final key in const <String>['maxQuestions', 'maxTokensPerCycle']) {
      if (_t(key).isNotEmpty && (int.tryParse(_t(key)) ?? -1) < 0) {
        errors[key] = 'A whole number of at least 0.';
      }
    }
    for (final key in const <String>['situationIds', 'hypothesisSetIds']) {
      if (splitList(_t(key)).any((id) => !_ulid.hasMatch(id))) {
        errors[key] = 'Ids are ULIDs, comma separated.';
      }
    }
    return errors;
  }

  /// The request body as JSON. Call [validate] first.
  Map<String, Object?> toJson() {
    List<String>? list(String key) => splitList(_t(key)).isEmpty ? null : splitList(_t(key));
    final scope = <String, Object?>{
      'regionCodes': ?list('regionCodes'),
      'themes': ?list('themes'),
      'situationIds': ?list('situationIds'),
      if (cadenceMatchSets)
        'hypothesisSetIds': 'cadence-match'
      else
        'hypothesisSetIds': ?list('hypothesisSetIds'),
      'sourceIds': ?list('sourceIds'),
      'categories': ?list('categories'),
    };
    return <String, Object?>{
      'name': _t('name'),
      'cadence': cadence,
      'schedule': <String, Object?>{'cron': _t('cron'), 'timezone': _t('timezone')},
      if (scope.isNotEmpty) 'scope': scope,
      if (_t('analystProfileId').isNotEmpty) 'analystProfileId': _t('analystProfileId'),
      'roles': <String>[
        for (final r in cycleRoles)
          if (roles.contains(r)) r,
      ],
      'forecasterProviders': ?list('forecasterProviders'),
      'samples': ?int.tryParse(_t('samples')),
      'maxQuestions': ?int.tryParse(_t('maxQuestions')),
      'maxTokensPerCycle': ?int.tryParse(_t('maxTokensPerCycle')),
      'channelIds': ?list('channelIds'),
      'notifyMinPriority': ?notifyMinPriority,
      'enabled': enabled,
    };
  }

  /// The request body as the generated model.
  AnalysisCycleInput toModel(Serializers serializers) =>
      serializers.deserialize(toJson(), specifiedType: const FullType(AnalysisCycleInput))!
          as AnalysisCycleInput;

  /// `null` when [reread] holds what was sent, or what differs.
  String? confirm(AnalysisCycle reread) {
    final sent = toJson();
    final schedule = sent['schedule']! as Map<String, Object?>;
    final differs = <String>[
      if (reread.name != sent['name']) 'name',
      if (wireOf(reread.cadence) != sent['cadence']) 'cadence',
      if (reread.schedule.cron != schedule['cron']) 'cron',
      if (reread.schedule.timezone != schedule['timezone']) 'timezone',
      if (reread.enabled != sent['enabled']) 'enabled',
      if (sent['samples'] != null && reread.samples != sent['samples']) 'samples',
      if (reread.roles.map(wireOf).toSet().difference(roles).isNotEmpty ||
          roles.difference(reread.roles.map(wireOf).toSet()).isNotEmpty)
        'roles',
    ];
    return differs.isEmpty ? null : 'read back different: ${differs.join(', ')}';
  }
}

/// One member of the corroboration policy.
class CorroborationField {
  /// Creates the field.
  const CorroborationField(this.group, this.name, this.label, this.defaultText, this.kind);

  /// `eventQuality`, `situationActivation` or `autoCorroborate`.
  final String group;

  /// The member name.
  final String name;

  /// The form label.
  final String label;

  /// The contract's default, shown as the hint.
  final String defaultText;

  /// `int1` (≥ 1), `int0` (≥ 0), `km` (≥ 0) or `duration`.
  final String kind;

  /// The form key: `group.name`.
  String get key => '$group.$name';
}

/// The corroboration policy form (`IntelCorroboration`, 154). `PUT`
/// replaces the document and a member left out returns to its default, so
/// an emptied field restores the default.
class CorroborationDraft {
  /// A draft of [stored].
  CorroborationDraft(IntelCorroboration stored, Serializers serializers) {
    final json =
        (serializers.serialize(stored, specifiedType: const FullType(IntelCorroboration))!
                as Map<Object?, Object?>)
            .cast<String, Object?>();
    for (final f in fields) {
      text[f.key] = (json[f.group] as Map?)?[f.name]?.toString() ?? '';
    }
    autoCorroborate = (json['autoCorroborate'] as Map?)?['enabled'] as bool? ?? true;
  }

  /// The numeric and duration members, with the contract's defaults.
  static const List<CorroborationField> fields = <CorroborationField>[
    CorroborationField('eventQuality', 'strongFamilies', 'Strong: signal families', '3', 'int1'),
    CorroborationField('eventQuality', 'strongGroups', 'Strong: independent groups', '2', 'int1'),
    CorroborationField(
      'eventQuality',
      'moderateFamilies',
      'Moderate: signal families',
      '2',
      'int1',
    ),
    CorroborationField(
      'eventQuality',
      'requireModalities',
      'Strong: sensing modalities',
      '0 (not required)',
      'int0',
    ),
    CorroborationField('situationActivation', 'minFamilies', 'Signal families', '2', 'int1'),
    CorroborationField('situationActivation', 'minGroups', 'Independent groups', '2', 'int1'),
    CorroborationField('autoCorroborate', 'withinKm', 'Search radius (km)', '50', 'km'),
    CorroborationField('autoCorroborate', 'window', 'Search window', 'PT24H', 'duration'),
    CorroborationField('autoCorroborate', 'maxMembers', 'Most members attached', '10', 'int1'),
  ];

  /// The text of each field, by [CorroborationField.key].
  final Map<String, String> text = <String, String>{};

  /// `autoCorroborate.enabled`.
  bool autoCorroborate = true;

  /// Problems by key; empty when the draft can be sent.
  Map<String, String> validate() {
    final errors = <String, String>{};
    for (final f in fields) {
      final v = text[f.key]!.trim();
      if (v.isEmpty) {
        continue;
      }
      switch (f.kind) {
        case 'int1' when (int.tryParse(v) ?? 0) < 1:
          errors[f.key] = 'A whole number of at least 1.';
        case 'int0' when (int.tryParse(v) ?? -1) < 0:
          errors[f.key] = 'A whole number of at least 0.';
        case 'km' when (num.tryParse(v) ?? -1) < 0:
          errors[f.key] = 'A distance of at least 0.';
        case 'duration' when parseDurationText(v) == null:
          errors[f.key] = 'A duration such as 24h or PT24H.';
      }
    }
    return errors;
  }

  /// The request body as JSON. Call [validate] first.
  Map<String, Object?> toJson() {
    final json = <String, Map<String, Object?>>{
      'eventQuality': <String, Object?>{},
      'situationActivation': <String, Object?>{},
      'autoCorroborate': <String, Object?>{'enabled': autoCorroborate},
    };
    for (final f in fields) {
      final v = text[f.key]!.trim();
      if (v.isNotEmpty) {
        json[f.group]![f.name] = switch (f.kind) {
          'km' => num.parse(v),
          'duration' => v,
          _ => int.parse(v),
        };
      }
    }
    return <String, Object?>{
      for (final e in json.entries)
        if (e.value.isNotEmpty) e.key: e.value,
    };
  }

  /// The request body as the generated model.
  IntelCorroboration toModel(Serializers serializers) =>
      serializers.deserialize(toJson(), specifiedType: const FullType(IntelCorroboration))!
          as IntelCorroboration;

  /// `null` when [reread] holds every member sent, or what differs.
  String? confirm(IntelCorroboration reread, Serializers serializers) {
    final got =
        (serializers.serialize(reread, specifiedType: const FullType(IntelCorroboration))!
                as Map<Object?, Object?>)
            .cast<String, Object?>();
    final sent = toJson();
    final differs = <String>[];
    for (final group in sent.entries) {
      for (final member in (group.value! as Map<String, Object?>).entries) {
        final back = (got[group.key] as Map?)?[member.key];
        final same = member.value is String
            ? sameDuration(member.value! as String, back as String?)
            : member.value is num && back is num
            ? (member.value! as num) == back
            : member.value == back;
        if (!same) {
          differs.add(
            '${group.key}.${member.key}: sent ${member.value}, read back ${back ?? 'nothing'}',
          );
        }
      }
    }
    return differs.isEmpty ? null : differs.join('; ');
  }
}
