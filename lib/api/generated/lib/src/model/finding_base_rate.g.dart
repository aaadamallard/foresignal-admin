// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finding_base_rate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FindingBaseRateMethodEnum
_$findingBaseRateMethodEnum_detectorFalseAlarmRate =
    const FindingBaseRateMethodEnum._('detectorFalseAlarmRate');
const FindingBaseRateMethodEnum
_$findingBaseRateMethodEnum_placeboDistribution =
    const FindingBaseRateMethodEnum._('placeboDistribution');
const FindingBaseRateMethodEnum
_$findingBaseRateMethodEnum_independenceBaseline =
    const FindingBaseRateMethodEnum._('independenceBaseline');
const FindingBaseRateMethodEnum _$findingBaseRateMethodEnum_precursorBaseRate =
    const FindingBaseRateMethodEnum._('precursorBaseRate');
const FindingBaseRateMethodEnum _$findingBaseRateMethodEnum_other =
    const FindingBaseRateMethodEnum._('other');

FindingBaseRateMethodEnum _$findingBaseRateMethodEnumValueOf(String name) {
  switch (name) {
    case 'detectorFalseAlarmRate':
      return _$findingBaseRateMethodEnum_detectorFalseAlarmRate;
    case 'placeboDistribution':
      return _$findingBaseRateMethodEnum_placeboDistribution;
    case 'independenceBaseline':
      return _$findingBaseRateMethodEnum_independenceBaseline;
    case 'precursorBaseRate':
      return _$findingBaseRateMethodEnum_precursorBaseRate;
    case 'other':
      return _$findingBaseRateMethodEnum_other;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FindingBaseRateMethodEnum> _$findingBaseRateMethodEnumValues =
    BuiltSet<FindingBaseRateMethodEnum>(const <FindingBaseRateMethodEnum>[
      _$findingBaseRateMethodEnum_detectorFalseAlarmRate,
      _$findingBaseRateMethodEnum_placeboDistribution,
      _$findingBaseRateMethodEnum_independenceBaseline,
      _$findingBaseRateMethodEnum_precursorBaseRate,
      _$findingBaseRateMethodEnum_other,
    ]);

Serializer<FindingBaseRateMethodEnum> _$findingBaseRateMethodEnumSerializer =
    _$FindingBaseRateMethodEnumSerializer();

class _$FindingBaseRateMethodEnumSerializer
    implements PrimitiveSerializer<FindingBaseRateMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'detectorFalseAlarmRate': 'detector-false-alarm-rate',
    'placeboDistribution': 'placebo-distribution',
    'independenceBaseline': 'independence-baseline',
    'precursorBaseRate': 'precursor-base-rate',
    'other': 'other',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'detector-false-alarm-rate': 'detectorFalseAlarmRate',
    'placebo-distribution': 'placeboDistribution',
    'independence-baseline': 'independenceBaseline',
    'precursor-base-rate': 'precursorBaseRate',
    'other': 'other',
  };

  @override
  final Iterable<Type> types = const <Type>[FindingBaseRateMethodEnum];
  @override
  final String wireName = 'FindingBaseRateMethodEnum';

  @override
  Object serialize(
    Serializers serializers,
    FindingBaseRateMethodEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  FindingBaseRateMethodEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => FindingBaseRateMethodEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$FindingBaseRate extends FindingBaseRate {
  @override
  final num? value;
  @override
  final String unit;
  @override
  final FindingBaseRateMethodEnum method;
  @override
  final int? n;
  @override
  final TimeRange? period;
  @override
  final String text;

  factory _$FindingBaseRate([void Function(FindingBaseRateBuilder)? updates]) =>
      (FindingBaseRateBuilder()..update(updates))._build();

  _$FindingBaseRate._({
    this.value,
    required this.unit,
    required this.method,
    this.n,
    this.period,
    required this.text,
  }) : super._();
  @override
  FindingBaseRate rebuild(void Function(FindingBaseRateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FindingBaseRateBuilder toBuilder() => FindingBaseRateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FindingBaseRate &&
        value == other.value &&
        unit == other.unit &&
        method == other.method &&
        n == other.n &&
        period == other.period &&
        text == other.text;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, unit.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jc(_$hash, n.hashCode);
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FindingBaseRate')
          ..add('value', value)
          ..add('unit', unit)
          ..add('method', method)
          ..add('n', n)
          ..add('period', period)
          ..add('text', text))
        .toString();
  }
}

class FindingBaseRateBuilder
    implements Builder<FindingBaseRate, FindingBaseRateBuilder> {
  _$FindingBaseRate? _$v;

  num? _value;
  num? get value => _$this._value;
  set value(num? value) => _$this._value = value;

  String? _unit;
  String? get unit => _$this._unit;
  set unit(String? unit) => _$this._unit = unit;

  FindingBaseRateMethodEnum? _method;
  FindingBaseRateMethodEnum? get method => _$this._method;
  set method(FindingBaseRateMethodEnum? method) => _$this._method = method;

  int? _n;
  int? get n => _$this._n;
  set n(int? n) => _$this._n = n;

  TimeRangeBuilder? _period;
  TimeRangeBuilder get period => _$this._period ??= TimeRangeBuilder();
  set period(TimeRangeBuilder? period) => _$this._period = period;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  FindingBaseRateBuilder() {
    FindingBaseRate._defaults(this);
  }

  FindingBaseRateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _unit = $v.unit;
      _method = $v.method;
      _n = $v.n;
      _period = $v.period?.toBuilder();
      _text = $v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FindingBaseRate other) {
    _$v = other as _$FindingBaseRate;
  }

  @override
  void update(void Function(FindingBaseRateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FindingBaseRate build() => _build();

  _$FindingBaseRate _build() {
    _$FindingBaseRate _$result;
    try {
      _$result =
          _$v ??
          _$FindingBaseRate._(
            value: value,
            unit: BuiltValueNullFieldError.checkNotNull(
              unit,
              r'FindingBaseRate',
              'unit',
            ),
            method: BuiltValueNullFieldError.checkNotNull(
              method,
              r'FindingBaseRate',
              'method',
            ),
            n: n,
            period: _period?.build(),
            text: BuiltValueNullFieldError.checkNotNull(
              text,
              r'FindingBaseRate',
              'text',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'period';
        _period?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'FindingBaseRate',
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
