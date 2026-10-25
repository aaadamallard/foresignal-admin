// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indicator_signal_series_condition.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IndicatorSignalSeriesConditionOpEnum
_$indicatorSignalSeriesConditionOpEnum_gt =
    const IndicatorSignalSeriesConditionOpEnum._('gt');
const IndicatorSignalSeriesConditionOpEnum
_$indicatorSignalSeriesConditionOpEnum_gte =
    const IndicatorSignalSeriesConditionOpEnum._('gte');
const IndicatorSignalSeriesConditionOpEnum
_$indicatorSignalSeriesConditionOpEnum_lt =
    const IndicatorSignalSeriesConditionOpEnum._('lt');
const IndicatorSignalSeriesConditionOpEnum
_$indicatorSignalSeriesConditionOpEnum_lte =
    const IndicatorSignalSeriesConditionOpEnum._('lte');
const IndicatorSignalSeriesConditionOpEnum
_$indicatorSignalSeriesConditionOpEnum_unknownDefaultOpenApi =
    const IndicatorSignalSeriesConditionOpEnum._('unknownDefaultOpenApi');

IndicatorSignalSeriesConditionOpEnum
_$indicatorSignalSeriesConditionOpEnumValueOf(String name) {
  switch (name) {
    case 'gt':
      return _$indicatorSignalSeriesConditionOpEnum_gt;
    case 'gte':
      return _$indicatorSignalSeriesConditionOpEnum_gte;
    case 'lt':
      return _$indicatorSignalSeriesConditionOpEnum_lt;
    case 'lte':
      return _$indicatorSignalSeriesConditionOpEnum_lte;
    case 'unknownDefaultOpenApi':
      return _$indicatorSignalSeriesConditionOpEnum_unknownDefaultOpenApi;
    default:
      return _$indicatorSignalSeriesConditionOpEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<IndicatorSignalSeriesConditionOpEnum>
_$indicatorSignalSeriesConditionOpEnumValues =
    BuiltSet<IndicatorSignalSeriesConditionOpEnum>(
      const <IndicatorSignalSeriesConditionOpEnum>[
        _$indicatorSignalSeriesConditionOpEnum_gt,
        _$indicatorSignalSeriesConditionOpEnum_gte,
        _$indicatorSignalSeriesConditionOpEnum_lt,
        _$indicatorSignalSeriesConditionOpEnum_lte,
        _$indicatorSignalSeriesConditionOpEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<IndicatorSignalSeriesConditionOpEnum>
_$indicatorSignalSeriesConditionOpEnumSerializer =
    _$IndicatorSignalSeriesConditionOpEnumSerializer();

class _$IndicatorSignalSeriesConditionOpEnumSerializer
    implements PrimitiveSerializer<IndicatorSignalSeriesConditionOpEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'gt': 'gt',
    'gte': 'gte',
    'lt': 'lt',
    'lte': 'lte',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'gt': 'gt',
    'gte': 'gte',
    'lt': 'lt',
    'lte': 'lte',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    IndicatorSignalSeriesConditionOpEnum,
  ];
  @override
  final String wireName = 'IndicatorSignalSeriesConditionOpEnum';

  @override
  Object serialize(
    Serializers serializers,
    IndicatorSignalSeriesConditionOpEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  IndicatorSignalSeriesConditionOpEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => IndicatorSignalSeriesConditionOpEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$IndicatorSignalSeriesCondition extends IndicatorSignalSeriesCondition {
  @override
  final IndicatorSignalSeriesConditionOpEnum op;
  @override
  final num value;

  factory _$IndicatorSignalSeriesCondition([
    void Function(IndicatorSignalSeriesConditionBuilder)? updates,
  ]) => (IndicatorSignalSeriesConditionBuilder()..update(updates))._build();

  _$IndicatorSignalSeriesCondition._({required this.op, required this.value})
    : super._();
  @override
  IndicatorSignalSeriesCondition rebuild(
    void Function(IndicatorSignalSeriesConditionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IndicatorSignalSeriesConditionBuilder toBuilder() =>
      IndicatorSignalSeriesConditionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndicatorSignalSeriesCondition &&
        op == other.op &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, op.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IndicatorSignalSeriesCondition')
          ..add('op', op)
          ..add('value', value))
        .toString();
  }
}

class IndicatorSignalSeriesConditionBuilder
    implements
        Builder<
          IndicatorSignalSeriesCondition,
          IndicatorSignalSeriesConditionBuilder
        > {
  _$IndicatorSignalSeriesCondition? _$v;

  IndicatorSignalSeriesConditionOpEnum? _op;
  IndicatorSignalSeriesConditionOpEnum? get op => _$this._op;
  set op(IndicatorSignalSeriesConditionOpEnum? op) => _$this._op = op;

  num? _value;
  num? get value => _$this._value;
  set value(num? value) => _$this._value = value;

  IndicatorSignalSeriesConditionBuilder() {
    IndicatorSignalSeriesCondition._defaults(this);
  }

  IndicatorSignalSeriesConditionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _op = $v.op;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IndicatorSignalSeriesCondition other) {
    _$v = other as _$IndicatorSignalSeriesCondition;
  }

  @override
  void update(void Function(IndicatorSignalSeriesConditionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IndicatorSignalSeriesCondition build() => _build();

  _$IndicatorSignalSeriesCondition _build() {
    final _$result =
        _$v ??
        _$IndicatorSignalSeriesCondition._(
          op: BuiltValueNullFieldError.checkNotNull(
            op,
            r'IndicatorSignalSeriesCondition',
            'op',
          ),
          value: BuiltValueNullFieldError.checkNotNull(
            value,
            r'IndicatorSignalSeriesCondition',
            'value',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
