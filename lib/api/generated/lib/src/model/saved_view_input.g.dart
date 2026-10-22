// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_view_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SavedViewInputTimeFieldEnum _$savedViewInputTimeFieldEnum_effective =
    const SavedViewInputTimeFieldEnum._('effective');
const SavedViewInputTimeFieldEnum _$savedViewInputTimeFieldEnum_observed =
    const SavedViewInputTimeFieldEnum._('observed');
const SavedViewInputTimeFieldEnum _$savedViewInputTimeFieldEnum_event =
    const SavedViewInputTimeFieldEnum._('event');
const SavedViewInputTimeFieldEnum _$savedViewInputTimeFieldEnum_ingested =
    const SavedViewInputTimeFieldEnum._('ingested');

SavedViewInputTimeFieldEnum _$savedViewInputTimeFieldEnumValueOf(String name) {
  switch (name) {
    case 'effective':
      return _$savedViewInputTimeFieldEnum_effective;
    case 'observed':
      return _$savedViewInputTimeFieldEnum_observed;
    case 'event':
      return _$savedViewInputTimeFieldEnum_event;
    case 'ingested':
      return _$savedViewInputTimeFieldEnum_ingested;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SavedViewInputTimeFieldEnum>
_$savedViewInputTimeFieldEnumValues =
    BuiltSet<SavedViewInputTimeFieldEnum>(const <SavedViewInputTimeFieldEnum>[
      _$savedViewInputTimeFieldEnum_effective,
      _$savedViewInputTimeFieldEnum_observed,
      _$savedViewInputTimeFieldEnum_event,
      _$savedViewInputTimeFieldEnum_ingested,
    ]);

Serializer<SavedViewInputTimeFieldEnum>
_$savedViewInputTimeFieldEnumSerializer =
    _$SavedViewInputTimeFieldEnumSerializer();

class _$SavedViewInputTimeFieldEnumSerializer
    implements PrimitiveSerializer<SavedViewInputTimeFieldEnum> {
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
  final Iterable<Type> types = const <Type>[SavedViewInputTimeFieldEnum];
  @override
  final String wireName = 'SavedViewInputTimeFieldEnum';

  @override
  Object serialize(
    Serializers serializers,
    SavedViewInputTimeFieldEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SavedViewInputTimeFieldEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SavedViewInputTimeFieldEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SavedViewInput extends SavedViewInput {
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
  final SavedViewInputTimeFieldEnum? timeField;
  @override
  final bool? includeExpired;
  @override
  final BuiltList<String>? fields;

  factory _$SavedViewInput([void Function(SavedViewInputBuilder)? updates]) =>
      (SavedViewInputBuilder()..update(updates))._build();

  _$SavedViewInput._({
    required this.slug,
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
  }) : super._();
  @override
  SavedViewInput rebuild(void Function(SavedViewInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SavedViewInputBuilder toBuilder() => SavedViewInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SavedViewInput &&
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
        fields == other.fields;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SavedViewInput')
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
          ..add('fields', fields))
        .toString();
  }
}

class SavedViewInputBuilder
    implements Builder<SavedViewInput, SavedViewInputBuilder> {
  _$SavedViewInput? _$v;

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

  SavedViewInputTimeFieldEnum? _timeField;
  SavedViewInputTimeFieldEnum? get timeField => _$this._timeField;
  set timeField(SavedViewInputTimeFieldEnum? timeField) =>
      _$this._timeField = timeField;

  bool? _includeExpired;
  bool? get includeExpired => _$this._includeExpired;
  set includeExpired(bool? includeExpired) =>
      _$this._includeExpired = includeExpired;

  ListBuilder<String>? _fields;
  ListBuilder<String> get fields => _$this._fields ??= ListBuilder<String>();
  set fields(ListBuilder<String>? fields) => _$this._fields = fields;

  SavedViewInputBuilder() {
    SavedViewInput._defaults(this);
  }

  SavedViewInputBuilder get _$this {
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
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SavedViewInput other) {
    _$v = other as _$SavedViewInput;
  }

  @override
  void update(void Function(SavedViewInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SavedViewInput build() => _build();

  _$SavedViewInput _build() {
    _$SavedViewInput _$result;
    try {
      _$result =
          _$v ??
          _$SavedViewInput._(
            slug: BuiltValueNullFieldError.checkNotNull(
              slug,
              r'SavedViewInput',
              'slug',
            ),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'SavedViewInput',
              'name',
            ),
            sources: _sources?.build(),
            kinds: _kinds?.build(),
            placeIds: _placeIds?.build(),
            bbox: _bbox?.build(),
            area: _area?.build(),
            conditions: _conditions?.build(),
            timeField: timeField,
            includeExpired: includeExpired,
            fields: _fields?.build(),
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
          r'SavedViewInput',
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
