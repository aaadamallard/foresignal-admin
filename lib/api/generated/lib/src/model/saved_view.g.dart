// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_view.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SavedViewTimeFieldEnum _$savedViewTimeFieldEnum_effective =
    const SavedViewTimeFieldEnum._('effective');
const SavedViewTimeFieldEnum _$savedViewTimeFieldEnum_observed =
    const SavedViewTimeFieldEnum._('observed');
const SavedViewTimeFieldEnum _$savedViewTimeFieldEnum_event =
    const SavedViewTimeFieldEnum._('event');
const SavedViewTimeFieldEnum _$savedViewTimeFieldEnum_ingested =
    const SavedViewTimeFieldEnum._('ingested');

SavedViewTimeFieldEnum _$savedViewTimeFieldEnumValueOf(String name) {
  switch (name) {
    case 'effective':
      return _$savedViewTimeFieldEnum_effective;
    case 'observed':
      return _$savedViewTimeFieldEnum_observed;
    case 'event':
      return _$savedViewTimeFieldEnum_event;
    case 'ingested':
      return _$savedViewTimeFieldEnum_ingested;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SavedViewTimeFieldEnum> _$savedViewTimeFieldEnumValues =
    BuiltSet<SavedViewTimeFieldEnum>(const <SavedViewTimeFieldEnum>[
  _$savedViewTimeFieldEnum_effective,
  _$savedViewTimeFieldEnum_observed,
  _$savedViewTimeFieldEnum_event,
  _$savedViewTimeFieldEnum_ingested,
]);

Serializer<SavedViewTimeFieldEnum> _$savedViewTimeFieldEnumSerializer =
    _$SavedViewTimeFieldEnumSerializer();

class _$SavedViewTimeFieldEnumSerializer
    implements PrimitiveSerializer<SavedViewTimeFieldEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'effective': 'effective',
    'observed': 'observed',
    'event': 'event',
    'ingested': 'ingested',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'effective': 'effective',
    'observed': 'observed',
    'event': 'event',
    'ingested': 'ingested',
  };

  @override
  final Iterable<Type> types = const <Type>[SavedViewTimeFieldEnum];
  @override
  final String wireName = 'SavedViewTimeFieldEnum';

  @override
  Object serialize(Serializers serializers, SavedViewTimeFieldEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SavedViewTimeFieldEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SavedViewTimeFieldEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SavedView extends SavedView {
  @override
  final String slug;
  @override
  final String name;
  @override
  final BuiltList<String>? sources;
  @override
  final BuiltList<String>? kinds;
  @override
  final BuiltList<String>? placeIds;
  @override
  final BuiltList<num>? bbox;
  @override
  final Geometry? area;
  @override
  final BuiltList<Condition>? conditions;
  @override
  final SavedViewTimeFieldEnum? timeField;
  @override
  final bool? includeExpired;
  @override
  final BuiltList<String>? fields;
  @override
  final String id;
  @override
  final int version;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$SavedView([void Function(SavedViewBuilder)? updates]) =>
      (SavedViewBuilder()..update(updates))._build();

  _$SavedView._(
      {required this.slug,
      required this.name,
      this.sources,
      this.kinds,
      this.placeIds,
      this.bbox,
      this.area,
      this.conditions,
      this.timeField,
      this.includeExpired,
      this.fields,
      required this.id,
      required this.version,
      required this.createdAt,
      required this.updatedAt})
      : super._();
  @override
  SavedView rebuild(void Function(SavedViewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SavedViewBuilder toBuilder() => SavedViewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SavedView &&
        slug == other.slug &&
        name == other.name &&
        sources == other.sources &&
        kinds == other.kinds &&
        placeIds == other.placeIds &&
        bbox == other.bbox &&
        area == other.area &&
        conditions == other.conditions &&
        timeField == other.timeField &&
        includeExpired == other.includeExpired &&
        fields == other.fields &&
        id == other.id &&
        version == other.version &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, slug.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, kinds.hashCode);
    _$hash = $jc(_$hash, placeIds.hashCode);
    _$hash = $jc(_$hash, bbox.hashCode);
    _$hash = $jc(_$hash, area.hashCode);
    _$hash = $jc(_$hash, conditions.hashCode);
    _$hash = $jc(_$hash, timeField.hashCode);
    _$hash = $jc(_$hash, includeExpired.hashCode);
    _$hash = $jc(_$hash, fields.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SavedView')
          ..add('slug', slug)
          ..add('name', name)
          ..add('sources', sources)
          ..add('kinds', kinds)
          ..add('placeIds', placeIds)
          ..add('bbox', bbox)
          ..add('area', area)
          ..add('conditions', conditions)
          ..add('timeField', timeField)
          ..add('includeExpired', includeExpired)
          ..add('fields', fields)
          ..add('id', id)
          ..add('version', version)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class SavedViewBuilder implements Builder<SavedView, SavedViewBuilder> {
  _$SavedView? _$v;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<String>? _sources;
  ListBuilder<String> get sources => _$this._sources ??= ListBuilder<String>();
  set sources(ListBuilder<String>? sources) => _$this._sources = sources;

  ListBuilder<String>? _kinds;
  ListBuilder<String> get kinds => _$this._kinds ??= ListBuilder<String>();
  set kinds(ListBuilder<String>? kinds) => _$this._kinds = kinds;

  ListBuilder<String>? _placeIds;
  ListBuilder<String> get placeIds =>
      _$this._placeIds ??= ListBuilder<String>();
  set placeIds(ListBuilder<String>? placeIds) => _$this._placeIds = placeIds;

  ListBuilder<num>? _bbox;
  ListBuilder<num> get bbox => _$this._bbox ??= ListBuilder<num>();
  set bbox(ListBuilder<num>? bbox) => _$this._bbox = bbox;

  GeometryBuilder? _area;
  GeometryBuilder get area => _$this._area ??= GeometryBuilder();
  set area(GeometryBuilder? area) => _$this._area = area;

  ListBuilder<Condition>? _conditions;
  ListBuilder<Condition> get conditions =>
      _$this._conditions ??= ListBuilder<Condition>();
  set conditions(ListBuilder<Condition>? conditions) =>
      _$this._conditions = conditions;

  SavedViewTimeFieldEnum? _timeField;
  SavedViewTimeFieldEnum? get timeField => _$this._timeField;
  set timeField(SavedViewTimeFieldEnum? timeField) =>
      _$this._timeField = timeField;

  bool? _includeExpired;
  bool? get includeExpired => _$this._includeExpired;
  set includeExpired(bool? includeExpired) =>
      _$this._includeExpired = includeExpired;

  ListBuilder<String>? _fields;
  ListBuilder<String> get fields => _$this._fields ??= ListBuilder<String>();
  set fields(ListBuilder<String>? fields) => _$this._fields = fields;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  SavedViewBuilder() {
    SavedView._defaults(this);
  }

  SavedViewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _slug = $v.slug;
      _name = $v.name;
      _sources = $v.sources?.toBuilder();
      _kinds = $v.kinds?.toBuilder();
      _placeIds = $v.placeIds?.toBuilder();
      _bbox = $v.bbox?.toBuilder();
      _area = $v.area?.toBuilder();
      _conditions = $v.conditions?.toBuilder();
      _timeField = $v.timeField;
      _includeExpired = $v.includeExpired;
      _fields = $v.fields?.toBuilder();
      _id = $v.id;
      _version = $v.version;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SavedView other) {
    _$v = other as _$SavedView;
  }

  @override
  void update(void Function(SavedViewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SavedView build() => _build();

  _$SavedView _build() {
    _$SavedView _$result;
    try {
      _$result = _$v ??
          _$SavedView._(
            slug: BuiltValueNullFieldError.checkNotNull(
                slug, r'SavedView', 'slug'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'SavedView', 'name'),
            sources: _sources?.build(),
            kinds: _kinds?.build(),
            placeIds: _placeIds?.build(),
            bbox: _bbox?.build(),
            area: _area?.build(),
            conditions: _conditions?.build(),
            timeField: timeField,
            includeExpired: includeExpired,
            fields: _fields?.build(),
            id: BuiltValueNullFieldError.checkNotNull(id, r'SavedView', 'id'),
            version: BuiltValueNullFieldError.checkNotNull(
                version, r'SavedView', 'version'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'SavedView', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'SavedView', 'updatedAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sources';
        _sources?.build();
        _$failedField = 'kinds';
        _kinds?.build();
        _$failedField = 'placeIds';
        _placeIds?.build();
        _$failedField = 'bbox';
        _bbox?.build();
        _$failedField = 'area';
        _area?.build();
        _$failedField = 'conditions';
        _conditions?.build();

        _$failedField = 'fields';
        _fields?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SavedView', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
