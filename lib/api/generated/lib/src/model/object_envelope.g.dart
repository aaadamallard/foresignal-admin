// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'object_envelope.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ObjectEnvelopeTextOriginEnum
    _$objectEnvelopeTextOriginEnum_deterministic =
    const ObjectEnvelopeTextOriginEnum._('deterministic');
const ObjectEnvelopeTextOriginEnum _$objectEnvelopeTextOriginEnum_llm =
    const ObjectEnvelopeTextOriginEnum._('llm');

ObjectEnvelopeTextOriginEnum _$objectEnvelopeTextOriginEnumValueOf(
    String name) {
  switch (name) {
    case 'deterministic':
      return _$objectEnvelopeTextOriginEnum_deterministic;
    case 'llm':
      return _$objectEnvelopeTextOriginEnum_llm;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ObjectEnvelopeTextOriginEnum>
    _$objectEnvelopeTextOriginEnumValues =
    BuiltSet<ObjectEnvelopeTextOriginEnum>(const <ObjectEnvelopeTextOriginEnum>[
  _$objectEnvelopeTextOriginEnum_deterministic,
  _$objectEnvelopeTextOriginEnum_llm,
]);

Serializer<ObjectEnvelopeTextOriginEnum>
    _$objectEnvelopeTextOriginEnumSerializer =
    _$ObjectEnvelopeTextOriginEnumSerializer();

class _$ObjectEnvelopeTextOriginEnumSerializer
    implements PrimitiveSerializer<ObjectEnvelopeTextOriginEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'deterministic': 'deterministic',
    'llm': 'llm',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'deterministic': 'deterministic',
    'llm': 'llm',
  };

  @override
  final Iterable<Type> types = const <Type>[ObjectEnvelopeTextOriginEnum];
  @override
  final String wireName = 'ObjectEnvelopeTextOriginEnum';

  @override
  Object serialize(Serializers serializers, ObjectEnvelopeTextOriginEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ObjectEnvelopeTextOriginEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ObjectEnvelopeTextOriginEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ObjectEnvelope extends ObjectEnvelope {
  @override
  final String ref;
  @override
  final String type;
  @override
  final String title;
  @override
  final String? summary;
  @override
  final ObjectEnvelopeTextOriginEnum? textOrigin;
  @override
  final String? status;
  @override
  final String? severity;
  @override
  final ObjectEnvelopeTime? time;
  @override
  final Geometry? geometry;
  @override
  final BuiltList<num>? bbox;
  @override
  final bool? private;
  @override
  final String? tlp;
  @override
  final BuiltList<String>? tags;
  @override
  final Provenance? provenance;
  @override
  final ObjectEnvelopeLinks? links;
  @override
  final BuiltList<ObjectAction>? actions;

  factory _$ObjectEnvelope([void Function(ObjectEnvelopeBuilder)? updates]) =>
      (ObjectEnvelopeBuilder()..update(updates))._build();

  _$ObjectEnvelope._(
      {required this.ref,
      required this.type,
      required this.title,
      this.summary,
      this.textOrigin,
      this.status,
      this.severity,
      this.time,
      this.geometry,
      this.bbox,
      this.private,
      this.tlp,
      this.tags,
      this.provenance,
      this.links,
      this.actions})
      : super._();
  @override
  ObjectEnvelope rebuild(void Function(ObjectEnvelopeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ObjectEnvelopeBuilder toBuilder() => ObjectEnvelopeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObjectEnvelope &&
        ref == other.ref &&
        type == other.type &&
        title == other.title &&
        summary == other.summary &&
        textOrigin == other.textOrigin &&
        status == other.status &&
        severity == other.severity &&
        time == other.time &&
        geometry == other.geometry &&
        bbox == other.bbox &&
        private == other.private &&
        tlp == other.tlp &&
        tags == other.tags &&
        provenance == other.provenance &&
        links == other.links &&
        actions == other.actions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, textOrigin.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, bbox.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jc(_$hash, tlp.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, provenance.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jc(_$hash, actions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ObjectEnvelope')
          ..add('ref', ref)
          ..add('type', type)
          ..add('title', title)
          ..add('summary', summary)
          ..add('textOrigin', textOrigin)
          ..add('status', status)
          ..add('severity', severity)
          ..add('time', time)
          ..add('geometry', geometry)
          ..add('bbox', bbox)
          ..add('private', private)
          ..add('tlp', tlp)
          ..add('tags', tags)
          ..add('provenance', provenance)
          ..add('links', links)
          ..add('actions', actions))
        .toString();
  }
}

class ObjectEnvelopeBuilder
    implements Builder<ObjectEnvelope, ObjectEnvelopeBuilder> {
  _$ObjectEnvelope? _$v;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _summary;
  String? get summary => _$this._summary;
  set summary(String? summary) => _$this._summary = summary;

  ObjectEnvelopeTextOriginEnum? _textOrigin;
  ObjectEnvelopeTextOriginEnum? get textOrigin => _$this._textOrigin;
  set textOrigin(ObjectEnvelopeTextOriginEnum? textOrigin) =>
      _$this._textOrigin = textOrigin;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _severity;
  String? get severity => _$this._severity;
  set severity(String? severity) => _$this._severity = severity;

  ObjectEnvelopeTimeBuilder? _time;
  ObjectEnvelopeTimeBuilder get time =>
      _$this._time ??= ObjectEnvelopeTimeBuilder();
  set time(ObjectEnvelopeTimeBuilder? time) => _$this._time = time;

  GeometryBuilder? _geometry;
  GeometryBuilder get geometry => _$this._geometry ??= GeometryBuilder();
  set geometry(GeometryBuilder? geometry) => _$this._geometry = geometry;

  ListBuilder<num>? _bbox;
  ListBuilder<num> get bbox => _$this._bbox ??= ListBuilder<num>();
  set bbox(ListBuilder<num>? bbox) => _$this._bbox = bbox;

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  String? _tlp;
  String? get tlp => _$this._tlp;
  set tlp(String? tlp) => _$this._tlp = tlp;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  ProvenanceBuilder? _provenance;
  ProvenanceBuilder get provenance =>
      _$this._provenance ??= ProvenanceBuilder();
  set provenance(ProvenanceBuilder? provenance) =>
      _$this._provenance = provenance;

  ObjectEnvelopeLinksBuilder? _links;
  ObjectEnvelopeLinksBuilder get links =>
      _$this._links ??= ObjectEnvelopeLinksBuilder();
  set links(ObjectEnvelopeLinksBuilder? links) => _$this._links = links;

  ListBuilder<ObjectAction>? _actions;
  ListBuilder<ObjectAction> get actions =>
      _$this._actions ??= ListBuilder<ObjectAction>();
  set actions(ListBuilder<ObjectAction>? actions) => _$this._actions = actions;

  ObjectEnvelopeBuilder() {
    ObjectEnvelope._defaults(this);
  }

  ObjectEnvelopeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ref = $v.ref;
      _type = $v.type;
      _title = $v.title;
      _summary = $v.summary;
      _textOrigin = $v.textOrigin;
      _status = $v.status;
      _severity = $v.severity;
      _time = $v.time?.toBuilder();
      _geometry = $v.geometry?.toBuilder();
      _bbox = $v.bbox?.toBuilder();
      _private = $v.private;
      _tlp = $v.tlp;
      _tags = $v.tags?.toBuilder();
      _provenance = $v.provenance?.toBuilder();
      _links = $v.links?.toBuilder();
      _actions = $v.actions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObjectEnvelope other) {
    _$v = other as _$ObjectEnvelope;
  }

  @override
  void update(void Function(ObjectEnvelopeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObjectEnvelope build() => _build();

  _$ObjectEnvelope _build() {
    _$ObjectEnvelope _$result;
    try {
      _$result = _$v ??
          _$ObjectEnvelope._(
            ref: BuiltValueNullFieldError.checkNotNull(
                ref, r'ObjectEnvelope', 'ref'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'ObjectEnvelope', 'type'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'ObjectEnvelope', 'title'),
            summary: summary,
            textOrigin: textOrigin,
            status: status,
            severity: severity,
            time: _time?.build(),
            geometry: _geometry?.build(),
            bbox: _bbox?.build(),
            private: private,
            tlp: tlp,
            tags: _tags?.build(),
            provenance: _provenance?.build(),
            links: _links?.build(),
            actions: _actions?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'time';
        _time?.build();
        _$failedField = 'geometry';
        _geometry?.build();
        _$failedField = 'bbox';
        _bbox?.build();

        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'provenance';
        _provenance?.build();
        _$failedField = 'links';
        _links?.build();
        _$failedField = 'actions';
        _actions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ObjectEnvelope', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
