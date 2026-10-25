// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anomaly_window.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AnomalyWindowBucketEnum _$anomalyWindowBucketEnum_n15m =
    const AnomalyWindowBucketEnum._('n15m');
const AnomalyWindowBucketEnum _$anomalyWindowBucketEnum_n1h =
    const AnomalyWindowBucketEnum._('n1h');
const AnomalyWindowBucketEnum _$anomalyWindowBucketEnum_unknownDefaultOpenApi =
    const AnomalyWindowBucketEnum._('unknownDefaultOpenApi');

AnomalyWindowBucketEnum _$anomalyWindowBucketEnumValueOf(String name) {
  switch (name) {
    case 'n15m':
      return _$anomalyWindowBucketEnum_n15m;
    case 'n1h':
      return _$anomalyWindowBucketEnum_n1h;
    case 'unknownDefaultOpenApi':
      return _$anomalyWindowBucketEnum_unknownDefaultOpenApi;
    default:
      return _$anomalyWindowBucketEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AnomalyWindowBucketEnum> _$anomalyWindowBucketEnumValues =
    BuiltSet<AnomalyWindowBucketEnum>(const <AnomalyWindowBucketEnum>[
      _$anomalyWindowBucketEnum_n15m,
      _$anomalyWindowBucketEnum_n1h,
      _$anomalyWindowBucketEnum_unknownDefaultOpenApi,
    ]);

const AnomalyWindowSlotModeEnum _$anomalyWindowSlotModeEnum_hourOfWeek =
    const AnomalyWindowSlotModeEnum._('hourOfWeek');
const AnomalyWindowSlotModeEnum _$anomalyWindowSlotModeEnum_hourOfDay =
    const AnomalyWindowSlotModeEnum._('hourOfDay');
const AnomalyWindowSlotModeEnum
_$anomalyWindowSlotModeEnum_unknownDefaultOpenApi =
    const AnomalyWindowSlotModeEnum._('unknownDefaultOpenApi');

AnomalyWindowSlotModeEnum _$anomalyWindowSlotModeEnumValueOf(String name) {
  switch (name) {
    case 'hourOfWeek':
      return _$anomalyWindowSlotModeEnum_hourOfWeek;
    case 'hourOfDay':
      return _$anomalyWindowSlotModeEnum_hourOfDay;
    case 'unknownDefaultOpenApi':
      return _$anomalyWindowSlotModeEnum_unknownDefaultOpenApi;
    default:
      return _$anomalyWindowSlotModeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AnomalyWindowSlotModeEnum> _$anomalyWindowSlotModeEnumValues =
    BuiltSet<AnomalyWindowSlotModeEnum>(const <AnomalyWindowSlotModeEnum>[
      _$anomalyWindowSlotModeEnum_hourOfWeek,
      _$anomalyWindowSlotModeEnum_hourOfDay,
      _$anomalyWindowSlotModeEnum_unknownDefaultOpenApi,
    ]);

const AnomalyWindowDirectionEnum _$anomalyWindowDirectionEnum_up =
    const AnomalyWindowDirectionEnum._('up');
const AnomalyWindowDirectionEnum _$anomalyWindowDirectionEnum_down =
    const AnomalyWindowDirectionEnum._('down');
const AnomalyWindowDirectionEnum _$anomalyWindowDirectionEnum_both =
    const AnomalyWindowDirectionEnum._('both');
const AnomalyWindowDirectionEnum
_$anomalyWindowDirectionEnum_unknownDefaultOpenApi =
    const AnomalyWindowDirectionEnum._('unknownDefaultOpenApi');

AnomalyWindowDirectionEnum _$anomalyWindowDirectionEnumValueOf(String name) {
  switch (name) {
    case 'up':
      return _$anomalyWindowDirectionEnum_up;
    case 'down':
      return _$anomalyWindowDirectionEnum_down;
    case 'both':
      return _$anomalyWindowDirectionEnum_both;
    case 'unknownDefaultOpenApi':
      return _$anomalyWindowDirectionEnum_unknownDefaultOpenApi;
    default:
      return _$anomalyWindowDirectionEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AnomalyWindowDirectionEnum> _$anomalyWindowDirectionEnumValues =
    BuiltSet<AnomalyWindowDirectionEnum>(const <AnomalyWindowDirectionEnum>[
      _$anomalyWindowDirectionEnum_up,
      _$anomalyWindowDirectionEnum_down,
      _$anomalyWindowDirectionEnum_both,
      _$anomalyWindowDirectionEnum_unknownDefaultOpenApi,
    ]);

const AnomalyWindowSensitivityEnum _$anomalyWindowSensitivityEnum_low =
    const AnomalyWindowSensitivityEnum._('low');
const AnomalyWindowSensitivityEnum _$anomalyWindowSensitivityEnum_medium =
    const AnomalyWindowSensitivityEnum._('medium');
const AnomalyWindowSensitivityEnum _$anomalyWindowSensitivityEnum_high =
    const AnomalyWindowSensitivityEnum._('high');
const AnomalyWindowSensitivityEnum
_$anomalyWindowSensitivityEnum_unknownDefaultOpenApi =
    const AnomalyWindowSensitivityEnum._('unknownDefaultOpenApi');

AnomalyWindowSensitivityEnum _$anomalyWindowSensitivityEnumValueOf(
  String name,
) {
  switch (name) {
    case 'low':
      return _$anomalyWindowSensitivityEnum_low;
    case 'medium':
      return _$anomalyWindowSensitivityEnum_medium;
    case 'high':
      return _$anomalyWindowSensitivityEnum_high;
    case 'unknownDefaultOpenApi':
      return _$anomalyWindowSensitivityEnum_unknownDefaultOpenApi;
    default:
      return _$anomalyWindowSensitivityEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AnomalyWindowSensitivityEnum>
_$anomalyWindowSensitivityEnumValues =
    BuiltSet<AnomalyWindowSensitivityEnum>(const <AnomalyWindowSensitivityEnum>[
      _$anomalyWindowSensitivityEnum_low,
      _$anomalyWindowSensitivityEnum_medium,
      _$anomalyWindowSensitivityEnum_high,
      _$anomalyWindowSensitivityEnum_unknownDefaultOpenApi,
    ]);

Serializer<AnomalyWindowBucketEnum> _$anomalyWindowBucketEnumSerializer =
    _$AnomalyWindowBucketEnumSerializer();
Serializer<AnomalyWindowSlotModeEnum> _$anomalyWindowSlotModeEnumSerializer =
    _$AnomalyWindowSlotModeEnumSerializer();
Serializer<AnomalyWindowDirectionEnum> _$anomalyWindowDirectionEnumSerializer =
    _$AnomalyWindowDirectionEnumSerializer();
Serializer<AnomalyWindowSensitivityEnum>
_$anomalyWindowSensitivityEnumSerializer =
    _$AnomalyWindowSensitivityEnumSerializer();

class _$AnomalyWindowBucketEnumSerializer
    implements PrimitiveSerializer<AnomalyWindowBucketEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'n15m': '15m',
    'n1h': '1h',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '15m': 'n15m',
    '1h': 'n1h',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AnomalyWindowBucketEnum];
  @override
  final String wireName = 'AnomalyWindowBucketEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnomalyWindowBucketEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnomalyWindowBucketEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnomalyWindowBucketEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnomalyWindowSlotModeEnumSerializer
    implements PrimitiveSerializer<AnomalyWindowSlotModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'hourOfWeek': 'hour-of-week',
    'hourOfDay': 'hour-of-day',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'hour-of-week': 'hourOfWeek',
    'hour-of-day': 'hourOfDay',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AnomalyWindowSlotModeEnum];
  @override
  final String wireName = 'AnomalyWindowSlotModeEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnomalyWindowSlotModeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnomalyWindowSlotModeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnomalyWindowSlotModeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnomalyWindowDirectionEnumSerializer
    implements PrimitiveSerializer<AnomalyWindowDirectionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'up': 'up',
    'down': 'down',
    'both': 'both',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'up': 'up',
    'down': 'down',
    'both': 'both',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AnomalyWindowDirectionEnum];
  @override
  final String wireName = 'AnomalyWindowDirectionEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnomalyWindowDirectionEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnomalyWindowDirectionEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnomalyWindowDirectionEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnomalyWindowSensitivityEnumSerializer
    implements PrimitiveSerializer<AnomalyWindowSensitivityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'low': 'low',
    'medium': 'medium',
    'high': 'high',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'low': 'low',
    'medium': 'medium',
    'high': 'high',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AnomalyWindowSensitivityEnum];
  @override
  final String wireName = 'AnomalyWindowSensitivityEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnomalyWindowSensitivityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnomalyWindowSensitivityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnomalyWindowSensitivityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnomalyWindow extends AnomalyWindow {
  @override
  final String window;
  @override
  final String? step;
  @override
  final String? distinctBy;
  @override
  final String? groupBy;
  @override
  final int? maxGroups;
  @override
  final AnomalyWindowBucketEnum? bucket;
  @override
  final AnomalyWindowSlotModeEnum? slotMode;
  @override
  final AnomalyWindowDirectionEnum? direction;
  @override
  final AnomalyWindowSensitivityEnum? sensitivity;
  @override
  final num? minAbsoluteDelta;
  @override
  final int? minWeeks;
  @override
  final num? coverageMin;

  factory _$AnomalyWindow([void Function(AnomalyWindowBuilder)? updates]) =>
      (AnomalyWindowBuilder()..update(updates))._build();

  _$AnomalyWindow._({
    required this.window,
    this.step,
    this.distinctBy,
    this.groupBy,
    this.maxGroups,
    this.bucket,
    this.slotMode,
    this.direction,
    this.sensitivity,
    this.minAbsoluteDelta,
    this.minWeeks,
    this.coverageMin,
  }) : super._();
  @override
  AnomalyWindow rebuild(void Function(AnomalyWindowBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnomalyWindowBuilder toBuilder() => AnomalyWindowBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnomalyWindow &&
        window == other.window &&
        step == other.step &&
        distinctBy == other.distinctBy &&
        groupBy == other.groupBy &&
        maxGroups == other.maxGroups &&
        bucket == other.bucket &&
        slotMode == other.slotMode &&
        direction == other.direction &&
        sensitivity == other.sensitivity &&
        minAbsoluteDelta == other.minAbsoluteDelta &&
        minWeeks == other.minWeeks &&
        coverageMin == other.coverageMin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, window.hashCode);
    _$hash = $jc(_$hash, step.hashCode);
    _$hash = $jc(_$hash, distinctBy.hashCode);
    _$hash = $jc(_$hash, groupBy.hashCode);
    _$hash = $jc(_$hash, maxGroups.hashCode);
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, slotMode.hashCode);
    _$hash = $jc(_$hash, direction.hashCode);
    _$hash = $jc(_$hash, sensitivity.hashCode);
    _$hash = $jc(_$hash, minAbsoluteDelta.hashCode);
    _$hash = $jc(_$hash, minWeeks.hashCode);
    _$hash = $jc(_$hash, coverageMin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnomalyWindow')
          ..add('window', window)
          ..add('step', step)
          ..add('distinctBy', distinctBy)
          ..add('groupBy', groupBy)
          ..add('maxGroups', maxGroups)
          ..add('bucket', bucket)
          ..add('slotMode', slotMode)
          ..add('direction', direction)
          ..add('sensitivity', sensitivity)
          ..add('minAbsoluteDelta', minAbsoluteDelta)
          ..add('minWeeks', minWeeks)
          ..add('coverageMin', coverageMin))
        .toString();
  }
}

class AnomalyWindowBuilder
    implements Builder<AnomalyWindow, AnomalyWindowBuilder> {
  _$AnomalyWindow? _$v;

  String? _window;
  String? get window => _$this._window;
  set window(String? window) => _$this._window = window;

  String? _step;
  String? get step => _$this._step;
  set step(String? step) => _$this._step = step;

  String? _distinctBy;
  String? get distinctBy => _$this._distinctBy;
  set distinctBy(String? distinctBy) => _$this._distinctBy = distinctBy;

  String? _groupBy;
  String? get groupBy => _$this._groupBy;
  set groupBy(String? groupBy) => _$this._groupBy = groupBy;

  int? _maxGroups;
  int? get maxGroups => _$this._maxGroups;
  set maxGroups(int? maxGroups) => _$this._maxGroups = maxGroups;

  AnomalyWindowBucketEnum? _bucket;
  AnomalyWindowBucketEnum? get bucket => _$this._bucket;
  set bucket(AnomalyWindowBucketEnum? bucket) => _$this._bucket = bucket;

  AnomalyWindowSlotModeEnum? _slotMode;
  AnomalyWindowSlotModeEnum? get slotMode => _$this._slotMode;
  set slotMode(AnomalyWindowSlotModeEnum? slotMode) =>
      _$this._slotMode = slotMode;

  AnomalyWindowDirectionEnum? _direction;
  AnomalyWindowDirectionEnum? get direction => _$this._direction;
  set direction(AnomalyWindowDirectionEnum? direction) =>
      _$this._direction = direction;

  AnomalyWindowSensitivityEnum? _sensitivity;
  AnomalyWindowSensitivityEnum? get sensitivity => _$this._sensitivity;
  set sensitivity(AnomalyWindowSensitivityEnum? sensitivity) =>
      _$this._sensitivity = sensitivity;

  num? _minAbsoluteDelta;
  num? get minAbsoluteDelta => _$this._minAbsoluteDelta;
  set minAbsoluteDelta(num? minAbsoluteDelta) =>
      _$this._minAbsoluteDelta = minAbsoluteDelta;

  int? _minWeeks;
  int? get minWeeks => _$this._minWeeks;
  set minWeeks(int? minWeeks) => _$this._minWeeks = minWeeks;

  num? _coverageMin;
  num? get coverageMin => _$this._coverageMin;
  set coverageMin(num? coverageMin) => _$this._coverageMin = coverageMin;

  AnomalyWindowBuilder() {
    AnomalyWindow._defaults(this);
  }

  AnomalyWindowBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _window = $v.window;
      _step = $v.step;
      _distinctBy = $v.distinctBy;
      _groupBy = $v.groupBy;
      _maxGroups = $v.maxGroups;
      _bucket = $v.bucket;
      _slotMode = $v.slotMode;
      _direction = $v.direction;
      _sensitivity = $v.sensitivity;
      _minAbsoluteDelta = $v.minAbsoluteDelta;
      _minWeeks = $v.minWeeks;
      _coverageMin = $v.coverageMin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnomalyWindow other) {
    _$v = other as _$AnomalyWindow;
  }

  @override
  void update(void Function(AnomalyWindowBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnomalyWindow build() => _build();

  _$AnomalyWindow _build() {
    final _$result =
        _$v ??
        _$AnomalyWindow._(
          window: BuiltValueNullFieldError.checkNotNull(
            window,
            r'AnomalyWindow',
            'window',
          ),
          step: step,
          distinctBy: distinctBy,
          groupBy: groupBy,
          maxGroups: maxGroups,
          bucket: bucket,
          slotMode: slotMode,
          direction: direction,
          sensitivity: sensitivity,
          minAbsoluteDelta: minAbsoluteDelta,
          minWeeks: minWeeks,
          coverageMin: coverageMin,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
