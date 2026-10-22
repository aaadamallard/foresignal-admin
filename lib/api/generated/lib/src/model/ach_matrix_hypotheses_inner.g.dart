// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ach_matrix_hypotheses_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AchMatrixHypothesesInner extends AchMatrixHypothesesInner {
  @override
  final String id;
  @override
  final String label;
  @override
  final num probability;
  @override
  final IcdTerm? estimativeTerm;
  @override
  final num inconsistencyScore;

  factory _$AchMatrixHypothesesInner(
          [void Function(AchMatrixHypothesesInnerBuilder)? updates]) =>
      (AchMatrixHypothesesInnerBuilder()..update(updates))._build();

  _$AchMatrixHypothesesInner._(
      {required this.id,
      required this.label,
      required this.probability,
      this.estimativeTerm,
      required this.inconsistencyScore})
      : super._();
  @override
  AchMatrixHypothesesInner rebuild(
          void Function(AchMatrixHypothesesInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AchMatrixHypothesesInnerBuilder toBuilder() =>
      AchMatrixHypothesesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AchMatrixHypothesesInner &&
        id == other.id &&
        label == other.label &&
        probability == other.probability &&
        estimativeTerm == other.estimativeTerm &&
        inconsistencyScore == other.inconsistencyScore;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, probability.hashCode);
    _$hash = $jc(_$hash, estimativeTerm.hashCode);
    _$hash = $jc(_$hash, inconsistencyScore.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AchMatrixHypothesesInner')
          ..add('id', id)
          ..add('label', label)
          ..add('probability', probability)
          ..add('estimativeTerm', estimativeTerm)
          ..add('inconsistencyScore', inconsistencyScore))
        .toString();
  }
}

class AchMatrixHypothesesInnerBuilder
    implements
        Builder<AchMatrixHypothesesInner, AchMatrixHypothesesInnerBuilder> {
  _$AchMatrixHypothesesInner? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  num? _inconsistencyScore;
  num? get inconsistencyScore => _$this._inconsistencyScore;
  set inconsistencyScore(num? inconsistencyScore) =>
      _$this._inconsistencyScore = inconsistencyScore;

  AchMatrixHypothesesInnerBuilder() {
    AchMatrixHypothesesInner._defaults(this);
  }

  AchMatrixHypothesesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _label = $v.label;
      _probability = $v.probability;
      _estimativeTerm = $v.estimativeTerm;
      _inconsistencyScore = $v.inconsistencyScore;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AchMatrixHypothesesInner other) {
    _$v = other as _$AchMatrixHypothesesInner;
  }

  @override
  void update(void Function(AchMatrixHypothesesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AchMatrixHypothesesInner build() => _build();

  _$AchMatrixHypothesesInner _build() {
    final _$result = _$v ??
        _$AchMatrixHypothesesInner._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'AchMatrixHypothesesInner', 'id'),
          label: BuiltValueNullFieldError.checkNotNull(
              label, r'AchMatrixHypothesesInner', 'label'),
          probability: BuiltValueNullFieldError.checkNotNull(
              probability, r'AchMatrixHypothesesInner', 'probability'),
          estimativeTerm: estimativeTerm,
          inconsistencyScore: BuiltValueNullFieldError.checkNotNull(
              inconsistencyScore,
              r'AchMatrixHypothesesInner',
              'inconsistencyScore'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
