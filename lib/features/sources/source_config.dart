import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';

import '../../api/api.dart';
import '../../core/format/duration_text.dart';

/// Said when the monthly cap is emptied: `updateSource` takes no cap to clear
/// (the backend leaves it unchanged), so an emptied cap is refused here.
const String cannotClearMessage = 'This override can be changed here but not cleared.';

/// How a descriptor parameter is edited.
enum ParamEditor {
  /// A switch (`boolean`).
  toggle,

  /// A whole number (`integer`).
  integer,

  /// A number (`number`).
  number,

  /// A choice from the descriptor's `allowed` values.
  choice,

  /// Comma-separated values (`string-list`).
  list,

  /// A JSON value (`json`, or a `bbox` held as an array).
  json,

  /// A duration (`duration`).
  duration,

  /// Free text (`string`, `lan-url`, `inbox-path`, a `bbox` held as text).
  text;

  /// The editor for [spec], given the source's current [value].
  static ParamEditor of(ParamSpec spec, Object? value) {
    final type = spec.type;
    if (type == ParamSpecTypeEnum.boolean) {
      return toggle;
    }
    if (type == ParamSpecTypeEnum.integer) {
      return integer;
    }
    if (type == ParamSpecTypeEnum.number) {
      return number;
    }
    if (type == ParamSpecTypeEnum.stringList) {
      return list;
    }
    if (type == ParamSpecTypeEnum.json) {
      return json;
    }
    if (type == ParamSpecTypeEnum.duration) {
      return duration;
    }
    // For lan-url, `allowed` lists URL schemes, not values.
    if ((spec.allowed?.isNotEmpty ?? false) && type != ParamSpecTypeEnum.lanUrl) {
      return choice;
    }
    if (type == ParamSpecTypeEnum.bbox && value is! String && value != null) {
      return json;
    }
    return text;
  }
}

/// The editable form of one descriptor parameter: its text (or switch value)
/// and how it converts back to JSON.
class ParamDraft {
  /// Creates the draft for [spec] holding [value].
  ParamDraft(this.spec, Object? value) : editor = ParamEditor.of(spec, value) {
    if (editor == ParamEditor.toggle) {
      toggle = value == true;
    } else {
      text = _toText(value);
    }
  }

  /// The descriptor's parameter.
  final ParamSpec spec;

  /// How it is edited.
  final ParamEditor editor;

  /// The text, for every editor except [ParamEditor.toggle].
  String text = '';

  /// The switch value, for [ParamEditor.toggle].
  bool toggle = false;

  String _toText(Object? value) {
    if (value == null) {
      return '';
    }
    return switch (editor) {
      ParamEditor.list => value is List ? value.join(', ') : '$value',
      ParamEditor.json =>
        value is String ? value : const JsonEncoder.withIndent('  ').convert(value),
      _ => '$value',
    };
  }

  /// Whether the field is empty (a switch never is).
  bool get isEmpty => editor != ParamEditor.toggle && text.trim().isEmpty;

  /// The problem with the entered value, or `null`.
  String? validate() {
    if (isEmpty) {
      return spec.required_ == true ? 'Required.' : null;
    }
    final t = text.trim();
    switch (editor) {
      case ParamEditor.integer:
        return int.tryParse(t) == null ? 'Enter a whole number.' : null;
      case ParamEditor.number:
        return num.tryParse(t) == null ? 'Enter a number.' : null;
      case ParamEditor.duration:
        return parseDurationText(t) == null ? 'Enter a duration such as 15m, 12h or PT1H.' : null;
      case ParamEditor.json:
        try {
          jsonDecode(t);
          return null;
        } on FormatException {
          return 'Enter valid JSON.';
        }
      case ParamEditor.choice:
        return spec.allowed!.contains(t) ? null : 'Choose one of: ${spec.allowed!.join(', ')}.';
      case ParamEditor.list:
        final allowed = spec.allowed;
        if (allowed == null || allowed.isEmpty) {
          return null;
        }
        final bad = _items(t).where((v) => !allowed.contains(v)).toList();
        return bad.isEmpty ? null : 'Not allowed: ${bad.join(', ')}.';
      case ParamEditor.toggle:
      case ParamEditor.text:
        return null;
    }
  }

  static List<String> _items(String t) =>
      t.split(',').map((v) => v.trim()).where((v) => v.isNotEmpty).toList();

  /// The JSON value entered; `null` when empty. Call [validate] first.
  Object? get value {
    if (editor == ParamEditor.toggle) {
      return toggle;
    }
    if (isEmpty) {
      return null;
    }
    final t = text.trim();
    return switch (editor) {
      ParamEditor.integer => int.parse(t),
      ParamEditor.number => num.parse(t),
      ParamEditor.list => _items(t),
      ParamEditor.json => jsonDecode(t),
      _ => t,
    };
  }
}

