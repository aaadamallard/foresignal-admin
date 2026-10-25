// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anomaly_observation_baseline.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AnomalyObservationBaselineSlotModeEnum
_$anomalyObservationBaselineSlotModeEnum_hourOfWeek =
    const AnomalyObservationBaselineSlotModeEnum._('hourOfWeek');
const AnomalyObservationBaselineSlotModeEnum
_$anomalyObservationBaselineSlotModeEnum_hourOfDay =
    const AnomalyObservationBaselineSlotModeEnum._('hourOfDay');
const AnomalyObservationBaselineSlotModeEnum
_$anomalyObservationBaselineSlotModeEnum_unknownDefaultOpenApi =
    const AnomalyObservationBaselineSlotModeEnum._('unknownDefaultOpenApi');

AnomalyObservationBaselineSlotModeEnum
_$anomalyObservationBaselineSlotModeEnumValueOf(String name) {
  switch (name) {
    case 'hourOfWeek':
      return _$anomalyObservationBaselineSlotModeEnum_hourOfWeek;
    case 'hourOfDay':
      return _$anomalyObservationBaselineSlotModeEnum_hourOfDay;
    case 'unknownDefaultOpenApi':
      return _$anomalyObservationBaselineSlotModeEnum_unknownDefaultOpenApi;
    default:
      return _$anomalyObservationBaselineSlotModeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AnomalyObservationBaselineSlotModeEnum>
_$anomalyObservationBaselineSlotModeEnumValues =
    BuiltSet<AnomalyObservationBaselineSlotModeEnum>(
      const <AnomalyObservationBaselineSlotModeEnum>[
        _$anomalyObservationBaselineSlotModeEnum_hourOfWeek,
        _$anomalyObservationBaselineSlotModeEnum_hourOfDay,
        _$anomalyObservationBaselineSlotModeEnum_unknownDefaultOpenApi,
      ],
    );

const AnomalyObservationBaselineModelEnum
_$anomalyObservationBaselineModelEnum_poisson =
    const AnomalyObservationBaselineModelEnum._('poisson');
const AnomalyObservationBaselineModelEnum
_$anomalyObservationBaselineModelEnum_nb =
    const AnomalyObservationBaselineModelEnum._('nb');
const AnomalyObservationBaselineModelEnum
_$anomalyObservationBaselineModelEnum_unknownDefaultOpenApi =
    const AnomalyObservationBaselineModelEnum._('unknownDefaultOpenApi');

AnomalyObservationBaselineModelEnum
_$anomalyObservationBaselineModelEnumValueOf(String name) {
  switch (name) {
    case 'poisson':
      return _$anomalyObservationBaselineModelEnum_poisson;
    case 'nb':
      return _$anomalyObservationBaselineModelEnum_nb;
    case 'unknownDefaultOpenApi':
      return _$anomalyObservationBaselineModelEnum_unknownDefaultOpenApi;
    default:
      return _$anomalyObservationBaselineModelEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AnomalyObservationBaselineModelEnum>
_$anomalyObservationBaselineModelEnumValues =
    BuiltSet<AnomalyObservationBaselineModelEnum>(
      const <AnomalyObservationBaselineModelEnum>[
        _$anomalyObservationBaselineModelEnum_poisson,
        _$anomalyObservationBaselineModelEnum_nb,
        _$anomalyObservationBaselineModelEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<AnomalyObservationBaselineSlotModeEnum>
_$anomalyObservationBaselineSlotModeEnumSerializer =
    _$AnomalyObservationBaselineSlotModeEnumSerializer();
Serializer<AnomalyObservationBaselineModelEnum>
_$anomalyObservationBaselineModelEnumSerializer =
    _$AnomalyObservationBaselineModelEnumSerializer();

class _$AnomalyObservationBaselineSlotModeEnumSerializer
    implements PrimitiveSerializer<AnomalyObservationBaselineSlotModeEnum> {
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
  final Iterable<Type> types = const <Type>[
    AnomalyObservationBaselineSlotModeEnum,
  ];
  @override
  final String wireName = 'AnomalyObservationBaselineSlotModeEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnomalyObservationBaselineSlotModeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnomalyObservationBaselineSlotModeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnomalyObservationBaselineSlotModeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnomalyObservationBaselineModelEnumSerializer
    implements PrimitiveSerializer<AnomalyObservationBaselineModelEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'poisson': 'poisson',
    'nb': 'nb',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'poisson': 'poisson',
    'nb': 'nb',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    AnomalyObservationBaselineModelEnum,
  ];
  @override
  final String wireName = 'AnomalyObservationBaselineModelEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnomalyObservationBaselineModelEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnomalyObservationBaselineModelEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnomalyObservationBaselineModelEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnomalyObservationBaseline extends AnomalyObservationBaseline {
  @override
  final num weeks;
  @override
  final AnomalyObservationBaselineSlotModeEnum slotMode;
  @override
  final num mean;
  @override
  final num variance;
  @override
  final AnomalyObservationBaselineModelEnum model;

  factory _$AnomalyObservationBaseline([
    void Function(AnomalyObservationBaselineBuilder)? updates,
  ]) => (AnomalyObservationBaselineBuilder()..update(updates))._build();

  _$AnomalyObservationBaseline._({
    required this.weeks,
    required this.slotMode,
    required this.mean,
    required this.variance,
    required this.model,
  }) : super._();
  @override
  AnomalyObservationBaseline rebuild(
    void Function(AnomalyObservationBaselineBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AnomalyObservationBaselineBuilder toBuilder() =>
      AnomalyObservationBaselineBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnomalyObservationBaseline &&
        weeks == other.weeks &&
        slotMode == other.slotMode &&
        mean == other.mean &&
        variance == other.variance &&
        model == other.model;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, weeks.hashCode);
    _$hash = $jc(_$hash, slotMode.hashCode);
    _$hash = $jc(_$hash, mean.hashCode);
    _$hash = $jc(_$hash, variance.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnomalyObservationBaseline')
          ..add('weeks', weeks)
          ..add('slotMode', slotMode)
          ..add('mean', mean)
          ..add('variance', variance)
          ..add('model', model))
        .toString();
  }
}

class AnomalyObservationBaselineBuilder
    implements
        Builder<AnomalyObservationBaseline, AnomalyObservationBaselineBuilder> {
  _$AnomalyObservationBaseline? _$v;

  num? _weeks;
  num? get weeks => _$this._weeks;
  set weeks(num? weeks) => _$this._weeks = weeks;

  AnomalyObservationBaselineSlotModeEnum? _slotMode;
  AnomalyObservationBaselineSlotModeEnum? get slotMode => _$this._slotMode;
  set slotMode(AnomalyObservationBaselineSlotModeEnum? slotMode) =>
      _$this._slotMode = slotMode;

  num? _mean;
  num? get mean => _$this._mean;
  set mean(num? mean) => _$this._mean = mean;

  num? _variance;
  num? get variance => _$this._variance;
  set variance(num? variance) => _$this._variance = variance;

  AnomalyObservationBaselineModelEnum? _model;
  AnomalyObservationBaselineModelEnum? get model => _$this._model;
  set model(AnomalyObservationBaselineModelEnum? model) =>
      _$this._model = model;

  AnomalyObservationBaselineBuilder() {
    AnomalyObservationBaseline._defaults(this);
  }

  AnomalyObservationBaselineBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _weeks = $v.weeks;
      _slotMode = $v.slotMode;
      _mean = $v.mean;
      _variance = $v.variance;
      _model = $v.model;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnomalyObservationBaseline other) {
    _$v = other as _$AnomalyObservationBaseline;
  }

  @override
  void update(void Function(AnomalyObservationBaselineBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnomalyObservationBaseline build() => _build();

  _$AnomalyObservationBaseline _build() {
    final _$result =
        _$v ??
        _$AnomalyObservationBaseline._(
          weeks: BuiltValueNullFieldError.checkNotNull(
            weeks,
            r'AnomalyObservationBaseline',
            'weeks',
          ),
          slotMode: BuiltValueNullFieldError.checkNotNull(
            slotMode,
            r'AnomalyObservationBaseline',
            'slotMode',
          ),
          mean: BuiltValueNullFieldError.checkNotNull(
            mean,
            r'AnomalyObservationBaseline',
            'mean',
          ),
          variance: BuiltValueNullFieldError.checkNotNull(
            variance,
            r'AnomalyObservationBaseline',
            'variance',
          ),
          model: BuiltValueNullFieldError.checkNotNull(
            model,
            r'AnomalyObservationBaseline',
            'model',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
