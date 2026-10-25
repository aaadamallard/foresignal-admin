// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evidence_item_patch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EvidenceItemPatchSourceReliabilityEnum
_$evidenceItemPatchSourceReliabilityEnum_A =
    const EvidenceItemPatchSourceReliabilityEnum._('A');
const EvidenceItemPatchSourceReliabilityEnum
_$evidenceItemPatchSourceReliabilityEnum_B =
    const EvidenceItemPatchSourceReliabilityEnum._('B');
const EvidenceItemPatchSourceReliabilityEnum
_$evidenceItemPatchSourceReliabilityEnum_C =
    const EvidenceItemPatchSourceReliabilityEnum._('C');
const EvidenceItemPatchSourceReliabilityEnum
_$evidenceItemPatchSourceReliabilityEnum_D =
    const EvidenceItemPatchSourceReliabilityEnum._('D');
const EvidenceItemPatchSourceReliabilityEnum
_$evidenceItemPatchSourceReliabilityEnum_E =
    const EvidenceItemPatchSourceReliabilityEnum._('E');
const EvidenceItemPatchSourceReliabilityEnum
_$evidenceItemPatchSourceReliabilityEnum_F =
    const EvidenceItemPatchSourceReliabilityEnum._('F');
const EvidenceItemPatchSourceReliabilityEnum
_$evidenceItemPatchSourceReliabilityEnum_unknownDefaultOpenApi =
    const EvidenceItemPatchSourceReliabilityEnum._('unknownDefaultOpenApi');

EvidenceItemPatchSourceReliabilityEnum
_$evidenceItemPatchSourceReliabilityEnumValueOf(String name) {
  switch (name) {
    case 'A':
      return _$evidenceItemPatchSourceReliabilityEnum_A;
    case 'B':
      return _$evidenceItemPatchSourceReliabilityEnum_B;
    case 'C':
      return _$evidenceItemPatchSourceReliabilityEnum_C;
    case 'D':
      return _$evidenceItemPatchSourceReliabilityEnum_D;
    case 'E':
      return _$evidenceItemPatchSourceReliabilityEnum_E;
    case 'F':
      return _$evidenceItemPatchSourceReliabilityEnum_F;
    case 'unknownDefaultOpenApi':
      return _$evidenceItemPatchSourceReliabilityEnum_unknownDefaultOpenApi;
    default:
      return _$evidenceItemPatchSourceReliabilityEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<EvidenceItemPatchSourceReliabilityEnum>
_$evidenceItemPatchSourceReliabilityEnumValues =
    BuiltSet<EvidenceItemPatchSourceReliabilityEnum>(
      const <EvidenceItemPatchSourceReliabilityEnum>[
        _$evidenceItemPatchSourceReliabilityEnum_A,
        _$evidenceItemPatchSourceReliabilityEnum_B,
        _$evidenceItemPatchSourceReliabilityEnum_C,
        _$evidenceItemPatchSourceReliabilityEnum_D,
        _$evidenceItemPatchSourceReliabilityEnum_E,
        _$evidenceItemPatchSourceReliabilityEnum_F,
        _$evidenceItemPatchSourceReliabilityEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<EvidenceItemPatchSourceReliabilityEnum>
_$evidenceItemPatchSourceReliabilityEnumSerializer =
    _$EvidenceItemPatchSourceReliabilityEnumSerializer();

class _$EvidenceItemPatchSourceReliabilityEnumSerializer
    implements PrimitiveSerializer<EvidenceItemPatchSourceReliabilityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'A': 'A',
    'B': 'B',
    'C': 'C',
    'D': 'D',
    'E': 'E',
    'F': 'F',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'A': 'A',
    'B': 'B',
    'C': 'C',
    'D': 'D',
    'E': 'E',
    'F': 'F',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    EvidenceItemPatchSourceReliabilityEnum,
  ];
  @override
  final String wireName = 'EvidenceItemPatchSourceReliabilityEnum';

  @override
  Object serialize(
    Serializers serializers,
    EvidenceItemPatchSourceReliabilityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EvidenceItemPatchSourceReliabilityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EvidenceItemPatchSourceReliabilityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EvidenceItemPatch extends EvidenceItemPatch {
  @override
  final String? title;
  @override
  final String? description;
  @override
  final BuiltList<String>? attachmentIds;
  @override
  final String? url;
  @override
  final String? sourceDescription;
  @override
  final EvidenceItemPatchSourceReliabilityEnum? sourceReliability;
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
  final Visibility? visibility;
  @override
  final String? tlp;

  factory _$EvidenceItemPatch([
    void Function(EvidenceItemPatchBuilder)? updates,
  ]) => (EvidenceItemPatchBuilder()..update(updates))._build();

  _$EvidenceItemPatch._({
    this.title,
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
    this.visibility,
    this.tlp,
  }) : super._();
  @override
  EvidenceItemPatch rebuild(void Function(EvidenceItemPatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EvidenceItemPatchBuilder toBuilder() =>
      EvidenceItemPatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EvidenceItemPatch &&
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
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, tlp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EvidenceItemPatch')
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
          ..add('visibility', visibility)
          ..add('tlp', tlp))
        .toString();
  }
}

class EvidenceItemPatchBuilder
    implements Builder<EvidenceItemPatch, EvidenceItemPatchBuilder> {
  _$EvidenceItemPatch? _$v;

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

  EvidenceItemPatchSourceReliabilityEnum? _sourceReliability;
  EvidenceItemPatchSourceReliabilityEnum? get sourceReliability =>
      _$this._sourceReliability;
  set sourceReliability(
    EvidenceItemPatchSourceReliabilityEnum? sourceReliability,
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

  Visibility? _visibility;
  Visibility? get visibility => _$this._visibility;
  set visibility(Visibility? visibility) => _$this._visibility = visibility;

  String? _tlp;
  String? get tlp => _$this._tlp;
  set tlp(String? tlp) => _$this._tlp = tlp;

  EvidenceItemPatchBuilder() {
    EvidenceItemPatch._defaults(this);
  }

  EvidenceItemPatchBuilder get _$this {
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
      _visibility = $v.visibility;
      _tlp = $v.tlp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EvidenceItemPatch other) {
    _$v = other as _$EvidenceItemPatch;
  }

  @override
  void update(void Function(EvidenceItemPatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EvidenceItemPatch build() => _build();

  _$EvidenceItemPatch _build() {
    _$EvidenceItemPatch _$result;
    try {
      _$result =
          _$v ??
          _$EvidenceItemPatch._(
            title: title,
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
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EvidenceItemPatch',
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
