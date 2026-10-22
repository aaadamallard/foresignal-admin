// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anomaly_observation_evidence.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnomalyObservationEvidence extends AnomalyObservationEvidence {
  @override
  final BuiltList<AnomalyObservationEvidenceSamplesInner>? samples;
  @override
  final BuiltList<AnomalyObservationEvidenceFetchLogRangesInner>?
      fetchLogRanges;

  factory _$AnomalyObservationEvidence(
          [void Function(AnomalyObservationEvidenceBuilder)? updates]) =>
      (AnomalyObservationEvidenceBuilder()..update(updates))._build();

  _$AnomalyObservationEvidence._({this.samples, this.fetchLogRanges})
      : super._();
  @override
  AnomalyObservationEvidence rebuild(
          void Function(AnomalyObservationEvidenceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnomalyObservationEvidenceBuilder toBuilder() =>
      AnomalyObservationEvidenceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnomalyObservationEvidence &&
        samples == other.samples &&
        fetchLogRanges == other.fetchLogRanges;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, samples.hashCode);
    _$hash = $jc(_$hash, fetchLogRanges.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnomalyObservationEvidence')
          ..add('samples', samples)
          ..add('fetchLogRanges', fetchLogRanges))
        .toString();
  }
}

class AnomalyObservationEvidenceBuilder
    implements
        Builder<AnomalyObservationEvidence, AnomalyObservationEvidenceBuilder> {
  _$AnomalyObservationEvidence? _$v;

  ListBuilder<AnomalyObservationEvidenceSamplesInner>? _samples;
  ListBuilder<AnomalyObservationEvidenceSamplesInner> get samples =>
      _$this._samples ??= ListBuilder<AnomalyObservationEvidenceSamplesInner>();
  set samples(ListBuilder<AnomalyObservationEvidenceSamplesInner>? samples) =>
      _$this._samples = samples;

  ListBuilder<AnomalyObservationEvidenceFetchLogRangesInner>? _fetchLogRanges;
  ListBuilder<AnomalyObservationEvidenceFetchLogRangesInner>
      get fetchLogRanges => _$this._fetchLogRanges ??=
          ListBuilder<AnomalyObservationEvidenceFetchLogRangesInner>();
  set fetchLogRanges(
          ListBuilder<AnomalyObservationEvidenceFetchLogRangesInner>?
              fetchLogRanges) =>
      _$this._fetchLogRanges = fetchLogRanges;

  AnomalyObservationEvidenceBuilder() {
    AnomalyObservationEvidence._defaults(this);
  }

  AnomalyObservationEvidenceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _samples = $v.samples?.toBuilder();
      _fetchLogRanges = $v.fetchLogRanges?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnomalyObservationEvidence other) {
    _$v = other as _$AnomalyObservationEvidence;
  }

  @override
  void update(void Function(AnomalyObservationEvidenceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnomalyObservationEvidence build() => _build();

  _$AnomalyObservationEvidence _build() {
    _$AnomalyObservationEvidence _$result;
    try {
      _$result = _$v ??
          _$AnomalyObservationEvidence._(
            samples: _samples?.build(),
            fetchLogRanges: _fetchLogRanges?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'samples';
        _samples?.build();
        _$failedField = 'fetchLogRanges';
        _fetchLogRanges?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AnomalyObservationEvidence', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
