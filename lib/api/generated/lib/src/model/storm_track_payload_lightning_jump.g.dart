// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storm_track_payload_lightning_jump.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StormTrackPayloadLightningJumpMethodEnum
_$stormTrackPayloadLightningJumpMethodEnum_n2sigmaGlmV1 =
    const StormTrackPayloadLightningJumpMethodEnum._('n2sigmaGlmV1');

StormTrackPayloadLightningJumpMethodEnum
_$stormTrackPayloadLightningJumpMethodEnumValueOf(String name) {
  switch (name) {
    case 'n2sigmaGlmV1':
      return _$stormTrackPayloadLightningJumpMethodEnum_n2sigmaGlmV1;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StormTrackPayloadLightningJumpMethodEnum>
_$stormTrackPayloadLightningJumpMethodEnumValues =
    BuiltSet<StormTrackPayloadLightningJumpMethodEnum>(
      const <StormTrackPayloadLightningJumpMethodEnum>[
        _$stormTrackPayloadLightningJumpMethodEnum_n2sigmaGlmV1,
      ],
    );

Serializer<StormTrackPayloadLightningJumpMethodEnum>
_$stormTrackPayloadLightningJumpMethodEnumSerializer =
    _$StormTrackPayloadLightningJumpMethodEnumSerializer();

class _$StormTrackPayloadLightningJumpMethodEnumSerializer
    implements PrimitiveSerializer<StormTrackPayloadLightningJumpMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'n2sigmaGlmV1': '2sigma-glm-v1',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '2sigma-glm-v1': 'n2sigmaGlmV1',
  };

  @override
  final Iterable<Type> types = const <Type>[
    StormTrackPayloadLightningJumpMethodEnum,
  ];
  @override
  final String wireName = 'StormTrackPayloadLightningJumpMethodEnum';

  @override
  Object serialize(
    Serializers serializers,
    StormTrackPayloadLightningJumpMethodEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  StormTrackPayloadLightningJumpMethodEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => StormTrackPayloadLightningJumpMethodEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$StormTrackPayloadLightningJump extends StormTrackPayloadLightningJump {
  @override
  final DateTime at;
  @override
  final num? sigma;
  @override
  final num? rateFpm;
  @override
  final StormTrackPayloadLightningJumpMethodEnum method;

  factory _$StormTrackPayloadLightningJump([
    void Function(StormTrackPayloadLightningJumpBuilder)? updates,
  ]) => (StormTrackPayloadLightningJumpBuilder()..update(updates))._build();

  _$StormTrackPayloadLightningJump._({
    required this.at,
    this.sigma,
    this.rateFpm,
    required this.method,
  }) : super._();
  @override
  StormTrackPayloadLightningJump rebuild(
    void Function(StormTrackPayloadLightningJumpBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  StormTrackPayloadLightningJumpBuilder toBuilder() =>
      StormTrackPayloadLightningJumpBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StormTrackPayloadLightningJump &&
        at == other.at &&
        sigma == other.sigma &&
        rateFpm == other.rateFpm &&
        method == other.method;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jc(_$hash, sigma.hashCode);
    _$hash = $jc(_$hash, rateFpm.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StormTrackPayloadLightningJump')
          ..add('at', at)
          ..add('sigma', sigma)
          ..add('rateFpm', rateFpm)
          ..add('method', method))
        .toString();
  }
}

class StormTrackPayloadLightningJumpBuilder
    implements
        Builder<
          StormTrackPayloadLightningJump,
          StormTrackPayloadLightningJumpBuilder
        > {
  _$StormTrackPayloadLightningJump? _$v;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  num? _sigma;
  num? get sigma => _$this._sigma;
  set sigma(num? sigma) => _$this._sigma = sigma;

  num? _rateFpm;
  num? get rateFpm => _$this._rateFpm;
  set rateFpm(num? rateFpm) => _$this._rateFpm = rateFpm;

  StormTrackPayloadLightningJumpMethodEnum? _method;
  StormTrackPayloadLightningJumpMethodEnum? get method => _$this._method;
  set method(StormTrackPayloadLightningJumpMethodEnum? method) =>
      _$this._method = method;

  StormTrackPayloadLightningJumpBuilder() {
    StormTrackPayloadLightningJump._defaults(this);
  }

  StormTrackPayloadLightningJumpBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _at = $v.at;
      _sigma = $v.sigma;
      _rateFpm = $v.rateFpm;
      _method = $v.method;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StormTrackPayloadLightningJump other) {
    _$v = other as _$StormTrackPayloadLightningJump;
  }

  @override
  void update(void Function(StormTrackPayloadLightningJumpBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StormTrackPayloadLightningJump build() => _build();

  _$StormTrackPayloadLightningJump _build() {
    final _$result =
        _$v ??
        _$StormTrackPayloadLightningJump._(
          at: BuiltValueNullFieldError.checkNotNull(
            at,
            r'StormTrackPayloadLightningJump',
            'at',
          ),
          sigma: sigma,
          rateFpm: rateFpm,
          method: BuiltValueNullFieldError.checkNotNull(
            method,
            r'StormTrackPayloadLightningJump',
            'method',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
