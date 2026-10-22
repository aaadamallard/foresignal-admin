// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'briefing.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BriefingModeEnum _$briefingModeEnum_digest =
    const BriefingModeEnum._('digest');
const BriefingModeEnum _$briefingModeEnum_llm = const BriefingModeEnum._('llm');

BriefingModeEnum _$briefingModeEnumValueOf(String name) {
  switch (name) {
    case 'digest':
      return _$briefingModeEnum_digest;
    case 'llm':
      return _$briefingModeEnum_llm;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<BriefingModeEnum> _$briefingModeEnumValues =
    BuiltSet<BriefingModeEnum>(const <BriefingModeEnum>[
  _$briefingModeEnum_digest,
  _$briefingModeEnum_llm,
]);

Serializer<BriefingModeEnum> _$briefingModeEnumSerializer =
    _$BriefingModeEnumSerializer();

class _$BriefingModeEnumSerializer
    implements PrimitiveSerializer<BriefingModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'digest': 'digest',
    'llm': 'llm',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'digest': 'digest',
    'llm': 'llm',
  };

  @override
  final Iterable<Type> types = const <Type>[BriefingModeEnum];
  @override
  final String wireName = 'BriefingModeEnum';

  @override
  Object serialize(Serializers serializers, BriefingModeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  BriefingModeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BriefingModeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Briefing extends Briefing {
  @override
  final String name;
  @override
  final bool? enabled;
  @override
  final String schedule;
  @override
  final String? timezone;
  @override
  final BriefingScope? scope;
  @override
  final String? lookback;
  @override
  final BriefingModeEnum? mode;
  @override
  final String? instructions;
  @override
  final BuiltList<String>? channelIds;
  @override
  final int? maxItemsPerKind;
  @override
  final BriefingInputAudio? audio;
  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? nextRunAt;
  @override
  final DateTime? lastRunAt;
  @override
  final String? lastRunStatus;
  @override
  final BuiltList<String>? warnings;

  factory _$Briefing([void Function(BriefingBuilder)? updates]) =>
      (BriefingBuilder()..update(updates))._build();

  _$Briefing._(
      {required this.name,
      this.enabled,
      required this.schedule,
      this.timezone,
      this.scope,
      this.lookback,
      this.mode,
      this.instructions,
      this.channelIds,
      this.maxItemsPerKind,
      this.audio,
      required this.id,
      required this.createdAt,
      this.updatedAt,
      this.nextRunAt,
      this.lastRunAt,
      this.lastRunStatus,
      this.warnings})
      : super._();
  @override
  Briefing rebuild(void Function(BriefingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BriefingBuilder toBuilder() => BriefingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Briefing &&
        name == other.name &&
        enabled == other.enabled &&
        schedule == other.schedule &&
        timezone == other.timezone &&
        scope == other.scope &&
        lookback == other.lookback &&
        mode == other.mode &&
        instructions == other.instructions &&
        channelIds == other.channelIds &&
        maxItemsPerKind == other.maxItemsPerKind &&
        audio == other.audio &&
        id == other.id &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        nextRunAt == other.nextRunAt &&
        lastRunAt == other.lastRunAt &&
        lastRunStatus == other.lastRunStatus &&
        warnings == other.warnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, schedule.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, lookback.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, instructions.hashCode);
    _$hash = $jc(_$hash, channelIds.hashCode);
    _$hash = $jc(_$hash, maxItemsPerKind.hashCode);
    _$hash = $jc(_$hash, audio.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, nextRunAt.hashCode);
    _$hash = $jc(_$hash, lastRunAt.hashCode);
    _$hash = $jc(_$hash, lastRunStatus.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Briefing')
          ..add('name', name)
          ..add('enabled', enabled)
          ..add('schedule', schedule)
          ..add('timezone', timezone)
          ..add('scope', scope)
          ..add('lookback', lookback)
          ..add('mode', mode)
          ..add('instructions', instructions)
          ..add('channelIds', channelIds)
          ..add('maxItemsPerKind', maxItemsPerKind)
          ..add('audio', audio)
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('nextRunAt', nextRunAt)
          ..add('lastRunAt', lastRunAt)
          ..add('lastRunStatus', lastRunStatus)
          ..add('warnings', warnings))
        .toString();
  }
}

class BriefingBuilder implements Builder<Briefing, BriefingBuilder> {
  _$Briefing? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _schedule;
  String? get schedule => _$this._schedule;
  set schedule(String? schedule) => _$this._schedule = schedule;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  BriefingScopeBuilder? _scope;
  BriefingScopeBuilder get scope => _$this._scope ??= BriefingScopeBuilder();
  set scope(BriefingScopeBuilder? scope) => _$this._scope = scope;

  String? _lookback;
  String? get lookback => _$this._lookback;
  set lookback(String? lookback) => _$this._lookback = lookback;

  BriefingModeEnum? _mode;
  BriefingModeEnum? get mode => _$this._mode;
  set mode(BriefingModeEnum? mode) => _$this._mode = mode;

  String? _instructions;
  String? get instructions => _$this._instructions;
  set instructions(String? instructions) => _$this._instructions = instructions;

  ListBuilder<String>? _channelIds;
  ListBuilder<String> get channelIds =>
      _$this._channelIds ??= ListBuilder<String>();
  set channelIds(ListBuilder<String>? channelIds) =>
      _$this._channelIds = channelIds;

  int? _maxItemsPerKind;
  int? get maxItemsPerKind => _$this._maxItemsPerKind;
  set maxItemsPerKind(int? maxItemsPerKind) =>
      _$this._maxItemsPerKind = maxItemsPerKind;

  BriefingInputAudioBuilder? _audio;
  BriefingInputAudioBuilder get audio =>
      _$this._audio ??= BriefingInputAudioBuilder();
  set audio(BriefingInputAudioBuilder? audio) => _$this._audio = audio;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  DateTime? _nextRunAt;
  DateTime? get nextRunAt => _$this._nextRunAt;
  set nextRunAt(DateTime? nextRunAt) => _$this._nextRunAt = nextRunAt;

  DateTime? _lastRunAt;
  DateTime? get lastRunAt => _$this._lastRunAt;
  set lastRunAt(DateTime? lastRunAt) => _$this._lastRunAt = lastRunAt;

  String? _lastRunStatus;
  String? get lastRunStatus => _$this._lastRunStatus;
  set lastRunStatus(String? lastRunStatus) =>
      _$this._lastRunStatus = lastRunStatus;

  ListBuilder<String>? _warnings;
  ListBuilder<String> get warnings =>
      _$this._warnings ??= ListBuilder<String>();
  set warnings(ListBuilder<String>? warnings) => _$this._warnings = warnings;

  BriefingBuilder() {
    Briefing._defaults(this);
  }

  BriefingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _enabled = $v.enabled;
      _schedule = $v.schedule;
      _timezone = $v.timezone;
      _scope = $v.scope?.toBuilder();
      _lookback = $v.lookback;
      _mode = $v.mode;
      _instructions = $v.instructions;
      _channelIds = $v.channelIds?.toBuilder();
      _maxItemsPerKind = $v.maxItemsPerKind;
      _audio = $v.audio?.toBuilder();
      _id = $v.id;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _nextRunAt = $v.nextRunAt;
      _lastRunAt = $v.lastRunAt;
      _lastRunStatus = $v.lastRunStatus;
      _warnings = $v.warnings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Briefing other) {
    _$v = other as _$Briefing;
  }

  @override
  void update(void Function(BriefingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Briefing build() => _build();

  _$Briefing _build() {
    _$Briefing _$result;
    try {
      _$result = _$v ??
          _$Briefing._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'Briefing', 'name'),
            enabled: enabled,
            schedule: BuiltValueNullFieldError.checkNotNull(
                schedule, r'Briefing', 'schedule'),
            timezone: timezone,
            scope: _scope?.build(),
            lookback: lookback,
            mode: mode,
            instructions: instructions,
            channelIds: _channelIds?.build(),
            maxItemsPerKind: maxItemsPerKind,
            audio: _audio?.build(),
            id: BuiltValueNullFieldError.checkNotNull(id, r'Briefing', 'id'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'Briefing', 'createdAt'),
            updatedAt: updatedAt,
            nextRunAt: nextRunAt,
            lastRunAt: lastRunAt,
            lastRunStatus: lastRunStatus,
            warnings: _warnings?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'scope';
        _scope?.build();

        _$failedField = 'channelIds';
        _channelIds?.build();

        _$failedField = 'audio';
        _audio?.build();

        _$failedField = 'warnings';
        _warnings?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Briefing', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
