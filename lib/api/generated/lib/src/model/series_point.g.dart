// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_point.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SeriesPointStatusEnum _$seriesPointStatusEnum_final_ =
    const SeriesPointStatusEnum._('final_');
const SeriesPointStatusEnum _$seriesPointStatusEnum_preliminary =
    const SeriesPointStatusEnum._('preliminary');
const SeriesPointStatusEnum _$seriesPointStatusEnum_estimated =
    const SeriesPointStatusEnum._('estimated');
const SeriesPointStatusEnum _$seriesPointStatusEnum_forecast =
    const SeriesPointStatusEnum._('forecast');

SeriesPointStatusEnum _$seriesPointStatusEnumValueOf(String name) {
  switch (name) {
    case 'final_':
      return _$seriesPointStatusEnum_final_;
    case 'preliminary':
      return _$seriesPointStatusEnum_preliminary;
    case 'estimated':
      return _$seriesPointStatusEnum_estimated;
    case 'forecast':
      return _$seriesPointStatusEnum_forecast;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SeriesPointStatusEnum> _$seriesPointStatusEnumValues =
    BuiltSet<SeriesPointStatusEnum>(const <SeriesPointStatusEnum>[
  _$seriesPointStatusEnum_final_,
  _$seriesPointStatusEnum_preliminary,
  _$seriesPointStatusEnum_estimated,
  _$seriesPointStatusEnum_forecast,
]);

Serializer<SeriesPointStatusEnum> _$seriesPointStatusEnumSerializer =
    _$SeriesPointStatusEnumSerializer();

class _$SeriesPointStatusEnumSerializer
    implements PrimitiveSerializer<SeriesPointStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'final_': 'final',
    'preliminary': 'preliminary',
    'estimated': 'estimated',
    'forecast': 'forecast',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'final': 'final_',
    'preliminary': 'preliminary',
    'estimated': 'estimated',
    'forecast': 'forecast',
  };

  @override
  final Iterable<Type> types = const <Type>[SeriesPointStatusEnum];
  @override
  final String wireName = 'SeriesPointStatusEnum';

  @override
  Object serialize(Serializers serializers, SeriesPointStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SeriesPointStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SeriesPointStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SeriesPoint extends SeriesPoint {
  @override
  final String period;
  @override
  final DateTime periodStart;
  @override
  final DateTime periodEnd;
  @override
  final num? value;
  @override
  final String unit;
  @override
  final SeriesPointStatusEnum status;
  @override
  final BuiltMap<String, JsonObject?>? extra;
  @override
  final int? version;
  @override
  final DateTime? observedAt;
  @override
  final DateTime? knownAt;
  @override
  final bool? coverageOk;

  factory _$SeriesPoint([void Function(SeriesPointBuilder)? updates]) =>
      (SeriesPointBuilder()..update(updates))._build();

  _$SeriesPoint._(
      {required this.period,
      required this.periodStart,
      required this.periodEnd,
      this.value,
      required this.unit,
      required this.status,
      this.extra,
      this.version,
      this.observedAt,
      this.knownAt,
      this.coverageOk})
      : super._();
  @override
  SeriesPoint rebuild(void Function(SeriesPointBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeriesPointBuilder toBuilder() => SeriesPointBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeriesPoint &&
        period == other.period &&
        periodStart == other.periodStart &&
        periodEnd == other.periodEnd &&
        value == other.value &&
        unit == other.unit &&
        status == other.status &&
        extra == other.extra &&
        version == other.version &&
        observedAt == other.observedAt &&
        knownAt == other.knownAt &&
        coverageOk == other.coverageOk;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jc(_$hash, periodStart.hashCode);
    _$hash = $jc(_$hash, periodEnd.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, unit.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, extra.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, observedAt.hashCode);
    _$hash = $jc(_$hash, knownAt.hashCode);
    _$hash = $jc(_$hash, coverageOk.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeriesPoint')
          ..add('period', period)
          ..add('periodStart', periodStart)
          ..add('periodEnd', periodEnd)
          ..add('value', value)
          ..add('unit', unit)
          ..add('status', status)
          ..add('extra', extra)
          ..add('version', version)
          ..add('observedAt', observedAt)
          ..add('knownAt', knownAt)
          ..add('coverageOk', coverageOk))
        .toString();
  }
}

class SeriesPointBuilder implements Builder<SeriesPoint, SeriesPointBuilder> {
  _$SeriesPoint? _$v;

  String? _period;
  String? get period => _$this._period;
  set period(String? period) => _$this._period = period;

  DateTime? _periodStart;
  DateTime? get periodStart => _$this._periodStart;
  set periodStart(DateTime? periodStart) => _$this._periodStart = periodStart;

  DateTime? _periodEnd;
  DateTime? get periodEnd => _$this._periodEnd;
  set periodEnd(DateTime? periodEnd) => _$this._periodEnd = periodEnd;

  num? _value;
  num? get value => _$this._value;
  set value(num? value) => _$this._value = value;

  String? _unit;
  String? get unit => _$this._unit;
  set unit(String? unit) => _$this._unit = unit;

  SeriesPointStatusEnum? _status;
  SeriesPointStatusEnum? get status => _$this._status;
  set status(SeriesPointStatusEnum? status) => _$this._status = status;

  MapBuilder<String, JsonObject?>? _extra;
  MapBuilder<String, JsonObject?> get extra =>
      _$this._extra ??= MapBuilder<String, JsonObject?>();
  set extra(MapBuilder<String, JsonObject?>? extra) => _$this._extra = extra;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  DateTime? _observedAt;
  DateTime? get observedAt => _$this._observedAt;
  set observedAt(DateTime? observedAt) => _$this._observedAt = observedAt;

  DateTime? _knownAt;
  DateTime? get knownAt => _$this._knownAt;
  set knownAt(DateTime? knownAt) => _$this._knownAt = knownAt;

  bool? _coverageOk;
  bool? get coverageOk => _$this._coverageOk;
  set coverageOk(bool? coverageOk) => _$this._coverageOk = coverageOk;

  SeriesPointBuilder() {
    SeriesPoint._defaults(this);
  }

  SeriesPointBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _period = $v.period;
      _periodStart = $v.periodStart;
      _periodEnd = $v.periodEnd;
      _value = $v.value;
      _unit = $v.unit;
      _status = $v.status;
      _extra = $v.extra?.toBuilder();
      _version = $v.version;
      _observedAt = $v.observedAt;
      _knownAt = $v.knownAt;
      _coverageOk = $v.coverageOk;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeriesPoint other) {
    _$v = other as _$SeriesPoint;
  }

  @override
  void update(void Function(SeriesPointBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeriesPoint build() => _build();

  _$SeriesPoint _build() {
    _$SeriesPoint _$result;
    try {
      _$result = _$v ??
          _$SeriesPoint._(
            period: BuiltValueNullFieldError.checkNotNull(
                period, r'SeriesPoint', 'period'),
            periodStart: BuiltValueNullFieldError.checkNotNull(
                periodStart, r'SeriesPoint', 'periodStart'),
            periodEnd: BuiltValueNullFieldError.checkNotNull(
                periodEnd, r'SeriesPoint', 'periodEnd'),
            value: value,
            unit: BuiltValueNullFieldError.checkNotNull(
                unit, r'SeriesPoint', 'unit'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'SeriesPoint', 'status'),
            extra: _extra?.build(),
            version: version,
            observedAt: observedAt,
            knownAt: knownAt,
            coverageOk: coverageOk,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'extra';
        _extra?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SeriesPoint', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