/// The ingest-policy modes (Core-Data-Model §5.1).
enum IngestMode {
  /// Every full-hash change, plus keyframes.
  all('ALL'),

  /// Significant changes, edges, keyframes and samples.
  sampled('SAMPLED'),

  /// The latest state only.
  latest('LATEST');

  const IngestMode(this.wire);

  /// The `mode` value on the wire.
  final String wire;

  /// The mode named [wire], or [all].
  static IngestMode fromWire(Object? wire) =>
      values.firstWhere((m) => m.wire == wire, orElse: () => all);
}

/// The editable form of a source's settings, built from `getSource` and
/// turned back into the smallest `updateSource` body that changes what the
/// operator changed. It holds no widgets, so it can be tested on its own.
class SourceConfigDraft {
  /// Builds the draft from [detail]; [serializers] (the generated client's)
  /// convert the ingest policy to and from JSON.
  SourceConfigDraft.fromDetail(this.detail, this.serializers) {
    final s = detail.settings;
    final d = detail.descriptor;
    enabled = s.enabled;
    interval = s.interval;
    perMinute = '${s.budget.perMinute}';
    perDay = '${s.budget.perDay}';
    monthlyCapUsd = s.budget.monthlyCapUsd?.toString() ?? '';
    retention = s.retention ?? '';
    downsampleInterval = s.downsampleInterval ?? '';
    embed = s.embed ?? d.embedFields?.isNotEmpty ?? false;
    statsEnabled = s.statsEnabled ?? true;
    statsIncludePrivate = s.statsIncludePrivate ?? false;
    private = s.private ?? d.private ?? false;
    regionTagging = s.regionTagging?.name;
    egress = s.egress?.name;
    reliability = s.reliability?.name;
    params = <ParamDraft>[
      for (final spec in d.params)
        ParamDraft(
          spec,
          s.params.containsKey(spec.name) ? s.params[spec.name]?.value : spec.default_?.value,
        ),
    ];
    final override = s.ingestPolicy;
    overridePolicy = override != null;
    _loadPolicy(override ?? s.effectiveIngestPolicy ?? d.defaultIngestPolicy);
  }

  /// The source as last read.
  final SourceDetail detail;

  /// The generated client's serializers.
  final Serializers serializers;

  /// `enabled`.
  late bool enabled;

  /// `interval`.
  late String interval;

  /// `budget.perMinute`, as typed.
  late String perMinute;

  /// `budget.perDay`, as typed.
  late String perDay;

  /// `budget.monthlyCapUsd`, as typed.
  late String monthlyCapUsd;

  /// `retention`, as typed.
  late String retention;

  /// `downsampleInterval`, as typed.
  late String downsampleInterval;

  /// `embed`.
  late bool embed;

  /// `statsEnabled`.
  late bool statsEnabled;

  /// `statsIncludePrivate`.
  late bool statsIncludePrivate;

  /// `private`.
  late bool private;

  /// `regionTagging` (`eager`, `lazy`, `off`), or `null` for the default.
  String? regionTagging;

  /// `egress` override (`OPEN`, `LOCAL_ONLY`), or `null` for the descriptor's.
  String? egress;

  /// `reliability` override (`A`–`F`), or `null` for the descriptor's.
  String? reliability;

  /// The descriptor's parameters with their values.
  late List<ParamDraft> params;

  /// Whether an ingest-policy override is set.
  late bool overridePolicy;

  /// The override's mode.
  IngestMode policyMode = IngestMode.all;

  /// `keyframe`.
  String policyKeyframe = '';

  /// `minInterval`.
  String policyMinInterval = '';

  /// `edgeMinInterval`.
  String policyEdgeMinInterval = '';

  /// `minDeviationMeters` (SAMPLED), as typed.
  String policyMinDeviation = '';

  /// `thresholds` (SAMPLED).
  bool policyThresholds = false;

  SourceDescriptor get _d => detail.descriptor;
  SourceSettings get _s => detail.settings;

  /// Whether the source is polled, so `interval` applies.
  bool get polled => _d.mode == SourceDescriptorModeEnum.polling;

  /// Whether retention is per source (STANDARD history).
  bool get standardHistory => _d.historyTier?.name != 'TRACK';

  /// Whether the source pays per request, so a monthly cap applies.
  bool get paid => _d.defaultBudget.monthlyCapUsd != null || _s.budget.monthlyCapUsd != null;

