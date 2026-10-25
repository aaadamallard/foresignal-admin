// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lightning_cluster_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LightningClusterPayloadFlashes5mEnum
_$lightningClusterPayloadFlashes5mEnum_number3 =
    const LightningClusterPayloadFlashes5mEnum._('number3');
const LightningClusterPayloadFlashes5mEnum
_$lightningClusterPayloadFlashes5mEnum_number5 =
    const LightningClusterPayloadFlashes5mEnum._('number5');
const LightningClusterPayloadFlashes5mEnum
_$lightningClusterPayloadFlashes5mEnum_number10 =
    const LightningClusterPayloadFlashes5mEnum._('number10');
const LightningClusterPayloadFlashes5mEnum
_$lightningClusterPayloadFlashes5mEnum_number20 =
    const LightningClusterPayloadFlashes5mEnum._('number20');
const LightningClusterPayloadFlashes5mEnum
_$lightningClusterPayloadFlashes5mEnum_number50 =
    const LightningClusterPayloadFlashes5mEnum._('number50');
const LightningClusterPayloadFlashes5mEnum
_$lightningClusterPayloadFlashes5mEnum_number100 =
    const LightningClusterPayloadFlashes5mEnum._('number100');
const LightningClusterPayloadFlashes5mEnum
_$lightningClusterPayloadFlashes5mEnum_number200 =
    const LightningClusterPayloadFlashes5mEnum._('number200');
const LightningClusterPayloadFlashes5mEnum
_$lightningClusterPayloadFlashes5mEnum_unknownDefaultOpenApi =
    const LightningClusterPayloadFlashes5mEnum._('unknownDefaultOpenApi');

