// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scorecard_entry_murphy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScorecardEntryMurphy extends ScorecardEntryMurphy {
  @override
  final num reliability;
  @override
  final num resolution;
  @override
  final num uncertainty;
  @override
  final num? withinBinVariance;
  @override
  final num? withinBinCovariance;

  factory _$ScorecardEntryMurphy([
    void Function(ScorecardEntryMurphyBuilder)? updates,
  ]) => (ScorecardEntryMurphyBuilder()..update(updates))._build();

  _$ScorecardEntryMurphy._({
    required this.reliability,
    required this.resolution,
    required this.uncertainty,
    this.withinBinVariance,
    this.withinBinCovariance,
  }) : super._();
  @override
  ScorecardEntryMurphy rebuild(
    void Function(ScorecardEntryMurphyBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ScorecardEntryMurphyBuilder toBuilder() =>
      ScorecardEntryMurphyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScorecardEntryMurphy &&
        reliability == other.reliability &&
        resolution == other.resolution &&
        uncertainty == other.uncertainty &&
        withinBinVariance == other.withinBinVariance &&
        withinBinCovariance == other.withinBinCovariance;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reliability.hashCode);
    _$hash = $jc(_$hash, resolution.hashCode);
    _$hash = $jc(_$hash, uncertainty.hashCode);
    _$hash = $jc(_$hash, withinBinVariance.hashCode);
    _$hash = $jc(_$hash, withinBinCovariance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScorecardEntryMurphy')
          ..add('reliability', reliability)
          ..add('resolution', resolution)
          ..add('uncertainty', uncertainty)
          ..add('withinBinVariance', withinBinVariance)
          ..add('withinBinCovariance', withinBinCovariance))
        .toString();
  }
}

class ScorecardEntryMurphyBuilder
    implements Builder<ScorecardEntryMurphy, ScorecardEntryMurphyBuilder> {
  _$ScorecardEntryMurphy? _$v;

  num? _reliability;
  num? get reliability => _$this._reliability;
  set reliability(num? reliability) => _$this._reliability = reliability;

  num? _resolution;
  num? get resolution => _$this._resolution;
  set resolution(num? resolution) => _$this._resolution = resolution;

  num? _uncertainty;
  num? get uncertainty => _$this._uncertainty;
  set uncertainty(num? uncertainty) => _$this._uncertainty = uncertainty;

  num? _withinBinVariance;
  num? get withinBinVariance => _$this._withinBinVariance;
  set withinBinVariance(num? withinBinVariance) =>
      _$this._withinBinVariance = withinBinVariance;

  num? _withinBinCovariance;
  num? get withinBinCovariance => _$this._withinBinCovariance;
  set withinBinCovariance(num? withinBinCovariance) =>
      _$this._withinBinCovariance = withinBinCovariance;

  ScorecardEntryMurphyBuilder() {
    ScorecardEntryMurphy._defaults(this);
  }

  ScorecardEntryMurphyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reliability = $v.reliability;
      _resolution = $v.resolution;
      _uncertainty = $v.uncertainty;
      _withinBinVariance = $v.withinBinVariance;
      _withinBinCovariance = $v.withinBinCovariance;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScorecardEntryMurphy other) {
    _$v = other as _$ScorecardEntryMurphy;
  }

  @override
  void update(void Function(ScorecardEntryMurphyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScorecardEntryMurphy build() => _build();

  _$ScorecardEntryMurphy _build() {
    final _$result =
        _$v ??
        _$ScorecardEntryMurphy._(
          reliability: BuiltValueNullFieldError.checkNotNull(
            reliability,
            r'ScorecardEntryMurphy',
            'reliability',
          ),
          resolution: BuiltValueNullFieldError.checkNotNull(
            resolution,
            r'ScorecardEntryMurphy',
            'resolution',
          ),
          uncertainty: BuiltValueNullFieldError.checkNotNull(
            uncertainty,
            r'ScorecardEntryMurphy',
            'uncertainty',
          ),
          withinBinVariance: withinBinVariance,
          withinBinCovariance: withinBinCovariance,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
