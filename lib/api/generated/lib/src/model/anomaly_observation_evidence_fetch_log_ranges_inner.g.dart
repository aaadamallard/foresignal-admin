// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anomaly_observation_evidence_fetch_log_ranges_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnomalyObservationEvidenceFetchLogRangesInner
    extends AnomalyObservationEvidenceFetchLogRangesInner {
  @override
  final String sourceId;
  @override
  final int fromId;
  @override
  final int toId;

  factory _$AnomalyObservationEvidenceFetchLogRangesInner(
          [void Function(AnomalyObservationEvidenceFetchLogRangesInnerBuilder)?
              updates]) =>
      (AnomalyObservationEvidenceFetchLogRangesInnerBuilder()..update(updates))
          ._build();

  _$AnomalyObservationEvidenceFetchLogRangesInner._(
      {required this.sourceId, required this.fromId, required this.toId})
      : super._();
  @override
  AnomalyObservationEvidenceFetchLogRangesInner rebuild(
          void Function(AnomalyObservationEvidenceFetchLogRangesInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnomalyObservationEvidenceFetchLogRangesInnerBuilder toBuilder() =>
      AnomalyObservationEvidenceFetchLogRangesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnomalyObservationEvidenceFetchLogRangesInner &&
        sourceId == other.sourceId &&
        fromId == other.fromId &&
        toId == other.toId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, fromId.hashCode);
    _$hash = $jc(_$hash, toId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'AnomalyObservationEvidenceFetchLogRangesInner')
          ..add('sourceId', sourceId)
          ..add('fromId', fromId)
          ..add('toId', toId))
        .toString();
  }
}

class AnomalyObservationEvidenceFetchLogRangesInnerBuilder
    implements
        Builder<AnomalyObservationEvidenceFetchLogRangesInner,
            AnomalyObservationEvidenceFetchLogRangesInnerBuilder> {
  _$AnomalyObservationEvidenceFetchLogRangesInner? _$v;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  int? _fromId;
  int? get fromId => _$this._fromId;
  set fromId(int? fromId) => _$this._fromId = fromId;

  int? _toId;
  int? get toId => _$this._toId;
  set toId(int? toId) => _$this._toId = toId;

  AnomalyObservationEvidenceFetchLogRangesInnerBuilder() {
    AnomalyObservationEvidenceFetchLogRangesInner._defaults(this);
  }

  AnomalyObservationEvidenceFetchLogRangesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceId = $v.sourceId;
      _fromId = $v.fromId;
      _toId = $v.toId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnomalyObservationEvidenceFetchLogRangesInner other) {
    _$v = other as _$AnomalyObservationEvidenceFetchLogRangesInner;
  }

  @override
  void update(
      void Function(AnomalyObservationEvidenceFetchLogRangesInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  AnomalyObservationEvidenceFetchLogRangesInner build() => _build();

  _$AnomalyObservationEvidenceFetchLogRangesInner _build() {
    final _$result = _$v ??
        _$AnomalyObservationEvidenceFetchLogRangesInner._(
          sourceId: BuiltValueNullFieldError.checkNotNull(sourceId,
              r'AnomalyObservationEvidenceFetchLogRangesInner', 'sourceId'),
          fromId: BuiltValueNullFieldError.checkNotNull(fromId,
              r'AnomalyObservationEvidenceFetchLogRangesInner', 'fromId'),
          toId: BuiltValueNullFieldError.checkNotNull(
              toId, r'AnomalyObservationEvidenceFetchLogRangesInner', 'toId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
