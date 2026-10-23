import 'dart:convert';

import '../../core/format/instant_text.dart';

export '../../core/format/instant_text.dart' show instantText, parseInstantText;

/// A forecaster id: a slug such as `base-rate` or `edp:timesfm/daily`.
///
/// The contract's pattern for the id has no `/`, but its description says
/// external ids are conventionally `edp:{sourceId}/{streamId}`. The form
/// accepts both and leaves the final word to the backend.
final RegExp forecasterIdPattern = RegExp(r'^[a-z0-9][a-z0-9._:/-]{0,127}$');

/// [value] (a JSON object, or `null`) as indented text for editing; empty for
/// `null` or an empty object.
String jsonObjectText(Map<String, Object?>? value) =>
    value == null || value.isEmpty ? '' : const JsonEncoder.withIndent('  ').convert(value);

/// The JSON object in [text]: empty text is `null`. Throws [FormatException]
/// when it is not an object.
Map<String, Object?>? parseJsonObject(String text) {
  final t = text.trim();
  if (t.isEmpty) {
    return null;
  }
  final parsed = jsonDecode(t);
  if (parsed is! Map) {
    throw const FormatException('A JSON object, { … }.');
  }
  return parsed.cast<String, Object?>();
}

/// The JSON array of objects in [text]: empty text is `null`. Throws
/// [FormatException] otherwise.
List<Map<String, Object?>>? parseJsonObjectList(String text) {
  final t = text.trim();
  if (t.isEmpty) {
    return null;
  }
  final parsed = jsonDecode(t);
  if (parsed is! List || parsed.any((e) => e is! Map)) {
    throw const FormatException('A JSON array of objects, [ { … } ].');
  }
  return <Map<String, Object?>>[for (final e in parsed) (e as Map).cast<String, Object?>()];
}

/// The problem with JSON-object [text], or `null` when it parses (or is
/// empty and [required] is false).
String? jsonObjectProblem(String text, {bool required = false}) {
  if (text.trim().isEmpty) {
    return required ? 'Required.' : null;
  }
  try {
    parseJsonObject(text);
    return null;
  } on FormatException catch (e) {
    return e.message.isEmpty ? 'Not valid JSON.' : 'Not valid JSON: ${e.message}';
  }
}

/// The problem with instant [text], or `null` when it parses (or is empty
/// and [required] is false).
String? instantProblem(String text, {bool required = false}) {
  if (text.trim().isEmpty) {
    return required ? 'Required.' : null;
  }
  try {
    parseInstantText(text);
    return null;
  } on FormatException catch (e) {
    return e.message;
  }
}

/// Comma-separated [text] as a list; empty parts are dropped.
List<String> commaList(String text) => <String>[
  for (final part in text.split(','))
    if (part.trim().isNotEmpty) part.trim(),
];

/// A forecaster's settings as typed: `updateForecaster` replaces them, and
/// `registerExternalForecaster` pre-registers an external one under [id].
class ForecasterDraft {
  /// A draft of a stored forecaster, or an empty one to register.
  ForecasterDraft({this.id = '', this.name = '', this.active = true, Map<String, Object?>? config})
    : configText = jsonObjectText(config);

  /// The forecaster id (registration only).
  String id;

  /// The display name; empty leaves it unchanged (or, on registration, the id).
  String name;

  /// Whether the forecaster runs and counts.
  bool active;

  /// The configuration as JSON text; empty for none.
  String configText;

  /// Problems by field; empty when the draft can be sent. [register] checks
  /// the id too.
  Map<String, String> validate({bool register = false}) {
    final errors = <String, String>{};
    if (register && !forecasterIdPattern.hasMatch(id.trim())) {
      errors['id'] = 'Lower-case letters, digits and . _ : / -, such as edp:timesfm/daily.';
    }
    if (name.trim().length > 200) {
      errors['name'] = 'At most 200 characters.';
    }
    if (jsonObjectProblem(configText) case final p?) {
      errors['config'] = p;
    }
    return errors;
  }

  /// The `ForecasterUpdate` body. Call [validate] first.
  Map<String, Object?> updateJson() => <String, Object?>{
    'active': active,
    'config': parseJsonObject(configText) ?? <String, Object?>{},
    if (name.trim().isNotEmpty) 'name': name.trim(),
  };

