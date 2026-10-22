// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_link_decision_candidates_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SituationLinkDecisionCandidatesInner
    extends SituationLinkDecisionCandidatesInner {
  @override
  final String situationId;
  @override
  final num score;

  factory _$SituationLinkDecisionCandidatesInner(
          [void Function(SituationLinkDecisionCandidatesInnerBuilder)?
              updates]) =>
      (SituationLinkDecisionCandidatesInnerBuilder()..update(updates))._build();

  _$SituationLinkDecisionCandidatesInner._(
      {required this.situationId, required this.score})
      : super._();
  @override
  SituationLinkDecisionCandidatesInner rebuild(
          void Function(SituationLinkDecisionCandidatesInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SituationLinkDecisionCandidatesInnerBuilder toBuilder() =>
      SituationLinkDecisionCandidatesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationLinkDecisionCandidatesInner &&
        situationId == other.situationId &&
        score == other.score;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, situationId.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SituationLinkDecisionCandidatesInner')
          ..add('situationId', situationId)
          ..add('score', score))
        .toString();
  }
}

class SituationLinkDecisionCandidatesInnerBuilder
    implements
        Builder<SituationLinkDecisionCandidatesInner,
            SituationLinkDecisionCandidatesInnerBuilder> {
  _$SituationLinkDecisionCandidatesInner? _$v;

  String? _situationId;
  String? get situationId => _$this._situationId;
  set situationId(String? situationId) => _$this._situationId = situationId;

  num? _score;
  num? get score => _$this._score;
  set score(num? score) => _$this._score = score;

  SituationLinkDecisionCandidatesInnerBuilder() {
    SituationLinkDecisionCandidatesInner._defaults(this);
  }

  SituationLinkDecisionCandidatesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _situationId = $v.situationId;
      _score = $v.score;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationLinkDecisionCandidatesInner other) {
    _$v = other as _$SituationLinkDecisionCandidatesInner;
  }

  @override
  void update(
      void Function(SituationLinkDecisionCandidatesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationLinkDecisionCandidatesInner build() => _build();

  _$SituationLinkDecisionCandidatesInner _build() {
    final _$result = _$v ??
        _$SituationLinkDecisionCandidatesInner._(
          situationId: BuiltValueNullFieldError.checkNotNull(situationId,
              r'SituationLinkDecisionCandidatesInner', 'situationId'),
          score: BuiltValueNullFieldError.checkNotNull(
              score, r'SituationLinkDecisionCandidatesInner', 'score'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
