// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_forecast_forecasts_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SeriesForecastForecastsInnerHorizonEnum
_$seriesForecastForecastsInnerHorizonEnum_number1 =
    const SeriesForecastForecastsInnerHorizonEnum._('number1');
const SeriesForecastForecastsInnerHorizonEnum
_$seriesForecastForecastsInnerHorizonEnum_number7 =
    const SeriesForecastForecastsInnerHorizonEnum._('number7');
const SeriesForecastForecastsInnerHorizonEnum
_$seriesForecastForecastsInnerHorizonEnum_number28 =
    const SeriesForecastForecastsInnerHorizonEnum._('number28');

SeriesForecastForecastsInnerHorizonEnum
_$seriesForecastForecastsInnerHorizonEnumValueOf(String name) {
  switch (name) {
    case 'number1':
      return _$seriesForecastForecastsInnerHorizonEnum_number1;
    case 'number7':
      return _$seriesForecastForecastsInnerHorizonEnum_number7;
    case 'number28':
      return _$seriesForecastForecastsInnerHorizonEnum_number28;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SeriesForecastForecastsInnerHorizonEnum>
_$seriesForecastForecastsInnerHorizonEnumValues =
    BuiltSet<SeriesForecastForecastsInnerHorizonEnum>(
      const <SeriesForecastForecastsInnerHorizonEnum>[
        _$seriesForecastForecastsInnerHorizonEnum_number1,
        _$seriesForecastForecastsInnerHorizonEnum_number7,
        _$seriesForecastForecastsInnerHorizonEnum_number28,
      ],
    );

Serializer<SeriesForecastForecastsInnerHorizonEnum>
_$seriesForecastForecastsInnerHorizonEnumSerializer =
    _$SeriesForecastForecastsInnerHorizonEnumSerializer();

class _$SeriesForecastForecastsInnerHorizonEnumSerializer
    implements PrimitiveSerializer<SeriesForecastForecastsInnerHorizonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number1': 1,
    'number7': 7,
    'number28': 28,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    1: 'number1',
    7: 'number7',
    28: 'number28',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SeriesForecastForecastsInnerHorizonEnum,
  ];
  @override
  final String wireName = 'SeriesForecastForecastsInnerHorizonEnum';

  @override
  Object serialize(
    Serializers serializers,
    SeriesForecastForecastsInnerHorizonEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SeriesForecastForecastsInnerHorizonEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SeriesForecastForecastsInnerHorizonEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SeriesForecastForecastsInner extends SeriesForecastForecastsInner {
  @override
  final SeriesForecastForecastsInnerHorizonEnum horizon;
  @override
  final TimeRange targetPeriod;
  @override
  final Quantiles quantiles;

  factory _$SeriesForecastForecastsInner([
    void Function(SeriesForecastForecastsInnerBuilder)? updates,
  ]) => (SeriesForecastForecastsInnerBuilder()..update(updates))._build();

  _$SeriesForecastForecastsInner._({
    required this.horizon,
    required this.targetPeriod,
    required this.quantiles,
  }) : super._();
  @override
  SeriesForecastForecastsInner rebuild(
    void Function(SeriesForecastForecastsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SeriesForecastForecastsInnerBuilder toBuilder() =>
      SeriesForecastForecastsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeriesForecastForecastsInner &&
        horizon == other.horizon &&
        targetPeriod == other.targetPeriod &&
        quantiles == other.quantiles;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, horizon.hashCode);
    _$hash = $jc(_$hash, targetPeriod.hashCode);
    _$hash = $jc(_$hash, quantiles.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeriesForecastForecastsInner')
          ..add('horizon', horizon)
          ..add('targetPeriod', targetPeriod)
          ..add('quantiles', quantiles))
        .toString();
  }
}

class SeriesForecastForecastsInnerBuilder
    implements
        Builder<
          SeriesForecastForecastsInner,
          SeriesForecastForecastsInnerBuilder
        > {
  _$SeriesForecastForecastsInner? _$v;

  SeriesForecastForecastsInnerHorizonEnum? _horizon;
  SeriesForecastForecastsInnerHorizonEnum? get horizon => _$this._horizon;
  set horizon(SeriesForecastForecastsInnerHorizonEnum? horizon) =>
      _$this._horizon = horizon;

  TimeRangeBuilder? _targetPeriod;
  TimeRangeBuilder get targetPeriod =>
      _$this._targetPeriod ??= TimeRangeBuilder();
  set targetPeriod(TimeRangeBuilder? targetPeriod) =>
      _$this._targetPeriod = targetPeriod;

  QuantilesBuilder? _quantiles;
  QuantilesBuilder get quantiles => _$this._quantiles ??= QuantilesBuilder();
  set quantiles(QuantilesBuilder? quantiles) => _$this._quantiles = quantiles;

  SeriesForecastForecastsInnerBuilder() {
    SeriesForecastForecastsInner._defaults(this);
  }

  SeriesForecastForecastsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _horizon = $v.horizon;
      _targetPeriod = $v.targetPeriod.toBuilder();
      _quantiles = $v.quantiles.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeriesForecastForecastsInner other) {
    _$v = other as _$SeriesForecastForecastsInner;
  }

  @override
  void update(void Function(SeriesForecastForecastsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeriesForecastForecastsInner build() => _build();

  _$SeriesForecastForecastsInner _build() {
    _$SeriesForecastForecastsInner _$result;
    try {
      _$result =
          _$v ??
          _$SeriesForecastForecastsInner._(
            horizon: BuiltValueNullFieldError.checkNotNull(
              horizon,
              r'SeriesForecastForecastsInner',
              'horizon',
            ),
            targetPeriod: targetPeriod.build(),
            quantiles: quantiles.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'targetPeriod';
        targetPeriod.build();
        _$failedField = 'quantiles';
        quantiles.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SeriesForecastForecastsInner',
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
