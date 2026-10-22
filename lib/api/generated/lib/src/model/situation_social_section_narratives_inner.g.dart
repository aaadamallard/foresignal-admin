// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_social_section_narratives_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SituationSocialSectionNarrativesInnerStatusEnum
    _$situationSocialSectionNarrativesInnerStatusEnum_unassessed =
    const SituationSocialSectionNarrativesInnerStatusEnum._('unassessed');
const SituationSocialSectionNarrativesInnerStatusEnum
    _$situationSocialSectionNarrativesInnerStatusEnum_pending =
    const SituationSocialSectionNarrativesInnerStatusEnum._('pending');
const SituationSocialSectionNarrativesInnerStatusEnum
    _$situationSocialSectionNarrativesInnerStatusEnum_corroborated =
    const SituationSocialSectionNarrativesInnerStatusEnum._('corroborated');
const SituationSocialSectionNarrativesInnerStatusEnum
    _$situationSocialSectionNarrativesInnerStatusEnum_unobserved =
    const SituationSocialSectionNarrativesInnerStatusEnum._('unobserved');
const SituationSocialSectionNarrativesInnerStatusEnum
    _$situationSocialSectionNarrativesInnerStatusEnum_contradicted =
    const SituationSocialSectionNarrativesInnerStatusEnum._('contradicted');
const SituationSocialSectionNarrativesInnerStatusEnum
    _$situationSocialSectionNarrativesInnerStatusEnum_mixed =
    const SituationSocialSectionNarrativesInnerStatusEnum._('mixed');
const SituationSocialSectionNarrativesInnerStatusEnum
    _$situationSocialSectionNarrativesInnerStatusEnum_insufficientCoverage =
    const SituationSocialSectionNarrativesInnerStatusEnum._(
        'insufficientCoverage');

