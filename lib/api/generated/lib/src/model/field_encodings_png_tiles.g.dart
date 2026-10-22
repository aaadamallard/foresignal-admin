// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_encodings_png_tiles.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FieldEncodingsPngTilesTmsEnum
    _$fieldEncodingsPngTilesTmsEnum_webMercatorQuad =
    const FieldEncodingsPngTilesTmsEnum._('webMercatorQuad');
const FieldEncodingsPngTilesTmsEnum
    _$fieldEncodingsPngTilesTmsEnum_worldCRS84Quad =
    const FieldEncodingsPngTilesTmsEnum._('worldCRS84Quad');

FieldEncodingsPngTilesTmsEnum _$fieldEncodingsPngTilesTmsEnumValueOf(
    String name) {
  switch (name) {
    case 'webMercatorQuad':
      return _$fieldEncodingsPngTilesTmsEnum_webMercatorQuad;
    case 'worldCRS84Quad':
      return _$fieldEncodingsPngTilesTmsEnum_worldCRS84Quad;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FieldEncodingsPngTilesTmsEnum>
    _$fieldEncodingsPngTilesTmsEnumValues = BuiltSet<
        FieldEncodingsPngTilesTmsEnum>(const <FieldEncodingsPngTilesTmsEnum>[
  _$fieldEncodingsPngTilesTmsEnum_webMercatorQuad,
  _$fieldEncodingsPngTilesTmsEnum_worldCRS84Quad,
]);

Serializer<FieldEncodingsPngTilesTmsEnum>
    _$fieldEncodingsPngTilesTmsEnumSerializer =
    _$FieldEncodingsPngTilesTmsEnumSerializer();

class _$FieldEncodingsPngTilesTmsEnumSerializer
    implements PrimitiveSerializer<FieldEncodingsPngTilesTmsEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'webMercatorQuad': 'WebMercatorQuad',
    'worldCRS84Quad': 'WorldCRS84Quad',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'WebMercatorQuad': 'webMercatorQuad',
    'WorldCRS84Quad': 'worldCRS84Quad',
  };

  @override
  final Iterable<Type> types = const <Type>[FieldEncodingsPngTilesTmsEnum];
  @override
  final String wireName = 'FieldEncodingsPngTilesTmsEnum';

  @override
  Object serialize(
          Serializers serializers, FieldEncodingsPngTilesTmsEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FieldEncodingsPngTilesTmsEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FieldEncodingsPngTilesTmsEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FieldEncodingsPngTiles extends FieldEncodingsPngTiles {
  @override
  final String? template;
  @override
  final FieldEncodingsPngTilesTmsEnum? tms;
  @override
  final num? uMin;
  @override
  final num? uMax;
  @override
  final num? vMin;
  @override
  final num? vMax;
  @override
  final int? minzoom;
  @override
  final int? maxzoom;

  factory _$FieldEncodingsPngTiles(
          [void Function(FieldEncodingsPngTilesBuilder)? updates]) =>
      (FieldEncodingsPngTilesBuilder()..update(updates))._build();

  _$FieldEncodingsPngTiles._(
      {this.template,
      this.tms,
      this.uMin,
      this.uMax,
      this.vMin,
      this.vMax,
      this.minzoom,
      this.maxzoom})
      : super._();
  @override
  FieldEncodingsPngTiles rebuild(
          void Function(FieldEncodingsPngTilesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FieldEncodingsPngTilesBuilder toBuilder() =>
      FieldEncodingsPngTilesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FieldEncodingsPngTiles &&
        template == other.template &&
        tms == other.tms &&
        uMin == other.uMin &&
        uMax == other.uMax &&
        vMin == other.vMin &&
        vMax == other.vMax &&
        minzoom == other.minzoom &&
        maxzoom == other.maxzoom;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, template.hashCode);
    _$hash = $jc(_$hash, tms.hashCode);
    _$hash = $jc(_$hash, uMin.hashCode);
    _$hash = $jc(_$hash, uMax.hashCode);
    _$hash = $jc(_$hash, vMin.hashCode);
    _$hash = $jc(_$hash, vMax.hashCode);
    _$hash = $jc(_$hash, minzoom.hashCode);
    _$hash = $jc(_$hash, maxzoom.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FieldEncodingsPngTiles')
          ..add('template', template)
          ..add('tms', tms)
          ..add('uMin', uMin)
          ..add('uMax', uMax)
          ..add('vMin', vMin)
          ..add('vMax', vMax)
          ..add('minzoom', minzoom)
          ..add('maxzoom', maxzoom))
        .toString();
  }
}

class FieldEncodingsPngTilesBuilder
    implements Builder<FieldEncodingsPngTiles, FieldEncodingsPngTilesBuilder> {
  _$FieldEncodingsPngTiles? _$v;

  String? _template;
  String? get template => _$this._template;
  set template(String? template) => _$this._template = template;

  FieldEncodingsPngTilesTmsEnum? _tms;
  FieldEncodingsPngTilesTmsEnum? get tms => _$this._tms;
  set tms(FieldEncodingsPngTilesTmsEnum? tms) => _$this._tms = tms;

  num? _uMin;
  num? get uMin => _$this._uMin;
  set uMin(num? uMin) => _$this._uMin = uMin;

  num? _uMax;
  num? get uMax => _$this._uMax;
  set uMax(num? uMax) => _$this._uMax = uMax;

  num? _vMin;
  num? get vMin => _$this._vMin;
  set vMin(num? vMin) => _$this._vMin = vMin;

  num? _vMax;
  num? get vMax => _$this._vMax;
  set vMax(num? vMax) => _$this._vMax = vMax;

  int? _minzoom;
  int? get minzoom => _$this._minzoom;
  set minzoom(int? minzoom) => _$this._minzoom = minzoom;

  int? _maxzoom;
  int? get maxzoom => _$this._maxzoom;
  set maxzoom(int? maxzoom) => _$this._maxzoom = maxzoom;

  FieldEncodingsPngTilesBuilder() {
    FieldEncodingsPngTiles._defaults(this);
  }

  FieldEncodingsPngTilesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _template = $v.template;
      _tms = $v.tms;
      _uMin = $v.uMin;
      _uMax = $v.uMax;
      _vMin = $v.vMin;
      _vMax = $v.vMax;
      _minzoom = $v.minzoom;
      _maxzoom = $v.maxzoom;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FieldEncodingsPngTiles other) {
    _$v = other as _$FieldEncodingsPngTiles;
  }

  @override
  void update(void Function(FieldEncodingsPngTilesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FieldEncodingsPngTiles build() => _build();

  _$FieldEncodingsPngTiles _build() {
    final _$result = _$v ??
        _$FieldEncodingsPngTiles._(
          template: template,
          tms: tms,
          uMin: uMin,
          uMax: uMax,
          vMin: vMin,
          vMax: vMax,
          minzoom: minzoom,
          maxzoom: maxzoom,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
