// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_link_scores_evidence.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleLinkScoresEvidence extends ChronicleLinkScoresEvidence {
  @override
  final num? jaccard;
  @override
  final num? containment;
  @override
  final num? sharedEstimate;

  factory _$ChronicleLinkScoresEvidence([
    void Function(ChronicleLinkScoresEvidenceBuilder)? updates,
  ]) => (ChronicleLinkScoresEvidenceBuilder()..update(updates))._build();

  _$ChronicleLinkScoresEvidence._({
    this.jaccard,
    this.containment,
    this.sharedEstimate,
  }) : super._();
  @override
  ChronicleLinkScoresEvidence rebuild(
    void Function(ChronicleLinkScoresEvidenceBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ChronicleLinkScoresEvidenceBuilder toBuilder() =>
      ChronicleLinkScoresEvidenceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleLinkScoresEvidence &&
        jaccard == other.jaccard &&
        containment == other.containment &&
        sharedEstimate == other.sharedEstimate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, jaccard.hashCode);
    _$hash = $jc(_$hash, containment.hashCode);
    _$hash = $jc(_$hash, sharedEstimate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleLinkScoresEvidence')
          ..add('jaccard', jaccard)
          ..add('containment', containment)
          ..add('sharedEstimate', sharedEstimate))
        .toString();
  }
}

class ChronicleLinkScoresEvidenceBuilder
    implements
        Builder<
          ChronicleLinkScoresEvidence,
          ChronicleLinkScoresEvidenceBuilder
        > {
  _$ChronicleLinkScoresEvidence? _$v;

  num? _jaccard;
  num? get jaccard => _$this._jaccard;
  set jaccard(num? jaccard) => _$this._jaccard = jaccard;

  num? _containment;
  num? get containment => _$this._containment;
  set containment(num? containment) => _$this._containment = containment;

  num? _sharedEstimate;
  num? get sharedEstimate => _$this._sharedEstimate;
  set sharedEstimate(num? sharedEstimate) =>
      _$this._sharedEstimate = sharedEstimate;

  ChronicleLinkScoresEvidenceBuilder() {
    ChronicleLinkScoresEvidence._defaults(this);
  }

  ChronicleLinkScoresEvidenceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jaccard = $v.jaccard;
      _containment = $v.containment;
      _sharedEstimate = $v.sharedEstimate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleLinkScoresEvidence other) {
    _$v = other as _$ChronicleLinkScoresEvidence;
  }

  @override
  void update(void Function(ChronicleLinkScoresEvidenceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleLinkScoresEvidence build() => _build();

  _$ChronicleLinkScoresEvidence _build() {
    final _$result =
        _$v ??
        _$ChronicleLinkScoresEvidence._(
          jaccard: jaccard,
          containment: containment,
          sharedEstimate: sharedEstimate,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
