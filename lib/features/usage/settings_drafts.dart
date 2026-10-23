import 'package:built_value/serializer.dart';

import '../../api/api.dart';
import '../../core/format/duration_text.dart';

/// One editable member of a settings object, addressed by its JSON path
/// (`['stream', 'concurrent']`).
class SettingField {
  /// Creates the field.
  const SettingField(this.path, this.label, {this.help, this.nullable = false, this.min});

  /// The JSON path within the settings object.
  final List<String> path;

  /// The form label.
  final String label;

  /// Help under the label.
  final String? help;

  /// Whether the contract lets it be `null` (and the form leave it empty).
  final bool nullable;

  /// The smallest value accepted: an `int` for counts, a [Duration] for
  /// durations.
  final Object? min;

  /// The key of its form field and error: the path joined with dots.
  String get key => path.join('.');
}

Object? _read(Map<String, Object?> json, List<String> path) {
  Object? node = json;
  for (final segment in path) {
    if (node is! Map) {
      return null;
    }
    node = node[segment];
  }
  return node;
}

void _write(Map<String, Object?> json, List<String> path, Object? value) {
  var node = json;
  for (final segment in path.take(path.length - 1)) {
    final next = node[segment];
    final child = next is Map ? Map<String, Object?>.from(next) : <String, Object?>{};
    node[segment] = child;
    node = child;
  }
  if (value == null) {
    node.remove(path.last);
  } else {
    node[path.last] = value;
  }
}

Map<String, Object?> _deepCopy(Map<String, Object?> json) => <String, Object?>{
  for (final entry in json.entries)
    entry.key: switch (entry.value) {
      final Map<Object?, Object?> m => _deepCopy(m.cast<String, Object?>()),
      final List<Object?> l => List<Object?>.from(l),
      final v => v,
    },
};

/// The base of the settings forms that `PUT` a whole object
/// (`updateRateLimits`, `updateRetention`): the stored object, as JSON, with
/// the edited members applied, so members the form does not show are sent
/// back unchanged.
abstract class SettingsDraft {
  /// Starts from [stored] (already serialized to JSON) over [fields].
  SettingsDraft(Map<String, Object?> stored, this.fields)
    : base = _deepCopy(stored),
      text = <String, String>{
        for (final f in fields) f.key: _read(stored, f.path)?.toString() ?? '',
      };

  /// The stored object.
  final Map<String, Object?> base;

  /// The members the form edits.
  final List<SettingField> fields;

  /// The text of each field, by [SettingField.key].
  final Map<String, String> text;

  /// Parses [value] for [field]: an `int`, a duration string, or a problem
  /// (returned as a `String` starting with `!`).
  Object? parse(SettingField field, String value);

  /// Field problems by key; empty when the draft can be sent.
  Map<String, String> validate() {
    final errors = <String, String>{};
    for (final f in fields) {
      final value = text[f.key]!.trim();
      if (value.isEmpty) {
        // An emptied nullable field is sent as an explicit null ([clears]).
        if (!f.nullable && _read(base, f.path) != null) {
          errors[f.key] = 'Enter a value; a stored setting cannot be emptied here.';
        }
        continue;
      }
      final parsed = parse(f, value);
      if (parsed is String && parsed.startsWith('!')) {
        errors[f.key] = parsed.substring(1);
      }
    }
    return errors;
  }

  /// The top-level nullable members left empty, which the request must carry
  /// as explicit `null`s ([explicitNulls]): the generated serializer leaves a
  /// null member out, and the backend can read an absent member as its
  /// default rather than as none (an absent `trackRawWindow` is 24 h; `null`
  /// turns downsampling off).
  List<String> get clears => <String>[
    for (final f in fields)
      if (f.nullable && f.path.length == 1 && text[f.key]!.trim().isEmpty) f.path.single,
  ];

  /// The request body as JSON. Call [validate] first.
  Map<String, Object?> toJson() {
    final json = _deepCopy(base);
    for (final f in fields) {
      final value = text[f.key]!.trim();
      _write(json, f.path, value.isEmpty ? null : parse(f, value));
    }
    return json;
  }

  /// Whether two stored values of [field] mean the same.
  bool same(SettingField field, Object? a, Object? b) => a == b;

