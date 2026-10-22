// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uv_forecast_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UvForecastPayload extends UvForecastPayload {
  @override
  final String zip;
  @override
  final BuiltList<UvForecastPayloadHoursInner> hours;
  @override
  final num? maxUv;
  @override
  final DateTime? maxAt;

  factory _$UvForecastPayload([
    void Function(UvForecastPayloadBuilder)? updates,
  ]) => (UvForecastPayloadBuilder()..update(updates))._build();

  _$UvForecastPayload._({
    required this.zip,
    required this.hours,
    this.maxUv,
    this.maxAt,
  }) : super._();
  @override
  UvForecastPayload rebuild(void Function(UvForecastPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UvForecastPayloadBuilder toBuilder() =>
      UvForecastPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UvForecastPayload &&
        zip == other.zip &&
        hours == other.hours &&
        maxUv == other.maxUv &&
        maxAt == other.maxAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, zip.hashCode);
    _$hash = $jc(_$hash, hours.hashCode);
    _$hash = $jc(_$hash, maxUv.hashCode);
    _$hash = $jc(_$hash, maxAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UvForecastPayload')
          ..add('zip', zip)
          ..add('hours', hours)
          ..add('maxUv', maxUv)
          ..add('maxAt', maxAt))
        .toString();
  }
}

class UvForecastPayloadBuilder
    implements Builder<UvForecastPayload, UvForecastPayloadBuilder> {
  _$UvForecastPayload? _$v;

  String? _zip;
  String? get zip => _$this._zip;
  set zip(String? zip) => _$this._zip = zip;

  ListBuilder<UvForecastPayloadHoursInner>? _hours;
  ListBuilder<UvForecastPayloadHoursInner> get hours =>
      _$this._hours ??= ListBuilder<UvForecastPayloadHoursInner>();
  set hours(ListBuilder<UvForecastPayloadHoursInner>? hours) =>
      _$this._hours = hours;

  num? _maxUv;
  num? get maxUv => _$this._maxUv;
  set maxUv(num? maxUv) => _$this._maxUv = maxUv;

  DateTime? _maxAt;
  DateTime? get maxAt => _$this._maxAt;
  set maxAt(DateTime? maxAt) => _$this._maxAt = maxAt;

  UvForecastPayloadBuilder() {
    UvForecastPayload._defaults(this);
  }

  UvForecastPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _zip = $v.zip;
      _hours = $v.hours.toBuilder();
      _maxUv = $v.maxUv;
      _maxAt = $v.maxAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UvForecastPayload other) {
    _$v = other as _$UvForecastPayload;
  }

  @override
  void update(void Function(UvForecastPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UvForecastPayload build() => _build();

  _$UvForecastPayload _build() {
    _$UvForecastPayload _$result;
    try {
      _$result =
          _$v ??
          _$UvForecastPayload._(
            zip: BuiltValueNullFieldError.checkNotNull(
              zip,
              r'UvForecastPayload',
              'zip',
            ),
            hours: hours.build(),
            maxUv: maxUv,
            maxAt: maxAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hours';
        hours.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UvForecastPayload',
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