  /// The `ExternalForecasterRegistration` body. Call [validate] first.
  Map<String, Object?> registrationJson() => <String, Object?>{
    'id': id.trim(),
    if (name.trim().isNotEmpty) 'name': name.trim(),
    'config': ?parseJsonObject(configText),
  };
}

/// A starting configuration for an external forecaster pinned to one EDP
/// stream, so backtests can reach the provider (155).
Map<String, Object?> externalForecasterConfig(String sourceId, String streamId) => <String, Object?>{
  'sourceId': sourceId,
  'streamId': streamId,
};

/// The forecast question types, by wire name.
const List<String> questionTypes = <String>['binary', 'multiple', 'ordered', 'numeric'];

/// The resolver types, by wire name.
const List<String> resolverTypes = <String>[
  'manual',
  'event-exists',
  'count-threshold',
  'series-value',
  'alert-fired',
  'situation-status',
  'hypothesis-outcome',
];

/// A starting body for each resolver type (everything but `type`): the
/// members the contract says that type reads.
const Map<String, Map<String, Object?>> resolverTemplates = <String, Map<String, Object?>>{
  'manual': <String, Object?>{},
  'event-exists': <String, Object?>{
    'selector': <String, Object?>{'intelEventType': 'port-disruption'},
    'area': <String, Object?>{
      'regionCodes': <String>['GB'],
    },
    'window': <String, Object?>{'start': '2026-11-01T00:00:00Z', 'end': '2026-12-01T00:00:00Z'},
  },
  'count-threshold': <String, Object?>{
    'selector': <String, Object?>{'alertRuleId': 'rule-id'},
    'window': <String, Object?>{'start': '2026-11-01T00:00:00Z', 'end': '2026-12-01T00:00:00Z'},
    'op': 'gte',
    'threshold': 3,
  },
  'series-value': <String, Object?>{
    'ref': 'series:source-id/series-id',
    'period': '2026-11',
    'aggregate': 'mean',
    'op': 'gt',
    'threshold': 100,
  },
  'alert-fired': <String, Object?>{
    'ruleId': 'rule-id',
    'window': <String, Object?>{'start': '2026-11-01T00:00:00Z', 'end': '2026-12-01T00:00:00Z'},
  },
  'situation-status': <String, Object?>{'situationId': '', 'status': 'active', 'minSeverity': 'warning'},
  'hypothesis-outcome': <String, Object?>{'setId': ''},
};

/// A forecast question as typed, for `createForecastQuestion` or, edited,
/// `updateForecastQuestion` (a merge patch of the members that may change).
class QuestionDraft {
  /// An empty draft for a new question.
  QuestionDraft()
    : resolverText = jsonObjectText(resolverTemplates['manual']),
      original = null;

  /// A draft of a stored question ([json] is the `ForecastQuestion`).
  QuestionDraft.of(Map<String, Object?> json) : original = json {
    title = json['title'] as String? ?? '';
    type = json['type'] as String? ?? 'binary';
    category = json['category'] as String? ?? '';
    tags = ((json['tags'] as List<Object?>?) ?? const <Object?>[]).join(', ');
    criteria = json['resolutionCriteria'] as String? ?? '';
    final resolver = ((json['resolver'] as Map?) ?? const <String, Object?>{}).cast<String, Object?>();
    resolverType = resolver['type'] as String? ?? 'manual';
    resolverText = jsonObjectText(<String, Object?>{
      for (final e in resolver.entries)
        if (e.key != 'type' && e.key != 'version') e.key: e.value,
    });
    opensAt = _dateText(json['opensAt']);
    closesAt = _dateText(json['closesAt']);
    resolveBy = _dateText(json['resolveBy']);
    final outcomes = ((json['outcomes'] as Map?) ?? const <String, Object?>{}).cast<String, Object?>();
    labels = ((outcomes['labels'] as List<Object?>?) ?? const <Object?>[]).join(', ');
    unit = outcomes['unit'] as String? ?? '';
    lower = outcomes['lower']?.toString() ?? '';
    upper = outcomes['upper']?.toString() ?? '';
    linksText = jsonObjectText(((json['links'] as Map?) ?? const <String, Object?>{}).cast<String, Object?>());
    dedupKey = json['dedupKey'] as String? ?? '';
    private = json['private'] == true;
  }

