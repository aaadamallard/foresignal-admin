// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'window_state_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WindowStatePayloadTypeEnum _$windowStatePayloadTypeEnum_count =
    const WindowStatePayloadTypeEnum._('count');
const WindowStatePayloadTypeEnum _$windowStatePayloadTypeEnum_absence =
    const WindowStatePayloadTypeEnum._('absence');
const WindowStatePayloadTypeEnum _$windowStatePayloadTypeEnum_anomaly =
    const WindowStatePayloadTypeEnum._('anomaly');

WindowStatePayloadTypeEnum _$windowStatePayloadTypeEnumValueOf(String name) {
  switch (name) {
    case 'count':
      return _$windowStatePayloadTypeEnum_count;
    case 'absence':
      return _$windowStatePayloadTypeEnum_absence;
    case 'anomaly':
      return _$windowStatePayloadTypeEnum_anomaly;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<WindowStatePayloadTypeEnum> _$windowStatePayloadTypeEnumValues =
    BuiltSet<WindowStatePayloadTypeEnum>(const <WindowStatePayloadTypeEnum>[
      _$windowStatePayloadTypeEnum_count,
      _$windowStatePayloadTypeEnum_absence,
      _$windowStatePayloadTypeEnum_anomaly,
    ]);

const WindowStatePayloadStateEnum _$windowStatePayloadStateEnum_active =
    const WindowStatePayloadStateEnum._('active');
const WindowStatePayloadStateEnum _$windowStatePayloadStateEnum_clear =
    const WindowStatePayloadStateEnum._('clear');
const WindowStatePayloadStateEnum _$windowStatePayloadStateEnum_unknown =
    const WindowStatePayloadStateEnum._('unknown');
const WindowStatePayloadStateEnum _$windowStatePayloadStateEnum_learning =
    const WindowStatePayloadStateEnum._('learning');

WindowStatePayloadStateEnum _$windowStatePayloadStateEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$windowStatePayloadStateEnum_active;
    case 'clear':
      return _$windowStatePayloadStateEnum_clear;
    case 'unknown':
      return _$windowStatePayloadStateEnum_unknown;
    case 'learning':
      return _$windowStatePayloadStateEnum_learning;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<WindowStatePayloadStateEnum>
_$windowStatePayloadStateEnumValues =
    BuiltSet<WindowStatePayloadStateEnum>(const <WindowStatePayloadStateEnum>[
      _$windowStatePayloadStateEnum_active,
      _$windowStatePayloadStateEnum_clear,
      _$windowStatePayloadStateEnum_unknown,
      _$windowStatePayloadStateEnum_learning,
    ]);

Serializer<WindowStatePayloadTypeEnum> _$windowStatePayloadTypeEnumSerializer =
    _$WindowStatePayloadTypeEnumSerializer();
Serializer<WindowStatePayloadStateEnum>
_$windowStatePayloadStateEnumSerializer =
    _$WindowStatePayloadStateEnumSerializer();

class _$WindowStatePayloadTypeEnumSerializer
    implements PrimitiveSerializer<WindowStatePayloadTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'count': 'count',
    'absence': 'absence',
    'anomaly': 'anomaly',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'count': 'count',
    'absence': 'absence',
    'anomaly': 'anomaly',
  };

  @override
  final Iterable<Type> types = const <Type>[WindowStatePayloadTypeEnum];
  @override
  final String wireName = 'WindowStatePayloadTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    WindowStatePayloadTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  WindowStatePayloadTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => WindowStatePayloadTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$WindowStatePayloadStateEnumSerializer
    implements PrimitiveSerializer<WindowStatePayloadStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'clear': 'clear',
    'unknown': 'unknown',
    'learning': 'learning',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'clear': 'clear',
    'unknown': 'unknown',
    'learning': 'learning',
  };

  @override
  final Iterable<Type> types = const <Type>[WindowStatePayloadStateEnum];
  @override
  final String wireName = 'WindowStatePayloadStateEnum';

  @override
  Object serialize(
    Serializers serializers,
    WindowStatePayloadStateEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  WindowStatePayloadStateEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => WindowStatePayloadStateEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$WindowStatePayload extends WindowStatePayload {
  @override
  final String ruleId;
  @override
  final String? name;
  @override
  final WindowStatePayloadTypeEnum type;
  @override
  final String groupKey;
  @override
  final WindowStatePayloadStateEnum state;
  @override
  final num? value;
  @override
  final num? threshold;
  @override
  final String? reason;
  @override
  final DetectorRef? detector;
  @override
  final bool? automated;

  factory _$WindowStatePayload([
    void Function(WindowStatePayloadBuilder)? updates,
  ]) => (WindowStatePayloadBuilder()..update(updates))._build();

  _$WindowStatePayload._({
    required this.ruleId,
    this.name,
    required this.type,
    required this.groupKey,
    required this.state,
    this.value,
    this.threshold,
    this.reason,
    this.detector,
    this.automated,
  }) : super._();
  @override
  WindowStatePayload rebuild(
    void Function(WindowStatePayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  WindowStatePayloadBuilder toBuilder() =>
      WindowStatePayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WindowStatePayload &&
        ruleId == other.ruleId &&
        name == other.name &&
        type == other.type &&
        groupKey == other.groupKey &&
        state == other.state &&
        value == other.value &&
        threshold == other.threshold &&
        reason == other.reason &&
        detector == other.detector &&
        automated == other.automated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ruleId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, groupKey.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, threshold.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, detector.hashCode);
    _$hash = $jc(_$hash, automated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WindowStatePayload')
          ..add('ruleId', ruleId)
          ..add('name', name)
          ..add('type', type)
          ..add('groupKey', groupKey)
          ..add('state', state)
          ..add('value', value)
          ..add('threshold', threshold)
          ..add('reason', reason)
          ..add('detector', detector)
          ..add('automated', automated))
        .toString();
  }
}

class WindowStatePayloadBuilder
    implements Builder<WindowStatePayload, WindowStatePayloadBuilder> {
  _$WindowStatePayload? _$v;

  String? _ruleId;
  String? get ruleId => _$this._ruleId;
  set ruleId(String? ruleId) => _$this._ruleId = ruleId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  WindowStatePayloadTypeEnum? _type;
  WindowStatePayloadTypeEnum? get type => _$this._type;
  set type(WindowStatePayloadTypeEnum? type) => _$this._type = type;

  String? _groupKey;
  String? get groupKey => _$this._groupKey;
  set groupKey(String? groupKey) => _$this._groupKey = groupKey;

  WindowStatePayloadStateEnum? _state;
  WindowStatePayloadStateEnum? get state => _$this._state;
  set state(WindowStatePayloadStateEnum? state) => _$this._state = state;

  num? _value;
  num? get value => _$this._value;
  set value(num? value) => _$this._value = value;

  num? _threshold;
  num? get threshold => _$this._threshold;
  set threshold(num? threshold) => _$this._threshold = threshold;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  DetectorRefBuilder? _detector;
  DetectorRefBuilder get detector => _$this._detector ??= DetectorRefBuilder();
  set detector(DetectorRefBuilder? detector) => _$this._detector = detector;

  bool? _automated;
  bool? get automated => _$this._automated;
  set automated(bool? automated) => _$this._automated = automated;

  WindowStatePayloadBuilder() {
    WindowStatePayload._defaults(this);
  }

  WindowStatePayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ruleId = $v.ruleId;
      _name = $v.name;
      _type = $v.type;
      _groupKey = $v.groupKey;
      _state = $v.state;
      _value = $v.value;
      _threshold = $v.threshold;
      _reason = $v.reason;
      _detector = $v.detector?.toBuilder();
      _automated = $v.automated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WindowStatePayload other) {
    _$v = other as _$WindowStatePayload;
  }

  @override
  void update(void Function(WindowStatePayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WindowStatePayload build() => _build();

  _$WindowStatePayload _build() {
    _$WindowStatePayload _$result;
    try {
      _$result =
          _$v ??
          _$WindowStatePayload._(
            ruleId: BuiltValueNullFieldError.checkNotNull(
              ruleId,
              r'WindowStatePayload',
              'ruleId',
            ),
            name: name,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'WindowStatePayload',
              'type',
            ),
            groupKey: BuiltValueNullFieldError.checkNotNull(
              groupKey,
              r'WindowStatePayload',
              'groupKey',
            ),
            state: BuiltValueNullFieldError.checkNotNull(
              state,
              r'WindowStatePayload',
              'state',
            ),
            value: value,
            threshold: threshold,
            reason: reason,
            detector: _detector?.build(),
            automated: automated,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'detector';
        _detector?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'WindowStatePayload',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
