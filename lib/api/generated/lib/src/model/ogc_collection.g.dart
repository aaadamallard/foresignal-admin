// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ogc_collection.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OgcCollectionItemTypeEnum _$ogcCollectionItemTypeEnum_feature =
    const OgcCollectionItemTypeEnum._('feature');
const OgcCollectionItemTypeEnum
_$ogcCollectionItemTypeEnum_unknownDefaultOpenApi =
    const OgcCollectionItemTypeEnum._('unknownDefaultOpenApi');

OgcCollectionItemTypeEnum _$ogcCollectionItemTypeEnumValueOf(String name) {
  switch (name) {
    case 'feature':
      return _$ogcCollectionItemTypeEnum_feature;
    case 'unknownDefaultOpenApi':
      return _$ogcCollectionItemTypeEnum_unknownDefaultOpenApi;
    default:
      return _$ogcCollectionItemTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<OgcCollectionItemTypeEnum> _$ogcCollectionItemTypeEnumValues =
    BuiltSet<OgcCollectionItemTypeEnum>(const <OgcCollectionItemTypeEnum>[
      _$ogcCollectionItemTypeEnum_feature,
      _$ogcCollectionItemTypeEnum_unknownDefaultOpenApi,
    ]);

Serializer<OgcCollectionItemTypeEnum> _$ogcCollectionItemTypeEnumSerializer =
    _$OgcCollectionItemTypeEnumSerializer();

class _$OgcCollectionItemTypeEnumSerializer
    implements PrimitiveSerializer<OgcCollectionItemTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'feature': 'feature',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'feature': 'feature',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[OgcCollectionItemTypeEnum];
  @override
  final String wireName = 'OgcCollectionItemTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    OgcCollectionItemTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OgcCollectionItemTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OgcCollectionItemTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$OgcCollection extends OgcCollection {
  @override
  final String id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final OgcCollectionItemTypeEnum itemType;
  @override
  final BuiltList<String>? crs;
  @override
  final String? attribution;
  @override
  final OgcCollectionExtent? extent;
  @override
  final BuiltList<OgcLink> links;

  factory _$OgcCollection([void Function(OgcCollectionBuilder)? updates]) =>
      (OgcCollectionBuilder()..update(updates))._build();

  _$OgcCollection._({
    required this.id,
    this.title,
    this.description,
    required this.itemType,
    this.crs,
    this.attribution,
    this.extent,
    required this.links,
  }) : super._();
  @override
  OgcCollection rebuild(void Function(OgcCollectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OgcCollectionBuilder toBuilder() => OgcCollectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OgcCollection &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        itemType == other.itemType &&
        crs == other.crs &&
        attribution == other.attribution &&
        extent == other.extent &&
        links == other.links;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, itemType.hashCode);
    _$hash = $jc(_$hash, crs.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jc(_$hash, extent.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OgcCollection')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('itemType', itemType)
          ..add('crs', crs)
          ..add('attribution', attribution)
          ..add('extent', extent)
          ..add('links', links))
        .toString();
  }
}

class OgcCollectionBuilder
    implements Builder<OgcCollection, OgcCollectionBuilder> {
  _$OgcCollection? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  OgcCollectionItemTypeEnum? _itemType;
  OgcCollectionItemTypeEnum? get itemType => _$this._itemType;
  set itemType(OgcCollectionItemTypeEnum? itemType) =>
      _$this._itemType = itemType;

  ListBuilder<String>? _crs;
  ListBuilder<String> get crs => _$this._crs ??= ListBuilder<String>();
  set crs(ListBuilder<String>? crs) => _$this._crs = crs;

  String? _attribution;
  String? get attribution => _$this._attribution;
  set attribution(String? attribution) => _$this._attribution = attribution;

  OgcCollectionExtentBuilder? _extent;
  OgcCollectionExtentBuilder get extent =>
      _$this._extent ??= OgcCollectionExtentBuilder();
  set extent(OgcCollectionExtentBuilder? extent) => _$this._extent = extent;

  ListBuilder<OgcLink>? _links;
  ListBuilder<OgcLink> get links => _$this._links ??= ListBuilder<OgcLink>();
  set links(ListBuilder<OgcLink>? links) => _$this._links = links;

  OgcCollectionBuilder() {
    OgcCollection._defaults(this);
  }

  OgcCollectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _description = $v.description;
      _itemType = $v.itemType;
      _crs = $v.crs?.toBuilder();
      _attribution = $v.attribution;
      _extent = $v.extent?.toBuilder();
      _links = $v.links.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OgcCollection other) {
    _$v = other as _$OgcCollection;
  }

  @override
  void update(void Function(OgcCollectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OgcCollection build() => _build();

  _$OgcCollection _build() {
    _$OgcCollection _$result;
    try {
      _$result =
          _$v ??
          _$OgcCollection._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'OgcCollection',
              'id',
            ),
            title: title,
            description: description,
            itemType: BuiltValueNullFieldError.checkNotNull(
              itemType,
              r'OgcCollection',
              'itemType',
            ),
            crs: _crs?.build(),
            attribution: attribution,
            extent: _extent?.build(),
            links: links.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'crs';
        _crs?.build();

        _$failedField = 'extent';
        _extent?.build();
        _$failedField = 'links';
        links.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'OgcCollection',
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
