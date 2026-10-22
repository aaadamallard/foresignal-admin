// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claim.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ClaimPolarityEnum _$claimPolarityEnum_asserted =
    const ClaimPolarityEnum._('asserted');
const ClaimPolarityEnum _$claimPolarityEnum_denied =
    const ClaimPolarityEnum._('denied');
const ClaimPolarityEnum _$claimPolarityEnum_questioned =
    const ClaimPolarityEnum._('questioned');

ClaimPolarityEnum _$claimPolarityEnumValueOf(String name) {
  switch (name) {
    case 'asserted':
      return _$claimPolarityEnum_asserted;
    case 'denied':
      return _$claimPolarityEnum_denied;
    case 'questioned':
      return _$claimPolarityEnum_questioned;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ClaimPolarityEnum> _$claimPolarityEnumValues =
    BuiltSet<ClaimPolarityEnum>(const <ClaimPolarityEnum>[
  _$claimPolarityEnum_asserted,
  _$claimPolarityEnum_denied,
  _$claimPolarityEnum_questioned,
]);

const ClaimExtractionEnum _$claimExtractionEnum_deterministic =
    const ClaimExtractionEnum._('deterministic');
const ClaimExtractionEnum _$claimExtractionEnum_llm =
    const ClaimExtractionEnum._('llm');

ClaimExtractionEnum _$claimExtractionEnumValueOf(String name) {
  switch (name) {
    case 'deterministic':
      return _$claimExtractionEnum_deterministic;
    case 'llm':
      return _$claimExtractionEnum_llm;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ClaimExtractionEnum> _$claimExtractionEnumValues =
    BuiltSet<ClaimExtractionEnum>(const <ClaimExtractionEnum>[
  _$claimExtractionEnum_deterministic,
  _$claimExtractionEnum_llm,
]);

const ClaimStatusEnum _$claimStatusEnum_unassessed =
    const ClaimStatusEnum._('unassessed');
const ClaimStatusEnum _$claimStatusEnum_pending =
    const ClaimStatusEnum._('pending');
const ClaimStatusEnum _$claimStatusEnum_corroborated =
    const ClaimStatusEnum._('corroborated');
const ClaimStatusEnum _$claimStatusEnum_unobserved =
    const ClaimStatusEnum._('unobserved');
const ClaimStatusEnum _$claimStatusEnum_contradicted =
    const ClaimStatusEnum._('contradicted');
const ClaimStatusEnum _$claimStatusEnum_insufficientCoverage =
    const ClaimStatusEnum._('insufficientCoverage');

ClaimStatusEnum _$claimStatusEnumValueOf(String name) {
  switch (name) {
    case 'unassessed':
      return _$claimStatusEnum_unassessed;
    case 'pending':
      return _$claimStatusEnum_pending;
    case 'corroborated':
      return _$claimStatusEnum_corroborated;
    case 'unobserved':
      return _$claimStatusEnum_unobserved;
    case 'contradicted':
      return _$claimStatusEnum_contradicted;
    case 'insufficientCoverage':
      return _$claimStatusEnum_insufficientCoverage;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ClaimStatusEnum> _$claimStatusEnumValues =
    BuiltSet<ClaimStatusEnum>(const <ClaimStatusEnum>[
  _$claimStatusEnum_unassessed,
  _$claimStatusEnum_pending,
  _$claimStatusEnum_corroborated,
  _$claimStatusEnum_unobserved,
  _$claimStatusEnum_contradicted,
  _$claimStatusEnum_insufficientCoverage,
]);

const ClaimSourceReliabilityEnum _$claimSourceReliabilityEnum_A =
    const ClaimSourceReliabilityEnum._('A');
const ClaimSourceReliabilityEnum _$claimSourceReliabilityEnum_B =
    const ClaimSourceReliabilityEnum._('B');
const ClaimSourceReliabilityEnum _$claimSourceReliabilityEnum_C =
    const ClaimSourceReliabilityEnum._('C');
const ClaimSourceReliabilityEnum _$claimSourceReliabilityEnum_D =
    const ClaimSourceReliabilityEnum._('D');
const ClaimSourceReliabilityEnum _$claimSourceReliabilityEnum_E =
    const ClaimSourceReliabilityEnum._('E');
const ClaimSourceReliabilityEnum _$claimSourceReliabilityEnum_F =
    const ClaimSourceReliabilityEnum._('F');

ClaimSourceReliabilityEnum _$claimSourceReliabilityEnumValueOf(String name) {
  switch (name) {
    case 'A':
      return _$claimSourceReliabilityEnum_A;
    case 'B':
      return _$claimSourceReliabilityEnum_B;
    case 'C':
      return _$claimSourceReliabilityEnum_C;
    case 'D':
      return _$claimSourceReliabilityEnum_D;
    case 'E':
      return _$claimSourceReliabilityEnum_E;
    case 'F':
      return _$claimSourceReliabilityEnum_F;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ClaimSourceReliabilityEnum> _$claimSourceReliabilityEnumValues =
    BuiltSet<ClaimSourceReliabilityEnum>(const <ClaimSourceReliabilityEnum>[
  _$claimSourceReliabilityEnum_A,
  _$claimSourceReliabilityEnum_B,
  _$claimSourceReliabilityEnum_C,
  _$claimSourceReliabilityEnum_D,
  _$claimSourceReliabilityEnum_E,
  _$claimSourceReliabilityEnum_F,
]);

const ClaimFramingLabelEnum _$claimFramingLabelEnum_neutral =
    const ClaimFramingLabelEnum._('neutral');
const ClaimFramingLabelEnum _$claimFramingLabelEnum_charged =
    const ClaimFramingLabelEnum._('charged');
const ClaimFramingLabelEnum _$claimFramingLabelEnum_inflammatory =
    const ClaimFramingLabelEnum._('inflammatory');

ClaimFramingLabelEnum _$claimFramingLabelEnumValueOf(String name) {
  switch (name) {
    case 'neutral':
      return _$claimFramingLabelEnum_neutral;
    case 'charged':
      return _$claimFramingLabelEnum_charged;
    case 'inflammatory':
      return _$claimFramingLabelEnum_inflammatory;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ClaimFramingLabelEnum> _$claimFramingLabelEnumValues =
    BuiltSet<ClaimFramingLabelEnum>(const <ClaimFramingLabelEnum>[
  _$claimFramingLabelEnum_neutral,
  _$claimFramingLabelEnum_charged,
  _$claimFramingLabelEnum_inflammatory,
]);

Serializer<ClaimPolarityEnum> _$claimPolarityEnumSerializer =
    _$ClaimPolarityEnumSerializer();
Serializer<ClaimExtractionEnum> _$claimExtractionEnumSerializer =
    _$ClaimExtractionEnumSerializer();
Serializer<ClaimStatusEnum> _$claimStatusEnumSerializer =
    _$ClaimStatusEnumSerializer();
Serializer<ClaimSourceReliabilityEnum> _$claimSourceReliabilityEnumSerializer =
    _$ClaimSourceReliabilityEnumSerializer();
Serializer<ClaimFramingLabelEnum> _$claimFramingLabelEnumSerializer =
    _$ClaimFramingLabelEnumSerializer();

class _$ClaimPolarityEnumSerializer
    implements PrimitiveSerializer<ClaimPolarityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'asserted': 'asserted',
    'denied': 'denied',
    'questioned': 'questioned',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'asserted': 'asserted',
    'denied': 'denied',
    'questioned': 'questioned',
  };

  @override
  final Iterable<Type> types = const <Type>[ClaimPolarityEnum];
  @override
  final String wireName = 'ClaimPolarityEnum';

  @override
  Object serialize(Serializers serializers, ClaimPolarityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ClaimPolarityEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ClaimPolarityEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ClaimExtractionEnumSerializer
    implements PrimitiveSerializer<ClaimExtractionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'deterministic': 'deterministic',
    'llm': 'llm',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'deterministic': 'deterministic',
    'llm': 'llm',
  };

  @override
  final Iterable<Type> types = const <Type>[ClaimExtractionEnum];
  @override
  final String wireName = 'ClaimExtractionEnum';

  @override
  Object serialize(Serializers serializers, ClaimExtractionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ClaimExtractionEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ClaimExtractionEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ClaimStatusEnumSerializer
    implements PrimitiveSerializer<ClaimStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'unassessed': 'unassessed',
    'pending': 'pending',
    'corroborated': 'corroborated',
    'unobserved': 'unobserved',
    'contradicted': 'contradicted',
    'insufficientCoverage': 'insufficient-coverage',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'unassessed': 'unassessed',
    'pending': 'pending',
    'corroborated': 'corroborated',
    'unobserved': 'unobserved',
    'contradicted': 'contradicted',
    'insufficient-coverage': 'insufficientCoverage',
  };

  @override
  final Iterable<Type> types = const <Type>[ClaimStatusEnum];
  @override
  final String wireName = 'ClaimStatusEnum';

  @override
  Object serialize(Serializers serializers, ClaimStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ClaimStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ClaimStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ClaimSourceReliabilityEnumSerializer
    implements PrimitiveSerializer<ClaimSourceReliabilityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'A': 'A',
    'B': 'B',
    'C': 'C',
    'D': 'D',
    'E': 'E',
    'F': 'F',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'A': 'A',
    'B': 'B',
    'C': 'C',
    'D': 'D',
    'E': 'E',
    'F': 'F',
  };

  @override
  final Iterable<Type> types = const <Type>[ClaimSourceReliabilityEnum];
  @override
  final String wireName = 'ClaimSourceReliabilityEnum';

  @override
  Object serialize(Serializers serializers, ClaimSourceReliabilityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ClaimSourceReliabilityEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ClaimSourceReliabilityEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ClaimFramingLabelEnumSerializer
    implements PrimitiveSerializer<ClaimFramingLabelEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'neutral': 'neutral',
    'charged': 'charged',
    'inflammatory': 'inflammatory',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'neutral': 'neutral',
    'charged': 'charged',
    'inflammatory': 'inflammatory',
  };

  @override
  final Iterable<Type> types = const <Type>[ClaimFramingLabelEnum];
  @override
  final String wireName = 'ClaimFramingLabelEnum';

  @override
  Object serialize(Serializers serializers, ClaimFramingLabelEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ClaimFramingLabelEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ClaimFramingLabelEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Claim extends Claim {
  @override
  final String id;
  @override
  final String ref;
  @override
  final String narrativeId;
  @override
  final String type;
  @override
  final String signalFamily;
  @override
  final ClaimPolarityEnum polarity;
  @override
  final bool hedged;
  @override
  final ClaimPlace? place;
  @override
  final BuiltList<String>? entityRefs;
  @override
  final ClaimEventTime? eventTime;
  @override
  final String? actor;
  @override
  final int supportCount;
  @override
  final int evidenceGroupCount;
  @override
  final DateTime firstObservedAt;
  @override
  final ClaimExtractionEnum extraction;
  @override
  final String manifestId;
  @override
  final num confidence;
  @override
  final ClaimStatusEnum status;
  @override
  final String? comparisonId;
  @override
  final ClaimSourceReliabilityEnum sourceReliability;
  @override
  final int informationCredibility;
  @override
  final String grade;
  @override
  final String? restatement;
  @override
  final num? framingScore;
  @override
  final ClaimFramingLabelEnum? framingLabel;
  @override
  final ClaimReputation? reputation;
  @override
  final String? tlp;
  @override
  final DateTime? createdAt;

  factory _$Claim([void Function(ClaimBuilder)? updates]) =>
      (ClaimBuilder()..update(updates))._build();

  _$Claim._(
      {required this.id,
      required this.ref,
      required this.narrativeId,
      required this.type,
      required this.signalFamily,
      required this.polarity,
      required this.hedged,
      this.place,
      this.entityRefs,
      this.eventTime,
      this.actor,
      required this.supportCount,
      required this.evidenceGroupCount,
      required this.firstObservedAt,
      required this.extraction,
      required this.manifestId,
      required this.confidence,
      required this.status,
      this.comparisonId,
      required this.sourceReliability,
      required this.informationCredibility,
      required this.grade,
      this.restatement,
      this.framingScore,
      this.framingLabel,
      this.reputation,
      this.tlp,
      this.createdAt})
      : super._();
  @override
  Claim rebuild(void Function(ClaimBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClaimBuilder toBuilder() => ClaimBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Claim &&
        id == other.id &&
        ref == other.ref &&
        narrativeId == other.narrativeId &&
        type == other.type &&
        signalFamily == other.signalFamily &&
        polarity == other.polarity &&
        hedged == other.hedged &&
        place == other.place &&
        entityRefs == other.entityRefs &&
        eventTime == other.eventTime &&
        actor == other.actor &&
        supportCount == other.supportCount &&
        evidenceGroupCount == other.evidenceGroupCount &&
        firstObservedAt == other.firstObservedAt &&
        extraction == other.extraction &&
        manifestId == other.manifestId &&
        confidence == other.confidence &&
        status == other.status &&
        comparisonId == other.comparisonId &&
        sourceReliability == other.sourceReliability &&
        informationCredibility == other.informationCredibility &&
        grade == other.grade &&
        restatement == other.restatement &&
        framingScore == other.framingScore &&
        framingLabel == other.framingLabel &&
        reputation == other.reputation &&
        tlp == other.tlp &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, narrativeId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, signalFamily.hashCode);
    _$hash = $jc(_$hash, polarity.hashCode);
    _$hash = $jc(_$hash, hedged.hashCode);
    _$hash = $jc(_$hash, place.hashCode);
    _$hash = $jc(_$hash, entityRefs.hashCode);
    _$hash = $jc(_$hash, eventTime.hashCode);
    _$hash = $jc(_$hash, actor.hashCode);
    _$hash = $jc(_$hash, supportCount.hashCode);
    _$hash = $jc(_$hash, evidenceGroupCount.hashCode);
    _$hash = $jc(_$hash, firstObservedAt.hashCode);
    _$hash = $jc(_$hash, extraction.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jc(_$hash, confidence.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, comparisonId.hashCode);
    _$hash = $jc(_$hash, sourceReliability.hashCode);
    _$hash = $jc(_$hash, informationCredibility.hashCode);
    _$hash = $jc(_$hash, grade.hashCode);
    _$hash = $jc(_$hash, restatement.hashCode);
    _$hash = $jc(_$hash, framingScore.hashCode);
    _$hash = $jc(_$hash, framingLabel.hashCode);
    _$hash = $jc(_$hash, reputation.hashCode);
    _$hash = $jc(_$hash, tlp.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Claim')
          ..add('id', id)
          ..add('ref', ref)
          ..add('narrativeId', narrativeId)
          ..add('type', type)
          ..add('signalFamily', signalFamily)
          ..add('polarity', polarity)
          ..add('hedged', hedged)
          ..add('place', place)
          ..add('entityRefs', entityRefs)
          ..add('eventTime', eventTime)
          ..add('actor', actor)
          ..add('supportCount', supportCount)
          ..add('evidenceGroupCount', evidenceGroupCount)
          ..add('firstObservedAt', firstObservedAt)
          ..add('extraction', extraction)
          ..add('manifestId', manifestId)
          ..add('confidence', confidence)
          ..add('status', status)
          ..add('comparisonId', comparisonId)
          ..add('sourceReliability', sourceReliability)
          ..add('informationCredibility', informationCredibility)
          ..add('grade', grade)
          ..add('restatement', restatement)
          ..add('framingScore', framingScore)
          ..add('framingLabel', framingLabel)
          ..add('reputation', reputation)
          ..add('tlp', tlp)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class ClaimBuilder implements Builder<Claim, ClaimBuilder> {
  _$Claim? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _narrativeId;
  String? get narrativeId => _$this._narrativeId;
  set narrativeId(String? narrativeId) => _$this._narrativeId = narrativeId;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _signalFamily;
  String? get signalFamily => _$this._signalFamily;
  set signalFamily(String? signalFamily) => _$this._signalFamily = signalFamily;

  ClaimPolarityEnum? _polarity;
  ClaimPolarityEnum? get polarity => _$this._polarity;
  set polarity(ClaimPolarityEnum? polarity) => _$this._polarity = polarity;

  bool? _hedged;
  bool? get hedged => _$this._hedged;
  set hedged(bool? hedged) => _$this._hedged = hedged;

  ClaimPlaceBuilder? _place;
  ClaimPlaceBuilder get place => _$this._place ??= ClaimPlaceBuilder();
  set place(ClaimPlaceBuilder? place) => _$this._place = place;

  ListBuilder<String>? _entityRefs;
  ListBuilder<String> get entityRefs =>
      _$this._entityRefs ??= ListBuilder<String>();
  set entityRefs(ListBuilder<String>? entityRefs) =>
      _$this._entityRefs = entityRefs;

  ClaimEventTimeBuilder? _eventTime;
  ClaimEventTimeBuilder get eventTime =>
      _$this._eventTime ??= ClaimEventTimeBuilder();
  set eventTime(ClaimEventTimeBuilder? eventTime) =>
      _$this._eventTime = eventTime;

  String? _actor;
  String? get actor => _$this._actor;
  set actor(String? actor) => _$this._actor = actor;

  int? _supportCount;
  int? get supportCount => _$this._supportCount;
  set supportCount(int? supportCount) => _$this._supportCount = supportCount;

  int? _evidenceGroupCount;
  int? get evidenceGroupCount => _$this._evidenceGroupCount;
  set evidenceGroupCount(int? evidenceGroupCount) =>
      _$this._evidenceGroupCount = evidenceGroupCount;

  DateTime? _firstObservedAt;
  DateTime? get firstObservedAt => _$this._firstObservedAt;
  set firstObservedAt(DateTime? firstObservedAt) =>
      _$this._firstObservedAt = firstObservedAt;

  ClaimExtractionEnum? _extraction;
  ClaimExtractionEnum? get extraction => _$this._extraction;
  set extraction(ClaimExtractionEnum? extraction) =>
      _$this._extraction = extraction;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  num? _confidence;
  num? get confidence => _$this._confidence;
  set confidence(num? confidence) => _$this._confidence = confidence;

  ClaimStatusEnum? _status;
  ClaimStatusEnum? get status => _$this._status;
  set status(ClaimStatusEnum? status) => _$this._status = status;

  String? _comparisonId;
  String? get comparisonId => _$this._comparisonId;
  set comparisonId(String? comparisonId) => _$this._comparisonId = comparisonId;

  ClaimSourceReliabilityEnum? _sourceReliability;
  ClaimSourceReliabilityEnum? get sourceReliability =>
      _$this._sourceReliability;
  set sourceReliability(ClaimSourceReliabilityEnum? sourceReliability) =>
      _$this._sourceReliability = sourceReliability;

  int? _informationCredibility;
  int? get informationCredibility => _$this._informationCredibility;
  set informationCredibility(int? informationCredibility) =>
      _$this._informationCredibility = informationCredibility;

  String? _grade;
  String? get grade => _$this._grade;
  set grade(String? grade) => _$this._grade = grade;

  String? _restatement;
  String? get restatement => _$this._restatement;
  set restatement(String? restatement) => _$this._restatement = restatement;

  num? _framingScore;
  num? get framingScore => _$this._framingScore;
  set framingScore(num? framingScore) => _$this._framingScore = framingScore;

  ClaimFramingLabelEnum? _framingLabel;
  ClaimFramingLabelEnum? get framingLabel => _$this._framingLabel;
  set framingLabel(ClaimFramingLabelEnum? framingLabel) =>
      _$this._framingLabel = framingLabel;

  ClaimReputationBuilder? _reputation;
  ClaimReputationBuilder get reputation =>
      _$this._reputation ??= ClaimReputationBuilder();
  set reputation(ClaimReputationBuilder? reputation) =>
      _$this._reputation = reputation;

  String? _tlp;
  String? get tlp => _$this._tlp;
  set tlp(String? tlp) => _$this._tlp = tlp;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  ClaimBuilder() {
    Claim._defaults(this);
  }

  ClaimBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _ref = $v.ref;
      _narrativeId = $v.narrativeId;
      _type = $v.type;
      _signalFamily = $v.signalFamily;
      _polarity = $v.polarity;
      _hedged = $v.hedged;
      _place = $v.place?.toBuilder();
      _entityRefs = $v.entityRefs?.toBuilder();
      _eventTime = $v.eventTime?.toBuilder();
      _actor = $v.actor;
      _supportCount = $v.supportCount;
      _evidenceGroupCount = $v.evidenceGroupCount;
      _firstObservedAt = $v.firstObservedAt;
      _extraction = $v.extraction;
      _manifestId = $v.manifestId;
      _confidence = $v.confidence;
      _status = $v.status;
      _comparisonId = $v.comparisonId;
      _sourceReliability = $v.sourceReliability;
      _informationCredibility = $v.informationCredibility;
      _grade = $v.grade;
      _restatement = $v.restatement;
      _framingScore = $v.framingScore;
      _framingLabel = $v.framingLabel;
      _reputation = $v.reputation?.toBuilder();
      _tlp = $v.tlp;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Claim other) {
    _$v = other as _$Claim;
  }

  @override
  void update(void Function(ClaimBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Claim build() => _build();

  _$Claim _build() {
    _$Claim _$result;
    try {
      _$result = _$v ??
          _$Claim._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Claim', 'id'),
            ref: BuiltValueNullFieldError.checkNotNull(ref, r'Claim', 'ref'),
            narrativeId: BuiltValueNullFieldError.checkNotNull(
                narrativeId, r'Claim', 'narrativeId'),
            type: BuiltValueNullFieldError.checkNotNull(type, r'Claim', 'type'),
            signalFamily: BuiltValueNullFieldError.checkNotNull(
                signalFamily, r'Claim', 'signalFamily'),
            polarity: BuiltValueNullFieldError.checkNotNull(
                polarity, r'Claim', 'polarity'),
            hedged: BuiltValueNullFieldError.checkNotNull(
                hedged, r'Claim', 'hedged'),
            place: _place?.build(),
            entityRefs: _entityRefs?.build(),
            eventTime: _eventTime?.build(),
            actor: actor,
            supportCount: BuiltValueNullFieldError.checkNotNull(
                supportCount, r'Claim', 'supportCount'),
            evidenceGroupCount: BuiltValueNullFieldError.checkNotNull(
                evidenceGroupCount, r'Claim', 'evidenceGroupCount'),
            firstObservedAt: BuiltValueNullFieldError.checkNotNull(
                firstObservedAt, r'Claim', 'firstObservedAt'),
            extraction: BuiltValueNullFieldError.checkNotNull(
                extraction, r'Claim', 'extraction'),
            manifestId: BuiltValueNullFieldError.checkNotNull(
                manifestId, r'Claim', 'manifestId'),
            confidence: BuiltValueNullFieldError.checkNotNull(
                confidence, r'Claim', 'confidence'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'Claim', 'status'),
            comparisonId: comparisonId,
            sourceReliability: BuiltValueNullFieldError.checkNotNull(
                sourceReliability, r'Claim', 'sourceReliability'),
            informationCredibility: BuiltValueNullFieldError.checkNotNull(
                informationCredibility, r'Claim', 'informationCredibility'),
            grade:
                BuiltValueNullFieldError.checkNotNull(grade, r'Claim', 'grade'),
            restatement: restatement,
            framingScore: framingScore,
            framingLabel: framingLabel,
            reputation: _reputation?.build(),
            tlp: tlp,
            createdAt: createdAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'place';
        _place?.build();
        _$failedField = 'entityRefs';
        _entityRefs?.build();
        _$failedField = 'eventTime';
        _eventTime?.build();

        _$failedField = 'reputation';
        _reputation?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Claim', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