SituationSocialSectionNarrativesInnerStatusEnum
    _$situationSocialSectionNarrativesInnerStatusEnumValueOf(String name) {
  switch (name) {
    case 'unassessed':
      return _$situationSocialSectionNarrativesInnerStatusEnum_unassessed;
    case 'pending':
      return _$situationSocialSectionNarrativesInnerStatusEnum_pending;
    case 'corroborated':
      return _$situationSocialSectionNarrativesInnerStatusEnum_corroborated;
    case 'unobserved':
      return _$situationSocialSectionNarrativesInnerStatusEnum_unobserved;
    case 'contradicted':
      return _$situationSocialSectionNarrativesInnerStatusEnum_contradicted;
    case 'mixed':
      return _$situationSocialSectionNarrativesInnerStatusEnum_mixed;
    case 'insufficientCoverage':
      return _$situationSocialSectionNarrativesInnerStatusEnum_insufficientCoverage;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SituationSocialSectionNarrativesInnerStatusEnum>
    _$situationSocialSectionNarrativesInnerStatusEnumValues = BuiltSet<
        SituationSocialSectionNarrativesInnerStatusEnum>(const <SituationSocialSectionNarrativesInnerStatusEnum>[
  _$situationSocialSectionNarrativesInnerStatusEnum_unassessed,
  _$situationSocialSectionNarrativesInnerStatusEnum_pending,
  _$situationSocialSectionNarrativesInnerStatusEnum_corroborated,
  _$situationSocialSectionNarrativesInnerStatusEnum_unobserved,
  _$situationSocialSectionNarrativesInnerStatusEnum_contradicted,
  _$situationSocialSectionNarrativesInnerStatusEnum_mixed,
  _$situationSocialSectionNarrativesInnerStatusEnum_insufficientCoverage,
]);

const SituationSocialSectionNarrativesInnerFoundByEnum
    _$situationSocialSectionNarrativesInnerFoundByEnum_organic =
    const SituationSocialSectionNarrativesInnerFoundByEnum._('organic');
const SituationSocialSectionNarrativesInnerFoundByEnum
    _$situationSocialSectionNarrativesInnerFoundByEnum_cue =
    const SituationSocialSectionNarrativesInnerFoundByEnum._('cue');

SituationSocialSectionNarrativesInnerFoundByEnum
    _$situationSocialSectionNarrativesInnerFoundByEnumValueOf(String name) {
  switch (name) {
    case 'organic':
      return _$situationSocialSectionNarrativesInnerFoundByEnum_organic;
    case 'cue':
      return _$situationSocialSectionNarrativesInnerFoundByEnum_cue;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SituationSocialSectionNarrativesInnerFoundByEnum>
    _$situationSocialSectionNarrativesInnerFoundByEnumValues = BuiltSet<
        SituationSocialSectionNarrativesInnerFoundByEnum>(const <SituationSocialSectionNarrativesInnerFoundByEnum>[
  _$situationSocialSectionNarrativesInnerFoundByEnum_organic,
  _$situationSocialSectionNarrativesInnerFoundByEnum_cue,
]);

Serializer<SituationSocialSectionNarrativesInnerStatusEnum>
    _$situationSocialSectionNarrativesInnerStatusEnumSerializer =
    _$SituationSocialSectionNarrativesInnerStatusEnumSerializer();
Serializer<SituationSocialSectionNarrativesInnerFoundByEnum>
    _$situationSocialSectionNarrativesInnerFoundByEnumSerializer =
    _$SituationSocialSectionNarrativesInnerFoundByEnumSerializer();

class _$SituationSocialSectionNarrativesInnerStatusEnumSerializer
    implements
        PrimitiveSerializer<SituationSocialSectionNarrativesInnerStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'unassessed': 'unassessed',
    'pending': 'pending',
    'corroborated': 'corroborated',
    'unobserved': 'unobserved',
    'contradicted': 'contradicted',
    'mixed': 'mixed',
    'insufficientCoverage': 'insufficient-coverage',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'unassessed': 'unassessed',
    'pending': 'pending',
    'corroborated': 'corroborated',
    'unobserved': 'unobserved',
    'contradicted': 'contradicted',
    'mixed': 'mixed',
    'insufficient-coverage': 'insufficientCoverage',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SituationSocialSectionNarrativesInnerStatusEnum
  ];
  @override
  final String wireName = 'SituationSocialSectionNarrativesInnerStatusEnum';

  @override
  Object serialize(Serializers serializers,
          SituationSocialSectionNarrativesInnerStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SituationSocialSectionNarrativesInnerStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SituationSocialSectionNarrativesInnerStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SituationSocialSectionNarrativesInnerFoundByEnumSerializer
    implements
        PrimitiveSerializer<SituationSocialSectionNarrativesInnerFoundByEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'organic': 'organic',
    'cue': 'cue',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'organic': 'organic',
    'cue': 'cue',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SituationSocialSectionNarrativesInnerFoundByEnum
  ];
  @override
  final String wireName = 'SituationSocialSectionNarrativesInnerFoundByEnum';

  @override
  Object serialize(Serializers serializers,
          SituationSocialSectionNarrativesInnerFoundByEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SituationSocialSectionNarrativesInnerFoundByEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SituationSocialSectionNarrativesInnerFoundByEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SituationSocialSectionNarrativesInner
    extends SituationSocialSectionNarrativesInner {
  @override
  final String narrativeId;
  @override
  final String title;
  @override
  final SituationSocialSectionNarrativesInnerStatusEnum status;
  @override
  final num? velocity;
  @override
  final num? originConcentration;
  @override
  final int evidenceGroupCount;
  @override
  final num? leadOverPhysicalSeconds;
  @override
  final SituationSocialSectionNarrativesInnerFoundByEnum? foundBy;

  factory _$SituationSocialSectionNarrativesInner(
          [void Function(SituationSocialSectionNarrativesInnerBuilder)?
              updates]) =>
      (SituationSocialSectionNarrativesInnerBuilder()..update(updates))
          ._build();

  _$SituationSocialSectionNarrativesInner._(
      {required this.narrativeId,
      required this.title,
      required this.status,
      this.velocity,
      this.originConcentration,
      required this.evidenceGroupCount,
      this.leadOverPhysicalSeconds,
      this.foundBy})
      : super._();
  @override
  SituationSocialSectionNarrativesInner rebuild(
          void Function(SituationSocialSectionNarrativesInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SituationSocialSectionNarrativesInnerBuilder toBuilder() =>
      SituationSocialSectionNarrativesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationSocialSectionNarrativesInner &&
        narrativeId == other.narrativeId &&
        title == other.title &&
        status == other.status &&
        velocity == other.velocity &&
        originConcentration == other.originConcentration &&
        evidenceGroupCount == other.evidenceGroupCount &&
        leadOverPhysicalSeconds == other.leadOverPhysicalSeconds &&
        foundBy == other.foundBy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, narrativeId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, velocity.hashCode);
    _$hash = $jc(_$hash, originConcentration.hashCode);
    _$hash = $jc(_$hash, evidenceGroupCount.hashCode);
    _$hash = $jc(_$hash, leadOverPhysicalSeconds.hashCode);
    _$hash = $jc(_$hash, foundBy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'SituationSocialSectionNarrativesInner')
          ..add('narrativeId', narrativeId)
          ..add('title', title)
          ..add('status', status)
          ..add('velocity', velocity)
          ..add('originConcentration', originConcentration)
          ..add('evidenceGroupCount', evidenceGroupCount)
          ..add('leadOverPhysicalSeconds', leadOverPhysicalSeconds)
          ..add('foundBy', foundBy))
        .toString();
  }
}

class SituationSocialSectionNarrativesInnerBuilder
    implements
        Builder<SituationSocialSectionNarrativesInner,
            SituationSocialSectionNarrativesInnerBuilder> {
  _$SituationSocialSectionNarrativesInner? _$v;

  String? _narrativeId;
  String? get narrativeId => _$this._narrativeId;
  set narrativeId(String? narrativeId) => _$this._narrativeId = narrativeId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  SituationSocialSectionNarrativesInnerStatusEnum? _status;
  SituationSocialSectionNarrativesInnerStatusEnum? get status => _$this._status;
  set status(SituationSocialSectionNarrativesInnerStatusEnum? status) =>
      _$this._status = status;

  num? _velocity;
  num? get velocity => _$this._velocity;
  set velocity(num? velocity) => _$this._velocity = velocity;

  num? _originConcentration;
  num? get originConcentration => _$this._originConcentration;
  set originConcentration(num? originConcentration) =>
      _$this._originConcentration = originConcentration;

  int? _evidenceGroupCount;
  int? get evidenceGroupCount => _$this._evidenceGroupCount;
  set evidenceGroupCount(int? evidenceGroupCount) =>
      _$this._evidenceGroupCount = evidenceGroupCount;

  num? _leadOverPhysicalSeconds;
  num? get leadOverPhysicalSeconds => _$this._leadOverPhysicalSeconds;
  set leadOverPhysicalSeconds(num? leadOverPhysicalSeconds) =>
      _$this._leadOverPhysicalSeconds = leadOverPhysicalSeconds;

  SituationSocialSectionNarrativesInnerFoundByEnum? _foundBy;
  SituationSocialSectionNarrativesInnerFoundByEnum? get foundBy =>
      _$this._foundBy;
  set foundBy(SituationSocialSectionNarrativesInnerFoundByEnum? foundBy) =>
      _$this._foundBy = foundBy;

  SituationSocialSectionNarrativesInnerBuilder() {
    SituationSocialSectionNarrativesInner._defaults(this);
  }

  SituationSocialSectionNarrativesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _narrativeId = $v.narrativeId;
      _title = $v.title;
      _status = $v.status;
      _velocity = $v.velocity;
      _originConcentration = $v.originConcentration;
      _evidenceGroupCount = $v.evidenceGroupCount;
      _leadOverPhysicalSeconds = $v.leadOverPhysicalSeconds;
      _foundBy = $v.foundBy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationSocialSectionNarrativesInner other) {
    _$v = other as _$SituationSocialSectionNarrativesInner;
  }

  @override
  void update(
      void Function(SituationSocialSectionNarrativesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationSocialSectionNarrativesInner build() => _build();

  _$SituationSocialSectionNarrativesInner _build() {
    final _$result = _$v ??
        _$SituationSocialSectionNarrativesInner._(
          narrativeId: BuiltValueNullFieldError.checkNotNull(narrativeId,
              r'SituationSocialSectionNarrativesInner', 'narrativeId'),
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'SituationSocialSectionNarrativesInner', 'title'),
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'SituationSocialSectionNarrativesInner', 'status'),
          velocity: velocity,
          originConcentration: originConcentration,
          evidenceGroupCount: BuiltValueNullFieldError.checkNotNull(
              evidenceGroupCount,
              r'SituationSocialSectionNarrativesInner',
              'evidenceGroupCount'),
          leadOverPhysicalSeconds: leadOverPhysicalSeconds,
          foundBy: foundBy,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
