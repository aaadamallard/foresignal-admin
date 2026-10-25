// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ogc_tile_matrix_set_list_tile_matrix_sets_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OgcTileMatrixSetListTileMatrixSetsInnerIdEnum
_$ogcTileMatrixSetListTileMatrixSetsInnerIdEnum_webMercatorQuad =
    const OgcTileMatrixSetListTileMatrixSetsInnerIdEnum._('webMercatorQuad');
const OgcTileMatrixSetListTileMatrixSetsInnerIdEnum
_$ogcTileMatrixSetListTileMatrixSetsInnerIdEnum_worldCRS84Quad =
    const OgcTileMatrixSetListTileMatrixSetsInnerIdEnum._('worldCRS84Quad');
const OgcTileMatrixSetListTileMatrixSetsInnerIdEnum
_$ogcTileMatrixSetListTileMatrixSetsInnerIdEnum_unknownDefaultOpenApi =
    const OgcTileMatrixSetListTileMatrixSetsInnerIdEnum._(
      'unknownDefaultOpenApi',
    );

OgcTileMatrixSetListTileMatrixSetsInnerIdEnum
_$ogcTileMatrixSetListTileMatrixSetsInnerIdEnumValueOf(String name) {
  switch (name) {
    case 'webMercatorQuad':
      return _$ogcTileMatrixSetListTileMatrixSetsInnerIdEnum_webMercatorQuad;
    case 'worldCRS84Quad':
      return _$ogcTileMatrixSetListTileMatrixSetsInnerIdEnum_worldCRS84Quad;
    case 'unknownDefaultOpenApi':
      return _$ogcTileMatrixSetListTileMatrixSetsInnerIdEnum_unknownDefaultOpenApi;
    default:
      return _$ogcTileMatrixSetListTileMatrixSetsInnerIdEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<OgcTileMatrixSetListTileMatrixSetsInnerIdEnum>
_$ogcTileMatrixSetListTileMatrixSetsInnerIdEnumValues =
    BuiltSet<OgcTileMatrixSetListTileMatrixSetsInnerIdEnum>(
      const <OgcTileMatrixSetListTileMatrixSetsInnerIdEnum>[
        _$ogcTileMatrixSetListTileMatrixSetsInnerIdEnum_webMercatorQuad,
        _$ogcTileMatrixSetListTileMatrixSetsInnerIdEnum_worldCRS84Quad,
        _$ogcTileMatrixSetListTileMatrixSetsInnerIdEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<OgcTileMatrixSetListTileMatrixSetsInnerIdEnum>
_$ogcTileMatrixSetListTileMatrixSetsInnerIdEnumSerializer =
    _$OgcTileMatrixSetListTileMatrixSetsInnerIdEnumSerializer();

class _$OgcTileMatrixSetListTileMatrixSetsInnerIdEnumSerializer
    implements
        PrimitiveSerializer<OgcTileMatrixSetListTileMatrixSetsInnerIdEnum> {
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
  final Iterable<Type> types = const <Type>[
    OgcTileMatrixSetListTileMatrixSetsInnerIdEnum,
  ];
  @override
  final String wireName = 'OgcTileMatrixSetListTileMatrixSetsInnerIdEnum';

  @override
  Object serialize(
    Serializers serializers,
    OgcTileMatrixSetListTileMatrixSetsInnerIdEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OgcTileMatrixSetListTileMatrixSetsInnerIdEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OgcTileMatrixSetListTileMatrixSetsInnerIdEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$OgcTileMatrixSetListTileMatrixSetsInner
    extends OgcTileMatrixSetListTileMatrixSetsInner {
  @override
  final OgcTileMatrixSetListTileMatrixSetsInnerIdEnum id;
  @override
  final String? title;
  @override
  final String? uri;
  @override
  final BuiltList<OgcLink> links;

  factory _$OgcTileMatrixSetListTileMatrixSetsInner([
    void Function(OgcTileMatrixSetListTileMatrixSetsInnerBuilder)? updates,
  ]) => (OgcTileMatrixSetListTileMatrixSetsInnerBuilder()..update(updates))
      ._build();

  _$OgcTileMatrixSetListTileMatrixSetsInner._({
    required this.id,
    this.title,
    this.uri,
    required this.links,
  }) : super._();
  @override
  OgcTileMatrixSetListTileMatrixSetsInner rebuild(
    void Function(OgcTileMatrixSetListTileMatrixSetsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OgcTileMatrixSetListTileMatrixSetsInnerBuilder toBuilder() =>
      OgcTileMatrixSetListTileMatrixSetsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OgcTileMatrixSetListTileMatrixSetsInner &&
        id == other.id &&
        title == other.title &&
        uri == other.uri &&
        links == other.links;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, uri.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'OgcTileMatrixSetListTileMatrixSetsInner',
          )
          ..add('id', id)
          ..add('title', title)
          ..add('uri', uri)
          ..add('links', links))
        .toString();
  }
}

class OgcTileMatrixSetListTileMatrixSetsInnerBuilder
    implements
        Builder<
          OgcTileMatrixSetListTileMatrixSetsInner,
          OgcTileMatrixSetListTileMatrixSetsInnerBuilder
        > {
  _$OgcTileMatrixSetListTileMatrixSetsInner? _$v;

  OgcTileMatrixSetListTileMatrixSetsInnerIdEnum? _id;
  OgcTileMatrixSetListTileMatrixSetsInnerIdEnum? get id => _$this._id;
  set id(OgcTileMatrixSetListTileMatrixSetsInnerIdEnum? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _uri;
  String? get uri => _$this._uri;
  set uri(String? uri) => _$this._uri = uri;

  ListBuilder<OgcLink>? _links;
  ListBuilder<OgcLink> get links => _$this._links ??= ListBuilder<OgcLink>();
  set links(ListBuilder<OgcLink>? links) => _$this._links = links;

  OgcTileMatrixSetListTileMatrixSetsInnerBuilder() {
    OgcTileMatrixSetListTileMatrixSetsInner._defaults(this);
  }

  OgcTileMatrixSetListTileMatrixSetsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _uri = $v.uri;
      _links = $v.links.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OgcTileMatrixSetListTileMatrixSetsInner other) {
    _$v = other as _$OgcTileMatrixSetListTileMatrixSetsInner;
  }

  @override
  void update(
    void Function(OgcTileMatrixSetListTileMatrixSetsInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  OgcTileMatrixSetListTileMatrixSetsInner build() => _build();

  _$OgcTileMatrixSetListTileMatrixSetsInner _build() {
    _$OgcTileMatrixSetListTileMatrixSetsInner _$result;
    try {
      _$result =
          _$v ??
          _$OgcTileMatrixSetListTileMatrixSetsInner._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'OgcTileMatrixSetListTileMatrixSetsInner',
              'id',
            ),
            title: title,
            uri: uri,
            links: links.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'links';
        links.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'OgcTileMatrixSetListTileMatrixSetsInner',
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
