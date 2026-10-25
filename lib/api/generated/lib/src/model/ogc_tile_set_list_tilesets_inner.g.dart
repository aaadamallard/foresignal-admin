// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ogc_tile_set_list_tilesets_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OgcTileSetListTilesetsInnerDataTypeEnum
_$ogcTileSetListTilesetsInnerDataTypeEnum_map =
    const OgcTileSetListTilesetsInnerDataTypeEnum._('map');
const OgcTileSetListTilesetsInnerDataTypeEnum
_$ogcTileSetListTilesetsInnerDataTypeEnum_unknownDefaultOpenApi =
    const OgcTileSetListTilesetsInnerDataTypeEnum._('unknownDefaultOpenApi');

OgcTileSetListTilesetsInnerDataTypeEnum
_$ogcTileSetListTilesetsInnerDataTypeEnumValueOf(String name) {
  switch (name) {
    case 'map':
      return _$ogcTileSetListTilesetsInnerDataTypeEnum_map;
    case 'unknownDefaultOpenApi':
      return _$ogcTileSetListTilesetsInnerDataTypeEnum_unknownDefaultOpenApi;
    default:
      return _$ogcTileSetListTilesetsInnerDataTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<OgcTileSetListTilesetsInnerDataTypeEnum>
_$ogcTileSetListTilesetsInnerDataTypeEnumValues =
    BuiltSet<OgcTileSetListTilesetsInnerDataTypeEnum>(
      const <OgcTileSetListTilesetsInnerDataTypeEnum>[
        _$ogcTileSetListTilesetsInnerDataTypeEnum_map,
        _$ogcTileSetListTilesetsInnerDataTypeEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<OgcTileSetListTilesetsInnerDataTypeEnum>
_$ogcTileSetListTilesetsInnerDataTypeEnumSerializer =
    _$OgcTileSetListTilesetsInnerDataTypeEnumSerializer();

class _$OgcTileSetListTilesetsInnerDataTypeEnumSerializer
    implements PrimitiveSerializer<OgcTileSetListTilesetsInnerDataTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'map': 'map',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'map': 'map',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    OgcTileSetListTilesetsInnerDataTypeEnum,
  ];
  @override
  final String wireName = 'OgcTileSetListTilesetsInnerDataTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    OgcTileSetListTilesetsInnerDataTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OgcTileSetListTilesetsInnerDataTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OgcTileSetListTilesetsInnerDataTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$OgcTileSetListTilesetsInner extends OgcTileSetListTilesetsInner {
  @override
  final String? title;
  @override
  final OgcTileSetListTilesetsInnerDataTypeEnum dataType;
  @override
  final String? crs;
  @override
  final String? tileMatrixSetURI;
  @override
  final BuiltList<OgcLink> links;

  factory _$OgcTileSetListTilesetsInner([
    void Function(OgcTileSetListTilesetsInnerBuilder)? updates,
  ]) => (OgcTileSetListTilesetsInnerBuilder()..update(updates))._build();

  _$OgcTileSetListTilesetsInner._({
    this.title,
    required this.dataType,
    this.crs,
    this.tileMatrixSetURI,
    required this.links,
  }) : super._();
  @override
  OgcTileSetListTilesetsInner rebuild(
    void Function(OgcTileSetListTilesetsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OgcTileSetListTilesetsInnerBuilder toBuilder() =>
      OgcTileSetListTilesetsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OgcTileSetListTilesetsInner &&
        title == other.title &&
        dataType == other.dataType &&
        crs == other.crs &&
        tileMatrixSetURI == other.tileMatrixSetURI &&
        links == other.links;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, dataType.hashCode);
    _$hash = $jc(_$hash, crs.hashCode);
    _$hash = $jc(_$hash, tileMatrixSetURI.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OgcTileSetListTilesetsInner')
          ..add('title', title)
          ..add('dataType', dataType)
          ..add('crs', crs)
          ..add('tileMatrixSetURI', tileMatrixSetURI)
          ..add('links', links))
        .toString();
  }
}

class OgcTileSetListTilesetsInnerBuilder
    implements
        Builder<
          OgcTileSetListTilesetsInner,
          OgcTileSetListTilesetsInnerBuilder
        > {
  _$OgcTileSetListTilesetsInner? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  OgcTileSetListTilesetsInnerDataTypeEnum? _dataType;
  OgcTileSetListTilesetsInnerDataTypeEnum? get dataType => _$this._dataType;
  set dataType(OgcTileSetListTilesetsInnerDataTypeEnum? dataType) =>
      _$this._dataType = dataType;

  String? _crs;
  String? get crs => _$this._crs;
  set crs(String? crs) => _$this._crs = crs;

  String? _tileMatrixSetURI;
  String? get tileMatrixSetURI => _$this._tileMatrixSetURI;
  set tileMatrixSetURI(String? tileMatrixSetURI) =>
      _$this._tileMatrixSetURI = tileMatrixSetURI;

  ListBuilder<OgcLink>? _links;
  ListBuilder<OgcLink> get links => _$this._links ??= ListBuilder<OgcLink>();
  set links(ListBuilder<OgcLink>? links) => _$this._links = links;

  OgcTileSetListTilesetsInnerBuilder() {
    OgcTileSetListTilesetsInner._defaults(this);
  }

  OgcTileSetListTilesetsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _dataType = $v.dataType;
      _crs = $v.crs;
      _tileMatrixSetURI = $v.tileMatrixSetURI;
      _links = $v.links.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OgcTileSetListTilesetsInner other) {
    _$v = other as _$OgcTileSetListTilesetsInner;
  }

  @override
  void update(void Function(OgcTileSetListTilesetsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OgcTileSetListTilesetsInner build() => _build();

  _$OgcTileSetListTilesetsInner _build() {
    _$OgcTileSetListTilesetsInner _$result;
    try {
      _$result =
          _$v ??
          _$OgcTileSetListTilesetsInner._(
            title: title,
            dataType: BuiltValueNullFieldError.checkNotNull(
              dataType,
              r'OgcTileSetListTilesetsInner',
              'dataType',
            ),
            crs: crs,
            tileMatrixSetURI: tileMatrixSetURI,
            links: links.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'links';
        links.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'OgcTileSetListTilesetsInner',
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
