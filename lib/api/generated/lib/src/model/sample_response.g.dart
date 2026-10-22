// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SampleResponse extends SampleResponse {
  @override
  final num lon;
  @override
  final num lat;
  @override
  final String? placeId;
  @override
  final String? timezone;
  @override
  final String? time;
  @override
  final DateTime serverTime;
  @override
  final BuiltList<SampleValue> values;
  @override
  final ModelDisagreement? disagreement;
  @override
  final SamplePosition? position;

  factory _$SampleResponse([void Function(SampleResponseBuilder)? updates]) =>
      (SampleResponseBuilder()..update(updates))._build();

  _$SampleResponse._({
    required this.lon,
    required this.lat,
    this.placeId,
    this.timezone,
    this.time,
    required this.serverTime,
    required this.values,
    this.disagreement,
    this.position,
  }) : super._();
  @override
  SampleResponse rebuild(void Function(SampleResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SampleResponseBuilder toBuilder() => SampleResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SampleResponse &&
        lon == other.lon &&
        lat == other.lat &&
        placeId == other.placeId &&
        timezone == other.timezone &&
        time == other.time &&
        serverTime == other.serverTime &&
        values == other.values &&
        disagreement == other.disagreement &&
        position == other.position;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lon.hashCode);
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, placeId.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, serverTime.hashCode);
    _$hash = $jc(_$hash, values.hashCode);
    _$hash = $jc(_$hash, disagreement.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SampleResponse')
          ..add('lon', lon)
          ..add('lat', lat)
          ..add('placeId', placeId)
          ..add('timezone', timezone)
          ..add('time', time)
          ..add('serverTime', serverTime)
          ..add('values', values)
          ..add('disagreement', disagreement)
          ..add('position', position))
        .toString();
  }
}

class SampleResponseBuilder
    implements Builder<SampleResponse, SampleResponseBuilder> {
  _$SampleResponse? _$v;

  num? _lon;
  num? get lon => _$this._lon;
  set lon(num? lon) => _$this._lon = lon;

  num? _lat;
  num? get lat => _$this._lat;
  set lat(num? lat) => _$this._lat = lat;

  String? _placeId;
  String? get placeId => _$this._placeId;
  set placeId(String? placeId) => _$this._placeId = placeId;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  DateTime? _serverTime;
  DateTime? get serverTime => _$this._serverTime;
  set serverTime(DateTime? serverTime) => _$this._serverTime = serverTime;

  ListBuilder<SampleValue>? _values;
  ListBuilder<SampleValue> get values =>
      _$this._values ??= ListBuilder<SampleValue>();
  set values(ListBuilder<SampleValue>? values) => _$this._values = values;

  ModelDisagreementBuilder? _disagreement;
  ModelDisagreementBuilder get disagreement =>
      _$this._disagreement ??= ModelDisagreementBuilder();
  set disagreement(ModelDisagreementBuilder? disagreement) =>
      _$this._disagreement = disagreement;

  SamplePositionBuilder? _position;
  SamplePositionBuilder get position =>
      _$this._position ??= SamplePositionBuilder();
  set position(SamplePositionBuilder? position) => _$this._position = position;

  SampleResponseBuilder() {
    SampleResponse._defaults(this);
  }

  SampleResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lon = $v.lon;
      _lat = $v.lat;
      _placeId = $v.placeId;
      _timezone = $v.timezone;
      _time = $v.time;
      _serverTime = $v.serverTime;
      _values = $v.values.toBuilder();
      _disagreement = $v.disagreement?.toBuilder();
      _position = $v.position?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SampleResponse other) {
    _$v = other as _$SampleResponse;
  }

  @override
  void update(void Function(SampleResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SampleResponse build() => _build();

  _$SampleResponse _build() {
    _$SampleResponse _$result;
    try {
      _$result =
          _$v ??
          _$SampleResponse._(
            lon: BuiltValueNullFieldError.checkNotNull(
              lon,
              r'SampleResponse',
              'lon',
            ),
            lat: BuiltValueNullFieldError.checkNotNull(
              lat,
              r'SampleResponse',
              'lat',
            ),
            placeId: placeId,
            timezone: timezone,
            time: time,
            serverTime: BuiltValueNullFieldError.checkNotNull(
              serverTime,
              r'SampleResponse',
              'serverTime',
            ),
            values: values.build(),
            disagreement: _disagreement?.build(),
            position: _position?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'values';
        values.build();
        _$failedField = 'disagreement';
        _disagreement?.build();
        _$failedField = 'position';
        _position?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SampleResponse',
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
