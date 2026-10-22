// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'observation_link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ObservationLink extends ObservationLink {
  @override
  final String canonicalEventId;
  @override
  final String? recordRef;
  @override
  final String sourceId;
  @override
  final String externalId;
  @override
  final int seq;
  @override
  final int? version;
  @override
  final String originatorId;
  @override
  final Originator? originator;
  @override
  final String? upstreamEventId;
  @override
  final String evidenceGroupId;
  @override
  final num linkConfidence;
  @override
  final ObservationLinkLinkReason linkReason;
  @override
  final DateTime linkedAt;

  factory _$ObservationLink([void Function(ObservationLinkBuilder)? updates]) =>
      (ObservationLinkBuilder()..update(updates))._build();

  _$ObservationLink._({
    required this.canonicalEventId,
    this.recordRef,
    required this.sourceId,
    required this.externalId,
    required this.seq,
    this.version,
    required this.originatorId,
    this.originator,
    this.upstreamEventId,
    required this.evidenceGroupId,
    required this.linkConfidence,
    required this.linkReason,
    required this.linkedAt,
  }) : super._();
  @override
  ObservationLink rebuild(void Function(ObservationLinkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ObservationLinkBuilder toBuilder() => ObservationLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObservationLink &&
        canonicalEventId == other.canonicalEventId &&
        recordRef == other.recordRef &&
        sourceId == other.sourceId &&
        externalId == other.externalId &&
        seq == other.seq &&
        version == other.version &&
        originatorId == other.originatorId &&
        originator == other.originator &&
        upstreamEventId == other.upstreamEventId &&
        evidenceGroupId == other.evidenceGroupId &&
        linkConfidence == other.linkConfidence &&
        linkReason == other.linkReason &&
        linkedAt == other.linkedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, canonicalEventId.hashCode);
    _$hash = $jc(_$hash, recordRef.hashCode);
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, originatorId.hashCode);
    _$hash = $jc(_$hash, originator.hashCode);
    _$hash = $jc(_$hash, upstreamEventId.hashCode);
    _$hash = $jc(_$hash, evidenceGroupId.hashCode);
    _$hash = $jc(_$hash, linkConfidence.hashCode);
    _$hash = $jc(_$hash, linkReason.hashCode);
    _$hash = $jc(_$hash, linkedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ObservationLink')
          ..add('canonicalEventId', canonicalEventId)
          ..add('recordRef', recordRef)
          ..add('sourceId', sourceId)
          ..add('externalId', externalId)
          ..add('seq', seq)
          ..add('version', version)
          ..add('originatorId', originatorId)
          ..add('originator', originator)
          ..add('upstreamEventId', upstreamEventId)
          ..add('evidenceGroupId', evidenceGroupId)
          ..add('linkConfidence', linkConfidence)
          ..add('linkReason', linkReason)
          ..add('linkedAt', linkedAt))
        .toString();
  }
}

class ObservationLinkBuilder
    implements Builder<ObservationLink, ObservationLinkBuilder> {
  _$ObservationLink? _$v;

  String? _canonicalEventId;
  String? get canonicalEventId => _$this._canonicalEventId;
  set canonicalEventId(String? canonicalEventId) =>
      _$this._canonicalEventId = canonicalEventId;

  String? _recordRef;
  String? get recordRef => _$this._recordRef;
  set recordRef(String? recordRef) => _$this._recordRef = recordRef;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  String? _originatorId;
  String? get originatorId => _$this._originatorId;
  set originatorId(String? originatorId) => _$this._originatorId = originatorId;

  OriginatorBuilder? _originator;
  OriginatorBuilder get originator =>
      _$this._originator ??= OriginatorBuilder();
  set originator(OriginatorBuilder? originator) =>
      _$this._originator = originator;

  String? _upstreamEventId;
  String? get upstreamEventId => _$this._upstreamEventId;
  set upstreamEventId(String? upstreamEventId) =>
      _$this._upstreamEventId = upstreamEventId;

  String? _evidenceGroupId;
  String? get evidenceGroupId => _$this._evidenceGroupId;
  set evidenceGroupId(String? evidenceGroupId) =>
      _$this._evidenceGroupId = evidenceGroupId;

  num? _linkConfidence;
  num? get linkConfidence => _$this._linkConfidence;
  set linkConfidence(num? linkConfidence) =>
      _$this._linkConfidence = linkConfidence;

  ObservationLinkLinkReasonBuilder? _linkReason;
  ObservationLinkLinkReasonBuilder get linkReason =>
      _$this._linkReason ??= ObservationLinkLinkReasonBuilder();
  set linkReason(ObservationLinkLinkReasonBuilder? linkReason) =>
      _$this._linkReason = linkReason;

  DateTime? _linkedAt;
  DateTime? get linkedAt => _$this._linkedAt;
  set linkedAt(DateTime? linkedAt) => _$this._linkedAt = linkedAt;

  ObservationLinkBuilder() {
    ObservationLink._defaults(this);
  }

  ObservationLinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _canonicalEventId = $v.canonicalEventId;
      _recordRef = $v.recordRef;
      _sourceId = $v.sourceId;
      _externalId = $v.externalId;
      _seq = $v.seq;
      _version = $v.version;
      _originatorId = $v.originatorId;
      _originator = $v.originator?.toBuilder();
      _upstreamEventId = $v.upstreamEventId;
      _evidenceGroupId = $v.evidenceGroupId;
      _linkConfidence = $v.linkConfidence;
      _linkReason = $v.linkReason.toBuilder();
      _linkedAt = $v.linkedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObservationLink other) {
    _$v = other as _$ObservationLink;
  }

  @override
  void update(void Function(ObservationLinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObservationLink build() => _build();

  _$ObservationLink _build() {
    _$ObservationLink _$result;
    try {
      _$result =
          _$v ??
          _$ObservationLink._(
            canonicalEventId: BuiltValueNullFieldError.checkNotNull(
              canonicalEventId,
              r'ObservationLink',
              'canonicalEventId',
            ),
            recordRef: recordRef,
            sourceId: BuiltValueNullFieldError.checkNotNull(
              sourceId,
              r'ObservationLink',
              'sourceId',
            ),
            externalId: BuiltValueNullFieldError.checkNotNull(
              externalId,
              r'ObservationLink',
              'externalId',
            ),
            seq: BuiltValueNullFieldError.checkNotNull(
              seq,
              r'ObservationLink',
              'seq',
            ),
            version: version,
            originatorId: BuiltValueNullFieldError.checkNotNull(
              originatorId,
              r'ObservationLink',
              'originatorId',
            ),
            originator: _originator?.build(),
            upstreamEventId: upstreamEventId,
            evidenceGroupId: BuiltValueNullFieldError.checkNotNull(
              evidenceGroupId,
              r'ObservationLink',
              'evidenceGroupId',
            ),
            linkConfidence: BuiltValueNullFieldError.checkNotNull(
              linkConfidence,
              r'ObservationLink',
              'linkConfidence',
            ),
            linkReason: linkReason.build(),
            linkedAt: BuiltValueNullFieldError.checkNotNull(
              linkedAt,
              r'ObservationLink',
              'linkedAt',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'originator';
        _originator?.build();

        _$failedField = 'linkReason';
        linkReason.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ObservationLink',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
