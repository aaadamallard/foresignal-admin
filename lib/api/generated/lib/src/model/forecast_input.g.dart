// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForecastInput extends ForecastInput {
  @override
  final num? probability;
  @override
  final BuiltMap<String, num>? distribution;
  @override
  final Quantiles? quantiles;
  @override
  final String? rationale;
  @override
  final BuiltList<ForecastCitationsInner>? citations;
  @override
  final String? forecasterId;

  factory _$ForecastInput([void Function(ForecastInputBuilder)? updates]) =>
      (ForecastInputBuilder()..update(updates))._build();

  _$ForecastInput._(
      {this.probability,
      this.distribution,
      this.quantiles,
      this.rationale,
      this.citations,
      this.forecasterId})
      : super._();
  @override
  ForecastInput rebuild(void Function(ForecastInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastInputBuilder toBuilder() => ForecastInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastInput &&
        probability == other.probability &&
        distribution == other.distribution &&
        quantiles == other.quantiles &&
        rationale == other.rationale &&
        citations == other.citations &&
        forecasterId == other.forecasterId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, probability.hashCode);
    _$hash = $jc(_$hash, distribution.hashCode);
    _$hash = $jc(_$hash, quantiles.hashCode);
    _$hash = $jc(_$hash, rationale.hashCode);
    _$hash = $jc(_$hash, citations.hashCode);
    _$hash = $jc(_$hash, forecasterId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecastInput')
          ..add('probability', probability)
          ..add('distribution', distribution)
          ..add('quantiles', quantiles)
          ..add('rationale', rationale)
          ..add('citations', citations)
          ..add('forecasterId', forecasterId))
        .toString();
  }
}

class ForecastInputBuilder
    implements Builder<ForecastInput, ForecastInputBuilder> {
  _$ForecastInput? _$v;

  num? _probability;
  num? get probability => _$this._probability;
  set probability(num? probability) => _$this._probability = probability;

  MapBuilder<String, num>? _distribution;
  MapBuilder<String, num> get distribution =>
      _$this._distribution ??= MapBuilder<String, num>();
  set distribution(MapBuilder<String, num>? distribution) =>
      _$this._distribution = distribution;

  QuantilesBuilder? _quantiles;
  QuantilesBuilder get quantiles => _$this._quantiles ??= QuantilesBuilder();
  set quantiles(QuantilesBuilder? quantiles) => _$this._quantiles = quantiles;

  String? _rationale;
  String? get rationale => _$this._rationale;
  set rationale(String? rationale) => _$this._rationale = rationale;

  ListBuilder<ForecastCitationsInner>? _citations;
  ListBuilder<ForecastCitationsInner> get citations =>
      _$this._citations ??= ListBuilder<ForecastCitationsInner>();
  set citations(ListBuilder<ForecastCitationsInner>? citations) =>
      _$this._citations = citations;

  String? _forecasterId;
  String? get forecasterId => _$this._forecasterId;
  set forecasterId(String? forecasterId) => _$this._forecasterId = forecasterId;

  ForecastInputBuilder() {
    ForecastInput._defaults(this);
  }

  ForecastInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _probability = $v.probability;
      _distribution = $v.distribution?.toBuilder();
      _quantiles = $v.quantiles?.toBuilder();
      _rationale = $v.rationale;
      _citations = $v.citations?.toBuilder();
      _forecasterId = $v.forecasterId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastInput other) {
    _$v = other as _$ForecastInput;
  }

  @override
  void update(void Function(ForecastInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastInput build() => _build();

  _$ForecastInput _build() {
    _$ForecastInput _$result;
    try {
      _$result = _$v ??
          _$ForecastInput._(
            probability: probability,
            distribution: _distribution?.build(),
            quantiles: _quantiles?.build(),
            rationale: rationale,
            citations: _citations?.build(),
            forecasterId: forecasterId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'distribution';
        _distribution?.build();
        _$failedField = 'quantiles';
        _quantiles?.build();

        _$failedField = 'citations';
        _citations?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ForecastInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
