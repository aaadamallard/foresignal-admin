// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storm_track_payload_motion.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StormTrackPayloadMotionMethodEnum
_$stormTrackPayloadMotionMethodEnum_titanLiteV1 =
    const StormTrackPayloadMotionMethodEnum._('titanLiteV1');
const StormTrackPayloadMotionMethodEnum
_$stormTrackPayloadMotionMethodEnum_centroidV1 =
    const StormTrackPayloadMotionMethodEnum._('centroidV1');
const StormTrackPayloadMotionMethodEnum
_$stormTrackPayloadMotionMethodEnum_unknownDefaultOpenApi =
    const StormTrackPayloadMotionMethodEnum._('unknownDefaultOpenApi');

StormTrackPayloadMotionMethodEnum _$stormTrackPayloadMotionMethodEnumValueOf(
  String name,
) {
  switch (name) {
    case 'titanLiteV1':
      return _$stormTrackPayloadMotionMethodEnum_titanLiteV1;
    case 'centroidV1':
      return _$stormTrackPayloadMotionMethodEnum_centroidV1;
    case 'unknownDefaultOpenApi':
      return _$stormTrackPayloadMotionMethodEnum_unknownDefaultOpenApi;
    default:
      return _$stormTrackPayloadMotionMethodEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<StormTrackPayloadMotionMethodEnum>
_$stormTrackPayloadMotionMethodEnumValues =
    BuiltSet<StormTrackPayloadMotionMethodEnum>(
      const <StormTrackPayloadMotionMethodEnum>[
        _$stormTrackPayloadMotionMethodEnum_titanLiteV1,
        _$stormTrackPayloadMotionMethodEnum_centroidV1,
        _$stormTrackPayloadMotionMethodEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<StormTrackPayloadMotionMethodEnum>
_$stormTrackPayloadMotionMethodEnumSerializer =
    _$StormTrackPayloadMotionMethodEnumSerializer();

class _$StormTrackPayloadMotionMethodEnumSerializer
    implements PrimitiveSerializer<StormTrackPayloadMotionMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'titanLiteV1': 'titan-lite-v1',
    'centroidV1': 'centroid-v1',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'titan-lite-v1': 'titanLiteV1',
    'centroid-v1': 'centroidV1',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[StormTrackPayloadMotionMethodEnum];
  @override
  final String wireName = 'StormTrackPayloadMotionMethodEnum';

  @override
  Object serialize(
    Serializers serializers,
    StormTrackPayloadMotionMethodEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  StormTrackPayloadMotionMethodEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => StormTrackPayloadMotionMethodEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$StormTrackPayloadMotion extends StormTrackPayloadMotion {
  @override
  final num speedKmh;
  @override
  final num bearingDeg;
  @override
  final StormTrackPayloadMotionMethodEnum method;

  factory _$StormTrackPayloadMotion([
    void Function(StormTrackPayloadMotionBuilder)? updates,
  ]) => (StormTrackPayloadMotionBuilder()..update(updates))._build();

  _$StormTrackPayloadMotion._({
    required this.speedKmh,
    required this.bearingDeg,
    required this.method,
  }) : super._();
  @override
  StormTrackPayloadMotion rebuild(
    void Function(StormTrackPayloadMotionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  StormTrackPayloadMotionBuilder toBuilder() =>
      StormTrackPayloadMotionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StormTrackPayloadMotion &&
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
    return (newBuiltValueToStringHelper(r'StormTrackPayloadMotion')
          ..add('speedKmh', speedKmh)
          ..add('bearingDeg', bearingDeg)
          ..add('method', method))
        .toString();
  }
}

class StormTrackPayloadMotionBuilder
    implements
        Builder<StormTrackPayloadMotion, StormTrackPayloadMotionBuilder> {
  _$StormTrackPayloadMotion? _$v;

  num? _speedKmh;
  num? get speedKmh => _$this._speedKmh;
  set speedKmh(num? speedKmh) => _$this._speedKmh = speedKmh;

  num? _bearingDeg;
  num? get bearingDeg => _$this._bearingDeg;
  set bearingDeg(num? bearingDeg) => _$this._bearingDeg = bearingDeg;

  StormTrackPayloadMotionMethodEnum? _method;
  StormTrackPayloadMotionMethodEnum? get method => _$this._method;
  set method(StormTrackPayloadMotionMethodEnum? method) =>
      _$this._method = method;

  StormTrackPayloadMotionBuilder() {
    StormTrackPayloadMotion._defaults(this);
  }

  StormTrackPayloadMotionBuilder get _$this {
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
  void replace(StormTrackPayloadMotion other) {
    _$v = other as _$StormTrackPayloadMotion;
  }

  @override
  void update(void Function(StormTrackPayloadMotionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StormTrackPayloadMotion build() => _build();

  _$StormTrackPayloadMotion _build() {
    final _$result =
        _$v ??
        _$StormTrackPayloadMotion._(
          speedKmh: BuiltValueNullFieldError.checkNotNull(
            speedKmh,
            r'StormTrackPayloadMotion',
            'speedKmh',
          ),
          bearingDeg: BuiltValueNullFieldError.checkNotNull(
            bearingDeg,
            r'StormTrackPayloadMotion',
            'bearingDeg',
          ),
          method: BuiltValueNullFieldError.checkNotNull(
            method,
            r'StormTrackPayloadMotion',
            'method',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
