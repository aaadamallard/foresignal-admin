// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regional_index_def_components_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RegionalIndexDefComponentsInnerTransformEnum
_$regionalIndexDefComponentsInnerTransformEnum_log1p =
    const RegionalIndexDefComponentsInnerTransformEnum._('log1p');
const RegionalIndexDefComponentsInnerTransformEnum
_$regionalIndexDefComponentsInnerTransformEnum_zscore =
    const RegionalIndexDefComponentsInnerTransformEnum._('zscore');
const RegionalIndexDefComponentsInnerTransformEnum
_$regionalIndexDefComponentsInnerTransformEnum_pctrank =
    const RegionalIndexDefComponentsInnerTransformEnum._('pctrank');
const RegionalIndexDefComponentsInnerTransformEnum
_$regionalIndexDefComponentsInnerTransformEnum_level =
    const RegionalIndexDefComponentsInnerTransformEnum._('level');

RegionalIndexDefComponentsInnerTransformEnum
_$regionalIndexDefComponentsInnerTransformEnumValueOf(String name) {
  switch (name) {
    case 'log1p':
      return _$regionalIndexDefComponentsInnerTransformEnum_log1p;
    case 'zscore':
      return _$regionalIndexDefComponentsInnerTransformEnum_zscore;
    case 'pctrank':
      return _$regionalIndexDefComponentsInnerTransformEnum_pctrank;
    case 'level':
      return _$regionalIndexDefComponentsInnerTransformEnum_level;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RegionalIndexDefComponentsInnerTransformEnum>
_$regionalIndexDefComponentsInnerTransformEnumValues =
    BuiltSet<RegionalIndexDefComponentsInnerTransformEnum>(
      const <RegionalIndexDefComponentsInnerTransformEnum>[
        _$regionalIndexDefComponentsInnerTransformEnum_log1p,
        _$regionalIndexDefComponentsInnerTransformEnum_zscore,
        _$regionalIndexDefComponentsInnerTransformEnum_pctrank,
        _$regionalIndexDefComponentsInnerTransformEnum_level,
      ],
    );

const RegionalIndexDefComponentsInnerWindowEnum
_$regionalIndexDefComponentsInnerWindowEnum_P7D =
    const RegionalIndexDefComponentsInnerWindowEnum._('P7D');
const RegionalIndexDefComponentsInnerWindowEnum
_$regionalIndexDefComponentsInnerWindowEnum_P28D =
    const RegionalIndexDefComponentsInnerWindowEnum._('P28D');
const RegionalIndexDefComponentsInnerWindowEnum
_$regionalIndexDefComponentsInnerWindowEnum_P90D =
    const RegionalIndexDefComponentsInnerWindowEnum._('P90D');

RegionalIndexDefComponentsInnerWindowEnum
_$regionalIndexDefComponentsInnerWindowEnumValueOf(String name) {
  switch (name) {
    case 'P7D':
      return _$regionalIndexDefComponentsInnerWindowEnum_P7D;
    case 'P28D':
      return _$regionalIndexDefComponentsInnerWindowEnum_P28D;
    case 'P90D':
      return _$regionalIndexDefComponentsInnerWindowEnum_P90D;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RegionalIndexDefComponentsInnerWindowEnum>
_$regionalIndexDefComponentsInnerWindowEnumValues =
    BuiltSet<RegionalIndexDefComponentsInnerWindowEnum>(
      const <RegionalIndexDefComponentsInnerWindowEnum>[
        _$regionalIndexDefComponentsInnerWindowEnum_P7D,
        _$regionalIndexDefComponentsInnerWindowEnum_P28D,
        _$regionalIndexDefComponentsInnerWindowEnum_P90D,
      ],
    );

const RegionalIndexDefComponentsInnerDirectionEnum
_$regionalIndexDefComponentsInnerDirectionEnum_number1 =
    const RegionalIndexDefComponentsInnerDirectionEnum._('number1');
const RegionalIndexDefComponentsInnerDirectionEnum
_$regionalIndexDefComponentsInnerDirectionEnum_numberNegative1 =
    const RegionalIndexDefComponentsInnerDirectionEnum._('numberNegative1');

RegionalIndexDefComponentsInnerDirectionEnum
_$regionalIndexDefComponentsInnerDirectionEnumValueOf(String name) {
  switch (name) {
    case 'number1':
      return _$regionalIndexDefComponentsInnerDirectionEnum_number1;
    case 'numberNegative1':
      return _$regionalIndexDefComponentsInnerDirectionEnum_numberNegative1;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RegionalIndexDefComponentsInnerDirectionEnum>
_$regionalIndexDefComponentsInnerDirectionEnumValues =
    BuiltSet<RegionalIndexDefComponentsInnerDirectionEnum>(
      const <RegionalIndexDefComponentsInnerDirectionEnum>[
        _$regionalIndexDefComponentsInnerDirectionEnum_number1,
        _$regionalIndexDefComponentsInnerDirectionEnum_numberNegative1,
      ],
    );

Serializer<RegionalIndexDefComponentsInnerTransformEnum>
_$regionalIndexDefComponentsInnerTransformEnumSerializer =
    _$RegionalIndexDefComponentsInnerTransformEnumSerializer();
Serializer<RegionalIndexDefComponentsInnerWindowEnum>
_$regionalIndexDefComponentsInnerWindowEnumSerializer =
    _$RegionalIndexDefComponentsInnerWindowEnumSerializer();
Serializer<RegionalIndexDefComponentsInnerDirectionEnum>
_$regionalIndexDefComponentsInnerDirectionEnumSerializer =
    _$RegionalIndexDefComponentsInnerDirectionEnumSerializer();

class _$RegionalIndexDefComponentsInnerTransformEnumSerializer
    implements
        PrimitiveSerializer<RegionalIndexDefComponentsInnerTransformEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'log1p': 'log1p',
    'zscore': 'zscore',
    'pctrank': 'pctrank',
    'level': 'level',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'log1p': 'log1p',
    'zscore': 'zscore',
    'pctrank': 'pctrank',
    'level': 'level',
  };

  @override
  final Iterable<Type> types = const <Type>[
    RegionalIndexDefComponentsInnerTransformEnum,
  ];
  @override
  final String wireName = 'RegionalIndexDefComponentsInnerTransformEnum';

  @override
  Object serialize(
    Serializers serializers,
    RegionalIndexDefComponentsInnerTransformEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RegionalIndexDefComponentsInnerTransformEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RegionalIndexDefComponentsInnerTransformEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RegionalIndexDefComponentsInnerWindowEnumSerializer
    implements PrimitiveSerializer<RegionalIndexDefComponentsInnerWindowEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'P7D': 'P7D',
    'P28D': 'P28D',
    'P90D': 'P90D',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'P7D': 'P7D',
    'P28D': 'P28D',
    'P90D': 'P90D',
  };

  @override
  final Iterable<Type> types = const <Type>[
    RegionalIndexDefComponentsInnerWindowEnum,
  ];
  @override
  final String wireName = 'RegionalIndexDefComponentsInnerWindowEnum';

  @override
  Object serialize(
    Serializers serializers,
    RegionalIndexDefComponentsInnerWindowEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RegionalIndexDefComponentsInnerWindowEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RegionalIndexDefComponentsInnerWindowEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RegionalIndexDefComponentsInnerDirectionEnumSerializer
    implements
        PrimitiveSerializer<RegionalIndexDefComponentsInnerDirectionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number1': 1,
    'numberNegative1': -1,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    1: 'number1',
    -1: 'numberNegative1',
  };

  @override
  final Iterable<Type> types = const <Type>[
    RegionalIndexDefComponentsInnerDirectionEnum,
  ];
  @override
  final String wireName = 'RegionalIndexDefComponentsInnerDirectionEnum';

  @override
  Object serialize(
    Serializers serializers,
    RegionalIndexDefComponentsInnerDirectionEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RegionalIndexDefComponentsInnerDirectionEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RegionalIndexDefComponentsInnerDirectionEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RegionalIndexDefComponentsInner
    extends RegionalIndexDefComponentsInner {
  @override
  final String key;
  @override
  final String ref;
  @override
  final RegionalIndexDefComponentsInnerTransformEnum transform;
  @override
  final RegionalIndexDefComponentsInnerWindowEnum window;
  @override
  final RegionalIndexDefComponentsInnerDirectionEnum direction;
  @override
  final num? floor;

  factory _$RegionalIndexDefComponentsInner([
    void Function(RegionalIndexDefComponentsInnerBuilder)? updates,
  ]) => (RegionalIndexDefComponentsInnerBuilder()..update(updates))._build();

  _$RegionalIndexDefComponentsInner._({
    required this.key,
    required this.ref,
    required this.transform,
    required this.window,
    required this.direction,
    this.floor,
  }) : super._();
  @override
  RegionalIndexDefComponentsInner rebuild(
    void Function(RegionalIndexDefComponentsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RegionalIndexDefComponentsInnerBuilder toBuilder() =>
      RegionalIndexDefComponentsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegionalIndexDefComponentsInner &&
        key == other.key &&
        ref == other.ref &&
        transform == other.transform &&
        window == other.window &&
        direction == other.direction &&
        floor == other.floor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, transform.hashCode);
    _$hash = $jc(_$hash, window.hashCode);
    _$hash = $jc(_$hash, direction.hashCode);
    _$hash = $jc(_$hash, floor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegionalIndexDefComponentsInner')
          ..add('key', key)
          ..add('ref', ref)
          ..add('transform', transform)
          ..add('window', window)
          ..add('direction', direction)
          ..add('floor', floor))
        .toString();
  }
}

class RegionalIndexDefComponentsInnerBuilder
    implements
        Builder<
          RegionalIndexDefComponentsInner,
          RegionalIndexDefComponentsInnerBuilder
        > {
  _$RegionalIndexDefComponentsInner? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  RegionalIndexDefComponentsInnerTransformEnum? _transform;
  RegionalIndexDefComponentsInnerTransformEnum? get transform =>
      _$this._transform;
  set transform(RegionalIndexDefComponentsInnerTransformEnum? transform) =>
      _$this._transform = transform;

  RegionalIndexDefComponentsInnerWindowEnum? _window;
  RegionalIndexDefComponentsInnerWindowEnum? get window => _$this._window;
  set window(RegionalIndexDefComponentsInnerWindowEnum? window) =>
      _$this._window = window;

  RegionalIndexDefComponentsInnerDirectionEnum? _direction;
  RegionalIndexDefComponentsInnerDirectionEnum? get direction =>
      _$this._direction;
  set direction(RegionalIndexDefComponentsInnerDirectionEnum? direction) =>
      _$this._direction = direction;

  num? _floor;
  num? get floor => _$this._floor;
  set floor(num? floor) => _$this._floor = floor;

  RegionalIndexDefComponentsInnerBuilder() {
    RegionalIndexDefComponentsInner._defaults(this);
  }

  RegionalIndexDefComponentsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _ref = $v.ref;
      _transform = $v.transform;
      _window = $v.window;
      _direction = $v.direction;
      _floor = $v.floor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegionalIndexDefComponentsInner other) {
    _$v = other as _$RegionalIndexDefComponentsInner;
  }

  @override
  void update(void Function(RegionalIndexDefComponentsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegionalIndexDefComponentsInner build() => _build();

  _$RegionalIndexDefComponentsInner _build() {
    final _$result =
        _$v ??
        _$RegionalIndexDefComponentsInner._(
          key: BuiltValueNullFieldError.checkNotNull(
            key,
            r'RegionalIndexDefComponentsInner',
            'key',
          ),
          ref: BuiltValueNullFieldError.checkNotNull(
            ref,
            r'RegionalIndexDefComponentsInner',
            'ref',
          ),
          transform: BuiltValueNullFieldError.checkNotNull(
            transform,
            r'RegionalIndexDefComponentsInner',
            'transform',
          ),
          window: BuiltValueNullFieldError.checkNotNull(
            window,
            r'RegionalIndexDefComponentsInner',
            'window',
          ),
          direction: BuiltValueNullFieldError.checkNotNull(
            direction,
            r'RegionalIndexDefComponentsInner',
            'direction',
          ),
          floor: floor,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
