// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provenance_hop.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProvenanceHop extends ProvenanceHop {
  @override
  final String instanceId;
  @override
  final String sourceId;
  @override
  final String externalId;
  @override
  final int seq;
  @override
  final DateTime ingestedAt;

  factory _$ProvenanceHop([void Function(ProvenanceHopBuilder)? updates]) =>
      (ProvenanceHopBuilder()..update(updates))._build();

  _$ProvenanceHop._(
      {required this.instanceId,
      required this.sourceId,
      required this.externalId,
      required this.seq,
      required this.ingestedAt})
      : super._();
  @override
  ProvenanceHop rebuild(void Function(ProvenanceHopBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProvenanceHopBuilder toBuilder() => ProvenanceHopBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProvenanceHop &&
        instanceId == other.instanceId &&
        sourceId == other.sourceId &&
        externalId == other.externalId &&
        seq == other.seq &&
        ingestedAt == other.ingestedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, ingestedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProvenanceHop')
          ..add('instanceId', instanceId)
          ..add('sourceId', sourceId)
          ..add('externalId', externalId)
          ..add('seq', seq)
          ..add('ingestedAt', ingestedAt))
        .toString();
  }
}

class ProvenanceHopBuilder
    implements Builder<ProvenanceHop, ProvenanceHopBuilder> {
  _$ProvenanceHop? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

  DateTime? _ingestedAt;
  DateTime? get ingestedAt => _$this._ingestedAt;
  set ingestedAt(DateTime? ingestedAt) => _$this._ingestedAt = ingestedAt;

  ProvenanceHopBuilder() {
    ProvenanceHop._defaults(this);
  }

  ProvenanceHopBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _sourceId = $v.sourceId;
      _externalId = $v.externalId;
      _seq = $v.seq;
      _ingestedAt = $v.ingestedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProvenanceHop other) {
    _$v = other as _$ProvenanceHop;
  }

  @override
  void update(void Function(ProvenanceHopBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProvenanceHop build() => _build();

  _$ProvenanceHop _build() {
    final _$result = _$v ??
        _$ProvenanceHop._(
          instanceId: BuiltValueNullFieldError.checkNotNull(
              instanceId, r'ProvenanceHop', 'instanceId'),
          sourceId: BuiltValueNullFieldError.checkNotNull(
              sourceId, r'ProvenanceHop', 'sourceId'),
          externalId: BuiltValueNullFieldError.checkNotNull(
              externalId, r'ProvenanceHop', 'externalId'),
          seq: BuiltValueNullFieldError.checkNotNull(
              seq, r'ProvenanceHop', 'seq'),
          ingestedAt: BuiltValueNullFieldError.checkNotNull(
              ingestedAt, r'ProvenanceHop', 'ingestedAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