  static String _dateText(Object? v) => v is String ? instantText(DateTime.tryParse(v)) : '';

  /// The question as last read; `null` for a new one.
  final Map<String, Object?>? original;

  /// Whether this edits a stored question.
  bool get editing => original != null;

  /// The title (1–300 characters).
  String title = '';

  /// The question type, by wire name.
  String type = 'binary';

  /// The category (1–64 characters).
  String category = '';

  /// Tags, comma-separated.
  String tags = '';

  /// The resolution criteria shown verbatim to every forecaster.
  String criteria = '';

  /// The resolver type, by wire name.
  String resolverType = 'manual';

  /// The resolver's other members as JSON text.
  String resolverText = '';

  /// When forecasting opens; empty for now.
  String opensAt = '';

  /// When forecasting closes.
  String closesAt = '';

  /// When the question must be resolved.
  String resolveBy = '';

  /// Outcome labels of a multiple or ordered question, comma-separated.
  String labels = '';

  /// The unit of a numeric question.
  String unit = '';

  /// The lower bound of a numeric question.
  String lower = '';

  /// The upper bound of a numeric question.
  String upper = '';

  /// Linked objects (`QuestionLinks`) as JSON text.
  String linksText = '';

  /// A key that makes creation idempotent.
  String dedupKey = '';

  /// Whether the question is private.
  bool private = false;

  /// Problems by field; empty when the draft can be sent.
  Map<String, String> validate() {
    final errors = <String, String>{};
    final t = title.trim();
    if (t.isEmpty || t.length > 300) {
      errors['title'] = 'A title of 1 to 300 characters.';
    }
    if (!editing) {
      final c = category.trim();
      if (c.isEmpty || c.length > 64) {
        errors['category'] = 'A category of 1 to 64 characters, such as maritime.';
      }
    }
    if (commaList(tags).any((x) => x.length > 64)) {
      errors['tags'] = 'Each tag is at most 64 characters.';
    }
    final crit = criteria.trim();
    if (crit.isEmpty || crit.length > 2000) {
      errors['criteria'] = 'Criteria of 1 to 2000 characters.';
    }
    if (jsonObjectProblem(resolverText) case final p?) {
      errors['resolver'] = p;
    }
    if (!editing) {
      if (instantProblem(opensAt) case final p?) {
        errors['opensAt'] = p;
      }
      if (instantProblem(resolveBy, required: true) case final p?) {
        errors['resolveBy'] = p;
      }
    }
    if (instantProblem(closesAt, required: true) case final p?) {
      errors['closesAt'] = p;
    }
    if (!errors.containsKey('closesAt') && !errors.containsKey('resolveBy') && resolveBy.trim().isNotEmpty) {
      final close = parseInstantText(closesAt)!;
      final by = parseInstantText(resolveBy)!;
      if (by.isBefore(close)) {
        errors['resolveBy'] = 'Resolve by falls on or after the close.';
      }
    }
    if (!editing) {
      if ((type == 'multiple' || type == 'ordered') && commaList(labels).length < 2) {
        errors['labels'] = 'Two or more outcome labels.';
      }
      if (type == 'numeric') {
        if (lower.trim().isNotEmpty && num.tryParse(lower.trim()) == null) {
          errors['lower'] = 'A number.';
        }
        if (upper.trim().isNotEmpty && num.tryParse(upper.trim()) == null) {
          errors['upper'] = 'A number.';
        }
      }
      if (jsonObjectProblem(linksText) case final p?) {
        errors['links'] = p;
      }
      if (dedupKey.trim().length > 200) {
        errors['dedupKey'] = 'At most 200 characters.';
      }
    }
    return errors;
  }

  Map<String, Object?> _resolver() => <String, Object?>{
    'type': resolverType,
    ...?parseJsonObject(resolverText),
  };

  String _iso(String text) => parseInstantText(text)!.toIso8601String();

