// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hypothesis_patch_probability_override.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HypothesisPatchProbabilityOverride
    extends HypothesisPatchProbabilityOverride {
  @override
  final num probability;
  @override
  final String rationale;
  @override
  final bool? exceedCap;

  factory _$HypothesisPatchProbabilityOverride([
    void Function(HypothesisPatchProbabilityOverrideBuilder)? updates,
  ]) => (HypothesisPatchProbabilityOverrideBuilder()..update(updates))._build();

  _$HypothesisPatchProbabilityOverride._({
    required this.probability,
    required this.rationale,
    this.exceedCap,
  }) : super._();
  @override
  HypothesisPatchProbabilityOverride rebuild(
    void Function(HypothesisPatchProbabilityOverrideBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  HypothesisPatchProbabilityOverrideBuilder toBuilder() =>
      HypothesisPatchProbabilityOverrideBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HypothesisPatchProbabilityOverride &&
        probability == other.probability &&
        rationale == other.rationale &&
        exceedCap == other.exceedCap;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, probability.hashCode);
    _$hash = $jc(_$hash, rationale.hashCode);
    _$hash = $jc(_$hash, exceedCap.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HypothesisPatchProbabilityOverride')
          ..add('probability', probability)
          ..add('rationale', rationale)
          ..add('exceedCap', exceedCap))
        .toString();
  }
}

class HypothesisPatchProbabilityOverrideBuilder
    implements
        Builder<
          HypothesisPatchProbabilityOverride,
          HypothesisPatchProbabilityOverrideBuilder
        > {
  _$HypothesisPatchProbabilityOverride? _$v;

  num? _probability;
  num? get probability => _$this._probability;
  set probability(num? probability) => _$this._probability = probability;

  String? _rationale;
  String? get rationale => _$this._rationale;
  set rationale(String? rationale) => _$this._rationale = rationale;

  bool? _exceedCap;
  bool? get exceedCap => _$this._exceedCap;
  set exceedCap(bool? exceedCap) => _$this._exceedCap = exceedCap;

  HypothesisPatchProbabilityOverrideBuilder() {
    HypothesisPatchProbabilityOverride._defaults(this);
  }

  HypothesisPatchProbabilityOverrideBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _probability = $v.probability;
      _rationale = $v.rationale;
      _exceedCap = $v.exceedCap;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HypothesisPatchProbabilityOverride other) {
    _$v = other as _$HypothesisPatchProbabilityOverride;
  }

  @override
  void update(
    void Function(HypothesisPatchProbabilityOverrideBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  HypothesisPatchProbabilityOverride build() => _build();

  _$HypothesisPatchProbabilityOverride _build() {
    final _$result =
        _$v ??
        _$HypothesisPatchProbabilityOverride._(
          probability: BuiltValueNullFieldError.checkNotNull(
            probability,
            r'HypothesisPatchProbabilityOverride',
            'probability',
          ),
          rationale: BuiltValueNullFieldError.checkNotNull(
            rationale,
            r'HypothesisPatchProbabilityOverride',
            'rationale',
          ),
          exceedCap: exceedCap,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