LightningClusterPayloadFlashes5mEnum
_$lightningClusterPayloadFlashes5mEnumValueOf(String name) {
  switch (name) {
    case 'number3':
      return _$lightningClusterPayloadFlashes5mEnum_number3;
    case 'number5':
      return _$lightningClusterPayloadFlashes5mEnum_number5;
    case 'number10':
      return _$lightningClusterPayloadFlashes5mEnum_number10;
    case 'number20':
      return _$lightningClusterPayloadFlashes5mEnum_number20;
    case 'number50':
      return _$lightningClusterPayloadFlashes5mEnum_number50;
    case 'number100':
      return _$lightningClusterPayloadFlashes5mEnum_number100;
    case 'number200':
      return _$lightningClusterPayloadFlashes5mEnum_number200;
    case 'unknownDefaultOpenApi':
      return _$lightningClusterPayloadFlashes5mEnum_unknownDefaultOpenApi;
    default:
      return _$lightningClusterPayloadFlashes5mEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<LightningClusterPayloadFlashes5mEnum>
_$lightningClusterPayloadFlashes5mEnumValues =
    BuiltSet<LightningClusterPayloadFlashes5mEnum>(
      const <LightningClusterPayloadFlashes5mEnum>[
        _$lightningClusterPayloadFlashes5mEnum_number3,
        _$lightningClusterPayloadFlashes5mEnum_number5,
        _$lightningClusterPayloadFlashes5mEnum_number10,
        _$lightningClusterPayloadFlashes5mEnum_number20,
        _$lightningClusterPayloadFlashes5mEnum_number50,
        _$lightningClusterPayloadFlashes5mEnum_number100,
        _$lightningClusterPayloadFlashes5mEnum_number200,
        _$lightningClusterPayloadFlashes5mEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<LightningClusterPayloadFlashes5mEnum>
_$lightningClusterPayloadFlashes5mEnumSerializer =
    _$LightningClusterPayloadFlashes5mEnumSerializer();

class _$LightningClusterPayloadFlashes5mEnumSerializer
    implements PrimitiveSerializer<LightningClusterPayloadFlashes5mEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number3': 3,
    'number5': 5,
    'number10': 10,
    'number20': 20,
    'number50': 50,
    'number100': 100,
    'number200': 200,
    'unknownDefaultOpenApi': 11184809,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    3: 'number3',
    5: 'number5',
    10: 'number10',
    20: 'number20',
    50: 'number50',
    100: 'number100',
    200: 'number200',
    11184809: 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    LightningClusterPayloadFlashes5mEnum,
  ];
  @override
  final String wireName = 'LightningClusterPayloadFlashes5mEnum';

  @override
  Object serialize(
    Serializers serializers,
    LightningClusterPayloadFlashes5mEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  LightningClusterPayloadFlashes5mEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => LightningClusterPayloadFlashes5mEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$LightningClusterPayload extends LightningClusterPayload {
  @override
  final LightningClusterPayloadFlashes5mEnum flashes5m;
  @override
  final num? radiusKm;
  @override
  final num? maxEnergyFj;
  @override
  final String label;
  @override
  final bool automated;
  @override
  final bool notAWarning;

  factory _$LightningClusterPayload([
    void Function(LightningClusterPayloadBuilder)? updates,
  ]) => (LightningClusterPayloadBuilder()..update(updates))._build();

  _$LightningClusterPayload._({
    required this.flashes5m,
    this.radiusKm,
    this.maxEnergyFj,
    required this.label,
    required this.automated,
    required this.notAWarning,
  }) : super._();
  @override
  LightningClusterPayload rebuild(
    void Function(LightningClusterPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  LightningClusterPayloadBuilder toBuilder() =>
      LightningClusterPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LightningClusterPayload &&
        flashes5m == other.flashes5m &&
        radiusKm == other.radiusKm &&
        maxEnergyFj == other.maxEnergyFj &&
        label == other.label &&
        automated == other.automated &&
        notAWarning == other.notAWarning;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, flashes5m.hashCode);
    _$hash = $jc(_$hash, radiusKm.hashCode);
    _$hash = $jc(_$hash, maxEnergyFj.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, automated.hashCode);
    _$hash = $jc(_$hash, notAWarning.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LightningClusterPayload')
          ..add('flashes5m', flashes5m)
          ..add('radiusKm', radiusKm)
          ..add('maxEnergyFj', maxEnergyFj)
          ..add('label', label)
          ..add('automated', automated)
          ..add('notAWarning', notAWarning))
        .toString();
  }
}

class LightningClusterPayloadBuilder
    implements
        Builder<LightningClusterPayload, LightningClusterPayloadBuilder> {
  _$LightningClusterPayload? _$v;

  LightningClusterPayloadFlashes5mEnum? _flashes5m;
  LightningClusterPayloadFlashes5mEnum? get flashes5m => _$this._flashes5m;
  set flashes5m(LightningClusterPayloadFlashes5mEnum? flashes5m) =>
      _$this._flashes5m = flashes5m;

  num? _radiusKm;
  num? get radiusKm => _$this._radiusKm;
  set radiusKm(num? radiusKm) => _$this._radiusKm = radiusKm;

  num? _maxEnergyFj;
  num? get maxEnergyFj => _$this._maxEnergyFj;
  set maxEnergyFj(num? maxEnergyFj) => _$this._maxEnergyFj = maxEnergyFj;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  bool? _automated;
  bool? get automated => _$this._automated;
  set automated(bool? automated) => _$this._automated = automated;

  bool? _notAWarning;
  bool? get notAWarning => _$this._notAWarning;
  set notAWarning(bool? notAWarning) => _$this._notAWarning = notAWarning;

  LightningClusterPayloadBuilder() {
    LightningClusterPayload._defaults(this);
  }

  LightningClusterPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _flashes5m = $v.flashes5m;
      _radiusKm = $v.radiusKm;
      _maxEnergyFj = $v.maxEnergyFj;
      _label = $v.label;
      _automated = $v.automated;
      _notAWarning = $v.notAWarning;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LightningClusterPayload other) {
    _$v = other as _$LightningClusterPayload;
  }

  @override
  void update(void Function(LightningClusterPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LightningClusterPayload build() => _build();

  _$LightningClusterPayload _build() {
    final _$result =
        _$v ??
        _$LightningClusterPayload._(
          flashes5m: BuiltValueNullFieldError.checkNotNull(
            flashes5m,
            r'LightningClusterPayload',
            'flashes5m',
          ),
          radiusKm: radiusKm,
          maxEnergyFj: maxEnergyFj,
          label: BuiltValueNullFieldError.checkNotNull(
            label,
            r'LightningClusterPayload',
            'label',
          ),
          automated: BuiltValueNullFieldError.checkNotNull(
            automated,
            r'LightningClusterPayload',
            'automated',
          ),
          notAWarning: BuiltValueNullFieldError.checkNotNull(
            notAWarning,
            r'LightningClusterPayload',
            'notAWarning',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