  /// The `ForecastQuestionInput` body. Call [validate] first.
  Map<String, Object?> inputJson() => <String, Object?>{
    'title': title.trim(),
    'type': type,
    if (type == 'multiple' || type == 'ordered')
      'outcomes': <String, Object?>{'labels': commaList(labels)}
    else if (type == 'numeric')
      'outcomes': <String, Object?>{
        if (unit.trim().isNotEmpty) 'unit': unit.trim(),
        'lower': ?num.tryParse(lower.trim()),
        'upper': ?num.tryParse(upper.trim()),
      },
    'resolutionCriteria': criteria.trim(),
    'resolver': _resolver(),
    if (opensAt.trim().isNotEmpty) 'opensAt': _iso(opensAt),
    'closesAt': _iso(closesAt),
    'resolveBy': _iso(resolveBy),
    'category': category.trim(),
    if (commaList(tags).isNotEmpty) 'tags': commaList(tags),
    'links': ?parseJsonObject(linksText),
    if (dedupKey.trim().isNotEmpty) 'dedupKey': dedupKey.trim(),
    if (private) 'private': true,
  };

  /// The `ForecastQuestionPatch` body: only the members that changed. Empty
  /// when nothing did. Call [validate] first.
  Map<String, Object?> patchJson() {
    final o = original!;
    final patch = <String, Object?>{};
    if (title.trim() != o['title']) {
      patch['title'] = title.trim();
    }
    final oldTags = ((o['tags'] as List<Object?>?) ?? const <Object?>[]).cast<String>();
    if (commaList(tags).join('\u0000') != oldTags.join('\u0000')) {
      patch['tags'] = commaList(tags);
    }
    final close = parseInstantText(closesAt)!;
    if (DateTime.tryParse(o['closesAt'] as String? ?? '')?.toUtc() != close) {
      patch['closesAt'] = close.toIso8601String();
    }
    if (criteria.trim() != o['resolutionCriteria']) {
      patch['resolutionCriteria'] = criteria.trim();
    }
    final oldResolver = ((o['resolver'] as Map?) ?? const <String, Object?>{}).cast<String, Object?>();
    final comparable = <String, Object?>{
      for (final e in oldResolver.entries)
        if (e.key != 'version') e.key: e.value,
    };
    if (jsonEncode(_sorted(_resolver())) != jsonEncode(_sorted(comparable))) {
      patch['resolver'] = _resolver();
    }
    return patch;
  }
}

Object? _sorted(Object? v) => switch (v) {
  final Map<Object?, Object?> m => <String, Object?>{
    for (final k in (m.keys.map((k) => '$k').toList()..sort())) k: _sorted(m[k]),
  },
  final List<Object?> l => l.map(_sorted).toList(),
  _ => v,
};

/// A manual resolution as typed (`ForecastResolutionInput`).
class ResolutionDraft {
  /// A draft for a question of [type] whose outcome labels are [labels].
  ResolutionDraft({required this.type, this.labels = const <String>[]});

  /// The question type, by wire name.
  final String type;

  /// The outcome labels of a multiple or ordered question.
  final List<String> labels;

  /// `yes`, `no`, or a label.
  String outcome = '';

  /// The value of a numeric question.
  String value = '';

  /// Pinned evidence refs, comma or space separated.
  String evidence = '';

  /// A note (up to 2000 characters).
  String note = '';

  /// The evidence refs.
  List<String> get evidenceRefs => <String>[
    for (final part in evidence.split(RegExp(r'[\s,]+')))
      if (part.isNotEmpty) part,
  ];

  /// The outcomes an operator may choose, or empty for a numeric question.
  List<String> get choices => switch (type) {
    'binary' => const <String>['yes', 'no'],
    'numeric' => const <String>[],
    _ => labels,
  };

  /// Problems by field; empty when the draft can be sent.
  Map<String, String> validate() {
    final errors = <String, String>{};
    if (type == 'numeric') {
      if (num.tryParse(value.trim()) == null) {
        errors['value'] = 'The realized value, a number.';
      }
    } else if (!choices.contains(outcome)) {
      errors['outcome'] = 'Choose the outcome.';
    }
    if (evidenceRefs.isEmpty) {
      errors['evidence'] = 'At least one evidence ref, such as record:source/id.';
    } else if (evidenceRefs.any((r) => !RegExp(r'^[a-z][a-z-]*:.+$').hasMatch(r))) {
      errors['evidence'] = 'Refs look like kind:id.';
    }
    if (note.trim().length > 2000) {
      errors['note'] = 'At most 2000 characters.';
    }
    return errors;
  }

