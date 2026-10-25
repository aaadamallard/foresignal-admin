// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ogc_tile_matrix_set.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OgcTileMatrixSetIdEnum _$ogcTileMatrixSetIdEnum_webMercatorQuad =
    const OgcTileMatrixSetIdEnum._('webMercatorQuad');
const OgcTileMatrixSetIdEnum _$ogcTileMatrixSetIdEnum_worldCRS84Quad =
    const OgcTileMatrixSetIdEnum._('worldCRS84Quad');
const OgcTileMatrixSetIdEnum _$ogcTileMatrixSetIdEnum_unknownDefaultOpenApi =
    const OgcTileMatrixSetIdEnum._('unknownDefaultOpenApi');

OgcTileMatrixSetIdEnum _$ogcTileMatrixSetIdEnumValueOf(String name) {
  switch (name) {
    case 'webMercatorQuad':
      return _$ogcTileMatrixSetIdEnum_webMercatorQuad;
    case 'worldCRS84Quad':
      return _$ogcTileMatrixSetIdEnum_worldCRS84Quad;
    case 'unknownDefaultOpenApi':
      return _$ogcTileMatrixSetIdEnum_unknownDefaultOpenApi;
    default:
      return _$ogcTileMatrixSetIdEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<OgcTileMatrixSetIdEnum> _$ogcTileMatrixSetIdEnumValues =
    BuiltSet<OgcTileMatrixSetIdEnum>(const <OgcTileMatrixSetIdEnum>[
      _$ogcTileMatrixSetIdEnum_webMercatorQuad,
      _$ogcTileMatrixSetIdEnum_worldCRS84Quad,
      _$ogcTileMatrixSetIdEnum_unknownDefaultOpenApi,
    ]);

Serializer<OgcTileMatrixSetIdEnum> _$ogcTileMatrixSetIdEnumSerializer =
    _$OgcTileMatrixSetIdEnumSerializer();

class _$OgcTileMatrixSetIdEnumSerializer
    implements PrimitiveSerializer<OgcTileMatrixSetIdEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'webMercatorQuad': 'WebMercatorQuad',
    'worldCRS84Quad': 'WorldCRS84Quad',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'WebMercatorQuad': 'webMercatorQuad',
    'WorldCRS84Quad': 'worldCRS84Quad',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[OgcTileMatrixSetIdEnum];
  @override
  final String wireName = 'OgcTileMatrixSetIdEnum';

  @override
  Object serialize(
    Serializers serializers,
    OgcTileMatrixSetIdEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OgcTileMatrixSetIdEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OgcTileMatrixSetIdEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$OgcTileMatrixSet extends OgcTileMatrixSet {
  @override
  final OgcTileMatrixSetIdEnum id;
  @override
  final String? title;
  @override
  final String? uri;
  @override
  final String crs;
  @override
  final BuiltList<String>? orderedAxes;
  @override
  final String? wellKnownScaleSet;
  @override
  final BuiltList<OgcTileMatrixSetTileMatricesInner> tileMatrices;

  factory _$OgcTileMatrixSet([
    void Function(OgcTileMatrixSetBuilder)? updates,
  ]) => (OgcTileMatrixSetBuilder()..update(updates))._build();

  _$OgcTileMatrixSet._({
    required this.id,
    this.title,
    this.uri,
    required this.crs,
    this.orderedAxes,
    this.wellKnownScaleSet,
    required this.tileMatrices,
  }) : super._();
  @override
  OgcTileMatrixSet rebuild(void Function(OgcTileMatrixSetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OgcTileMatrixSetBuilder toBuilder() =>
      OgcTileMatrixSetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OgcTileMatrixSet &&
        id == other.id &&
        title == other.title &&
        uri == other.uri &&
        crs == other.crs &&
        orderedAxes == other.orderedAxes &&
        wellKnownScaleSet == other.wellKnownScaleSet &&
        tileMatrices == other.tileMatrices;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, uri.hashCode);
    _$hash = $jc(_$hash, crs.hashCode);
    _$hash = $jc(_$hash, orderedAxes.hashCode);
    _$hash = $jc(_$hash, wellKnownScaleSet.hashCode);
    _$hash = $jc(_$hash, tileMatrices.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OgcTileMatrixSet')
          ..add('id', id)
          ..add('title', title)
          ..add('uri', uri)
          ..add('crs', crs)
          ..add('orderedAxes', orderedAxes)
          ..add('wellKnownScaleSet', wellKnownScaleSet)
          ..add('tileMatrices', tileMatrices))
        .toString();
  }
}

class OgcTileMatrixSetBuilder
    implements Builder<OgcTileMatrixSet, OgcTileMatrixSetBuilder> {
  _$OgcTileMatrixSet? _$v;

  OgcTileMatrixSetIdEnum? _id;
  OgcTileMatrixSetIdEnum? get id => _$this._id;
  set id(OgcTileMatrixSetIdEnum? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _uri;
  String? get uri => _$this._uri;
  set uri(String? uri) => _$this._uri = uri;

  String? _crs;
  String? get crs => _$this._crs;
  set crs(String? crs) => _$this._crs = crs;

  ListBuilder<String>? _orderedAxes;
  ListBuilder<String> get orderedAxes =>
      _$this._orderedAxes ??= ListBuilder<String>();
  set orderedAxes(ListBuilder<String>? orderedAxes) =>
      _$this._orderedAxes = orderedAxes;

  String? _wellKnownScaleSet;
  String? get wellKnownScaleSet => _$this._wellKnownScaleSet;
  set wellKnownScaleSet(String? wellKnownScaleSet) =>
      _$this._wellKnownScaleSet = wellKnownScaleSet;

  ListBuilder<OgcTileMatrixSetTileMatricesInner>? _tileMatrices;
  ListBuilder<OgcTileMatrixSetTileMatricesInner> get tileMatrices =>
      _$this._tileMatrices ??= ListBuilder<OgcTileMatrixSetTileMatricesInner>();
  set tileMatrices(
    ListBuilder<OgcTileMatrixSetTileMatricesInner>? tileMatrices,
  ) => _$this._tileMatrices = tileMatrices;

  OgcTileMatrixSetBuilder() {
    OgcTileMatrixSet._defaults(this);
  }

  OgcTileMatrixSetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _uri = $v.uri;
      _crs = $v.crs;
      _orderedAxes = $v.orderedAxes?.toBuilder();
      _wellKnownScaleSet = $v.wellKnownScaleSet;
      _tileMatrices = $v.tileMatrices.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OgcTileMatrixSet other) {
    _$v = other as _$OgcTileMatrixSet;
  }

  @override
  void update(void Function(OgcTileMatrixSetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OgcTileMatrixSet build() => _build();

  _$OgcTileMatrixSet _build() {
    _$OgcTileMatrixSet _$result;
    try {
      _$result =
          _$v ??
          _$OgcTileMatrixSet._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'OgcTileMatrixSet',
              'id',
            ),
            title: title,
            uri: uri,
            crs: BuiltValueNullFieldError.checkNotNull(
              crs,
              r'OgcTileMatrixSet',
              'crs',
            ),
            orderedAxes: _orderedAxes?.build(),
            wellKnownScaleSet: wellKnownScaleSet,
            tileMatrices: tileMatrices.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'orderedAxes';
        _orderedAxes?.build();

        _$failedField = 'tileMatrices';
        tileMatrices.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'OgcTileMatrixSet',
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
