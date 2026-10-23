import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import '../../core/format/duration_text.dart';

/// How a [PathField] is typed and checked.
enum PathKind {
  /// A whole number, checked against `min` / `max`.
  integer,

  /// A number, checked against `min` / `max`.
  number,

  /// A duration such as `6h` or `PT24H`.
  duration,

  /// Free text.
  text,

  /// A comma-separated list of strings.
  list,

  /// One of `options`.
  choice,

  /// A switch.
  boolean,

  /// A JSON value: a list when `min` is 0, an object otherwise.
  json,
}

/// One member of a settings document, addressed by a dot path such as
/// `velocity.minRatio`.
class PathField {
  /// Creates the field.
  const PathField(
    this.path,
    this.label,
    this.kind, {
    this.min,
    this.max,
    this.options = const <String>[],
    this.help,
    this.defaultValue,
  });

  /// The dot path in the document.
  final String path;

  /// The form label.
  final String label;

  /// The value's kind.
  final PathKind kind;

  /// The smallest number allowed; for [PathKind.json], 0 means a list.
  final num? min;

  /// The largest number allowed.
  final num? max;

  /// The choices of a [PathKind.choice] field.
  final List<String> options;

  /// A sentence under the label.
  final String? help;

  /// The contract's default, shown as the hint; for a switch, its value
  /// when the document leaves it out.
  final Object? defaultValue;
}

Object? _at(Map<String, Object?> json, String path) {
  Object? node = json;
  for (final part in path.split('.')) {
    if (node is! Map) {
      return null;
    }
    node = node[part];
  }
  return node;
}

void _put(Map<String, Object?> json, String path, Object? value) {
  final parts = path.split('.');
  var node = json;
  for (final part in parts.take(parts.length - 1)) {
    final next = node[part];
    final child = next is Map ? next.cast<String, Object?>() : <String, Object?>{};
    node[part] = child;
    node = child;
  }
  if (value == null) {
    node.remove(parts.last);
  } else {
    node[parts.last] = value;
  }
}

Object? _deepCopy(Object? v) => switch (v) {
  final Map<Object?, Object?> m => <String, Object?>{
    for (final e in m.entries) e.key.toString(): _deepCopy(e.value),
  },
  final List<Object?> l => l.map(_deepCopy).toList(),
  _ => v,
};

