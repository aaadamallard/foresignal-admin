// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hypothesis_confidence_basis.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HypothesisConfidenceBasis extends HypothesisConfidenceBasis {
  @override
  final int? observedIndicators;
  @override
  final int? families;
  @override
  final String? evidenceQuality;
  @override
  final String? sourceReliability;
  @override
  final String? coverage;
  @override
  final String? reportingDensity;
  @override
  final num? forecasterAgreement;
  @override
  final bool? brokenLinchpin;
  @override
  final String? rule;
  @override
  final String? newsCoverage;
  @override
  final String? circularReporting;
  @override
  final int? circularSupports;

  factory _$HypothesisConfidenceBasis(
          [void Function(HypothesisConfidenceBasisBuilder)? updates]) =>
      (HypothesisConfidenceBasisBuilder()..update(updates))._build();

  _$HypothesisConfidenceBasis._(
      {this.observedIndicators,
      this.families,
      this.evidenceQuality,
      this.sourceReliability,
      this.coverage,
      this.reportingDensity,
      this.forecasterAgreement,
      this.brokenLinchpin,
      this.rule,
      this.newsCoverage,
      this.circularReporting,
      this.circularSupports})
      : super._();
  @override
  HypothesisConfidenceBasis rebuild(
          void Function(HypothesisConfidenceBasisBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HypothesisConfidenceBasisBuilder toBuilder() =>
      HypothesisConfidenceBasisBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HypothesisConfidenceBasis &&
        observedIndicators == other.observedIndicators &&
        families == other.families &&
        evidenceQuality == other.evidenceQuality &&
        sourceReliability == other.sourceReliability &&
        coverage == other.coverage &&
        reportingDensity == other.reportingDensity &&
        forecasterAgreement == other.forecasterAgreement &&
        brokenLinchpin == other.brokenLinchpin &&
        rule == other.rule &&
        newsCoverage == other.newsCoverage &&
        circularReporting == other.circularReporting &&
        circularSupports == other.circularSupports;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, observedIndicators.hashCode);
    _$hash = $jc(_$hash, families.hashCode);
    _$hash = $jc(_$hash, evidenceQuality.hashCode);
    _$hash = $jc(_$hash, sourceReliability.hashCode);
    _$hash = $jc(_$hash, coverage.hashCode);
    _$hash = $jc(_$hash, reportingDensity.hashCode);
    _$hash = $jc(_$hash, forecasterAgreement.hashCode);
    _$hash = $jc(_$hash, brokenLinchpin.hashCode);
    _$hash = $jc(_$hash, rule.hashCode);
    _$hash = $jc(_$hash, newsCoverage.hashCode);
    _$hash = $jc(_$hash, circularReporting.hashCode);
    _$hash = $jc(_$hash, circularSupports.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HypothesisConfidenceBasis')
          ..add('observedIndicators', observedIndicators)
          ..add('families', families)
          ..add('evidenceQuality', evidenceQuality)
          ..add('sourceReliability', sourceReliability)
          ..add('coverage', coverage)
          ..add('reportingDensity', reportingDensity)
          ..add('forecasterAgreement', forecasterAgreement)
          ..add('brokenLinchpin', brokenLinchpin)
          ..add('rule', rule)
          ..add('newsCoverage', newsCoverage)
          ..add('circularReporting', circularReporting)
          ..add('circularSupports', circularSupports))
        .toString();
  }
}

class HypothesisConfidenceBasisBuilder
    implements
        Builder<HypothesisConfidenceBasis, HypothesisConfidenceBasisBuilder> {
  _$HypothesisConfidenceBasis? _$v;

  int? _observedIndicators;
  int? get observedIndicators => _$this._observedIndicators;
  set observedIndicators(int? observedIndicators) =>
      _$this._observedIndicators = observedIndicators;

  int? _families;
  int? get families => _$this._families;
  set families(int? families) => _$this._families = families;

  String? _evidenceQuality;
  String? get evidenceQuality => _$this._evidenceQuality;
  set evidenceQuality(String? evidenceQuality) =>
      _$this._evidenceQuality = evidenceQuality;

  String? _sourceReliability;
  String? get sourceReliability => _$this._sourceReliability;
  set sourceReliability(String? sourceReliability) =>
      _$this._sourceReliability = sourceReliability;

  String? _coverage;
  String? get coverage => _$this._coverage;
  set coverage(String? coverage) => _$this._coverage = coverage;

  String? _reportingDensity;
  String? get reportingDensity => _$this._reportingDensity;
  set reportingDensity(String? reportingDensity) =>
      _$this._reportingDensity = reportingDensity;

  num? _forecasterAgreement;
  num? get forecasterAgreement => _$this._forecasterAgreement;
  set forecasterAgreement(num? forecasterAgreement) =>
      _$this._forecasterAgreement = forecasterAgreement;

  bool? _brokenLinchpin;
  bool? get brokenLinchpin => _$this._brokenLinchpin;
  set brokenLinchpin(bool? brokenLinchpin) =>
      _$this._brokenLinchpin = brokenLinchpin;

  String? _rule;
  String? get rule => _$this._rule;
  set rule(String? rule) => _$this._rule = rule;

  String? _newsCoverage;
  String? get newsCoverage => _$this._newsCoverage;
  set newsCoverage(String? newsCoverage) => _$this._newsCoverage = newsCoverage;

  String? _circularReporting;
  String? get circularReporting => _$this._circularReporting;
  set circularReporting(String? circularReporting) =>
      _$this._circularReporting = circularReporting;

  int? _circularSupports;
  int? get circularSupports => _$this._circularSupports;
  set circularSupports(int? circularSupports) =>
      _$this._circularSupports = circularSupports;

  HypothesisConfidenceBasisBuilder() {
    HypothesisConfidenceBasis._defaults(this);
  }

  HypothesisConfidenceBasisBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _observedIndicators = $v.observedIndicators;
      _families = $v.families;
      _evidenceQuality = $v.evidenceQuality;
      _sourceReliability = $v.sourceReliability;
      _coverage = $v.coverage;
      _reportingDensity = $v.reportingDensity;
      _forecasterAgreement = $v.forecasterAgreement;
      _brokenLinchpin = $v.brokenLinchpin;
      _rule = $v.rule;
      _newsCoverage = $v.newsCoverage;
      _circularReporting = $v.circularReporting;
      _circularSupports = $v.circularSupports;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HypothesisConfidenceBasis other) {
    _$v = other as _$HypothesisConfidenceBasis;
  }

  @override
  void update(void Function(HypothesisConfidenceBasisBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HypothesisConfidenceBasis build() => _build();

  _$HypothesisConfidenceBasis _build() {
    final _$result = _$v ??
        _$HypothesisConfidenceBasis._(
          observedIndicators: observedIndicators,
          families: families,
          evidenceQuality: evidenceQuality,
          sourceReliability: sourceReliability,
          coverage: coverage,
          reportingDensity: reportingDensity,
          forecasterAgreement: forecasterAgreement,
          brokenLinchpin: brokenLinchpin,
          rule: rule,
          newsCoverage: newsCoverage,
          circularReporting: circularReporting,
          circularSupports: circularSupports,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