  /// Whether the descriptor marks the source private (it cannot be made
  /// public).
  bool get privateByDescriptor => _d.private ?? false;

  /// Whether the descriptor lets the operator override egress.
  bool get egressOverridable => _d.egressOverridable ?? false;

  /// Whether the descriptor declares embeddable fields.
  bool get embeddable => _d.embedFields?.isNotEmpty ?? false;

  void _loadPolicy(IngestPolicy? policy) {
    final json = policyJson(policy);
    if (json == null) {
      return;
    }
    policyMode = IngestMode.fromWire(json['mode']);
    policyKeyframe = (json['keyframe'] as String?) ?? '';
    policyMinInterval = (json['minInterval'] as String?) ?? '';
    policyEdgeMinInterval = (json['edgeMinInterval'] as String?) ?? '';
    policyMinDeviation = json['minDeviationMeters']?.toString() ?? '';
    policyThresholds = json['thresholds'] == true;
  }

  /// [policy] as its JSON object, or `null`.
  Map<String, Object?>? policyJson(IngestPolicy? policy) {
    if (policy == null) {
      return null;
    }
    final json = serializers.serialize(policy, specifiedType: const FullType(IngestPolicy));
    return json is Map ? json.cast<String, Object?>() : null;
  }

  /// The ingest policy entered, as JSON.
  Map<String, Object?> get enteredPolicy => <String, Object?>{
    'mode': policyMode.wire,
    if (policyKeyframe.trim().isNotEmpty) 'keyframe': policyKeyframe.trim(),
    if (policyMode != IngestMode.all && policyMinInterval.trim().isNotEmpty)
      'minInterval': policyMinInterval.trim(),
    if (policyMode != IngestMode.all && policyEdgeMinInterval.trim().isNotEmpty)
      'edgeMinInterval': policyEdgeMinInterval.trim(),
    if (policyMode == IngestMode.sampled && policyMinDeviation.trim().isNotEmpty)
      'minDeviationMeters': num.tryParse(policyMinDeviation.trim()),
    if (policyMode == IngestMode.sampled) 'thresholds': policyThresholds,
  };

  /// Field problems, keyed by field name (`interval`, `budget.perDay`,
  /// `params.<name>`, `ingestPolicy.keyframe` …). Empty when the draft can
  /// be saved. Mirrors the descriptor's constraints so most mistakes are
  /// caught before the request; the backend's own 400 is still shown.
  Map<String, String> validate() {
    final errors = <String, String>{};
    if (polled) {
      final parsed = parseDurationText(interval);
      final floor = _d.minInterval == null ? null : parseDurationText(_d.minInterval!);
      if (parsed == null) {
        errors['interval'] = 'Enter a duration such as 15m, 12h or PT1H.';
      } else if (floor != null && parsed < floor) {
        errors['interval'] =
            'The shortest interval this source allows is ${displayDurationText(_d.minInterval)}.';
      }
    }
    for (final (key, text) in <(String, String)>[
      ('budget.perMinute', perMinute),
      ('budget.perDay', perDay),
    ]) {
      final n = int.tryParse(text.trim());
      if (n == null || n < 0) {
        errors[key] = 'Enter a whole number, 0 or more.';
      }
    }
    if (paid) {
      final cap = monthlyCapUsd.trim();
      if (cap.isEmpty && _s.budget.monthlyCapUsd != null) {
        errors['budget.monthlyCapUsd'] = cannotClearMessage;
      } else if (cap.isNotEmpty && ((num.tryParse(cap) ?? -1) < 0)) {
        errors['budget.monthlyCapUsd'] = 'Enter an amount, 0 or more.';
      }
    }
    if (standardHistory) {
      _checkDuration(errors, 'retention', retention, _s.retention);
    } else {
      _checkDuration(errors, 'downsampleInterval', downsampleInterval, _s.downsampleInterval);
    }
    for (final p in params) {
      final problem = p.validate();
      if (problem != null) {
        errors['params.${p.spec.name}'] = problem;
      }
    }
    if (overridePolicy) {
      _validatePolicy(errors);
    }
    return errors;
  }

  void _checkDuration(Map<String, String> errors, String key, String text, String? current) {
    final t = text.trim();
    // Empty clears the override (see [clears]).
    if (t.isNotEmpty && parseDurationText(t) == null) {
      errors[key] = 'Enter a duration such as 30d or P1Y.';
    }
  }

