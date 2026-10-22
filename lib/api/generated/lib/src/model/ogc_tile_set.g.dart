// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ogc_tile_set.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OgcTileSetDataTypeEnum _$ogcTileSetDataTypeEnum_map =
    const OgcTileSetDataTypeEnum._('map');

OgcTileSetDataTypeEnum _$ogcTileSetDataTypeEnumValueOf(String name) {
  switch (name) {
    case 'map':
      return _$ogcTileSetDataTypeEnum_map;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OgcTileSetDataTypeEnum> _$ogcTileSetDataTypeEnumValues =
    BuiltSet<OgcTileSetDataTypeEnum>(const <OgcTileSetDataTypeEnum>[
      _$ogcTileSetDataTypeEnum_map,
    ]);

Serializer<OgcTileSetDataTypeEnum> _$ogcTileSetDataTypeEnumSerializer =
    _$OgcTileSetDataTypeEnumSerializer();

class _$OgcTileSetDataTypeEnumSerializer
    implements PrimitiveSerializer<OgcTileSetDataTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'map': 'map',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'map': 'map',
  };

  @override
  final Iterable<Type> types = const <Type>[OgcTileSetDataTypeEnum];
  @override
  final String wireName = 'OgcTileSetDataTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    OgcTileSetDataTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OgcTileSetDataTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OgcTileSetDataTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$OgcTileSet extends OgcTileSet {
  @override
  final String? title;
  @override
  final OgcTileSetDataTypeEnum dataType;
  @override
  final String crs;
  @override
  final String? tileMatrixSetURI;
  @override
  final BuiltList<OgcTileSetTileMatrixSetLimitsInner>? tileMatrixSetLimits;
  @override
  final BuiltList<OgcLink> links;
  @override
  final String? attribution;

  factory _$OgcTileSet([void Function(OgcTileSetBuilder)? updates]) =>
      (OgcTileSetBuilder()..update(updates))._build();

  _$OgcTileSet._({
    this.title,
    required this.dataType,
    required this.crs,
    this.tileMatrixSetURI,
    this.tileMatrixSetLimits,
    required this.links,
    this.attribution,
  }) : super._();
  @override
  OgcTileSet rebuild(void Function(OgcTileSetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OgcTileSetBuilder toBuilder() => OgcTileSetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OgcTileSet &&
        title == other.title &&
        dataType == other.dataType &&
        crs == other.crs &&
        tileMatrixSetURI == other.tileMatrixSetURI &&
        tileMatrixSetLimits == other.tileMatrixSetLimits &&
        links == other.links &&
        attribution == other.attribution;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, dataType.hashCode);
    _$hash = $jc(_$hash, crs.hashCode);
    _$hash = $jc(_$hash, tileMatrixSetURI.hashCode);
    _$hash = $jc(_$hash, tileMatrixSetLimits.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OgcTileSet')
          ..add('title', title)
          ..add('dataType', dataType)
          ..add('crs', crs)
          ..add('tileMatrixSetURI', tileMatrixSetURI)
          ..add('tileMatrixSetLimits', tileMatrixSetLimits)
          ..add('links', links)
          ..add('attribution', attribution))
        .toString();
  }
}

class OgcTileSetBuilder implements Builder<OgcTileSet, OgcTileSetBuilder> {
  _$OgcTileSet? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  OgcTileSetDataTypeEnum? _dataType;
  OgcTileSetDataTypeEnum? get dataType => _$this._dataType;
  set dataType(OgcTileSetDataTypeEnum? dataType) => _$this._dataType = dataType;

  String? _crs;
  String? get crs => _$this._crs;
  set crs(String? crs) => _$this._crs = crs;

  String? _tileMatrixSetURI;
  String? get tileMatrixSetURI => _$this._tileMatrixSetURI;
  set tileMatrixSetURI(String? tileMatrixSetURI) =>
      _$this._tileMatrixSetURI = tileMatrixSetURI;

  ListBuilder<OgcTileSetTileMatrixSetLimitsInner>? _tileMatrixSetLimits;
  ListBuilder<OgcTileSetTileMatrixSetLimitsInner> get tileMatrixSetLimits =>
      _$this._tileMatrixSetLimits ??=
          ListBuilder<OgcTileSetTileMatrixSetLimitsInner>();
  set tileMatrixSetLimits(
    ListBuilder<OgcTileSetTileMatrixSetLimitsInner>? tileMatrixSetLimits,
  ) => _$this._tileMatrixSetLimits = tileMatrixSetLimits;

  ListBuilder<OgcLink>? _links;
  ListBuilder<OgcLink> get links => _$this._links ??= ListBuilder<OgcLink>();
  set links(ListBuilder<OgcLink>? links) => _$this._links = links;

  String? _attribution;
  String? get attribution => _$this._attribution;
  set attribution(String? attribution) => _$this._attribution = attribution;

  OgcTileSetBuilder() {
    OgcTileSet._defaults(this);
  }

  OgcTileSetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _dataType = $v.dataType;
      _crs = $v.crs;
      _tileMatrixSetURI = $v.tileMatrixSetURI;
      _tileMatrixSetLimits = $v.tileMatrixSetLimits?.toBuilder();
      _links = $v.links.toBuilder();
      _attribution = $v.attribution;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OgcTileSet other) {
    _$v = other as _$OgcTileSet;
  }

  @override
  void update(void Function(OgcTileSetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OgcTileSet build() => _build();

  _$OgcTileSet _build() {
    _$OgcTileSet _$result;
    try {
      _$result =
          _$v ??
          _$OgcTileSet._(
            title: title,
            dataType: BuiltValueNullFieldError.checkNotNull(
              dataType,
              r'OgcTileSet',
              'dataType',
            ),
            crs: BuiltValueNullFieldError.checkNotNull(
              crs,
              r'OgcTileSet',
              'crs',
            ),
            tileMatrixSetURI: tileMatrixSetURI,
            tileMatrixSetLimits: _tileMatrixSetLimits?.build(),
            links: links.build(),
            attribution: attribution,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tileMatrixSetLimits';
        _tileMatrixSetLimits?.build();
        _$failedField = 'links';
        links.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'OgcTileSet',
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
