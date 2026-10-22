// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_weather_digest.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaceWeatherDigest extends PlaceWeatherDigest {
  @override
  final String placeId;
  @override
  final String place;
  @override
  final String timezone;
  @override
  final PlaceWeatherDigestNow? now;
  @override
  final PlaceWeatherDigestPeriod? period;
  @override
  final PlaceWeatherDigestNext? next;

  factory _$PlaceWeatherDigest([
    void Function(PlaceWeatherDigestBuilder)? updates,
  ]) => (PlaceWeatherDigestBuilder()..update(updates))._build();

  _$PlaceWeatherDigest._({
    required this.placeId,
    required this.place,
    required this.timezone,
    this.now,
    this.period,
    this.next,
  }) : super._();
  @override
  PlaceWeatherDigest rebuild(
    void Function(PlaceWeatherDigestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PlaceWeatherDigestBuilder toBuilder() =>
      PlaceWeatherDigestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceWeatherDigest &&
        placeId == other.placeId &&
        place == other.place &&
        timezone == other.timezone &&
        now == other.now &&
        period == other.period &&
        next == other.next;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, placeId.hashCode);
    _$hash = $jc(_$hash, place.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, now.hashCode);
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jc(_$hash, next.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceWeatherDigest')
          ..add('placeId', placeId)
          ..add('place', place)
          ..add('timezone', timezone)
          ..add('now', now)
          ..add('period', period)
          ..add('next', next))
        .toString();
  }
}

class PlaceWeatherDigestBuilder
    implements Builder<PlaceWeatherDigest, PlaceWeatherDigestBuilder> {
  _$PlaceWeatherDigest? _$v;

  String? _placeId;
  String? get placeId => _$this._placeId;
  set placeId(String? placeId) => _$this._placeId = placeId;

  String? _place;
  String? get place => _$this._place;
  set place(String? place) => _$this._place = place;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  PlaceWeatherDigestNowBuilder? _now;
  PlaceWeatherDigestNowBuilder get now =>
      _$this._now ??= PlaceWeatherDigestNowBuilder();
  set now(PlaceWeatherDigestNowBuilder? now) => _$this._now = now;

  PlaceWeatherDigestPeriodBuilder? _period;
  PlaceWeatherDigestPeriodBuilder get period =>
      _$this._period ??= PlaceWeatherDigestPeriodBuilder();
  set period(PlaceWeatherDigestPeriodBuilder? period) =>
      _$this._period = period;

  PlaceWeatherDigestNextBuilder? _next;
  PlaceWeatherDigestNextBuilder get next =>
      _$this._next ??= PlaceWeatherDigestNextBuilder();
  set next(PlaceWeatherDigestNextBuilder? next) => _$this._next = next;

  PlaceWeatherDigestBuilder() {
    PlaceWeatherDigest._defaults(this);
  }

  PlaceWeatherDigestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _placeId = $v.placeId;
      _place = $v.place;
      _timezone = $v.timezone;
      _now = $v.now?.toBuilder();
      _period = $v.period?.toBuilder();
      _next = $v.next?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceWeatherDigest other) {
    _$v = other as _$PlaceWeatherDigest;
  }

  @override
  void update(void Function(PlaceWeatherDigestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceWeatherDigest build() => _build();

  _$PlaceWeatherDigest _build() {
    _$PlaceWeatherDigest _$result;
    try {
      _$result =
          _$v ??
          _$PlaceWeatherDigest._(
            placeId: BuiltValueNullFieldError.checkNotNull(
              placeId,
              r'PlaceWeatherDigest',
              'placeId',
            ),
            place: BuiltValueNullFieldError.checkNotNull(
              place,
              r'PlaceWeatherDigest',
              'place',
            ),
            timezone: BuiltValueNullFieldError.checkNotNull(
              timezone,
              r'PlaceWeatherDigest',
              'timezone',
            ),
            now: _now?.build(),
            period: _period?.build(),
            next: _next?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'now';
        _now?.build();
        _$failedField = 'period';
        _period?.build();
        _$failedField = 'next';
        _next?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PlaceWeatherDigest',
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