  void _validatePolicy(Map<String, String> errors) {
    Duration? read(String key, String text, {bool required = false, bool allowNone = false}) {
      final t = text.trim();
      if (t.isEmpty) {
        if (required) {
          errors['ingestPolicy.$key'] = 'Required.';
        }
        return null;
      }
      if (allowNone && t == 'none') {
        return null;
      }
      final d = parseDurationText(t);
      if (d == null) {
        errors['ingestPolicy.$key'] = 'Enter a duration such as 60s or 4m.';
      }
      return d;
    }

    final keyframe = read('keyframe', policyKeyframe, allowNone: true);
    if (policyMode == IngestMode.all) {
      return;
    }
    final minInterval = read(
      'minInterval',
      policyMinInterval,
      required: policyMode == IngestMode.sampled,
    );
    final edge = read('edgeMinInterval', policyEdgeMinInterval);
    if (minInterval != null) {
      if (minInterval < const Duration(seconds: 2)) {
        errors['ingestPolicy.minInterval'] = 'At least 2 seconds.';
      } else if (keyframe != null && minInterval > keyframe) {
        errors['ingestPolicy.minInterval'] = 'No longer than the keyframe interval.';
      }
      if (edge != null && edge > minInterval) {
        errors['ingestPolicy.edgeMinInterval'] = 'No longer than the minimum interval.';
      }
    }
    if (policyMode == IngestMode.sampled && policyMinDeviation.trim().isNotEmpty) {
      final m = num.tryParse(policyMinDeviation.trim());
      if (m == null || m < 0) {
        errors['ingestPolicy.minDeviationMeters'] = 'Enter a distance in meters, 0 or more.';
      }
    }
  }

  Map<String, Object?> get _enteredParams => <String, Object?>{
    for (final entry in _s.params.entries) entry.key: entry.value?.value,
    for (final p in params)
      if (!p.isEmpty || _s.params.containsKey(p.spec.name)) p.spec.name: p.value,
  };

  /// The parameters in effect: the stored values, with each unset parameter
  /// at its descriptor default (how the draft is first filled in).
  Map<String, Object?> get _currentParams => <String, Object?>{
    for (final spec in _d.params)
      if (spec.default_?.value != null) spec.name: spec.default_!.value,
    for (final entry in _s.params.entries) entry.key: entry.value?.value,
  };

  /// The overrides the operator cleared, which `updateSource` must be sent as
  /// explicit `null`s ([explicitNulls]): an emptied retention or downsample
  /// interval, egress or reliability set back to the descriptor default, and an
  /// ingest-policy override switched off.
  List<String> get clears => <String>[
    if (standardHistory && retention.trim().isEmpty && _s.retention != null) 'retention',
    if (!standardHistory && downsampleInterval.trim().isEmpty && _s.downsampleInterval != null)
      'downsampleInterval',
    if (egressOverridable && egress == null && _s.egress != null) 'egress',
    if (reliability == null && _s.reliability != null) 'reliability',
    if (!overridePolicy && _s.ingestPolicy != null) 'ingestPolicy',
  ];

  /// The `updateSource` body holding only what changed, or `null` when
  /// nothing did; the cleared overrides are in [clears]. Call [validate] first.
  SourceSettingsUpdate? toUpdate() {
    var changed = false;
    final update = SourceSettingsUpdateBuilder();
    if (enabled != _s.enabled) {
      update.enabled = enabled;
      changed = true;
    }
    if (polled && !sameDuration(interval, _s.interval)) {
      update.interval = interval.trim();
      changed = true;
    }
    final budget = _enteredBudget();
    if (budget != _s.budget) {
      update.budget.replace(budget);
      changed = true;
    }
    if (standardHistory) {
      if (retention.trim().isNotEmpty && !sameDuration(retention, _s.retention)) {
        update.retention = retention.trim();
        changed = true;
      }
    } else if (downsampleInterval.trim().isNotEmpty &&
        !sameDuration(downsampleInterval, _s.downsampleInterval)) {
      update.downsampleInterval = downsampleInterval.trim();
      changed = true;
    }
    if (embeddable && embed != (_s.embed ?? true)) {
      update.embed = embed;
      changed = true;
    }
    if (statsEnabled != (_s.statsEnabled ?? true)) {
      update.statsEnabled = statsEnabled;
      changed = true;
    }
    if (statsIncludePrivate != (_s.statsIncludePrivate ?? false)) {
      update.statsIncludePrivate = statsIncludePrivate;
      changed = true;
    }
    if (!privateByDescriptor && private != (_s.private ?? false)) {
      update.private = private;
      changed = true;
    }
    if (regionTagging != null && regionTagging != _s.regionTagging?.name) {
      update.regionTagging = SourceSettingsUpdateRegionTaggingEnum.valueOf(regionTagging!);
      changed = true;
    }
    if (egressOverridable && egress != null && egress != _s.egress?.name) {
      update.egress = SourceSettingsUpdateEgressEnum.valueOf(egress!);
      changed = true;
    }
    if (reliability != null && reliability != _s.reliability?.name) {
      update.reliability = SourceSettingsUpdateReliabilityEnum.valueOf(reliability!);
      changed = true;
    }
    final entered = _enteredParams;
    if (!_sameJson(entered, _currentParams)) {
      update.params = MapBuilder<String, JsonObject?>(<String, JsonObject?>{
        for (final entry in entered.entries)
          entry.key: entry.value == null ? null : JsonObject(entry.value),
      });
      changed = true;
    }
    if (overridePolicy) {
      final policy = enteredPolicy;
      if (!_sameJson(policy, policyJson(_s.ingestPolicy))) {
        update.ingestPolicy.replace(
          serializers.deserialize(policy, specifiedType: const FullType(IngestPolicy))!
              as IngestPolicy,
        );
        changed = true;
      }
    }
    return changed ? update.build() : null;
  }