  /// `null` when [reread] holds every member that was sent, or what differs.
  String? confirm(Map<String, Object?> reread) {
    final sent = toJson();
    final differs = <String>[
      for (final f in fields)
        if (_read(sent, f.path) != null && !same(f, _read(sent, f.path), _read(reread, f.path)))
          '${f.label}: sent ${_read(sent, f.path)}, read back ${_read(reread, f.path) ?? 'nothing'}',
    ];
    return differs.isEmpty ? null : differs.join('; ');
  }
}

/// The rate-limit form (`RateLimitSettings`): requests per minute per class.
class RateLimitsDraft extends SettingsDraft {
  /// A draft of [stored].
  RateLimitsDraft(RateLimitSettings stored, Serializers serializers)
    : super(jsonOf(stored, serializers), rateLimitFields);

  /// [settings] as JSON.
  static Map<String, Object?> jsonOf(RateLimitSettings settings, Serializers serializers) =>
      (serializers.serialize(settings, specifiedType: const FullType(RateLimitSettings))!
              as Map<Object?, Object?>)
          .cast<String, Object?>();

  /// The members shown, with the contract's defaults as help.
  static const List<SettingField> rateLimitFields = <SettingField>[
    SettingField(<String>['read'], 'Read', help: 'Default 600', min: 1),
    SettingField(<String>['tiles'], 'Tiles', help: 'Default 1200', min: 1),
    SettingField(
      <String>['expensive'],
      'Expensive',
      help: 'Search, Ask, LLM-backed tools, sampling. Default 20',
      min: 1,
    ),
    SettingField(<String>['write'], 'Write', help: 'Default 120', min: 1),
    SettingField(<String>['anonymous'], 'Anonymous', help: 'Per IP. Default 120', min: 1),
    SettingField(
      <String>['stream', 'opensPerMinute'],
      'Stream opens',
      help: 'SSE connections opened per minute. Default 30',
      min: 1,
    ),
    SettingField(
      <String>['stream', 'concurrent'],
      'Concurrent streams',
      help: 'Open SSE connections at once. Default 8',
      min: 1,
    ),
    SettingField(
      <String>['metricsPerMinute'],
      'Metrics scrapes',
      help: 'Optional limit on /actuator/prometheus per IP; empty means no limit',
      nullable: true,
      min: 1,
    ),
  ];

  @override
  Object? parse(SettingField field, String value) {
    final n = int.tryParse(value);
    final min = field.min! as int;
    if (n == null || n < min) {
      return '!Enter a whole number of at least $min.';
    }
    return n;
  }

  /// The request body as the generated model.
  RateLimitSettings toModel(Serializers serializers) =>
      serializers.deserialize(toJson(), specifiedType: const FullType(RateLimitSettings))!
          as RateLimitSettings;
}

/// The retention form (`RetentionSettings`). `PUT` replaces the whole
/// object; every window is at least an hour, except the TRACK downsample
/// interval, which the contract bounds at 30 s.
class RetentionDraft extends SettingsDraft {
  /// A draft of [stored].
  RetentionDraft(RetentionSettings stored, Serializers serializers)
    : super(jsonOf(stored, serializers), retentionFields) {
    sourceOverrides = _lines(base['sources']);
    kindOverrides = _lines(base['kinds']);
  }

  static const Duration _hour = Duration(hours: 1);

  /// [settings] as JSON.
  static Map<String, Object?> jsonOf(RetentionSettings settings, Serializers serializers) =>
      (serializers.serialize(settings, specifiedType: const FullType(RetentionSettings))!
              as Map<Object?, Object?>)
          .cast<String, Object?>();

