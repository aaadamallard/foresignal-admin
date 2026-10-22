// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evidence_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EvidenceItemSourceReliabilityEnum _$evidenceItemSourceReliabilityEnum_A =
    const EvidenceItemSourceReliabilityEnum._('A');
const EvidenceItemSourceReliabilityEnum _$evidenceItemSourceReliabilityEnum_B =
    const EvidenceItemSourceReliabilityEnum._('B');
const EvidenceItemSourceReliabilityEnum _$evidenceItemSourceReliabilityEnum_C =
    const EvidenceItemSourceReliabilityEnum._('C');
const EvidenceItemSourceReliabilityEnum _$evidenceItemSourceReliabilityEnum_D =
    const EvidenceItemSourceReliabilityEnum._('D');
const EvidenceItemSourceReliabilityEnum _$evidenceItemSourceReliabilityEnum_E =
    const EvidenceItemSourceReliabilityEnum._('E');
const EvidenceItemSourceReliabilityEnum _$evidenceItemSourceReliabilityEnum_F =
    const EvidenceItemSourceReliabilityEnum._('F');

EvidenceItemSourceReliabilityEnum _$evidenceItemSourceReliabilityEnumValueOf(
    String name) {
  switch (name) {
    case 'A':
      return _$evidenceItemSourceReliabilityEnum_A;
    case 'B':
      return _$evidenceItemSourceReliabilityEnum_B;
    case 'C':
      return _$evidenceItemSourceReliabilityEnum_C;
    case 'D':
      return _$evidenceItemSourceReliabilityEnum_D;
    case 'E':
      return _$evidenceItemSourceReliabilityEnum_E;
    case 'F':
      return _$evidenceItemSourceReliabilityEnum_F;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EvidenceItemSourceReliabilityEnum>
    _$evidenceItemSourceReliabilityEnumValues = BuiltSet<
        EvidenceItemSourceReliabilityEnum>(const <EvidenceItemSourceReliabilityEnum>[
  _$evidenceItemSourceReliabilityEnum_A,
  _$evidenceItemSourceReliabilityEnum_B,
  _$evidenceItemSourceReliabilityEnum_C,
  _$evidenceItemSourceReliabilityEnum_D,
  _$evidenceItemSourceReliabilityEnum_E,
  _$evidenceItemSourceReliabilityEnum_F,
]);

Serializer<EvidenceItemSourceReliabilityEnum>
    _$evidenceItemSourceReliabilityEnumSerializer =
    _$EvidenceItemSourceReliabilityEnumSerializer();

class _$EvidenceItemSourceReliabilityEnumSerializer
    implements PrimitiveSerializer<EvidenceItemSourceReliabilityEnum> {
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
  final Iterable<Type> types = const <Type>[EvidenceItemSourceReliabilityEnum];
  @override
  final String wireName = 'EvidenceItemSourceReliabilityEnum';

  @override
  Object serialize(
          Serializers serializers, EvidenceItemSourceReliabilityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EvidenceItemSourceReliabilityEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EvidenceItemSourceReliabilityEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$EvidenceItem extends EvidenceItem {
  @override
  final String id;
  @override
  final String ref;
  @override
  final String title;
  @override
  final String? description;
  @override
  final BuiltList<String>? attachmentIds;
  @override
  final String? url;
  @override
  final String? sourceDescription;
  @override
  final EvidenceItemSourceReliabilityEnum sourceReliability;
  @override
  final int informationCredibility;
  @override
  final String? grade;
  @override
  final String? citedSourceId;
  @override
  final String originator;
  @override
  final BuiltList<String>? citedRefs;
  @override
  final BuiltList<ProvenanceChainEntry>? provenanceChain;
  @override
  final Geometry? geometry;
  @override
  final DateTime? eventTime;
  @override
  final BuiltList<String>? tags;
  @override
  final PrincipalSummary? owner;
  @override
  final PrincipalSummary createdBy;
  @override
  final Visibility? visibility;
  @override
  final String tlp;
  @override
  final BuiltList<Caveat>? caveats;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;

  factory _$EvidenceItem([void Function(EvidenceItemBuilder)? updates]) =>
      (EvidenceItemBuilder()..update(updates))._build();

  _$EvidenceItem._(
      {required this.id,
      required this.ref,
      required this.title,
      this.description,
      this.attachmentIds,
      this.url,
      this.sourceDescription,
      required this.sourceReliability,
      required this.informationCredibility,
      this.grade,
      this.citedSourceId,
      required this.originator,
      this.citedRefs,
      this.provenanceChain,
      this.geometry,
      this.eventTime,
      this.tags,
      this.owner,
      required this.createdBy,
      this.visibility,
      required this.tlp,
      this.caveats,
      required this.createdAt,
      this.updatedAt})
      : super._();
  @override
  EvidenceItem rebuild(void Function(EvidenceItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EvidenceItemBuilder toBuilder() => EvidenceItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EvidenceItem &&
        id == other.id &&
        ref == other.ref &&
        title == other.title &&
        description == other.description &&
        attachmentIds == other.attachmentIds &&
        url == other.url &&
        sourceDescription == other.sourceDescription &&
        sourceReliability == other.sourceReliability &&
        informationCredibility == other.informationCredibility &&
        grade == other.grade &&
        citedSourceId == other.citedSourceId &&
        originator == other.originator &&
        citedRefs == other.citedRefs &&
        provenanceChain == other.provenanceChain &&
        geometry == other.geometry &&
        eventTime == other.eventTime &&
        tags == other.tags &&
        owner == other.owner &&
        createdBy == other.createdBy &&
        visibility == other.visibility &&
        tlp == other.tlp &&
        caveats == other.caveats &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, attachmentIds.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, sourceDescription.hashCode);
    _$hash = $jc(_$hash, sourceReliability.hashCode);
    _$hash = $jc(_$hash, informationCredibility.hashCode);
    _$hash = $jc(_$hash, grade.hashCode);
    _$hash = $jc(_$hash, citedSourceId.hashCode);
    _$hash = $jc(_$hash, originator.hashCode);
    _$hash = $jc(_$hash, citedRefs.hashCode);
    _$hash = $jc(_$hash, provenanceChain.hashCode);
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, eventTime.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, tlp.hashCode);
    _$hash = $jc(_$hash, caveats.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EvidenceItem')
          ..add('id', id)
          ..add('ref', ref)
          ..add('title', title)
          ..add('description', description)
          ..add('attachmentIds', attachmentIds)
          ..add('url', url)
          ..add('sourceDescription', sourceDescription)
          ..add('sourceReliability', sourceReliability)
          ..add('informationCredibility', informationCredibility)
          ..add('grade', grade)
          ..add('citedSourceId', citedSourceId)
          ..add('originator', originator)
          ..add('citedRefs', citedRefs)
          ..add('provenanceChain', provenanceChain)
          ..add('geometry', geometry)
          ..add('eventTime', eventTime)
          ..add('tags', tags)
          ..add('owner', owner)
          ..add('createdBy', createdBy)
          ..add('visibility', visibility)
          ..add('tlp', tlp)
          ..add('caveats', caveats)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class EvidenceItemBuilder
    implements Builder<EvidenceItem, EvidenceItemBuilder> {
  _$EvidenceItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<String>? _attachmentIds;
  ListBuilder<String> get attachmentIds =>
      _$this._attachmentIds ??= ListBuilder<String>();
  set attachmentIds(ListBuilder<String>? attachmentIds) =>
      _$this._attachmentIds = attachmentIds;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _sourceDescription;
  String? get sourceDescription => _$this._sourceDescription;
  set sourceDescription(String? sourceDescription) =>
      _$this._sourceDescription = sourceDescription;

  EvidenceItemSourceReliabilityEnum? _sourceReliability;
  EvidenceItemSourceReliabilityEnum? get sourceReliability =>
      _$this._sourceReliability;
  set sourceReliability(EvidenceItemSourceReliabilityEnum? sourceReliability) =>
      _$this._sourceReliability = sourceReliability;

  int? _informationCredibility;
  int? get informationCredibility => _$this._informationCredibility;
  set informationCredibility(int? informationCredibility) =>
      _$this._informationCredibility = informationCredibility;

  String? _grade;
  String? get grade => _$this._grade;
  set grade(String? grade) => _$this._grade = grade;

  String? _citedSourceId;
  String? get citedSourceId => _$this._citedSourceId;
  set citedSourceId(String? citedSourceId) =>
      _$this._citedSourceId = citedSourceId;

  String? _originator;
  String? get originator => _$this._originator;
  set originator(String? originator) => _$this._originator = originator;

  ListBuilder<String>? _citedRefs;
  ListBuilder<String> get citedRefs =>
      _$this._citedRefs ??= ListBuilder<String>();
  set citedRefs(ListBuilder<String>? citedRefs) =>
      _$this._citedRefs = citedRefs;

  ListBuilder<ProvenanceChainEntry>? _provenanceChain;
  ListBuilder<ProvenanceChainEntry> get provenanceChain =>
      _$this._provenanceChain ??= ListBuilder<ProvenanceChainEntry>();
  set provenanceChain(ListBuilder<ProvenanceChainEntry>? provenanceChain) =>
      _$this._provenanceChain = provenanceChain;

  GeometryBuilder? _geometry;
  GeometryBuilder get geometry => _$this._geometry ??= GeometryBuilder();
  set geometry(GeometryBuilder? geometry) => _$this._geometry = geometry;

  DateTime? _eventTime;
  DateTime? get eventTime => _$this._eventTime;
  set eventTime(DateTime? eventTime) => _$this._eventTime = eventTime;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  PrincipalSummaryBuilder? _owner;
  PrincipalSummaryBuilder get owner =>
      _$this._owner ??= PrincipalSummaryBuilder();
  set owner(PrincipalSummaryBuilder? owner) => _$this._owner = owner;

  PrincipalSummaryBuilder? _createdBy;
  PrincipalSummaryBuilder get createdBy =>
      _$this._createdBy ??= PrincipalSummaryBuilder();
  set createdBy(PrincipalSummaryBuilder? createdBy) =>
      _$this._createdBy = createdBy;

  Visibility? _visibility;
  Visibility? get visibility => _$this._visibility;
  set visibility(Visibility? visibility) => _$this._visibility = visibility;

  String? _tlp;
  String? get tlp => _$this._tlp;
  set tlp(String? tlp) => _$this._tlp = tlp;

  ListBuilder<Caveat>? _caveats;
  ListBuilder<Caveat> get caveats => _$this._caveats ??= ListBuilder<Caveat>();
  set caveats(ListBuilder<Caveat>? caveats) => _$this._caveats = caveats;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  EvidenceItemBuilder() {
    EvidenceItem._defaults(this);
  }

  EvidenceItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _ref = $v.ref;
      _title = $v.title;
      _description = $v.description;
      _attachmentIds = $v.attachmentIds?.toBuilder();
      _url = $v.url;
      _sourceDescription = $v.sourceDescription;
      _sourceReliability = $v.sourceReliability;
      _informationCredibility = $v.informationCredibility;
      _grade = $v.grade;
      _citedSourceId = $v.citedSourceId;
      _originator = $v.originator;
      _citedRefs = $v.citedRefs?.toBuilder();
      _provenanceChain = $v.provenanceChain?.toBuilder();
      _geometry = $v.geometry?.toBuilder();
      _eventTime = $v.eventTime;
      _tags = $v.tags?.toBuilder();
      _owner = $v.owner?.toBuilder();
      _createdBy = $v.createdBy.toBuilder();
      _visibility = $v.visibility;
      _tlp = $v.tlp;
      _caveats = $v.caveats?.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EvidenceItem other) {
    _$v = other as _$EvidenceItem;
  }

  @override
  void update(void Function(EvidenceItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EvidenceItem build() => _build();

  _$EvidenceItem _build() {
    _$EvidenceItem _$result;
    try {
      _$result = _$v ??
          _$EvidenceItem._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'EvidenceItem', 'id'),
            ref: BuiltValueNullFieldError.checkNotNull(
                ref, r'EvidenceItem', 'ref'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'EvidenceItem', 'title'),
            description: description,
            attachmentIds: _attachmentIds?.build(),
            url: url,
            sourceDescription: sourceDescription,
            sourceReliability: BuiltValueNullFieldError.checkNotNull(
                sourceReliability, r'EvidenceItem', 'sourceReliability'),
            informationCredibility: BuiltValueNullFieldError.checkNotNull(
                informationCredibility,
                r'EvidenceItem',
                'informationCredibility'),
            grade: grade,
            citedSourceId: citedSourceId,
            originator: BuiltValueNullFieldError.checkNotNull(
                originator, r'EvidenceItem', 'originator'),
            citedRefs: _citedRefs?.build(),
            provenanceChain: _provenanceChain?.build(),
            geometry: _geometry?.build(),
            eventTime: eventTime,
            tags: _tags?.build(),
            owner: _owner?.build(),
            createdBy: createdBy.build(),
            visibility: visibility,
            tlp: BuiltValueNullFieldError.checkNotNull(
                tlp, r'EvidenceItem', 'tlp'),
            caveats: _caveats?.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'EvidenceItem', 'createdAt'),
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attachmentIds';
        _attachmentIds?.build();

        _$failedField = 'citedRefs';
        _citedRefs?.build();
        _$failedField = 'provenanceChain';
        _provenanceChain?.build();
        _$failedField = 'geometry';
        _geometry?.build();

        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'owner';
        _owner?.build();
        _$failedField = 'createdBy';
        createdBy.build();

        _$failedField = 'caveats';
        _caveats?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'EvidenceItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
