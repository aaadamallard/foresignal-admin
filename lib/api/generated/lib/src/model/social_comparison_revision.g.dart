// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_comparison_revision.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SocialComparisonRevisionStatusEnum
    _$socialComparisonRevisionStatusEnum_pending =
    const SocialComparisonRevisionStatusEnum._('pending');
const SocialComparisonRevisionStatusEnum
    _$socialComparisonRevisionStatusEnum_corroborated =
    const SocialComparisonRevisionStatusEnum._('corroborated');
const SocialComparisonRevisionStatusEnum
    _$socialComparisonRevisionStatusEnum_unobserved =
    const SocialComparisonRevisionStatusEnum._('unobserved');
const SocialComparisonRevisionStatusEnum
    _$socialComparisonRevisionStatusEnum_contradicted =
    const SocialComparisonRevisionStatusEnum._('contradicted');
const SocialComparisonRevisionStatusEnum
    _$socialComparisonRevisionStatusEnum_insufficientCoverage =
    const SocialComparisonRevisionStatusEnum._('insufficientCoverage');

SocialComparisonRevisionStatusEnum _$socialComparisonRevisionStatusEnumValueOf(
    String name) {
  switch (name) {
    case 'pending':
      return _$socialComparisonRevisionStatusEnum_pending;
    case 'corroborated':
      return _$socialComparisonRevisionStatusEnum_corroborated;
    case 'unobserved':
      return _$socialComparisonRevisionStatusEnum_unobserved;
    case 'contradicted':
      return _$socialComparisonRevisionStatusEnum_contradicted;
    case 'insufficientCoverage':
      return _$socialComparisonRevisionStatusEnum_insufficientCoverage;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SocialComparisonRevisionStatusEnum>
    _$socialComparisonRevisionStatusEnumValues = BuiltSet<
        SocialComparisonRevisionStatusEnum>(const <SocialComparisonRevisionStatusEnum>[
  _$socialComparisonRevisionStatusEnum_pending,
  _$socialComparisonRevisionStatusEnum_corroborated,
  _$socialComparisonRevisionStatusEnum_unobserved,
  _$socialComparisonRevisionStatusEnum_contradicted,
  _$socialComparisonRevisionStatusEnum_insufficientCoverage,
]);

const SocialComparisonRevisionPreviousStatusEnum
    _$socialComparisonRevisionPreviousStatusEnum_pending =
    const SocialComparisonRevisionPreviousStatusEnum._('pending');
const SocialComparisonRevisionPreviousStatusEnum
    _$socialComparisonRevisionPreviousStatusEnum_corroborated =
    const SocialComparisonRevisionPreviousStatusEnum._('corroborated');
const SocialComparisonRevisionPreviousStatusEnum
    _$socialComparisonRevisionPreviousStatusEnum_unobserved =
    const SocialComparisonRevisionPreviousStatusEnum._('unobserved');
const SocialComparisonRevisionPreviousStatusEnum
    _$socialComparisonRevisionPreviousStatusEnum_contradicted =
    const SocialComparisonRevisionPreviousStatusEnum._('contradicted');
const SocialComparisonRevisionPreviousStatusEnum
    _$socialComparisonRevisionPreviousStatusEnum_insufficientCoverage =
    const SocialComparisonRevisionPreviousStatusEnum._('insufficientCoverage');

SocialComparisonRevisionPreviousStatusEnum
    _$socialComparisonRevisionPreviousStatusEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$socialComparisonRevisionPreviousStatusEnum_pending;
    case 'corroborated':
      return _$socialComparisonRevisionPreviousStatusEnum_corroborated;
    case 'unobserved':
      return _$socialComparisonRevisionPreviousStatusEnum_unobserved;
    case 'contradicted':
      return _$socialComparisonRevisionPreviousStatusEnum_contradicted;
    case 'insufficientCoverage':
      return _$socialComparisonRevisionPreviousStatusEnum_insufficientCoverage;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SocialComparisonRevisionPreviousStatusEnum>
    _$socialComparisonRevisionPreviousStatusEnumValues = BuiltSet<
        SocialComparisonRevisionPreviousStatusEnum>(const <SocialComparisonRevisionPreviousStatusEnum>[
  _$socialComparisonRevisionPreviousStatusEnum_pending,
  _$socialComparisonRevisionPreviousStatusEnum_corroborated,
  _$socialComparisonRevisionPreviousStatusEnum_unobserved,
  _$socialComparisonRevisionPreviousStatusEnum_contradicted,
  _$socialComparisonRevisionPreviousStatusEnum_insufficientCoverage,
]);

Serializer<SocialComparisonRevisionStatusEnum>
    _$socialComparisonRevisionStatusEnumSerializer =
    _$SocialComparisonRevisionStatusEnumSerializer();
Serializer<SocialComparisonRevisionPreviousStatusEnum>
    _$socialComparisonRevisionPreviousStatusEnumSerializer =
    _$SocialComparisonRevisionPreviousStatusEnumSerializer();

class _$SocialComparisonRevisionStatusEnumSerializer
    implements PrimitiveSerializer<SocialComparisonRevisionStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'corroborated': 'corroborated',
    'unobserved': 'unobserved',
    'contradicted': 'contradicted',
    'insufficientCoverage': 'insufficient-coverage',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'corroborated': 'corroborated',
    'unobserved': 'unobserved',
    'contradicted': 'contradicted',
    'insufficient-coverage': 'insufficientCoverage',
  };

  @override
  final Iterable<Type> types = const <Type>[SocialComparisonRevisionStatusEnum];
  @override
  final String wireName = 'SocialComparisonRevisionStatusEnum';

  @override
  Object serialize(
          Serializers serializers, SocialComparisonRevisionStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SocialComparisonRevisionStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SocialComparisonRevisionStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SocialComparisonRevisionPreviousStatusEnumSerializer
    implements PrimitiveSerializer<SocialComparisonRevisionPreviousStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'corroborated': 'corroborated',
    'unobserved': 'unobserved',
    'contradicted': 'contradicted',
    'insufficientCoverage': 'insufficient-coverage',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'corroborated': 'corroborated',
    'unobserved': 'unobserved',
    'contradicted': 'contradicted',
    'insufficient-coverage': 'insufficientCoverage',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SocialComparisonRevisionPreviousStatusEnum
  ];
  @override
  final String wireName = 'SocialComparisonRevisionPreviousStatusEnum';

  @override
  Object serialize(Serializers serializers,
          SocialComparisonRevisionPreviousStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SocialComparisonRevisionPreviousStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SocialComparisonRevisionPreviousStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SocialComparisonRevision extends SocialComparisonRevision {
  @override
  final int revision;
  @override
  final DateTime at;
  @override
  final SocialComparisonRevisionStatusEnum status;
  @override
  final SocialComparisonRevisionPreviousStatusEnum? previousStatus;
  @override
  final String reason;
  @override
  final BuiltList<String>? physicalEvidenceRefs;
  @override
  final String? manifestId;

  factory _$SocialComparisonRevision(
          [void Function(SocialComparisonRevisionBuilder)? updates]) =>
      (SocialComparisonRevisionBuilder()..update(updates))._build();

  _$SocialComparisonRevision._(
      {required this.revision,
      required this.at,
      required this.status,
      this.previousStatus,
      required this.reason,
      this.physicalEvidenceRefs,
      this.manifestId})
      : super._();
  @override
  SocialComparisonRevision rebuild(
          void Function(SocialComparisonRevisionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialComparisonRevisionBuilder toBuilder() =>
      SocialComparisonRevisionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialComparisonRevision &&
        revision == other.revision &&
        at == other.at &&
        status == other.status &&
        previousStatus == other.previousStatus &&
        reason == other.reason &&
        physicalEvidenceRefs == other.physicalEvidenceRefs &&
        manifestId == other.manifestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, revision.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, previousStatus.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, physicalEvidenceRefs.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialComparisonRevision')
          ..add('revision', revision)
          ..add('at', at)
          ..add('status', status)
          ..add('previousStatus', previousStatus)
          ..add('reason', reason)
          ..add('physicalEvidenceRefs', physicalEvidenceRefs)
          ..add('manifestId', manifestId))
        .toString();
  }
}

class SocialComparisonRevisionBuilder
    implements
        Builder<SocialComparisonRevision, SocialComparisonRevisionBuilder> {
  _$SocialComparisonRevision? _$v;

  int? _revision;
  int? get revision => _$this._revision;
  set revision(int? revision) => _$this._revision = revision;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  SocialComparisonRevisionStatusEnum? _status;
  SocialComparisonRevisionStatusEnum? get status => _$this._status;
  set status(SocialComparisonRevisionStatusEnum? status) =>
      _$this._status = status;

  SocialComparisonRevisionPreviousStatusEnum? _previousStatus;
  SocialComparisonRevisionPreviousStatusEnum? get previousStatus =>
      _$this._previousStatus;
  set previousStatus(
          SocialComparisonRevisionPreviousStatusEnum? previousStatus) =>
      _$this._previousStatus = previousStatus;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  ListBuilder<String>? _physicalEvidenceRefs;
  ListBuilder<String> get physicalEvidenceRefs =>
      _$this._physicalEvidenceRefs ??= ListBuilder<String>();
  set physicalEvidenceRefs(ListBuilder<String>? physicalEvidenceRefs) =>
      _$this._physicalEvidenceRefs = physicalEvidenceRefs;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  SocialComparisonRevisionBuilder() {
    SocialComparisonRevision._defaults(this);
  }

  SocialComparisonRevisionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _revision = $v.revision;
      _at = $v.at;
      _status = $v.status;
      _previousStatus = $v.previousStatus;
      _reason = $v.reason;
      _physicalEvidenceRefs = $v.physicalEvidenceRefs?.toBuilder();
      _manifestId = $v.manifestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialComparisonRevision other) {
    _$v = other as _$SocialComparisonRevision;
  }

  @override
  void update(void Function(SocialComparisonRevisionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialComparisonRevision build() => _build();

  _$SocialComparisonRevision _build() {
    _$SocialComparisonRevision _$result;
    try {
      _$result = _$v ??
          _$SocialComparisonRevision._(
            revision: BuiltValueNullFieldError.checkNotNull(
                revision, r'SocialComparisonRevision', 'revision'),
            at: BuiltValueNullFieldError.checkNotNull(
                at, r'SocialComparisonRevision', 'at'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'SocialComparisonRevision', 'status'),
            previousStatus: previousStatus,
            reason: BuiltValueNullFieldError.checkNotNull(
                reason, r'SocialComparisonRevision', 'reason'),
            physicalEvidenceRefs: _physicalEvidenceRefs?.build(),
            manifestId: manifestId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'physicalEvidenceRefs';
        _physicalEvidenceRefs?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SocialComparisonRevision', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
