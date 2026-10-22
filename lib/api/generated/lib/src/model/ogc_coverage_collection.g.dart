// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ogc_coverage_collection.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OgcCoverageCollectionItemTypeEnum
    _$ogcCoverageCollectionItemTypeEnum_coverage =
    const OgcCoverageCollectionItemTypeEnum._('coverage');

OgcCoverageCollectionItemTypeEnum _$ogcCoverageCollectionItemTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'coverage':
      return _$ogcCoverageCollectionItemTypeEnum_coverage;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OgcCoverageCollectionItemTypeEnum>
    _$ogcCoverageCollectionItemTypeEnumValues = BuiltSet<
        OgcCoverageCollectionItemTypeEnum>(const <OgcCoverageCollectionItemTypeEnum>[
  _$ogcCoverageCollectionItemTypeEnum_coverage,
]);

Serializer<OgcCoverageCollectionItemTypeEnum>
    _$ogcCoverageCollectionItemTypeEnumSerializer =
    _$OgcCoverageCollectionItemTypeEnumSerializer();

class _$OgcCoverageCollectionItemTypeEnumSerializer
    implements PrimitiveSerializer<OgcCoverageCollectionItemTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'coverage': 'coverage',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'coverage': 'coverage',
  };

  @override
  final Iterable<Type> types = const <Type>[OgcCoverageCollectionItemTypeEnum];
  @override
  final String wireName = 'OgcCoverageCollectionItemTypeEnum';

  @override
  Object serialize(
          Serializers serializers, OgcCoverageCollectionItemTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OgcCoverageCollectionItemTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OgcCoverageCollectionItemTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OgcCoverageCollection extends OgcCoverageCollection {
  @override
  final String id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final OgcCoverageCollectionItemTypeEnum itemType;
  @override
  final OgcCoverageCollectionExtent? extent;
  @override
  final OgcCoverageCollectionDataQueries? dataQueries;
  @override
  final BuiltMap<String, BuiltMap<String, JsonObject?>>? parameterNames;
  @override
  final BuiltList<String>? outputFormats;
  @override
  final BuiltList<String>? crs;
  @override
  final String? attribution;
  @override
  final BuiltList<OgcLink> links;

  factory _$OgcCoverageCollection(
          [void Function(OgcCoverageCollectionBuilder)? updates]) =>
      (OgcCoverageCollectionBuilder()..update(updates))._build();

  _$OgcCoverageCollection._(
      {required this.id,
      this.title,
      this.description,
      required this.itemType,
      this.extent,
      this.dataQueries,
      this.parameterNames,
      this.outputFormats,
      this.crs,
      this.attribution,
      required this.links})
      : super._();
  @override
  OgcCoverageCollection rebuild(
          void Function(OgcCoverageCollectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OgcCoverageCollectionBuilder toBuilder() =>
      OgcCoverageCollectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OgcCoverageCollection &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        itemType == other.itemType &&
        extent == other.extent &&
        dataQueries == other.dataQueries &&
        parameterNames == other.parameterNames &&
        outputFormats == other.outputFormats &&
        crs == other.crs &&
        attribution == other.attribution &&
        links == other.links;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, itemType.hashCode);
    _$hash = $jc(_$hash, extent.hashCode);
    _$hash = $jc(_$hash, dataQueries.hashCode);
    _$hash = $jc(_$hash, parameterNames.hashCode);
    _$hash = $jc(_$hash, outputFormats.hashCode);
    _$hash = $jc(_$hash, crs.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OgcCoverageCollection')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('itemType', itemType)
          ..add('extent', extent)
          ..add('dataQueries', dataQueries)
          ..add('parameterNames', parameterNames)
          ..add('outputFormats', outputFormats)
          ..add('crs', crs)
          ..add('attribution', attribution)
          ..add('links', links))
        .toString();
  }
}

class OgcCoverageCollectionBuilder
    implements Builder<OgcCoverageCollection, OgcCoverageCollectionBuilder> {
  _$OgcCoverageCollection? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  OgcCoverageCollectionItemTypeEnum? _itemType;
  OgcCoverageCollectionItemTypeEnum? get itemType => _$this._itemType;
  set itemType(OgcCoverageCollectionItemTypeEnum? itemType) =>
      _$this._itemType = itemType;

  OgcCoverageCollectionExtentBuilder? _extent;
  OgcCoverageCollectionExtentBuilder get extent =>
      _$this._extent ??= OgcCoverageCollectionExtentBuilder();
  set extent(OgcCoverageCollectionExtentBuilder? extent) =>
      _$this._extent = extent;

  OgcCoverageCollectionDataQueriesBuilder? _dataQueries;
  OgcCoverageCollectionDataQueriesBuilder get dataQueries =>
      _$this._dataQueries ??= OgcCoverageCollectionDataQueriesBuilder();
  set dataQueries(OgcCoverageCollectionDataQueriesBuilder? dataQueries) =>
      _$this._dataQueries = dataQueries;

  MapBuilder<String, BuiltMap<String, JsonObject?>>? _parameterNames;
  MapBuilder<String, BuiltMap<String, JsonObject?>> get parameterNames =>
      _$this._parameterNames ??=
          MapBuilder<String, BuiltMap<String, JsonObject?>>();
  set parameterNames(
          MapBuilder<String, BuiltMap<String, JsonObject?>>? parameterNames) =>
      _$this._parameterNames = parameterNames;

  ListBuilder<String>? _outputFormats;
  ListBuilder<String> get outputFormats =>
      _$this._outputFormats ??= ListBuilder<String>();
  set outputFormats(ListBuilder<String>? outputFormats) =>
      _$this._outputFormats = outputFormats;

  ListBuilder<String>? _crs;
  ListBuilder<String> get crs => _$this._crs ??= ListBuilder<String>();
  set crs(ListBuilder<String>? crs) => _$this._crs = crs;

  String? _attribution;
  String? get attribution => _$this._attribution;
  set attribution(String? attribution) => _$this._attribution = attribution;

  ListBuilder<OgcLink>? _links;
  ListBuilder<OgcLink> get links => _$this._links ??= ListBuilder<OgcLink>();
  set links(ListBuilder<OgcLink>? links) => _$this._links = links;

  OgcCoverageCollectionBuilder() {
    OgcCoverageCollection._defaults(this);
  }

  OgcCoverageCollectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _description = $v.description;
      _itemType = $v.itemType;
      _extent = $v.extent?.toBuilder();
      _dataQueries = $v.dataQueries?.toBuilder();
      _parameterNames = $v.parameterNames?.toBuilder();
      _outputFormats = $v.outputFormats?.toBuilder();
      _crs = $v.crs?.toBuilder();
      _attribution = $v.attribution;
      _links = $v.links.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OgcCoverageCollection other) {
    _$v = other as _$OgcCoverageCollection;
  }

  @override
  void update(void Function(OgcCoverageCollectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OgcCoverageCollection build() => _build();

  _$OgcCoverageCollection _build() {
    _$OgcCoverageCollection _$result;
    try {
      _$result = _$v ??
          _$OgcCoverageCollection._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'OgcCoverageCollection', 'id'),
            title: title,
            description: description,
            itemType: BuiltValueNullFieldError.checkNotNull(
                itemType, r'OgcCoverageCollection', 'itemType'),
            extent: _extent?.build(),
            dataQueries: _dataQueries?.build(),
            parameterNames: _parameterNames?.build(),
            outputFormats: _outputFormats?.build(),
            crs: _crs?.build(),
            attribution: attribution,
            links: links.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'extent';
        _extent?.build();
        _$failedField = 'dataQueries';
        _dataQueries?.build();
        _$failedField = 'parameterNames';
        _parameterNames?.build();
        _$failedField = 'outputFormats';
        _outputFormats?.build();
        _$failedField = 'crs';
        _crs?.build();

        _$failedField = 'links';
        links.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OgcCoverageCollection', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