/// The value as JSON with keys sorted and numbers as doubles, so documents
/// compare by meaning rather than by spelling.
String canonicalJson(Object? value) {
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

/// A form over a JSON settings document whose `PUT` replaces it: the shown
/// [fields] are edited as text, every other member goes back unchanged, and
/// an emptied field is left out so the backend restores its default.
class PathDraft {
  /// A draft of [stored] (the document as JSON).
  PathDraft(Map<String, Object?> stored, this.fields)
    : base = _deepCopy(stored)! as Map<String, Object?> {
    for (final f in fields) {
      final v = _at(base, f.path);
      switch (f.kind) {
        case PathKind.boolean:
          bools[f.path] = v is bool ? v : f.defaultValue == true;
        case PathKind.list:
          text[f.path] = v is List ? v.join(', ') : '';
        case PathKind.json:
          text[f.path] = v == null ? '' : const JsonEncoder.withIndent('  ').convert(v);
        case PathKind.choice:
          text[f.path] = v?.toString() ?? '';
        case _:
          text[f.path] = v?.toString() ?? '';
      }
    }
  }

  /// The document as last read.
  final Map<String, Object?> base;

  /// The members shown.
  final List<PathField> fields;

  /// Text values by path.
  final Map<String, String> text = <String, String>{};

  /// Switch values by path.
  final Map<String, bool> bools = <String, bool>{};

  /// Problems by path; empty when the draft can be sent.
  Map<String, String> validate() {
    final errors = <String, String>{};
    for (final f in fields) {
      final v = (text[f.path] ?? '').trim();
      if (f.kind == PathKind.boolean || v.isEmpty) {
        continue;
      }
      String range() => switch ((f.min, f.max)) {
        (final lo?, final hi?) => 'from $lo to $hi',
        (final lo?, null) => 'of at least $lo',
        (null, final hi?) => 'of at most $hi',
        _ => '',
      };
      bool inRange(num n) => (f.min == null || n >= f.min!) && (f.max == null || n <= f.max!);
      switch (f.kind) {
        case PathKind.integer:
          final n = int.tryParse(v);
          if (n == null || !inRange(n)) {
            errors[f.path] = 'A whole number ${range()}.'.replaceAll(' .', '.');
          }
        case PathKind.number:
          final n = num.tryParse(v);
          if (n == null || !inRange(n)) {
            errors[f.path] = 'A number ${range()}.'.replaceAll(' .', '.');
          }
        case PathKind.duration:
          if (parseDurationText(v) == null) {
            errors[f.path] = 'A duration such as 6h, 30d or PT24H.';
          }
        case PathKind.choice:
          if (!f.options.contains(v)) {
            errors[f.path] = 'One of ${f.options.join(', ')}.';
          }
        case PathKind.json:
          try {
            final parsed = jsonDecode(v);
            if (f.min == 0 ? parsed is! List : parsed is! Map) {
              errors[f.path] = f.min == 0 ? 'A JSON list.' : 'A JSON object.';
            }
          } on FormatException catch (e) {
            errors[f.path] = 'Not JSON: ${e.message}';
          }
        case _:
      }
    }
    return errors;
  }

  /// The document to send, as JSON. Call [validate] first.
  Map<String, Object?> toJson() {
    final json = _deepCopy(base)! as Map<String, Object?>;
    for (final f in fields) {
      if (f.kind == PathKind.boolean) {
        // A switch the document never had stays out until it is changed, so
        // the backend's default keeps applying.
        final on = bools[f.path] ?? false;
        if (_at(base, f.path) != null || on != (f.defaultValue == true)) {
          _put(json, f.path, on);
        }
        continue;
      }
      final v = (text[f.path] ?? '').trim();
      _put(json, f.path, switch (f.kind) {
        _ when v.isEmpty => null,
        PathKind.integer => int.parse(v),
        PathKind.number => num.parse(v),
        PathKind.list => <String>[
          for (final part in v.split(','))
            if (part.trim().isNotEmpty) part.trim(),
        ],
        PathKind.json => jsonDecode(v),
        _ => v,
      });
    }
    return json;
  }

  /// `null` when [reread] (as JSON) holds every shown member that was sent,
  /// or the labels that differ. Durations compare by length.
  String? confirm(Map<String, Object?> reread) {
    final sent = toJson();
    final differs = <String>[];
    for (final f in fields) {
      final want = _at(sent, f.path);
      if (want == null) {
        continue;
      }
      final got = _at(reread, f.path);
      final same = f.kind == PathKind.duration
          ? got is String && sameDuration(want as String, got)
          : canonicalJson(want) == canonicalJson(got);
      if (!same) {
        differs.add(f.label);
      }
    }
    return differs.isEmpty ? null : 'read back different: ${differs.join(', ')}';
  }
}

/// The social settings shown in the form (`SocialSettings`). Members not
/// listed — none today — would go back unchanged.
const List<PathField> socialSettingsFields = <PathField>[
  PathField(
    'languages',
    'Detection languages',
    PathKind.list,
    help: 'Language codes, comma separated.',
  ),
  PathField(
    'minRegionBaseline',
    'Minimum regional baseline',
    PathKind.number,
    min: 0,
    defaultValue: 20,
    help: 'Posts per hour below which a region reads as low social coverage.',
  ),
  PathField(
    'keepMedia',
    'Keep media',
    PathKind.boolean,
    defaultValue: false,
    help: 'Store fingerprinted images under the post retention.',
  ),
  PathField(
    'velocity.minRatio',
    'Velocity: minimum ratio',
    PathKind.number,
    min: 1,
    defaultValue: 5,
  ),
  PathField(
    'velocity.minUniqueAuthors',
    'Velocity: unique authors',
    PathKind.integer,
    min: 1,
    defaultValue: 20,
  ),
  PathField(
    'velocity.dedupHours',
    'Velocity: deduplicate hours',
    PathKind.integer,
    min: 1,
    defaultValue: 6,
  ),
  PathField(
    'llmClaimMinPosts',
    'LLM claims: minimum posts',
    PathKind.integer,
    min: 1,
    defaultValue: 50,
    help: 'Narrative size that makes it eligible for LLM claim extraction.',
  ),
  PathField(
    'llmClaimMinEvidenceGroups',
    'LLM claims: evidence groups',
    PathKind.integer,
    min: 1,
    defaultValue: 5,
  ),
  PathField(
    'trackRecord.minAssessed',
    'Track record: minimum assessed',
    PathKind.integer,
    min: 1,
    defaultValue: 10,
  ),
  PathField(
    'trackRecord.gradeEShare',
    'Track record: E share',
    PathKind.number,
    min: 0,
    max: 1,
    defaultValue: 0.7,
  ),
  PathField(
    'trackRecord.gradeDShare',
    'Track record: D share',
    PathKind.number,
    min: 0,
    max: 1,
    defaultValue: 0.85,
  ),
  PathField(
    'trackRecord.overrides',
    'Reliability overrides',
    PathKind.json,
    min: 0,
    help: 'A JSON list of {platform, account or channel, reliability A–F, note}.',
  ),
  PathField(
    'compare.minGroups',
    'Compare: minimum groups',
    PathKind.integer,
    min: 1,
    defaultValue: 3,
  ),
  PathField('compare.defaultWindow.before', 'Compare: window before', PathKind.duration),
  PathField('compare.defaultWindow.after', 'Compare: window after', PathKind.duration),
  PathField(
    'compare.familyWindows',
    'Compare: family windows',
    PathKind.json,
    help: 'A JSON object of signal family → {before, after, toleranceKm, publicationLag}.',
  ),
  PathField(
    'attentionGap.minSeverity',
    'Attention gap: minimum severity',
    PathKind.choice,
    options: <String>['notable', 'significant'],
    defaultValue: 'significant',
  ),
  PathField(
    'attentionGap.percentile',
    'Attention gap: percentile',
    PathKind.number,
    min: 0,
    max: 50,
    defaultValue: 10,
  ),
  PathField(
    'attentionGap.lookbackDays',
    'Attention gap: lookback days',
    PathKind.integer,
    min: 30,
    defaultValue: 365,
  ),
  PathField(
    'attentionGap.windowHours',
    'Attention gap: window hours',
    PathKind.integer,
    min: 1,
    defaultValue: 6,
  ),
  PathField('cues.enabled', 'Cues enabled', PathKind.boolean, defaultValue: true),
  PathField(
    'cues.triggers.situationActivated',
    'Cue on situation activated',
    PathKind.boolean,
    defaultValue: true,
  ),
  PathField(
    'cues.triggers.situationEscalated',
    'Cue on situation escalated',
    PathKind.boolean,
    defaultValue: true,
  ),
  PathField('cues.triggers.anomalies', 'Cue on anomalies', PathKind.boolean, defaultValue: true),
  PathField(
    'cues.triggers.criticalAlerts',
    'Cue on critical alerts',
    PathKind.boolean,
    defaultValue: true,
  ),
  PathField('cues.triggers.findingTypes', 'Cue on finding types', PathKind.list),
  PathField('cues.triggers.canonicalFamilies', 'Cue on canonical families', PathKind.list),
  PathField(
    'cues.triggers.minEvidenceGroups',
    'Cue: minimum evidence groups',
    PathKind.integer,
    min: 1,
    defaultValue: 2,
  ),
  PathField('cues.maxPerDay', 'Cues per day', PathKind.integer, min: 0, defaultValue: 50),
  PathField(
    'cues.maxCostUsdPerCue',
    'Cue cost cap (USD)',
    PathKind.number,
    min: 0,
    defaultValue: 1.0,
  ),
  PathField(
    'cues.platforms',
    'Cue platforms',
    PathKind.list,
    help: 'Platform adapter ids, comma separated.',
  ),
  PathField(
    'cues.xaiXSearch.enabled',
    'xAI X search',
    PathKind.boolean,
    defaultValue: false,
    help: 'A ranked sample with citations; off by default.',
  ),
  PathField(
    'cues.xaiXSearch.maxResults',
    'xAI X search: results',
    PathKind.integer,
    min: 1,
    defaultValue: 20,
  ),
];

/// The platform adapter settings shown in the form (`SocialPlatformSettings`);
/// the call budget and prices go back unchanged.
const List<PathField> platformSettingsFields = <PathField>[
  PathField('enabled', 'Enabled', PathKind.boolean, defaultValue: false),
  PathField('mode', 'Mode', PathKind.text, help: 'X only: counts, search or counts+search.'),
  PathField(
    'channels',
    'Channels',
    PathKind.list,
    help: 'Polled regardless of topics: subreddits, instances or hashtags, YouTube channels.',
  ),
  PathField('deletionSync', 'Deletion sync', PathKind.boolean, defaultValue: false),
  PathField('postRetention', 'Post retention', PathKind.duration, defaultValue: '30d'),
  PathField('monthlyCapUsd', 'Monthly cap (USD)', PathKind.number, min: 0),
  PathField('options.instances', 'Instances', PathKind.list),
  PathField('options.replay', 'Replay', PathKind.boolean, defaultValue: false),
  PathField('options.standingCounts', 'Standing counts', PathKind.boolean, defaultValue: false),
  PathField('options.fullArchive', 'Full archive', PathKind.boolean, defaultValue: false),
  PathField('options.comments', 'Comments', PathKind.boolean, defaultValue: false),
  PathField(
    'options.maxResults',
    'Results per call',
    PathKind.integer,
    min: 10,
    max: 100,
    defaultValue: 10,
  ),
  PathField(
    'options.fieldsParam',
    'Fields parameter',
    PathKind.choice,
    options: <String>['post', 'tweet'],
    defaultValue: 'post',
  ),
];

/// A model as JSON through [serializers].
Map<String, Object?> toJsonMap<T>(Serializers serializers, T value) =>
    (serializers.serialize(value, specifiedType: FullType(T))! as Map<Object?, Object?>)
        .cast<String, Object?>();

/// JSON as a model through [serializers].
T fromJsonMap<T>(Serializers serializers, Object? json) =>
    serializers.deserialize(json, specifiedType: FullType(T))! as T;

/// The entity key types (`EntityKeyInput.keyType`), by wire name.
const List<String> entityKeyTypes = <String>[
  'airframe',
  'icao24',
  'registration',
  'imo',
  'mmsi',
  'norad',
  'cospar',
  'callsign',
  'lei',
  'company-number',
  'tax-id',
  'officer-id',
  'person-key',
];

/// What each key type expects, shown under the value.
const Map<String, String> entityKeyHints = <String, String>{
  'lei': '20 letters and digits (ISO 17442).',
  'company-number': 'JURISDICTION:NUMBER, such as GB:01234567.',
  'tax-id': 'An EIN, VAT or TIN; spaces and hyphens are removed.',
  'officer-id': 'REGISTRY:ID.',
  'person-key': 'A composed name key such as name|dob|nationality; a weak key.',
  'callsign': 'Prefixed by domain: air:, sea: or ham:.',
  'icao24': 'Six hex digits.',
};

/// Whether [text] is a key lookup, `keyType:value`, with a known key type.
bool isEntityKey(String text) {
  final t = text.trim();
  final colon = t.indexOf(':');
  return colon > 0 && colon < t.length - 1 && entityKeyTypes.contains(t.substring(0, colon));
}

/// An instant typed as a UTC date (`2025-03-01`) or an ISO date-time; empty
/// is `null` (now). Throws [FormatException] for anything else.
DateTime? parseAsOf(String text) {
  final t = text.trim();
  if (t.isEmpty) {
    return null;
  }
  final date = RegExp(r'^(\d{4})-(\d{2})-(\d{2})$').firstMatch(t);
  if (date != null) {
    return DateTime.utc(int.parse(date[1]!), int.parse(date[2]!), int.parse(date[3]!));
  }
  final parsed = DateTime.tryParse(t);
  if (parsed == null) {
    throw const FormatException('A date such as 2025-03-01, or an ISO date-time.');
  }
  return parsed.toUtc();
}

/// An operator key assertion (`EntityKeyInput`), as typed.
class EntityKeyDraft {
  /// The key type, by wire name.
  String keyType = 'lei';

  /// The raw value; the backend normalizes it.
  String keyValue = '';

  /// Confidence from 0 to 1; empty for the default 1.0.
  String confidence = '';

  /// Whether to move a key open on another entity here.
  bool force = false;

  /// Problems by field; empty when the draft can be sent.
  Map<String, String> validate() {
    final errors = <String, String>{};
    final v = keyValue.trim();
    if (v.isEmpty || v.length > 64) {
      errors['keyValue'] = 'A value of 1 to 64 characters.';
    } else if (keyType == 'lei' && !RegExp(r'^[A-Za-z0-9]{20}$').hasMatch(v)) {
      errors['keyValue'] = entityKeyHints['lei']!;
    } else if ((keyType == 'company-number' || keyType == 'officer-id') &&
        !RegExp(r'^[^:\s]+:\S.*$').hasMatch(v)) {
      errors['keyValue'] = entityKeyHints[keyType]!;
    }
    if (confidence.trim().isNotEmpty) {
      final c = num.tryParse(confidence.trim());
      if (c == null || c < 0 || c > 1) {
        errors['confidence'] = 'A number from 0 to 1.';
      }
    }
    return errors;
  }

  /// The request body as JSON. Call [validate] first.
  Map<String, Object?> toJson() => <String, Object?>{
    'keyType': keyType,
    'keyValue': keyValue.trim(),
    'confidence': ?num.tryParse(confidence.trim()),
    if (force) 'force': true,
  };
}

final RegExp _ulid = RegExp(r'^[0-9A-HJKMNP-TV-Z]{26}$');
final RegExp _objectRef = RegExp(r'^[a-z][a-z-]*:.+$');

/// Seed refs as typed: `entity:<id>` refs, or bare entity ids, separated by
/// commas, spaces or new lines.
List<String> seedRefs(String text) => <String>[
  for (final part in text.split(RegExp(r'[\s,]+')))
    if (part.trim().isNotEmpty) _ulid.hasMatch(part.trim()) ? 'entity:${part.trim()}' : part.trim(),
];

/// The ownership / affiliation edge types (158), by wire name.
const List<String> ownershipEdgeTypes = <String>[
  'owns',
  'controls',
  'officer-of',
  'beneficial-owner',
  'affiliated-with',
];

/// An ownership-chain or graph query, as typed.
class OwnershipQueryDraft {
  /// Seed refs, as typed.
  String refs = '';

  /// Hops to follow: up to 6 for a chain, 2 for a graph.
  String depth = '';

  /// `in`, `out` or `both`.
  String direction = 'both';

  /// Edge types to walk; empty walks all five.
  final Set<String> types = <String>{};

  /// The weakest edge confidence followed, 0 to 1.
  String minConfidence = '';

  /// Problems by field; empty when the draft can be sent. A [graph] query
  /// allows depth 2 at most.
  Map<String, String> validate({bool graph = false}) {
    final errors = <String, String>{};
    final seeds = seedRefs(refs);
    if (seeds.isEmpty || seeds.length > 50) {
      errors['refs'] = 'One to 50 entity ids or refs.';
    } else if (seeds.any((r) => !_objectRef.hasMatch(r))) {
      errors['refs'] = 'Refs look like entity:<id>.';
    }
    final maxDepth = graph ? 2 : 6;
    if (depth.trim().isNotEmpty) {
      final d = int.tryParse(depth.trim());
      if (d == null || d < 1 || d > maxDepth) {
        errors['depth'] = 'From 1 to $maxDepth hops.';
      }
    }
    if (minConfidence.trim().isNotEmpty) {
      final c = num.tryParse(minConfidence.trim());
      if (c == null || c < 0 || c > 1) {
        errors['minConfidence'] = 'A number from 0 to 1.';
      }
    }
    return errors;
  }

  /// The `ownershipChain` body as JSON.
  Map<String, Object?> chainJson() => <String, Object?>{
    'refs': seedRefs(refs),
    'depth': ?int.tryParse(depth.trim()),
    'direction': direction,
    if (types.isNotEmpty)
      'types': <String>[
        for (final t in ownershipEdgeTypes)
          if (types.contains(t)) t,
      ],
    'minConfidence': ?num.tryParse(minConfidence.trim()),
  };

  /// The `queryGraph` body as JSON, walking the ownership edges chosen (or
  /// every relation type when none is).
  Map<String, Object?> graphJson() => <String, Object?>{
    'refs': seedRefs(refs),
    'depth': ?int.tryParse(depth.trim()),
    if (types.isNotEmpty)
      'types': <String>[
        for (final t in ownershipEdgeTypes)
          if (types.contains(t)) t,
      ],
    'minConfidence': ?num.tryParse(minConfidence.trim()),
  };
}

// us-english-allow-start: the contract's own ratings column name, which
// crosses the wire and is not ours to respell.
/// The ratings column naming each row's terms of use, spelled as the
/// contract spells it.
const String ratingsTermsColumn = 'licence';
// us-english-allow-end

/// Operator media ratings as pasted: CSV with the header [csvHeader], or a
/// JSON `{"rows": [...]}` document. Sent as the operator file of
/// `importMediaRatings` (`provider=operator`).
class RatingsUpload {
  /// Creates the upload of [text].
  RatingsUpload(this.text);

  /// The pasted file.
  final String text;

  /// Whether the text is JSON rather than CSV.
  bool get isJson => text.trimLeft().startsWith('{');

  /// The columns a CSV upload needs, as the contract spells them.
  static const List<String> csvColumns = <String>[
    'domain',
    'dimension',
    'value',
    ratingsTermsColumn,
    'attribution',
  ];

  /// A full CSV header, with the optional `label` column.
  static const String csvHeader = 'domain,dimension,value,label,$ratingsTermsColumn,attribution';

  /// A problem with the text, or `null` when it can be sent.
  String? validate() {
    final t = text.trim();
    if (t.isEmpty) {
      return 'Paste a CSV or JSON ratings file.';
    }
    if (isJson) {
      try {
        final parsed = jsonDecode(t);
        if (parsed is! Map || parsed['rows'] is! List) {
          return 'A JSON upload is {"rows": [...]}.';
        }
      } on FormatException catch (e) {
        return 'Not JSON: ${e.message}';
      }
      return null;
    }
    final header = t.split('\n').first.split(',').map((c) => c.trim().toLowerCase()).toSet();
    final missing = csvColumns.where((c) => !header.contains(c)).toList();
    return missing.isEmpty ? null : 'The CSV header lacks ${missing.join(', ')}.';
  }

  /// The multipart file sent.
  MultipartFile toFile() =>
      MultipartFile.fromString(text, filename: isJson ? 'ratings.json' : 'ratings.csv');
}
