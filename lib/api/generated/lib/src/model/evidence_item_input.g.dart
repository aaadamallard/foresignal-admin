// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evidence_item_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EvidenceItemInputSourceReliabilityEnum
_$evidenceItemInputSourceReliabilityEnum_A =
    const EvidenceItemInputSourceReliabilityEnum._('A');
const EvidenceItemInputSourceReliabilityEnum
_$evidenceItemInputSourceReliabilityEnum_B =
    const EvidenceItemInputSourceReliabilityEnum._('B');
const EvidenceItemInputSourceReliabilityEnum
_$evidenceItemInputSourceReliabilityEnum_C =
    const EvidenceItemInputSourceReliabilityEnum._('C');
const EvidenceItemInputSourceReliabilityEnum
_$evidenceItemInputSourceReliabilityEnum_D =
    const EvidenceItemInputSourceReliabilityEnum._('D');
const EvidenceItemInputSourceReliabilityEnum
_$evidenceItemInputSourceReliabilityEnum_E =
    const EvidenceItemInputSourceReliabilityEnum._('E');
const EvidenceItemInputSourceReliabilityEnum
_$evidenceItemInputSourceReliabilityEnum_F =
    const EvidenceItemInputSourceReliabilityEnum._('F');

EvidenceItemInputSourceReliabilityEnum
_$evidenceItemInputSourceReliabilityEnumValueOf(String name) {
  switch (name) {
    case 'A':
      return _$evidenceItemInputSourceReliabilityEnum_A;
    case 'B':
      return _$evidenceItemInputSourceReliabilityEnum_B;
    case 'C':
      return _$evidenceItemInputSourceReliabilityEnum_C;
    case 'D':
      return _$evidenceItemInputSourceReliabilityEnum_D;
    case 'E':
      return _$evidenceItemInputSourceReliabilityEnum_E;
    case 'F':
      return _$evidenceItemInputSourceReliabilityEnum_F;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EvidenceItemInputSourceReliabilityEnum>
_$evidenceItemInputSourceReliabilityEnumValues =
    BuiltSet<EvidenceItemInputSourceReliabilityEnum>(
      const <EvidenceItemInputSourceReliabilityEnum>[
        _$evidenceItemInputSourceReliabilityEnum_A,
        _$evidenceItemInputSourceReliabilityEnum_B,
        _$evidenceItemInputSourceReliabilityEnum_C,
        _$evidenceItemInputSourceReliabilityEnum_D,
        _$evidenceItemInputSourceReliabilityEnum_E,
        _$evidenceItemInputSourceReliabilityEnum_F,
      ],
    );

Serializer<EvidenceItemInputSourceReliabilityEnum>
_$evidenceItemInputSourceReliabilityEnumSerializer =
    _$EvidenceItemInputSourceReliabilityEnumSerializer();

class _$EvidenceItemInputSourceReliabilityEnumSerializer
    implements PrimitiveSerializer<EvidenceItemInputSourceReliabilityEnum> {
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
  final Iterable<Type> types = const <Type>[
    EvidenceItemInputSourceReliabilityEnum,
  ];
  @override
  final String wireName = 'EvidenceItemInputSourceReliabilityEnum';

  @override
  Object serialize(
    Serializers serializers,
    EvidenceItemInputSourceReliabilityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EvidenceItemInputSourceReliabilityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EvidenceItemInputSourceReliabilityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EvidenceItemInput extends EvidenceItemInput {
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
  final EvidenceItemInputSourceReliabilityEnum? sourceReliability;
  @override
  final int? informationCredibility;
  @override
  final String? citedSourceId;
  @override
  final BuiltList<String>? citedRefs;
  @override
  final Geometry? geometry;
  @override
  final DateTime? eventTime;
  @override
  final BuiltList<String>? tagIds;
  @override
  final Visibility? visibility;
  @override
  final String? tlp;

  factory _$EvidenceItemInput([
    void Function(EvidenceItemInputBuilder)? updates,
  ]) => (EvidenceItemInputBuilder()..update(updates))._build();

  _$EvidenceItemInput._({
    required this.title,
    this.description,
    this.attachmentIds,
    this.url,
    this.sourceDescription,
    this.sourceReliability,
    this.informationCredibility,
    this.citedSourceId,
    this.citedRefs,
    this.geometry,
    this.eventTime,
    this.tagIds,
    this.visibility,
    this.tlp,
  }) : super._();
  @override
  EvidenceItemInput rebuild(void Function(EvidenceItemInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EvidenceItemInputBuilder toBuilder() =>
      EvidenceItemInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EvidenceItemInput &&
        title == other.title &&
        description == other.description &&
        attachmentIds == other.attachmentIds &&
        url == other.url &&
        sourceDescription == other.sourceDescription &&
        sourceReliability == other.sourceReliability &&
        informationCredibility == other.informationCredibility &&
        citedSourceId == other.citedSourceId &&
        citedRefs == other.citedRefs &&
        geometry == other.geometry &&
        eventTime == other.eventTime &&
        tagIds == other.tagIds &&
        visibility == other.visibility &&
        tlp == other.tlp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, attachmentIds.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, sourceDescription.hashCode);
    _$hash = $jc(_$hash, sourceReliability.hashCode);
    _$hash = $jc(_$hash, informationCredibility.hashCode);
    _$hash = $jc(_$hash, citedSourceId.hashCode);
    _$hash = $jc(_$hash, citedRefs.hashCode);
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, eventTime.hashCode);
    _$hash = $jc(_$hash, tagIds.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, tlp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EvidenceItemInput')
          ..add('title', title)
          ..add('description', description)
          ..add('attachmentIds', attachmentIds)
          ..add('url', url)
          ..add('sourceDescription', sourceDescription)
          ..add('sourceReliability', sourceReliability)
          ..add('informationCredibility', informationCredibility)
          ..add('citedSourceId', citedSourceId)
          ..add('citedRefs', citedRefs)
          ..add('geometry', geometry)
          ..add('eventTime', eventTime)
          ..add('tagIds', tagIds)
          ..add('visibility', visibility)
          ..add('tlp', tlp))
        .toString();
  }
}

class EvidenceItemInputBuilder
    implements Builder<EvidenceItemInput, EvidenceItemInputBuilder> {
  _$EvidenceItemInput? _$v;

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

  EvidenceItemInputSourceReliabilityEnum? _sourceReliability;
  EvidenceItemInputSourceReliabilityEnum? get sourceReliability =>
      _$this._sourceReliability;
  set sourceReliability(
    EvidenceItemInputSourceReliabilityEnum? sourceReliability,
  ) => _$this._sourceReliability = sourceReliability;

  int? _informationCredibility;
  int? get informationCredibility => _$this._informationCredibility;
  set informationCredibility(int? informationCredibility) =>
      _$this._informationCredibility = informationCredibility;

  String? _citedSourceId;
  String? get citedSourceId => _$this._citedSourceId;
  set citedSourceId(String? citedSourceId) =>
      _$this._citedSourceId = citedSourceId;

  ListBuilder<String>? _citedRefs;
  ListBuilder<String> get citedRefs =>
      _$this._citedRefs ??= ListBuilder<String>();
  set citedRefs(ListBuilder<String>? citedRefs) =>
      _$this._citedRefs = citedRefs;

  GeometryBuilder? _geometry;
  GeometryBuilder get geometry => _$this._geometry ??= GeometryBuilder();
  set geometry(GeometryBuilder? geometry) => _$this._geometry = geometry;

  DateTime? _eventTime;
  DateTime? get eventTime => _$this._eventTime;
  set eventTime(DateTime? eventTime) => _$this._eventTime = eventTime;

  ListBuilder<String>? _tagIds;
  ListBuilder<String> get tagIds => _$this._tagIds ??= ListBuilder<String>();
  set tagIds(ListBuilder<String>? tagIds) => _$this._tagIds = tagIds;

  Visibility? _visibility;
  Visibility? get visibility => _$this._visibility;
  set visibility(Visibility? visibility) => _$this._visibility = visibility;

  String? _tlp;
  String? get tlp => _$this._tlp;
  set tlp(String? tlp) => _$this._tlp = tlp;

  EvidenceItemInputBuilder() {
    EvidenceItemInput._defaults(this);
  }

  EvidenceItemInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _attachmentIds = $v.attachmentIds?.toBuilder();
      _url = $v.url;
      _sourceDescription = $v.sourceDescription;
      _sourceReliability = $v.sourceReliability;
      _informationCredibility = $v.informationCredibility;
      _citedSourceId = $v.citedSourceId;
      _citedRefs = $v.citedRefs?.toBuilder();
      _geometry = $v.geometry?.toBuilder();
      _eventTime = $v.eventTime;
      _tagIds = $v.tagIds?.toBuilder();
      _visibility = $v.visibility;
      _tlp = $v.tlp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EvidenceItemInput other) {
    _$v = other as _$EvidenceItemInput;
  }

  @override
  void update(void Function(EvidenceItemInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EvidenceItemInput build() => _build();

  _$EvidenceItemInput _build() {
    _$EvidenceItemInput _$result;
    try {
      _$result =
          _$v ??
          _$EvidenceItemInput._(
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'EvidenceItemInput',
              'title',
            ),
            description: description,
            attachmentIds: _attachmentIds?.build(),
            url: url,
            sourceDescription: sourceDescription,
            sourceReliability: sourceReliability,
            informationCredibility: informationCredibility,
            citedSourceId: citedSourceId,
            citedRefs: _citedRefs?.build(),
            geometry: _geometry?.build(),
            eventTime: eventTime,
            tagIds: _tagIds?.build(),
            visibility: visibility,
            tlp: tlp,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attachmentIds';
        _attachmentIds?.build();

        _$failedField = 'citedRefs';
        _citedRefs?.build();
        _$failedField = 'geometry';
        _geometry?.build();

        _$failedField = 'tagIds';
        _tagIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EvidenceItemInput',
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