  /// The duration members shown.
  static const List<SettingField> retentionFields = <SettingField>[
    SettingField(<String>['default'], 'Default', help: 'STANDARD history', min: _hour),
    SettingField(<String>['alerts'], 'Alerts', min: _hour),
    SettingField(<String>['usage'], 'Usage', help: 'Per-source usage rows', min: _hour),
    SettingField(<String>['briefings'], 'Briefings', min: _hour),
    SettingField(<String>['ask'], 'Ask', min: _hour),
    SettingField(<String>['provenance'], 'Provenance', help: 'Fetch log rows', min: _hour),
    SettingField(<String>['notifications'], 'Notifications', help: 'Delivery rows', min: _hour),
    SettingField(<String>['inbox'], 'Inbox', help: 'Notification inbox', min: _hour),
    SettingField(<String>['audit'], 'Audit log', min: _hour),
    SettingField(<String>['entityLinks'], 'Closed entity links', min: _hour),
    SettingField(<String>['trackWindow'], 'TRACK window', help: 'All TRACK history', min: _hour),
    SettingField(
      <String>['trackRawWindow'],
      'TRACK raw window',
      help: 'Older TRACK history is downsampled; shorter than the TRACK window. Empty turns '
          'downsampling off',
      nullable: true,
      min: _hour,
    ),
    SettingField(
      <String>['trackDownsampleInterval'],
      'TRACK downsample interval',
      help: 'One sample per entity per interval; 30 s up to the raw window',
      min: Duration(seconds: 30),
    ),
    SettingField(<String>['stats', 'hourly'], 'Activity, hourly', min: _hour),
    SettingField(<String>['stats', 'daily'], 'Activity, daily', min: _hour),
    SettingField(<String>['stats', 'regionHourly'], 'Region, hourly', min: _hour),
    SettingField(<String>['stats', 'regionDaily'], 'Region, daily', min: _hour),
  ];

  /// Per-source windows, one `id = duration` per line.
  String sourceOverrides = '';

  /// Per-kind windows, one `kind = duration` per line.
  String kindOverrides = '';

  static String _lines(Object? map) =>
      map is Map ? map.entries.map((e) => '${e.key} = ${e.value}').join('\n') : '';

  static Map<String, String>? _parseLines(String text, Map<String, String> errors, String key) {
    final map = <String, String>{};
    for (final raw in text.split('\n')) {
      final line = raw.trim();
      if (line.isEmpty) {
        continue;
      }
      final eq = line.indexOf('=');
      final name = eq < 0 ? '' : line.substring(0, eq).trim();
      final value = eq < 0 ? '' : line.substring(eq + 1).trim();
      final d = parseDurationText(value);
      if (name.isEmpty || d == null) {
        errors[key] = 'Write one "name = duration" per line ("$line").';
        return null;
      }
      if (d < _hour) {
        errors[key] = '$name: every window is at least 1h.';
        return null;
      }
      map[name] = value;
    }
    return map;
  }

  @override
  Object? parse(SettingField field, String value) {
    final d = parseDurationText(value);
    if (d == null) {
      return '!Enter a duration such as 7d, 12h or P30D.';
    }
    final min = field.min! as Duration;
    if (d < min) {
      return '!At least ${formatDurationShort(min)}.';
    }
    return value;
  }

  @override
  bool same(SettingField field, Object? a, Object? b) =>
      a is String ? sameDuration(a, b as String?) : a == b;

  @override
  Map<String, String> validate() {
    final errors = super.validate();
    _parseLines(sourceOverrides, errors, 'sources');
    _parseLines(kindOverrides, errors, 'kinds');
    final raw = parseDurationText(text['trackRawWindow']!);
    final window = parseDurationText(text['trackWindow']!);
    final interval = parseDurationText(text['trackDownsampleInterval']!);
    if (raw != null && window != null && raw >= window) {
      errors['trackRawWindow'] ??= 'Must be shorter than the TRACK window.';
    }
    if (raw != null && interval != null && interval > raw) {
      errors['trackDownsampleInterval'] ??= 'Must not be longer than the TRACK raw window.';
    }
    return errors;
  }

  @override
  Map<String, Object?> toJson() {
    final json = super.toJson();
    final ignored = <String, String>{};
    final sources = _parseLines(sourceOverrides, ignored, 'sources') ?? <String, String>{};
    final kinds = _parseLines(kindOverrides, ignored, 'kinds') ?? <String, String>{};
    // An empty map is sent, not left out: PUT replaces the object, and an
    // empty map is how every override is removed.
    json['sources'] = sources;
    json['kinds'] = kinds;
    return json;
  }

  /// The request body as the generated model.
  RetentionSettings toModel(Serializers serializers) =>
      serializers.deserialize(toJson(), specifiedType: const FullType(RetentionSettings))!
          as RetentionSettings;
}
