// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uv_forecast_payload_hours_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UvForecastPayloadHoursInner extends UvForecastPayloadHoursInner {
  @override
  final DateTime time;
  @override
  final num uv;

  factory _$UvForecastPayloadHoursInner([
    void Function(UvForecastPayloadHoursInnerBuilder)? updates,
  ]) => (UvForecastPayloadHoursInnerBuilder()..update(updates))._build();

  _$UvForecastPayloadHoursInner._({required this.time, required this.uv})
    : super._();
  @override
  UvForecastPayloadHoursInner rebuild(
    void Function(UvForecastPayloadHoursInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UvForecastPayloadHoursInnerBuilder toBuilder() =>
      UvForecastPayloadHoursInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UvForecastPayloadHoursInner &&
        time == other.time &&
        uv == other.uv;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, uv.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UvForecastPayloadHoursInner')
          ..add('time', time)
          ..add('uv', uv))
        .toString();
  }
}

class UvForecastPayloadHoursInnerBuilder
    implements
        Builder<
          UvForecastPayloadHoursInner,
          UvForecastPayloadHoursInnerBuilder
        > {
  _$UvForecastPayloadHoursInner? _$v;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  num? _uv;
  num? get uv => _$this._uv;
  set uv(num? uv) => _$this._uv = uv;

  UvForecastPayloadHoursInnerBuilder() {
    UvForecastPayloadHoursInner._defaults(this);
  }

  UvForecastPayloadHoursInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _time = $v.time;
      _uv = $v.uv;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UvForecastPayloadHoursInner other) {
    _$v = other as _$UvForecastPayloadHoursInner;
  }

  @override
  void update(void Function(UvForecastPayloadHoursInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UvForecastPayloadHoursInner build() => _build();

  _$UvForecastPayloadHoursInner _build() {
    final _$result =
        _$v ??
        _$UvForecastPayloadHoursInner._(
          time: BuiltValueNullFieldError.checkNotNull(
            time,
            r'UvForecastPayloadHoursInner',
            'time',
          ),
          uv: BuiltValueNullFieldError.checkNotNull(
            uv,
            r'UvForecastPayloadHoursInner',
            'uv',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
