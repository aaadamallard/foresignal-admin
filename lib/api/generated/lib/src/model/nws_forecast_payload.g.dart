// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nws_forecast_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NwsForecastPayload extends NwsForecastPayload {
  @override
  final String place;
  @override
  final String wfo;
  @override
  final int gridX;
  @override
  final int gridY;
  @override
  final int? popMax24h;
  @override
  final num? qpf24hMm;
  @override
  final num? tMaxC24h;
  @override
  final num? tMinC24h;
  @override
  final num? gustMaxMs24h;
  @override
  final BuiltList<NwsForecastPayloadHazardsInner>? hazards;
  @override
  final DateTime forecastUpdated;

  factory _$NwsForecastPayload(
          [void Function(NwsForecastPayloadBuilder)? updates]) =>
      (NwsForecastPayloadBuilder()..update(updates))._build();

  _$NwsForecastPayload._(
      {required this.place,
      required this.wfo,
      required this.gridX,
      required this.gridY,
      this.popMax24h,
      this.qpf24hMm,
      this.tMaxC24h,
      this.tMinC24h,
      this.gustMaxMs24h,
      this.hazards,
      required this.forecastUpdated})
      : super._();
  @override
  NwsForecastPayload rebuild(
          void Function(NwsForecastPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NwsForecastPayloadBuilder toBuilder() =>
      NwsForecastPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NwsForecastPayload &&
        place == other.place &&
        wfo == other.wfo &&
        gridX == other.gridX &&
        gridY == other.gridY &&
        popMax24h == other.popMax24h &&
        qpf24hMm == other.qpf24hMm &&
        tMaxC24h == other.tMaxC24h &&
        tMinC24h == other.tMinC24h &&
        gustMaxMs24h == other.gustMaxMs24h &&
        hazards == other.hazards &&
        forecastUpdated == other.forecastUpdated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, place.hashCode);
    _$hash = $jc(_$hash, wfo.hashCode);
    _$hash = $jc(_$hash, gridX.hashCode);
    _$hash = $jc(_$hash, gridY.hashCode);
    _$hash = $jc(_$hash, popMax24h.hashCode);
    _$hash = $jc(_$hash, qpf24hMm.hashCode);
    _$hash = $jc(_$hash, tMaxC24h.hashCode);
    _$hash = $jc(_$hash, tMinC24h.hashCode);
    _$hash = $jc(_$hash, gustMaxMs24h.hashCode);
    _$hash = $jc(_$hash, hazards.hashCode);
    _$hash = $jc(_$hash, forecastUpdated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NwsForecastPayload')
          ..add('place', place)
          ..add('wfo', wfo)
          ..add('gridX', gridX)
          ..add('gridY', gridY)
          ..add('popMax24h', popMax24h)
          ..add('qpf24hMm', qpf24hMm)
          ..add('tMaxC24h', tMaxC24h)
          ..add('tMinC24h', tMinC24h)
          ..add('gustMaxMs24h', gustMaxMs24h)
          ..add('hazards', hazards)
          ..add('forecastUpdated', forecastUpdated))
        .toString();
  }
}

class NwsForecastPayloadBuilder
    implements Builder<NwsForecastPayload, NwsForecastPayloadBuilder> {
  _$NwsForecastPayload? _$v;

  String? _place;
  String? get place => _$this._place;
  set place(String? place) => _$this._place = place;

  String? _wfo;
  String? get wfo => _$this._wfo;
  set wfo(String? wfo) => _$this._wfo = wfo;

  int? _gridX;
  int? get gridX => _$this._gridX;
  set gridX(int? gridX) => _$this._gridX = gridX;

  int? _gridY;
  int? get gridY => _$this._gridY;
  set gridY(int? gridY) => _$this._gridY = gridY;

  int? _popMax24h;
  int? get popMax24h => _$this._popMax24h;
  set popMax24h(int? popMax24h) => _$this._popMax24h = popMax24h;

  num? _qpf24hMm;
  num? get qpf24hMm => _$this._qpf24hMm;
  set qpf24hMm(num? qpf24hMm) => _$this._qpf24hMm = qpf24hMm;

  num? _tMaxC24h;
  num? get tMaxC24h => _$this._tMaxC24h;
  set tMaxC24h(num? tMaxC24h) => _$this._tMaxC24h = tMaxC24h;

  num? _tMinC24h;
  num? get tMinC24h => _$this._tMinC24h;
  set tMinC24h(num? tMinC24h) => _$this._tMinC24h = tMinC24h;

  num? _gustMaxMs24h;
  num? get gustMaxMs24h => _$this._gustMaxMs24h;
  set gustMaxMs24h(num? gustMaxMs24h) => _$this._gustMaxMs24h = gustMaxMs24h;

  ListBuilder<NwsForecastPayloadHazardsInner>? _hazards;
  ListBuilder<NwsForecastPayloadHazardsInner> get hazards =>
      _$this._hazards ??= ListBuilder<NwsForecastPayloadHazardsInner>();
  set hazards(ListBuilder<NwsForecastPayloadHazardsInner>? hazards) =>
      _$this._hazards = hazards;

  DateTime? _forecastUpdated;
  DateTime? get forecastUpdated => _$this._forecastUpdated;
  set forecastUpdated(DateTime? forecastUpdated) =>
      _$this._forecastUpdated = forecastUpdated;

  NwsForecastPayloadBuilder() {
    NwsForecastPayload._defaults(this);
  }

  NwsForecastPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _place = $v.place;
      _wfo = $v.wfo;
      _gridX = $v.gridX;
      _gridY = $v.gridY;
      _popMax24h = $v.popMax24h;
      _qpf24hMm = $v.qpf24hMm;
      _tMaxC24h = $v.tMaxC24h;
      _tMinC24h = $v.tMinC24h;
      _gustMaxMs24h = $v.gustMaxMs24h;
      _hazards = $v.hazards?.toBuilder();
      _forecastUpdated = $v.forecastUpdated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NwsForecastPayload other) {
    _$v = other as _$NwsForecastPayload;
  }

  @override
  void update(void Function(NwsForecastPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NwsForecastPayload build() => _build();

  _$NwsForecastPayload _build() {
    _$NwsForecastPayload _$result;
    try {
      _$result = _$v ??
          _$NwsForecastPayload._(
            place: BuiltValueNullFieldError.checkNotNull(
                place, r'NwsForecastPayload', 'place'),
            wfo: BuiltValueNullFieldError.checkNotNull(
                wfo, r'NwsForecastPayload', 'wfo'),
            gridX: BuiltValueNullFieldError.checkNotNull(
                gridX, r'NwsForecastPayload', 'gridX'),
            gridY: BuiltValueNullFieldError.checkNotNull(
                gridY, r'NwsForecastPayload', 'gridY'),
            popMax24h: popMax24h,
            qpf24hMm: qpf24hMm,
            tMaxC24h: tMaxC24h,
            tMinC24h: tMinC24h,
            gustMaxMs24h: gustMaxMs24h,
            hazards: _hazards?.build(),
            forecastUpdated: BuiltValueNullFieldError.checkNotNull(
                forecastUpdated, r'NwsForecastPayload', 'forecastUpdated'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hazards';
        _hazards?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NwsForecastPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