  /// The request body. Call [validate] first.
  Map<String, Object?> toJson() => <String, Object?>{
    if (type == 'numeric') 'value': num.parse(value.trim()) else 'outcome': outcome,
    'evidence': evidenceRefs,
    if (note.trim().isNotEmpty) 'note': note.trim(),
  };
}

/// The binding targets (`ExternalBindingInput.target`), by wire name.
const List<String> bindingTargets = <String>[
  'series',
  'canonical-family',
  'social',
  'news',
  'evidence',
  'indicator',
  'forecast',
  'place',
  'situation',
  'chronicle',
];

/// A binding as typed (`ExternalBindingInput`); `updateExternalBinding`
/// replaces it whole.
class BindingDraft {
  /// A draft of a stored binding ([json]), or an empty one for [streamId].
  BindingDraft({this.streamId = '', this.target = 'series', Map<String, Object?>? config})
    : configText = jsonObjectText(config);

  /// A draft of a stored `ExternalBinding`.
  BindingDraft.of(Map<String, Object?> json)
    : streamId = json['streamId'] as String? ?? '',
      target = json['target'] as String? ?? 'series',
      configText = jsonObjectText((json['config'] as Map?)?.cast<String, Object?>()),
      filterText = (json['filter'] as List?)?.isNotEmpty == true
          ? const JsonEncoder.withIndent('  ').convert(json['filter'])
          : '',
      enabled = json['enabled'] as bool? ?? true,
      backfill = json['backfill'] as bool? ?? true;

  /// The atomic stream bound.
  String streamId;

  /// The target, by wire name.
  String target;

  /// The target configuration as JSON text.
  String configText;

  /// 017 conditions on item properties, as a JSON array.
  String filterText = '';

  /// Whether the binding applies new items.
  bool enabled = true;

  /// Whether it applies the stream's existing items once created.
  bool backfill = true;

  /// Problems by field; empty when the draft can be sent.
  Map<String, String> validate() {
    final errors = <String, String>{};
    if (streamId.trim().isEmpty) {
      errors['streamId'] = 'Choose a stream.';
    }
    if (!bindingTargets.contains(target)) {
      errors['target'] = 'Choose a target.';
    }
    if (jsonObjectProblem(configText) case final p?) {
      errors['config'] = p;
    }
    try {
      parseJsonObjectList(filterText);
    } on FormatException catch (e) {
      errors['filter'] = e.message;
    }
    return errors;
  }

  /// The request body. Call [validate] first.
  Map<String, Object?> toJson() => <String, Object?>{
    'streamId': streamId.trim(),
    'target': target,
    'config': ?parseJsonObject(configText),
    'filter': ?parseJsonObjectList(filterText),
    'enabled': enabled,
    'backfill': backfill,
  };
}

/// A registration token request as typed (`RegistrationTokenInput`).
class TokenDraft {
  /// The token's name.
  String name = '';

  /// When it expires; empty for never.
  String expiresAt = '';

  /// How many registrations it allows; empty for one.
  String maxUses = '';

  /// Only manifests whose source id starts with this.
  String sourceIdPrefix = '';

  /// Problems by field; empty when the draft can be sent.
  Map<String, String> validate() {
    final errors = <String, String>{};
    if (name.trim().isEmpty) {
      errors['name'] = 'Required.';
    }
    if (instantProblem(expiresAt) case final p?) {
      errors['expiresAt'] = p;
    }
    if (maxUses.trim().isNotEmpty) {
      final n = int.tryParse(maxUses.trim());
      if (n == null || n < 1) {
        errors['maxUses'] = 'A whole number, 1 or more.';
      }
    }
    return errors;
  }

  /// The request body. Call [validate] first.
  Map<String, Object?> toJson() => <String, Object?>{
    'name': name.trim(),
    'expiresAt': ?parseInstantText(expiresAt)?.toIso8601String(),
    'maxUses': ?int.tryParse(maxUses.trim()),
    if (sourceIdPrefix.trim().isNotEmpty) 'sourceIdPrefix': sourceIdPrefix.trim(),
  };
}

/// A retrospective evaluation request as typed (`ForecastEvaluationRequest`).
class EvaluationDraft {
  /// The forecaster evaluated.
  String forecasterId = '';

