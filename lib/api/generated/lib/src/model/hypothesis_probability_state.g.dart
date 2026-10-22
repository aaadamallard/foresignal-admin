// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hypothesis_probability_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HypothesisProbabilityState extends HypothesisProbabilityState {
  @override
  final String hypothesisId;
  @override
  final String? label;
  @override
  final num probability;
  @override
  final IcdTerm estimativeTerm;
  @override
  final ConfidenceLevel? confidence;

  factory _$HypothesisProbabilityState(
          [void Function(HypothesisProbabilityStateBuilder)? updates]) =>
      (HypothesisProbabilityStateBuilder()..update(updates))._build();

  _$HypothesisProbabilityState._(
      {required this.hypothesisId,
      this.label,
      required this.probability,
      required this.estimativeTerm,
      this.confidence})
      : super._();
  @override
  HypothesisProbabilityState rebuild(
          void Function(HypothesisProbabilityStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HypothesisProbabilityStateBuilder toBuilder() =>
      HypothesisProbabilityStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HypothesisProbabilityState &&
        hypothesisId == other.hypothesisId &&
        label == other.label &&
        probability == other.probability &&
        estimativeTerm == other.estimativeTerm &&
        confidence == other.confidence;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hypothesisId.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, probability.hashCode);
    _$hash = $jc(_$hash, estimativeTerm.hashCode);
    _$hash = $jc(_$hash, confidence.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HypothesisProbabilityState')
          ..add('hypothesisId', hypothesisId)
          ..add('label', label)
          ..add('probability', probability)
          ..add('estimativeTerm', estimativeTerm)
          ..add('confidence', confidence))
        .toString();
  }
}

class HypothesisProbabilityStateBuilder
    implements
        Builder<HypothesisProbabilityState, HypothesisProbabilityStateBuilder> {
  _$HypothesisProbabilityState? _$v;

  String? _hypothesisId;
  String? get hypothesisId => _$this._hypothesisId;
  set hypothesisId(String? hypothesisId) => _$this._hypothesisId = hypothesisId;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  num? _probability;
  num? get probability => _$this._probability;
  set probability(num? probability) => _$this._probability = probability;

  IcdTerm? _estimativeTerm;
  IcdTerm? get estimativeTerm => _$this._estimativeTerm;
  set estimativeTerm(IcdTerm? estimativeTerm) =>
      _$this._estimativeTerm = estimativeTerm;

  ConfidenceLevel? _confidence;
  ConfidenceLevel? get confidence => _$this._confidence;
  set confidence(ConfidenceLevel? confidence) =>
      _$this._confidence = confidence;

  HypothesisProbabilityStateBuilder() {
    HypothesisProbabilityState._defaults(this);
  }

  HypothesisProbabilityStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hypothesisId = $v.hypothesisId;
      _label = $v.label;
      _probability = $v.probability;
      _estimativeTerm = $v.estimativeTerm;
      _confidence = $v.confidence;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HypothesisProbabilityState other) {
    _$v = other as _$HypothesisProbabilityState;
  }

  @override
  void update(void Function(HypothesisProbabilityStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HypothesisProbabilityState build() => _build();

  _$HypothesisProbabilityState _build() {
    final _$result = _$v ??
        _$HypothesisProbabilityState._(
          hypothesisId: BuiltValueNullFieldError.checkNotNull(
              hypothesisId, r'HypothesisProbabilityState', 'hypothesisId'),
          label: label,
          probability: BuiltValueNullFieldError.checkNotNull(
              probability, r'HypothesisProbabilityState', 'probability'),
          estimativeTerm: BuiltValueNullFieldError.checkNotNull(
              estimativeTerm, r'HypothesisProbabilityState', 'estimativeTerm'),
          confidence: confidence,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
