// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storm_track_payload_trend.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StormTrackPayloadTrendMaxDbzEnum
_$stormTrackPayloadTrendMaxDbzEnum_rising =
    const StormTrackPayloadTrendMaxDbzEnum._('rising');
const StormTrackPayloadTrendMaxDbzEnum
_$stormTrackPayloadTrendMaxDbzEnum_steady =
    const StormTrackPayloadTrendMaxDbzEnum._('steady');
const StormTrackPayloadTrendMaxDbzEnum
_$stormTrackPayloadTrendMaxDbzEnum_falling =
    const StormTrackPayloadTrendMaxDbzEnum._('falling');

StormTrackPayloadTrendMaxDbzEnum _$stormTrackPayloadTrendMaxDbzEnumValueOf(
  String name,
) {
  switch (name) {
    case 'rising':
      return _$stormTrackPayloadTrendMaxDbzEnum_rising;
    case 'steady':
      return _$stormTrackPayloadTrendMaxDbzEnum_steady;
    case 'falling':
      return _$stormTrackPayloadTrendMaxDbzEnum_falling;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StormTrackPayloadTrendMaxDbzEnum>
_$stormTrackPayloadTrendMaxDbzEnumValues =
    BuiltSet<StormTrackPayloadTrendMaxDbzEnum>(
      const <StormTrackPayloadTrendMaxDbzEnum>[
        _$stormTrackPayloadTrendMaxDbzEnum_rising,
        _$stormTrackPayloadTrendMaxDbzEnum_steady,
        _$stormTrackPayloadTrendMaxDbzEnum_falling,
      ],
    );

Serializer<StormTrackPayloadTrendMaxDbzEnum>
_$stormTrackPayloadTrendMaxDbzEnumSerializer =
    _$StormTrackPayloadTrendMaxDbzEnumSerializer();

class _$StormTrackPayloadTrendMaxDbzEnumSerializer
    implements PrimitiveSerializer<StormTrackPayloadTrendMaxDbzEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'rising': 'rising',
    'steady': 'steady',
    'falling': 'falling',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'rising': 'rising',
    'steady': 'steady',
    'falling': 'falling',
  };

  @override
  final Iterable<Type> types = const <Type>[StormTrackPayloadTrendMaxDbzEnum];
  @override
  final String wireName = 'StormTrackPayloadTrendMaxDbzEnum';

  @override
  Object serialize(
    Serializers serializers,
    StormTrackPayloadTrendMaxDbzEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  StormTrackPayloadTrendMaxDbzEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => StormTrackPayloadTrendMaxDbzEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$StormTrackPayloadTrend extends StormTrackPayloadTrend {
  @override
  final StormTrackPayloadTrendMaxDbzEnum? maxDbz;

  factory _$StormTrackPayloadTrend([
    void Function(StormTrackPayloadTrendBuilder)? updates,
  ]) => (StormTrackPayloadTrendBuilder()..update(updates))._build();

  _$StormTrackPayloadTrend._({this.maxDbz}) : super._();
  @override
  StormTrackPayloadTrend rebuild(
    void Function(StormTrackPayloadTrendBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  StormTrackPayloadTrendBuilder toBuilder() =>
      StormTrackPayloadTrendBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StormTrackPayloadTrend && maxDbz == other.maxDbz;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, maxDbz.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'StormTrackPayloadTrend',
    )..add('maxDbz', maxDbz)).toString();
  }
}

class StormTrackPayloadTrendBuilder
    implements Builder<StormTrackPayloadTrend, StormTrackPayloadTrendBuilder> {
  _$StormTrackPayloadTrend? _$v;

  StormTrackPayloadTrendMaxDbzEnum? _maxDbz;
  StormTrackPayloadTrendMaxDbzEnum? get maxDbz => _$this._maxDbz;
  set maxDbz(StormTrackPayloadTrendMaxDbzEnum? maxDbz) =>
      _$this._maxDbz = maxDbz;

  StormTrackPayloadTrendBuilder() {
    StormTrackPayloadTrend._defaults(this);
  }

  StormTrackPayloadTrendBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maxDbz = $v.maxDbz;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StormTrackPayloadTrend other) {
    _$v = other as _$StormTrackPayloadTrend;
  }

  @override
  void update(void Function(StormTrackPayloadTrendBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StormTrackPayloadTrend build() => _build();

  _$StormTrackPayloadTrend _build() {
    final _$result = _$v ?? _$StormTrackPayloadTrend._(maxDbz: maxDbz);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
