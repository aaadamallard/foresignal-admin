// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensor.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SensorTextOriginEnum _$sensorTextOriginEnum_deterministic =
    const SensorTextOriginEnum._('deterministic');
const SensorTextOriginEnum _$sensorTextOriginEnum_llm =
    const SensorTextOriginEnum._('llm');
const SensorTextOriginEnum _$sensorTextOriginEnum_unknownDefaultOpenApi =
    const SensorTextOriginEnum._('unknownDefaultOpenApi');

SensorTextOriginEnum _$sensorTextOriginEnumValueOf(String name) {
  switch (name) {
    case 'deterministic':
      return _$sensorTextOriginEnum_deterministic;
    case 'llm':
      return _$sensorTextOriginEnum_llm;
    case 'unknownDefaultOpenApi':
      return _$sensorTextOriginEnum_unknownDefaultOpenApi;
    default:
      return _$sensorTextOriginEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SensorTextOriginEnum> _$sensorTextOriginEnumValues =
    BuiltSet<SensorTextOriginEnum>(const <SensorTextOriginEnum>[
      _$sensorTextOriginEnum_deterministic,
      _$sensorTextOriginEnum_llm,
      _$sensorTextOriginEnum_unknownDefaultOpenApi,
    ]);

const SensorSensorKindEnum _$sensorSensorKindEnum_source_ =
    const SensorSensorKindEnum._('source_');
const SensorSensorKindEnum _$sensorSensorKindEnum_receiver =
    const SensorSensorKindEnum._('receiver');
const SensorSensorKindEnum _$sensorSensorKindEnum_station =
    const SensorSensorKindEnum._('station');
const SensorSensorKindEnum _$sensorSensorKindEnum_satellite =
    const SensorSensorKindEnum._('satellite');
const SensorSensorKindEnum _$sensorSensorKindEnum_scene =
    const SensorSensorKindEnum._('scene');
const SensorSensorKindEnum _$sensorSensorKindEnum_rasterProduct =
    const SensorSensorKindEnum._('rasterProduct');
const SensorSensorKindEnum _$sensorSensorKindEnum_unknownDefaultOpenApi =
    const SensorSensorKindEnum._('unknownDefaultOpenApi');

SensorSensorKindEnum _$sensorSensorKindEnumValueOf(String name) {
  switch (name) {
    case 'source_':
      return _$sensorSensorKindEnum_source_;
    case 'receiver':
      return _$sensorSensorKindEnum_receiver;
    case 'station':
      return _$sensorSensorKindEnum_station;
    case 'satellite':
      return _$sensorSensorKindEnum_satellite;
    case 'scene':
      return _$sensorSensorKindEnum_scene;
    case 'rasterProduct':
      return _$sensorSensorKindEnum_rasterProduct;
    case 'unknownDefaultOpenApi':
      return _$sensorSensorKindEnum_unknownDefaultOpenApi;
    default:
      return _$sensorSensorKindEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SensorSensorKindEnum> _$sensorSensorKindEnumValues =
    BuiltSet<SensorSensorKindEnum>(const <SensorSensorKindEnum>[
      _$sensorSensorKindEnum_source_,
      _$sensorSensorKindEnum_receiver,
      _$sensorSensorKindEnum_station,
      _$sensorSensorKindEnum_satellite,
      _$sensorSensorKindEnum_scene,
      _$sensorSensorKindEnum_rasterProduct,
      _$sensorSensorKindEnum_unknownDefaultOpenApi,
    ]);

Serializer<SensorTextOriginEnum> _$sensorTextOriginEnumSerializer =
    _$SensorTextOriginEnumSerializer();
Serializer<SensorSensorKindEnum> _$sensorSensorKindEnumSerializer =
    _$SensorSensorKindEnumSerializer();

class _$SensorTextOriginEnumSerializer
    implements PrimitiveSerializer<SensorTextOriginEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'deterministic': 'deterministic',
    'llm': 'llm',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'deterministic': 'deterministic',
    'llm': 'llm',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SensorTextOriginEnum];
  @override
  final String wireName = 'SensorTextOriginEnum';

  @override
  Object serialize(
    Serializers serializers,
    SensorTextOriginEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SensorTextOriginEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SensorTextOriginEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SensorSensorKindEnumSerializer
    implements PrimitiveSerializer<SensorSensorKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'source_': 'source',
    'receiver': 'receiver',
    'station': 'station',
    'satellite': 'satellite',
    'scene': 'scene',
    'rasterProduct': 'raster-product',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'source': 'source_',
    'receiver': 'receiver',
    'station': 'station',
    'satellite': 'satellite',
    'scene': 'scene',
    'raster-product': 'rasterProduct',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SensorSensorKindEnum];
  @override
  final String wireName = 'SensorSensorKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    SensorSensorKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SensorSensorKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SensorSensorKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Sensor extends Sensor {
  @override
  final String ref;
  @override
  final String type;
  @override
  final String title;
  @override
  final String? summary;
  @override
  final SensorTextOriginEnum? textOrigin;
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
  @override
  final SensorSensorKindEnum sensorKind;
  @override
  final num? pDetect;
  @override
  final String? method;
  @override
  final BuiltList<String>? families;
  @override
  final num? rangeKm;
  @override
  final BuiltList<SensorPassesInner>? passes;
  @override
  final SensorCapabilities? capabilities;
  @override
  final Geometry? footprint;
  @override
  final DateTime? acquiredAt;

  factory _$Sensor([void Function(SensorBuilder)? updates]) =>
      (SensorBuilder()..update(updates))._build();

  _$Sensor._({
    required this.ref,
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
    this.actions,
    required this.sensorKind,
    this.pDetect,
    this.method,
    this.families,
    this.rangeKm,
    this.passes,
    this.capabilities,
    this.footprint,
    this.acquiredAt,
  }) : super._();
  @override
  Sensor rebuild(void Function(SensorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SensorBuilder toBuilder() => SensorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Sensor &&
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
        actions == other.actions &&
        sensorKind == other.sensorKind &&
        pDetect == other.pDetect &&
        method == other.method &&
        families == other.families &&
        rangeKm == other.rangeKm &&
        passes == other.passes &&
        capabilities == other.capabilities &&
        footprint == other.footprint &&
        acquiredAt == other.acquiredAt;
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
    _$hash = $jc(_$hash, sensorKind.hashCode);
    _$hash = $jc(_$hash, pDetect.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jc(_$hash, families.hashCode);
    _$hash = $jc(_$hash, rangeKm.hashCode);
    _$hash = $jc(_$hash, passes.hashCode);
    _$hash = $jc(_$hash, capabilities.hashCode);
    _$hash = $jc(_$hash, footprint.hashCode);
    _$hash = $jc(_$hash, acquiredAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Sensor')
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
          ..add('actions', actions)
          ..add('sensorKind', sensorKind)
          ..add('pDetect', pDetect)
          ..add('method', method)
          ..add('families', families)
          ..add('rangeKm', rangeKm)
          ..add('passes', passes)
          ..add('capabilities', capabilities)
          ..add('footprint', footprint)
          ..add('acquiredAt', acquiredAt))
        .toString();
  }
}

class SensorBuilder implements Builder<Sensor, SensorBuilder> {
  _$Sensor? _$v;

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

  SensorTextOriginEnum? _textOrigin;
  SensorTextOriginEnum? get textOrigin => _$this._textOrigin;
  set textOrigin(SensorTextOriginEnum? textOrigin) =>
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

  SensorSensorKindEnum? _sensorKind;
  SensorSensorKindEnum? get sensorKind => _$this._sensorKind;
  set sensorKind(SensorSensorKindEnum? sensorKind) =>
      _$this._sensorKind = sensorKind;

  num? _pDetect;
  num? get pDetect => _$this._pDetect;
  set pDetect(num? pDetect) => _$this._pDetect = pDetect;

  String? _method;
  String? get method => _$this._method;
  set method(String? method) => _$this._method = method;

  ListBuilder<String>? _families;
  ListBuilder<String> get families =>
      _$this._families ??= ListBuilder<String>();
  set families(ListBuilder<String>? families) => _$this._families = families;

  num? _rangeKm;
  num? get rangeKm => _$this._rangeKm;
  set rangeKm(num? rangeKm) => _$this._rangeKm = rangeKm;

  ListBuilder<SensorPassesInner>? _passes;
  ListBuilder<SensorPassesInner> get passes =>
      _$this._passes ??= ListBuilder<SensorPassesInner>();
  set passes(ListBuilder<SensorPassesInner>? passes) => _$this._passes = passes;

  SensorCapabilitiesBuilder? _capabilities;
  SensorCapabilitiesBuilder get capabilities =>
      _$this._capabilities ??= SensorCapabilitiesBuilder();
  set capabilities(SensorCapabilitiesBuilder? capabilities) =>
      _$this._capabilities = capabilities;

  GeometryBuilder? _footprint;
  GeometryBuilder get footprint => _$this._footprint ??= GeometryBuilder();
  set footprint(GeometryBuilder? footprint) => _$this._footprint = footprint;

  DateTime? _acquiredAt;
  DateTime? get acquiredAt => _$this._acquiredAt;
  set acquiredAt(DateTime? acquiredAt) => _$this._acquiredAt = acquiredAt;

  SensorBuilder() {
    Sensor._defaults(this);
  }

  SensorBuilder get _$this {
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
      _sensorKind = $v.sensorKind;
      _pDetect = $v.pDetect;
      _method = $v.method;
      _families = $v.families?.toBuilder();
      _rangeKm = $v.rangeKm;
      _passes = $v.passes?.toBuilder();
      _capabilities = $v.capabilities?.toBuilder();
      _footprint = $v.footprint?.toBuilder();
      _acquiredAt = $v.acquiredAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Sensor other) {
    _$v = other as _$Sensor;
  }

  @override
  void update(void Function(SensorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Sensor build() => _build();

  _$Sensor _build() {
    _$Sensor _$result;
    try {
      _$result =
          _$v ??
          _$Sensor._(
            ref: BuiltValueNullFieldError.checkNotNull(ref, r'Sensor', 'ref'),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'Sensor',
              'type',
            ),
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'Sensor',
              'title',
            ),
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
            sensorKind: BuiltValueNullFieldError.checkNotNull(
              sensorKind,
              r'Sensor',
              'sensorKind',
            ),
            pDetect: pDetect,
            method: method,
            families: _families?.build(),
            rangeKm: rangeKm,
            passes: _passes?.build(),
            capabilities: _capabilities?.build(),
            footprint: _footprint?.build(),
            acquiredAt: acquiredAt,
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

        _$failedField = 'families';
        _families?.build();

        _$failedField = 'passes';
        _passes?.build();
        _$failedField = 'capabilities';
        _capabilities?.build();
        _$failedField = 'footprint';
        _footprint?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Sensor',
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
