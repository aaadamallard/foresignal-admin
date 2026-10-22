// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hazard_forecast_probability_field_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HazardForecastProbabilityFieldInner
    extends HazardForecastProbabilityFieldInner {
  @override
  final String? band;
  @override
  final num pMin;
  @override
  final num? pMax;
  @override
  final Geometry? geometry;

  factory _$HazardForecastProbabilityFieldInner(
          [void Function(HazardForecastProbabilityFieldInnerBuilder)?
              updates]) =>
      (HazardForecastProbabilityFieldInnerBuilder()..update(updates))._build();

  _$HazardForecastProbabilityFieldInner._(
      {this.band, required this.pMin, this.pMax, this.geometry})
      : super._();
  @override
  HazardForecastProbabilityFieldInner rebuild(
          void Function(HazardForecastProbabilityFieldInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HazardForecastProbabilityFieldInnerBuilder toBuilder() =>
      HazardForecastProbabilityFieldInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HazardForecastProbabilityFieldInner &&
        band == other.band &&
        pMin == other.pMin &&
        pMax == other.pMax &&
        geometry == other.geometry;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, band.hashCode);
    _$hash = $jc(_$hash, pMin.hashCode);
    _$hash = $jc(_$hash, pMax.hashCode);
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HazardForecastProbabilityFieldInner')
          ..add('band', band)
          ..add('pMin', pMin)
          ..add('pMax', pMax)
          ..add('geometry', geometry))
        .toString();
  }
}

class HazardForecastProbabilityFieldInnerBuilder
    implements
        Builder<HazardForecastProbabilityFieldInner,
            HazardForecastProbabilityFieldInnerBuilder> {
  _$HazardForecastProbabilityFieldInner? _$v;

  String? _band;
  String? get band => _$this._band;
  set band(String? band) => _$this._band = band;

  num? _pMin;
  num? get pMin => _$this._pMin;
  set pMin(num? pMin) => _$this._pMin = pMin;

  num? _pMax;
  num? get pMax => _$this._pMax;
  set pMax(num? pMax) => _$this._pMax = pMax;

  GeometryBuilder? _geometry;
  GeometryBuilder get geometry => _$this._geometry ??= GeometryBuilder();
  set geometry(GeometryBuilder? geometry) => _$this._geometry = geometry;

  HazardForecastProbabilityFieldInnerBuilder() {
    HazardForecastProbabilityFieldInner._defaults(this);
  }

  HazardForecastProbabilityFieldInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _band = $v.band;
      _pMin = $v.pMin;
      _pMax = $v.pMax;
      _geometry = $v.geometry?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HazardForecastProbabilityFieldInner other) {
    _$v = other as _$HazardForecastProbabilityFieldInner;
  }

  @override
  void update(
      void Function(HazardForecastProbabilityFieldInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HazardForecastProbabilityFieldInner build() => _build();

  _$HazardForecastProbabilityFieldInner _build() {
    _$HazardForecastProbabilityFieldInner _$result;
    try {
      _$result = _$v ??
          _$HazardForecastProbabilityFieldInner._(
            band: band,
            pMin: BuiltValueNullFieldError.checkNotNull(
                pMin, r'HazardForecastProbabilityFieldInner', 'pMin'),
            pMax: pMax,
            geometry: _geometry?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'geometry';
        _geometry?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'HazardForecastProbabilityFieldInner',
            _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
