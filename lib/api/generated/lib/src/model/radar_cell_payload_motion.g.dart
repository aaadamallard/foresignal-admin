// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'radar_cell_payload_motion.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RadarCellPayloadMotionMethodEnum
_$radarCellPayloadMotionMethodEnum_centroidV1 =
    const RadarCellPayloadMotionMethodEnum._('centroidV1');
const RadarCellPayloadMotionMethodEnum
_$radarCellPayloadMotionMethodEnum_unknownDefaultOpenApi =
    const RadarCellPayloadMotionMethodEnum._('unknownDefaultOpenApi');

RadarCellPayloadMotionMethodEnum _$radarCellPayloadMotionMethodEnumValueOf(
  String name,
) {
  switch (name) {
    case 'centroidV1':
      return _$radarCellPayloadMotionMethodEnum_centroidV1;
    case 'unknownDefaultOpenApi':
      return _$radarCellPayloadMotionMethodEnum_unknownDefaultOpenApi;
    default:
      return _$radarCellPayloadMotionMethodEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RadarCellPayloadMotionMethodEnum>
_$radarCellPayloadMotionMethodEnumValues =
    BuiltSet<RadarCellPayloadMotionMethodEnum>(
      const <RadarCellPayloadMotionMethodEnum>[
        _$radarCellPayloadMotionMethodEnum_centroidV1,
        _$radarCellPayloadMotionMethodEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<RadarCellPayloadMotionMethodEnum>
_$radarCellPayloadMotionMethodEnumSerializer =
    _$RadarCellPayloadMotionMethodEnumSerializer();

class _$RadarCellPayloadMotionMethodEnumSerializer
    implements PrimitiveSerializer<RadarCellPayloadMotionMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'centroidV1': 'centroid-v1',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'centroid-v1': 'centroidV1',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[RadarCellPayloadMotionMethodEnum];
  @override
  final String wireName = 'RadarCellPayloadMotionMethodEnum';

  @override
  Object serialize(
    Serializers serializers,
    RadarCellPayloadMotionMethodEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RadarCellPayloadMotionMethodEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RadarCellPayloadMotionMethodEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RadarCellPayloadMotion extends RadarCellPayloadMotion {
  @override
  final num? speedKmh;
  @override
  final int? bearingDeg;
  @override
  final RadarCellPayloadMotionMethodEnum method;

  factory _$RadarCellPayloadMotion([
    void Function(RadarCellPayloadMotionBuilder)? updates,
  ]) => (RadarCellPayloadMotionBuilder()..update(updates))._build();

  _$RadarCellPayloadMotion._({
    this.speedKmh,
    this.bearingDeg,
    required this.method,
  }) : super._();
  @override
  RadarCellPayloadMotion rebuild(
    void Function(RadarCellPayloadMotionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RadarCellPayloadMotionBuilder toBuilder() =>
      RadarCellPayloadMotionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RadarCellPayloadMotion &&
        speedKmh == other.speedKmh &&
        bearingDeg == other.bearingDeg &&
        method == other.method;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, speedKmh.hashCode);
    _$hash = $jc(_$hash, bearingDeg.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RadarCellPayloadMotion')
          ..add('speedKmh', speedKmh)
          ..add('bearingDeg', bearingDeg)
          ..add('method', method))
        .toString();
  }
}

class RadarCellPayloadMotionBuilder
    implements Builder<RadarCellPayloadMotion, RadarCellPayloadMotionBuilder> {
  _$RadarCellPayloadMotion? _$v;

  num? _speedKmh;
  num? get speedKmh => _$this._speedKmh;
  set speedKmh(num? speedKmh) => _$this._speedKmh = speedKmh;

  int? _bearingDeg;
  int? get bearingDeg => _$this._bearingDeg;
  set bearingDeg(int? bearingDeg) => _$this._bearingDeg = bearingDeg;

  RadarCellPayloadMotionMethodEnum? _method;
  RadarCellPayloadMotionMethodEnum? get method => _$this._method;
  set method(RadarCellPayloadMotionMethodEnum? method) =>
      _$this._method = method;

  RadarCellPayloadMotionBuilder() {
    RadarCellPayloadMotion._defaults(this);
  }

  RadarCellPayloadMotionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _speedKmh = $v.speedKmh;
      _bearingDeg = $v.bearingDeg;
      _method = $v.method;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RadarCellPayloadMotion other) {
    _$v = other as _$RadarCellPayloadMotion;
  }

  @override
  void update(void Function(RadarCellPayloadMotionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RadarCellPayloadMotion build() => _build();

  _$RadarCellPayloadMotion _build() {
    final _$result =
        _$v ??
        _$RadarCellPayloadMotion._(
          speedKmh: speedKmh,
          bearingDeg: bearingDeg,
          method: BuiltValueNullFieldError.checkNotNull(
            method,
            r'RadarCellPayloadMotion',
            'method',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
