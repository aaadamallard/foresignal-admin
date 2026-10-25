// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indicator_signal_series.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IndicatorSignalSeriesDirectionEnum
_$indicatorSignalSeriesDirectionEnum_up =
    const IndicatorSignalSeriesDirectionEnum._('up');
const IndicatorSignalSeriesDirectionEnum
_$indicatorSignalSeriesDirectionEnum_down =
    const IndicatorSignalSeriesDirectionEnum._('down');
const IndicatorSignalSeriesDirectionEnum
_$indicatorSignalSeriesDirectionEnum_any =
    const IndicatorSignalSeriesDirectionEnum._('any');
const IndicatorSignalSeriesDirectionEnum
_$indicatorSignalSeriesDirectionEnum_unknownDefaultOpenApi =
    const IndicatorSignalSeriesDirectionEnum._('unknownDefaultOpenApi');

IndicatorSignalSeriesDirectionEnum _$indicatorSignalSeriesDirectionEnumValueOf(
  String name,
) {
  switch (name) {
    case 'up':
      return _$indicatorSignalSeriesDirectionEnum_up;
    case 'down':
      return _$indicatorSignalSeriesDirectionEnum_down;
    case 'any':
      return _$indicatorSignalSeriesDirectionEnum_any;
    case 'unknownDefaultOpenApi':
      return _$indicatorSignalSeriesDirectionEnum_unknownDefaultOpenApi;
    default:
      return _$indicatorSignalSeriesDirectionEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<IndicatorSignalSeriesDirectionEnum>
_$indicatorSignalSeriesDirectionEnumValues =
    BuiltSet<IndicatorSignalSeriesDirectionEnum>(
      const <IndicatorSignalSeriesDirectionEnum>[
        _$indicatorSignalSeriesDirectionEnum_up,
        _$indicatorSignalSeriesDirectionEnum_down,
        _$indicatorSignalSeriesDirectionEnum_any,
        _$indicatorSignalSeriesDirectionEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<IndicatorSignalSeriesDirectionEnum>
_$indicatorSignalSeriesDirectionEnumSerializer =
    _$IndicatorSignalSeriesDirectionEnumSerializer();

class _$IndicatorSignalSeriesDirectionEnumSerializer
    implements PrimitiveSerializer<IndicatorSignalSeriesDirectionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'up': 'up',
    'down': 'down',
    'any': 'any',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'up': 'up',
    'down': 'down',
    'any': 'any',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[IndicatorSignalSeriesDirectionEnum];
  @override
  final String wireName = 'IndicatorSignalSeriesDirectionEnum';

  @override
  Object serialize(
    Serializers serializers,
    IndicatorSignalSeriesDirectionEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  IndicatorSignalSeriesDirectionEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => IndicatorSignalSeriesDirectionEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$IndicatorSignalSeries extends IndicatorSignalSeries {
  @override
  final String ref;
  @override
  final IndicatorSignalSeriesCondition? condition;
  @override
  final bool? changePoint;
  @override
  final IndicatorSignalSeriesDirectionEnum? direction;

  factory _$IndicatorSignalSeries([
    void Function(IndicatorSignalSeriesBuilder)? updates,
  ]) => (IndicatorSignalSeriesBuilder()..update(updates))._build();

  _$IndicatorSignalSeries._({
    required this.ref,
    this.condition,
    this.changePoint,
    this.direction,
  }) : super._();
  @override
  IndicatorSignalSeries rebuild(
    void Function(IndicatorSignalSeriesBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IndicatorSignalSeriesBuilder toBuilder() =>
      IndicatorSignalSeriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndicatorSignalSeries &&
        ref == other.ref &&
        condition == other.condition &&
        changePoint == other.changePoint &&
        direction == other.direction;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, condition.hashCode);
    _$hash = $jc(_$hash, changePoint.hashCode);
    _$hash = $jc(_$hash, direction.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IndicatorSignalSeries')
          ..add('ref', ref)
          ..add('condition', condition)
          ..add('changePoint', changePoint)
          ..add('direction', direction))
        .toString();
  }
}

class IndicatorSignalSeriesBuilder
    implements Builder<IndicatorSignalSeries, IndicatorSignalSeriesBuilder> {
  _$IndicatorSignalSeries? _$v;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  IndicatorSignalSeriesConditionBuilder? _condition;
  IndicatorSignalSeriesConditionBuilder get condition =>
      _$this._condition ??= IndicatorSignalSeriesConditionBuilder();
  set condition(IndicatorSignalSeriesConditionBuilder? condition) =>
      _$this._condition = condition;

  bool? _changePoint;
  bool? get changePoint => _$this._changePoint;
  set changePoint(bool? changePoint) => _$this._changePoint = changePoint;

  IndicatorSignalSeriesDirectionEnum? _direction;
  IndicatorSignalSeriesDirectionEnum? get direction => _$this._direction;
  set direction(IndicatorSignalSeriesDirectionEnum? direction) =>
      _$this._direction = direction;

  IndicatorSignalSeriesBuilder() {
    IndicatorSignalSeries._defaults(this);
  }

  IndicatorSignalSeriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ref = $v.ref;
      _condition = $v.condition?.toBuilder();
      _changePoint = $v.changePoint;
      _direction = $v.direction;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IndicatorSignalSeries other) {
    _$v = other as _$IndicatorSignalSeries;
  }

  @override
  void update(void Function(IndicatorSignalSeriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IndicatorSignalSeries build() => _build();

  _$IndicatorSignalSeries _build() {
    _$IndicatorSignalSeries _$result;
    try {
      _$result =
          _$v ??
          _$IndicatorSignalSeries._(
            ref: BuiltValueNullFieldError.checkNotNull(
              ref,
              r'IndicatorSignalSeries',
              'ref',
            ),
            condition: _condition?.build(),
            changePoint: changePoint,
            direction: direction,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'condition';
        _condition?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'IndicatorSignalSeries',
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