  /// Questions resolved at or after.
  String from = '';

  /// Questions resolved before.
  String to = '';

  /// Categories, comma-separated; empty for all.
  String categories = '';

  /// The most questions replayed; empty for the default.
  String maxQuestions = '';

  /// Problems by field; empty when the draft can be sent.
  Map<String, String> validate() {
    final errors = <String, String>{};
    if (forecasterId.trim().isEmpty) {
      errors['forecasterId'] = 'Choose a forecaster.';
    }
    if (instantProblem(from, required: true) case final p?) {
      errors['from'] = p;
    }
    if (instantProblem(to, required: true) case final p?) {
      errors['to'] = p;
    }
    if (!errors.containsKey('from') &&
        !errors.containsKey('to') &&
        !parseInstantText(from)!.isBefore(parseInstantText(to)!)) {
      errors['to'] = 'After the start.';
    }
    if (maxQuestions.trim().isNotEmpty) {
      final n = int.tryParse(maxQuestions.trim());
      if (n == null || n < 1 || n > 10000) {
        errors['maxQuestions'] = 'From 1 to 10000.';
      }
    }
    return errors;
  }

  /// The request body. Call [validate] first.
  Map<String, Object?> toJson() => <String, Object?>{
    'forecasterId': forecasterId.trim(),
    'from': parseInstantText(from)!.toIso8601String(),
    'to': parseInstantText(to)!.toIso8601String(),
    if (commaList(categories).isNotEmpty) 'categories': commaList(categories),
    'maxQuestions': ?int.tryParse(maxQuestions.trim()),
  };
}

/// A provider question mapped to a ledger question, as typed
/// (`ExternalQuestionLinkInput`).
class QuestionLinkDraft {
  /// The provider's forecast stream.
  String streamId = '';

  /// The provider's own question id.
  String externalQuestionId = '';

  /// The ledger question.
  String questionId = '';

  /// `same`, or `inverse` when the provider forecasts the negation.
  String orientation = 'same';

  /// Problems by field; empty when the draft can be sent.
  Map<String, String> validate() {
    final errors = <String, String>{};
    if (streamId.trim().isEmpty) {
      errors['streamId'] = 'Choose a forecast stream.';
    }
    if (externalQuestionId.trim().isEmpty) {
      errors['externalQuestionId'] = 'Required.';
    }
    if (!RegExp(r'^[0-9A-HJKMNP-TV-Z]{26}$').hasMatch(questionId.trim())) {
      errors['questionId'] = 'A question id (26 characters).';
    }
    return errors;
  }

  /// The request body. Call [validate] first.
  Map<String, Object?> toJson() => <String, Object?>{
    'streamId': streamId.trim(),
    'externalQuestionId': externalQuestionId.trim(),
    'questionId': questionId.trim(),
    'orientation': orientation,
  };
}

/// An on-demand forecast request as typed (`AnalysisRequestSubmission`,
/// 155).
class AnalysisRequestDraft {
  /// The ledger question; it must be open.
  String questionId = '';

  /// `same`, or `inverse` when the provider answers the negation.
  String orientation = 'same';

  /// An optional horizon passed to the provider, such as `P7D`.
  String horizon = '';

  /// Problems by field; empty when the draft can be sent.
  Map<String, String> validate() => <String, String>{
    if (!RegExp(r'^[0-9A-HJKMNP-TV-Z]{26}$').hasMatch(questionId.trim()))
      'questionId': 'A question id (26 characters).',
  };

  /// The request body for [forecasterId]. Call [validate] first.
  Map<String, Object?> toJson(String forecasterId) => <String, Object?>{
    'forecasterId': forecasterId,
    'questionId': questionId.trim(),
    'orientation': orientation,
    if (horizon.trim().isNotEmpty) 'horizon': horizon.trim(),
  };
}

/// The EDP provider and stream of an external forecaster id
/// (`edp:{sourceId}/{streamId}`), or `null` for another id.
({String sourceId, String streamId})? edpForecasterParts(String forecasterId) {
  final m = RegExp(r'^edp:([^/]+)/(.+)$').firstMatch(forecasterId);
  return m == null ? null : (sourceId: m[1]!, streamId: m[2]!);
}