  Budget _enteredBudget() {
    final cap = monthlyCapUsd.trim();
    return Budget(
      (b) => b
        ..perMinute = int.parse(perMinute.trim())
        ..perDay = int.parse(perDay.trim())
        ..monthlyCapUsd = paid && cap.isNotEmpty ? num.parse(cap) : _s.budget.monthlyCapUsd,
    );
  }

  /// Checks the re-read [confirmed] source against what [sent] asked for and
  /// the [cleared] overrides; returns `null` when it matches, or what differs.
  String? confirm(
    SourceSettingsUpdate sent,
    SourceDetail confirmed, {
    List<String> cleared = const <String>[],
  }) {
    final s = confirmed.settings;
    final diffs = <String>[
      if (cleared.contains('retention') && s.retention != null) 'retention',
      if (cleared.contains('downsampleInterval') && s.downsampleInterval != null)
        'downsample interval',
      if (cleared.contains('egress') && s.egress != null) 'egress',
      if (cleared.contains('reliability') && s.reliability != null) 'reliability',
      if (cleared.contains('ingestPolicy') && s.ingestPolicy != null) 'ingest policy',
      if (sent.enabled != null && sent.enabled != s.enabled) 'enabled',
      if (sent.interval != null && !sameDuration(sent.interval!, s.interval)) 'interval',
      if (sent.budget != null && sent.budget != s.budget) 'budget',
      if (sent.retention != null && !sameDuration(sent.retention!, s.retention)) 'retention',
      if (sent.downsampleInterval != null &&
          !sameDuration(sent.downsampleInterval!, s.downsampleInterval))
        'downsample interval',
      if (sent.embed != null && sent.embed != s.embed) 'embed',
      if (sent.statsEnabled != null && sent.statsEnabled != s.statsEnabled) 'stats',
      if (sent.statsIncludePrivate != null && sent.statsIncludePrivate != s.statsIncludePrivate)
        'stats for private records',
      if (sent.private != null && sent.private != s.private) 'private',
      if (sent.regionTagging != null && sent.regionTagging!.name != s.regionTagging?.name)
        'region tagging',
      if (sent.egress != null && sent.egress!.name != s.egress?.name) 'egress',
      if (sent.reliability != null && sent.reliability!.name != s.reliability?.name) 'reliability',
      if (sent.params != null &&
          !_sameJson(
            <String, Object?>{for (final e in sent.params!.entries) e.key: e.value?.value},
            <String, Object?>{for (final e in s.params.entries) e.key: e.value?.value},
          ))
        'parameters',
      if (sent.ingestPolicy != null &&
          !_sameJson(policyJson(sent.ingestPolicy), policyJson(s.ingestPolicy)))
        'ingest policy',
    ];
    return diffs.isEmpty ? null : 'the re-read source differs in: ${diffs.join(', ')}';
  }
}

/// JSON equality with durations compared by length, so a backend that
/// rewrites `60s` as `PT1M` still confirms.
bool _sameJson(Object? a, Object? b) => jsonEncode(_normalize(a)) == jsonEncode(_normalize(b));

Object? _normalize(Object? v) {
  if (v is Map) {
    final keys = v.keys.map((k) => '$k').toList()..sort();
    return <String, Object?>{
      for (final k in keys)
        if (v[k] != null) k: _normalize(v[k]),
    };
  }
  if (v is List) {
    return v.map(_normalize).toList();
  }
  if (v is String) {
    final d = parseDurationText(v);
    return d == null ? v : 'duration:${d.inMilliseconds}';
  }
  if (v is num) {
    return v.toDouble();
  }
  return v;
}
