// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_spec.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExportSpecFormatEnum _$exportSpecFormatEnum_geoparquet =
    const ExportSpecFormatEnum._('geoparquet');
const ExportSpecFormatEnum _$exportSpecFormatEnum_geopackage =
    const ExportSpecFormatEnum._('geopackage');
const ExportSpecFormatEnum _$exportSpecFormatEnum_flatgeobuf =
    const ExportSpecFormatEnum._('flatgeobuf');
const ExportSpecFormatEnum _$exportSpecFormatEnum_gpx =
    const ExportSpecFormatEnum._('gpx');
const ExportSpecFormatEnum _$exportSpecFormatEnum_unknownDefaultOpenApi =
    const ExportSpecFormatEnum._('unknownDefaultOpenApi');

ExportSpecFormatEnum _$exportSpecFormatEnumValueOf(String name) {
  switch (name) {
    case 'geoparquet':
      return _$exportSpecFormatEnum_geoparquet;
    case 'geopackage':
      return _$exportSpecFormatEnum_geopackage;
    case 'flatgeobuf':
      return _$exportSpecFormatEnum_flatgeobuf;
    case 'gpx':
      return _$exportSpecFormatEnum_gpx;
    case 'unknownDefaultOpenApi':
      return _$exportSpecFormatEnum_unknownDefaultOpenApi;
    default:
      return _$exportSpecFormatEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ExportSpecFormatEnum> _$exportSpecFormatEnumValues =
    BuiltSet<ExportSpecFormatEnum>(const <ExportSpecFormatEnum>[
      _$exportSpecFormatEnum_geoparquet,
      _$exportSpecFormatEnum_geopackage,
      _$exportSpecFormatEnum_flatgeobuf,
      _$exportSpecFormatEnum_gpx,
      _$exportSpecFormatEnum_unknownDefaultOpenApi,
    ]);

const ExportSpecTimeFieldEnum _$exportSpecTimeFieldEnum_effective =
    const ExportSpecTimeFieldEnum._('effective');
const ExportSpecTimeFieldEnum _$exportSpecTimeFieldEnum_observed =
    const ExportSpecTimeFieldEnum._('observed');
const ExportSpecTimeFieldEnum _$exportSpecTimeFieldEnum_event =
    const ExportSpecTimeFieldEnum._('event');
const ExportSpecTimeFieldEnum _$exportSpecTimeFieldEnum_ingested =
    const ExportSpecTimeFieldEnum._('ingested');
const ExportSpecTimeFieldEnum _$exportSpecTimeFieldEnum_unknownDefaultOpenApi =
    const ExportSpecTimeFieldEnum._('unknownDefaultOpenApi');

ExportSpecTimeFieldEnum _$exportSpecTimeFieldEnumValueOf(String name) {
  switch (name) {
    case 'effective':
      return _$exportSpecTimeFieldEnum_effective;
    case 'observed':
      return _$exportSpecTimeFieldEnum_observed;
    case 'event':
      return _$exportSpecTimeFieldEnum_event;
    case 'ingested':
      return _$exportSpecTimeFieldEnum_ingested;
    case 'unknownDefaultOpenApi':
      return _$exportSpecTimeFieldEnum_unknownDefaultOpenApi;
    default:
      return _$exportSpecTimeFieldEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ExportSpecTimeFieldEnum> _$exportSpecTimeFieldEnumValues =
    BuiltSet<ExportSpecTimeFieldEnum>(const <ExportSpecTimeFieldEnum>[
      _$exportSpecTimeFieldEnum_effective,
      _$exportSpecTimeFieldEnum_observed,
      _$exportSpecTimeFieldEnum_event,
      _$exportSpecTimeFieldEnum_ingested,
      _$exportSpecTimeFieldEnum_unknownDefaultOpenApi,
    ]);

const ExportSpecModeEnum _$exportSpecModeEnum_current =
    const ExportSpecModeEnum._('current');
const ExportSpecModeEnum _$exportSpecModeEnum_history =
    const ExportSpecModeEnum._('history');
const ExportSpecModeEnum _$exportSpecModeEnum_asOf = const ExportSpecModeEnum._(
  'asOf',
);
const ExportSpecModeEnum _$exportSpecModeEnum_atSeq =
    const ExportSpecModeEnum._('atSeq');
const ExportSpecModeEnum _$exportSpecModeEnum_unknownDefaultOpenApi =
    const ExportSpecModeEnum._('unknownDefaultOpenApi');

ExportSpecModeEnum _$exportSpecModeEnumValueOf(String name) {
  switch (name) {
    case 'current':
      return _$exportSpecModeEnum_current;
    case 'history':
      return _$exportSpecModeEnum_history;
    case 'asOf':
      return _$exportSpecModeEnum_asOf;
    case 'atSeq':
      return _$exportSpecModeEnum_atSeq;
    case 'unknownDefaultOpenApi':
      return _$exportSpecModeEnum_unknownDefaultOpenApi;
    default:
      return _$exportSpecModeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ExportSpecModeEnum> _$exportSpecModeEnumValues =
    BuiltSet<ExportSpecModeEnum>(const <ExportSpecModeEnum>[
      _$exportSpecModeEnum_current,
      _$exportSpecModeEnum_history,
      _$exportSpecModeEnum_asOf,
      _$exportSpecModeEnum_atSeq,
      _$exportSpecModeEnum_unknownDefaultOpenApi,
    ]);

Serializer<ExportSpecFormatEnum> _$exportSpecFormatEnumSerializer =
    _$ExportSpecFormatEnumSerializer();
Serializer<ExportSpecTimeFieldEnum> _$exportSpecTimeFieldEnumSerializer =
    _$ExportSpecTimeFieldEnumSerializer();
Serializer<ExportSpecModeEnum> _$exportSpecModeEnumSerializer =
    _$ExportSpecModeEnumSerializer();

class _$ExportSpecFormatEnumSerializer
    implements PrimitiveSerializer<ExportSpecFormatEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'geoparquet': 'geoparquet',
    'geopackage': 'geopackage',
    'flatgeobuf': 'flatgeobuf',
    'gpx': 'gpx',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'geoparquet': 'geoparquet',
    'geopackage': 'geopackage',
    'flatgeobuf': 'flatgeobuf',
    'gpx': 'gpx',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ExportSpecFormatEnum];
  @override
  final String wireName = 'ExportSpecFormatEnum';

  @override
  Object serialize(
    Serializers serializers,
    ExportSpecFormatEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ExportSpecFormatEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ExportSpecFormatEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ExportSpecTimeFieldEnumSerializer
    implements PrimitiveSerializer<ExportSpecTimeFieldEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'effective': 'effective',
    'observed': 'observed',
    'event': 'event',
    'ingested': 'ingested',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'effective': 'effective',
    'observed': 'observed',
    'event': 'event',
    'ingested': 'ingested',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ExportSpecTimeFieldEnum];
  @override
  final String wireName = 'ExportSpecTimeFieldEnum';

  @override
  Object serialize(
    Serializers serializers,
    ExportSpecTimeFieldEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ExportSpecTimeFieldEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ExportSpecTimeFieldEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ExportSpecModeEnumSerializer
    implements PrimitiveSerializer<ExportSpecModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'current': 'current',
    'history': 'history',
    'asOf': 'asOf',
    'atSeq': 'atSeq',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'current': 'current',
    'history': 'history',
    'asOf': 'asOf',
    'atSeq': 'atSeq',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ExportSpecModeEnum];
  @override
  final String wireName = 'ExportSpecModeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ExportSpecModeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ExportSpecModeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ExportSpecModeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ExportSpec extends ExportSpec {
  @override
  final String? name;
  @override
  final ExportSpecFormatEnum? format;
  @override
  final BuiltList<String>? sources;
  @override
  final BuiltList<String>? kinds;
  @override
  final BuiltList<num>? bbox;
  @override
  final String? placeId;
  @override
  final DateTime? from;
  @override
  final DateTime? to;
  @override
  final ExportSpecTimeFieldEnum? timeField;
  @override
  final ExportSpecModeEnum? mode;
  @override
  final DateTime? asOf;
  @override
  final int? atSeq;
  @override
  final BuiltList<String>? fields;
  @override
  final bool? flatten;
  @override
  final bool? includePrivate;
  @override
  final bool? personalUse;

  factory _$ExportSpec([void Function(ExportSpecBuilder)? updates]) =>
      (ExportSpecBuilder()..update(updates))._build();

  _$ExportSpec._({
    this.name,
    this.format,
    this.sources,
    this.kinds,
    this.bbox,
    this.placeId,
    this.from,
    this.to,
    this.timeField,
    this.mode,
    this.asOf,
    this.atSeq,
    this.fields,
    this.flatten,
    this.includePrivate,
    this.personalUse,
  }) : super._();
  @override
  ExportSpec rebuild(void Function(ExportSpecBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportSpecBuilder toBuilder() => ExportSpecBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportSpec &&
        name == other.name &&
        format == other.format &&
        sources == other.sources &&
        kinds == other.kinds &&
        bbox == other.bbox &&
        placeId == other.placeId &&
        from == other.from &&
        to == other.to &&
        timeField == other.timeField &&
        mode == other.mode &&
        asOf == other.asOf &&
        atSeq == other.atSeq &&
        fields == other.fields &&
        flatten == other.flatten &&
        includePrivate == other.includePrivate &&
        personalUse == other.personalUse;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, kinds.hashCode);
    _$hash = $jc(_$hash, bbox.hashCode);
    _$hash = $jc(_$hash, placeId.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, timeField.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, atSeq.hashCode);
    _$hash = $jc(_$hash, fields.hashCode);
    _$hash = $jc(_$hash, flatten.hashCode);
    _$hash = $jc(_$hash, includePrivate.hashCode);
    _$hash = $jc(_$hash, personalUse.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExportSpec')
          ..add('name', name)
          ..add('format', format)
          ..add('sources', sources)
          ..add('kinds', kinds)
          ..add('bbox', bbox)
          ..add('placeId', placeId)
          ..add('from', from)
          ..add('to', to)
          ..add('timeField', timeField)
          ..add('mode', mode)
          ..add('asOf', asOf)
          ..add('atSeq', atSeq)
          ..add('fields', fields)
          ..add('flatten', flatten)
          ..add('includePrivate', includePrivate)
          ..add('personalUse', personalUse))
        .toString();
  }
}

class ExportSpecBuilder implements Builder<ExportSpec, ExportSpecBuilder> {
  _$ExportSpec? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ExportSpecFormatEnum? _format;
  ExportSpecFormatEnum? get format => _$this._format;
  set format(ExportSpecFormatEnum? format) => _$this._format = format;

  ListBuilder<String>? _sources;
  ListBuilder<String> get sources => _$this._sources ??= ListBuilder<String>();
  set sources(ListBuilder<String>? sources) => _$this._sources = sources;

  ListBuilder<String>? _kinds;
  ListBuilder<String> get kinds => _$this._kinds ??= ListBuilder<String>();
  set kinds(ListBuilder<String>? kinds) => _$this._kinds = kinds;

  ListBuilder<num>? _bbox;
  ListBuilder<num> get bbox => _$this._bbox ??= ListBuilder<num>();
  set bbox(ListBuilder<num>? bbox) => _$this._bbox = bbox;

  String? _placeId;
  String? get placeId => _$this._placeId;
  set placeId(String? placeId) => _$this._placeId = placeId;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  ExportSpecTimeFieldEnum? _timeField;
  ExportSpecTimeFieldEnum? get timeField => _$this._timeField;
  set timeField(ExportSpecTimeFieldEnum? timeField) =>
      _$this._timeField = timeField;

  ExportSpecModeEnum? _mode;
  ExportSpecModeEnum? get mode => _$this._mode;
  set mode(ExportSpecModeEnum? mode) => _$this._mode = mode;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  int? _atSeq;
  int? get atSeq => _$this._atSeq;
  set atSeq(int? atSeq) => _$this._atSeq = atSeq;

  ListBuilder<String>? _fields;
  ListBuilder<String> get fields => _$this._fields ??= ListBuilder<String>();
  set fields(ListBuilder<String>? fields) => _$this._fields = fields;

  bool? _flatten;
  bool? get flatten => _$this._flatten;
  set flatten(bool? flatten) => _$this._flatten = flatten;

  bool? _includePrivate;
  bool? get includePrivate => _$this._includePrivate;
  set includePrivate(bool? includePrivate) =>
      _$this._includePrivate = includePrivate;

  bool? _personalUse;
  bool? get personalUse => _$this._personalUse;
  set personalUse(bool? personalUse) => _$this._personalUse = personalUse;

  ExportSpecBuilder() {
    ExportSpec._defaults(this);
  }

  ExportSpecBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _format = $v.format;
      _sources = $v.sources?.toBuilder();
      _kinds = $v.kinds?.toBuilder();
      _bbox = $v.bbox?.toBuilder();
      _placeId = $v.placeId;
      _from = $v.from;
      _to = $v.to;
      _timeField = $v.timeField;
      _mode = $v.mode;
      _asOf = $v.asOf;
      _atSeq = $v.atSeq;
      _fields = $v.fields?.toBuilder();
      _flatten = $v.flatten;
      _includePrivate = $v.includePrivate;
      _personalUse = $v.personalUse;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportSpec other) {
    _$v = other as _$ExportSpec;
  }

  @override
  void update(void Function(ExportSpecBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportSpec build() => _build();

  _$ExportSpec _build() {
    _$ExportSpec _$result;
    try {
      _$result =
          _$v ??
          _$ExportSpec._(
            name: name,
            format: format,
            sources: _sources?.build(),
            kinds: _kinds?.build(),
            bbox: _bbox?.build(),
            placeId: placeId,
            from: from,
            to: to,
            timeField: timeField,
            mode: mode,
            asOf: asOf,
            atSeq: atSeq,
            fields: _fields?.build(),
            flatten: flatten,
            includePrivate: includePrivate,
            personalUse: personalUse,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sources';
        _sources?.build();
        _$failedField = 'kinds';
        _kinds?.build();
        _$failedField = 'bbox';
        _bbox?.build();

        _$failedField = 'fields';
        _fields?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ExportSpec',
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
