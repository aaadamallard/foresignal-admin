// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SeriesDataFrequencyEnum _$seriesDataFrequencyEnum_hour =
    const SeriesDataFrequencyEnum._('hour');
const SeriesDataFrequencyEnum _$seriesDataFrequencyEnum_day =
    const SeriesDataFrequencyEnum._('day');
const SeriesDataFrequencyEnum _$seriesDataFrequencyEnum_week =
    const SeriesDataFrequencyEnum._('week');
const SeriesDataFrequencyEnum _$seriesDataFrequencyEnum_month =
    const SeriesDataFrequencyEnum._('month');
const SeriesDataFrequencyEnum _$seriesDataFrequencyEnum_irregular =
    const SeriesDataFrequencyEnum._('irregular');
const SeriesDataFrequencyEnum _$seriesDataFrequencyEnum_unknownDefaultOpenApi =
    const SeriesDataFrequencyEnum._('unknownDefaultOpenApi');

SeriesDataFrequencyEnum _$seriesDataFrequencyEnumValueOf(String name) {
  switch (name) {
    case 'hour':
      return _$seriesDataFrequencyEnum_hour;
    case 'day':
      return _$seriesDataFrequencyEnum_day;
    case 'week':
      return _$seriesDataFrequencyEnum_week;
    case 'month':
      return _$seriesDataFrequencyEnum_month;
    case 'irregular':
      return _$seriesDataFrequencyEnum_irregular;
    case 'unknownDefaultOpenApi':
      return _$seriesDataFrequencyEnum_unknownDefaultOpenApi;
    default:
      return _$seriesDataFrequencyEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SeriesDataFrequencyEnum> _$seriesDataFrequencyEnumValues =
    BuiltSet<SeriesDataFrequencyEnum>(const <SeriesDataFrequencyEnum>[
      _$seriesDataFrequencyEnum_hour,
      _$seriesDataFrequencyEnum_day,
      _$seriesDataFrequencyEnum_week,
      _$seriesDataFrequencyEnum_month,
      _$seriesDataFrequencyEnum_irregular,
      _$seriesDataFrequencyEnum_unknownDefaultOpenApi,
    ]);

Serializer<SeriesDataFrequencyEnum> _$seriesDataFrequencyEnumSerializer =
    _$SeriesDataFrequencyEnumSerializer();

class _$SeriesDataFrequencyEnumSerializer
    implements PrimitiveSerializer<SeriesDataFrequencyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'hour': 'hour',
    'day': 'day',
    'week': 'week',
    'month': 'month',
    'irregular': 'irregular',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'hour': 'hour',
    'day': 'day',
    'week': 'week',
    'month': 'month',
    'irregular': 'irregular',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SeriesDataFrequencyEnum];
  @override
  final String wireName = 'SeriesDataFrequencyEnum';

  @override
  Object serialize(
    Serializers serializers,
    SeriesDataFrequencyEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SeriesDataFrequencyEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SeriesDataFrequencyEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SeriesData extends SeriesData {
  @override
  final String ref;
  @override
  final DateTime from;
  @override
  final DateTime to;
  @override
  final DateTime? asOf;
  @override
  final SeriesDataFrequencyEnum frequency;
  @override
  final String? unit;
  @override
  final String? family;
  @override
  final bool valuesWithheld;
  @override
  final BuiltList<SeriesPoint> points;
  @override
  final BuiltList<TimeRange> gaps;

  factory _$SeriesData([void Function(SeriesDataBuilder)? updates]) =>
      (SeriesDataBuilder()..update(updates))._build();

  _$SeriesData._({
    required this.ref,
    required this.from,
    required this.to,
    this.asOf,
    required this.frequency,
    this.unit,
    this.family,
    required this.valuesWithheld,
    required this.points,
    required this.gaps,
  }) : super._();
  @override
  SeriesData rebuild(void Function(SeriesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeriesDataBuilder toBuilder() => SeriesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeriesData &&
        ref == other.ref &&
        from == other.from &&
        to == other.to &&
        asOf == other.asOf &&
        frequency == other.frequency &&
        unit == other.unit &&
        family == other.family &&
        valuesWithheld == other.valuesWithheld &&
        points == other.points &&
        gaps == other.gaps;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, frequency.hashCode);
    _$hash = $jc(_$hash, unit.hashCode);
    _$hash = $jc(_$hash, family.hashCode);
    _$hash = $jc(_$hash, valuesWithheld.hashCode);
    _$hash = $jc(_$hash, points.hashCode);
    _$hash = $jc(_$hash, gaps.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeriesData')
          ..add('ref', ref)
          ..add('from', from)
          ..add('to', to)
          ..add('asOf', asOf)
          ..add('frequency', frequency)
          ..add('unit', unit)
          ..add('family', family)
          ..add('valuesWithheld', valuesWithheld)
          ..add('points', points)
          ..add('gaps', gaps))
        .toString();
  }
}

class SeriesDataBuilder implements Builder<SeriesData, SeriesDataBuilder> {
  _$SeriesData? _$v;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  SeriesDataFrequencyEnum? _frequency;
  SeriesDataFrequencyEnum? get frequency => _$this._frequency;
  set frequency(SeriesDataFrequencyEnum? frequency) =>
      _$this._frequency = frequency;

  String? _unit;
  String? get unit => _$this._unit;
  set unit(String? unit) => _$this._unit = unit;

  String? _family;
  String? get family => _$this._family;
  set family(String? family) => _$this._family = family;

  bool? _valuesWithheld;
  bool? get valuesWithheld => _$this._valuesWithheld;
  set valuesWithheld(bool? valuesWithheld) =>
      _$this._valuesWithheld = valuesWithheld;

  ListBuilder<SeriesPoint>? _points;
  ListBuilder<SeriesPoint> get points =>
      _$this._points ??= ListBuilder<SeriesPoint>();
  set points(ListBuilder<SeriesPoint>? points) => _$this._points = points;

  ListBuilder<TimeRange>? _gaps;
  ListBuilder<TimeRange> get gaps => _$this._gaps ??= ListBuilder<TimeRange>();
  set gaps(ListBuilder<TimeRange>? gaps) => _$this._gaps = gaps;

  SeriesDataBuilder() {
    SeriesData._defaults(this);
  }

  SeriesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ref = $v.ref;
      _from = $v.from;
      _to = $v.to;
      _asOf = $v.asOf;
      _frequency = $v.frequency;
      _unit = $v.unit;
      _family = $v.family;
      _valuesWithheld = $v.valuesWithheld;
      _points = $v.points.toBuilder();
      _gaps = $v.gaps.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeriesData other) {
    _$v = other as _$SeriesData;
  }

  @override
  void update(void Function(SeriesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeriesData build() => _build();

  _$SeriesData _build() {
    _$SeriesData _$result;
    try {
      _$result =
          _$v ??
          _$SeriesData._(
            ref: BuiltValueNullFieldError.checkNotNull(
              ref,
              r'SeriesData',
              'ref',
            ),
            from: BuiltValueNullFieldError.checkNotNull(
              from,
              r'SeriesData',
              'from',
            ),
            to: BuiltValueNullFieldError.checkNotNull(to, r'SeriesData', 'to'),
            asOf: asOf,
            frequency: BuiltValueNullFieldError.checkNotNull(
              frequency,
              r'SeriesData',
              'frequency',
            ),
            unit: unit,
            family: family,
            valuesWithheld: BuiltValueNullFieldError.checkNotNull(
              valuesWithheld,
              r'SeriesData',
              'valuesWithheld',
            ),
            points: points.build(),
            gaps: gaps.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'points';
        points.build();
        _$failedField = 'gaps';
        gaps.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SeriesData',
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
