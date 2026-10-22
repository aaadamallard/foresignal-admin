// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anomaly_observation_evidence_samples_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnomalyObservationEvidenceSamplesInner
    extends AnomalyObservationEvidenceSamplesInner {
  @override
  final String source_;
  @override
  final String externalId;
  @override
  final int seq;

  factory _$AnomalyObservationEvidenceSamplesInner([
    void Function(AnomalyObservationEvidenceSamplesInnerBuilder)? updates,
  ]) => (AnomalyObservationEvidenceSamplesInnerBuilder()..update(updates))
      ._build();

  _$AnomalyObservationEvidenceSamplesInner._({
    required this.source_,
    required this.externalId,
    required this.seq,
  }) : super._();
  @override
  AnomalyObservationEvidenceSamplesInner rebuild(
    void Function(AnomalyObservationEvidenceSamplesInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AnomalyObservationEvidenceSamplesInnerBuilder toBuilder() =>
      AnomalyObservationEvidenceSamplesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnomalyObservationEvidenceSamplesInner &&
        source_ == other.source_ &&
        externalId == other.externalId &&
        seq == other.seq;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'AnomalyObservationEvidenceSamplesInner',
          )
          ..add('source_', source_)
          ..add('externalId', externalId)
          ..add('seq', seq))
        .toString();
  }
}

class AnomalyObservationEvidenceSamplesInnerBuilder
    implements
        Builder<
          AnomalyObservationEvidenceSamplesInner,
          AnomalyObservationEvidenceSamplesInnerBuilder
        > {
  _$AnomalyObservationEvidenceSamplesInner? _$v;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

  AnomalyObservationEvidenceSamplesInnerBuilder() {
    AnomalyObservationEvidenceSamplesInner._defaults(this);
  }

  AnomalyObservationEvidenceSamplesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _source_ = $v.source_;
      _externalId = $v.externalId;
      _seq = $v.seq;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnomalyObservationEvidenceSamplesInner other) {
    _$v = other as _$AnomalyObservationEvidenceSamplesInner;
  }

  @override
  void update(
    void Function(AnomalyObservationEvidenceSamplesInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  AnomalyObservationEvidenceSamplesInner build() => _build();

  _$AnomalyObservationEvidenceSamplesInner _build() {
    final _$result =
        _$v ??
        _$AnomalyObservationEvidenceSamplesInner._(
          source_: BuiltValueNullFieldError.checkNotNull(
            source_,
            r'AnomalyObservationEvidenceSamplesInner',
            'source_',
          ),
          externalId: BuiltValueNullFieldError.checkNotNull(
            externalId,
            r'AnomalyObservationEvidenceSamplesInner',
            'externalId',
          ),
          seq: BuiltValueNullFieldError.checkNotNull(
            seq,
            r'AnomalyObservationEvidenceSamplesInner',
            'seq',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
