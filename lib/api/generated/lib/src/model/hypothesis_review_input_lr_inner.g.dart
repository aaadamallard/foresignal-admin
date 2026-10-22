// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hypothesis_review_input_lr_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HypothesisReviewInputLrInner extends HypothesisReviewInputLrInner {
  @override
  final String indicatorId;
  @override
  final String hypothesisId;
  @override
  final IndicatorLikelihood likelihood;

  factory _$HypothesisReviewInputLrInner(
          [void Function(HypothesisReviewInputLrInnerBuilder)? updates]) =>
      (HypothesisReviewInputLrInnerBuilder()..update(updates))._build();

  _$HypothesisReviewInputLrInner._(
      {required this.indicatorId,
      required this.hypothesisId,
      required this.likelihood})
      : super._();
  @override
  HypothesisReviewInputLrInner rebuild(
          void Function(HypothesisReviewInputLrInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HypothesisReviewInputLrInnerBuilder toBuilder() =>
      HypothesisReviewInputLrInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HypothesisReviewInputLrInner &&
        indicatorId == other.indicatorId &&
        hypothesisId == other.hypothesisId &&
        likelihood == other.likelihood;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, indicatorId.hashCode);
    _$hash = $jc(_$hash, hypothesisId.hashCode);
    _$hash = $jc(_$hash, likelihood.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HypothesisReviewInputLrInner')
          ..add('indicatorId', indicatorId)
          ..add('hypothesisId', hypothesisId)
          ..add('likelihood', likelihood))
        .toString();
  }
}

class HypothesisReviewInputLrInnerBuilder
    implements
        Builder<HypothesisReviewInputLrInner,
            HypothesisReviewInputLrInnerBuilder> {
  _$HypothesisReviewInputLrInner? _$v;

  String? _indicatorId;
  String? get indicatorId => _$this._indicatorId;
  set indicatorId(String? indicatorId) => _$this._indicatorId = indicatorId;

  String? _hypothesisId;
  String? get hypothesisId => _$this._hypothesisId;
  set hypothesisId(String? hypothesisId) => _$this._hypothesisId = hypothesisId;

  IndicatorLikelihoodBuilder? _likelihood;
  IndicatorLikelihoodBuilder get likelihood =>
      _$this._likelihood ??= IndicatorLikelihoodBuilder();
  set likelihood(IndicatorLikelihoodBuilder? likelihood) =>
      _$this._likelihood = likelihood;

  HypothesisReviewInputLrInnerBuilder() {
    HypothesisReviewInputLrInner._defaults(this);
  }

  HypothesisReviewInputLrInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _indicatorId = $v.indicatorId;
      _hypothesisId = $v.hypothesisId;
      _likelihood = $v.likelihood.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HypothesisReviewInputLrInner other) {
    _$v = other as _$HypothesisReviewInputLrInner;
  }

  @override
  void update(void Function(HypothesisReviewInputLrInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HypothesisReviewInputLrInner build() => _build();

  _$HypothesisReviewInputLrInner _build() {
    _$HypothesisReviewInputLrInner _$result;
    try {
      _$result = _$v ??
          _$HypothesisReviewInputLrInner._(
            indicatorId: BuiltValueNullFieldError.checkNotNull(
                indicatorId, r'HypothesisReviewInputLrInner', 'indicatorId'),
            hypothesisId: BuiltValueNullFieldError.checkNotNull(
                hypothesisId, r'HypothesisReviewInputLrInner', 'hypothesisId'),
            likelihood: likelihood.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'likelihood';
        likelihood.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'HypothesisReviewInputLrInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
