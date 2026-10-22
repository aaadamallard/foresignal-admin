// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tile_layer_index_layers_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TileLayerIndexLayersInnerTypeEnum
    _$tileLayerIndexLayersInnerTypeEnum_source_ =
    const TileLayerIndexLayersInnerTypeEnum._('source_');
const TileLayerIndexLayersInnerTypeEnum
    _$tileLayerIndexLayersInnerTypeEnum_kind =
    const TileLayerIndexLayersInnerTypeEnum._('kind');

TileLayerIndexLayersInnerTypeEnum _$tileLayerIndexLayersInnerTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'source_':
      return _$tileLayerIndexLayersInnerTypeEnum_source_;
    case 'kind':
      return _$tileLayerIndexLayersInnerTypeEnum_kind;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TileLayerIndexLayersInnerTypeEnum>
    _$tileLayerIndexLayersInnerTypeEnumValues = BuiltSet<
        TileLayerIndexLayersInnerTypeEnum>(const <TileLayerIndexLayersInnerTypeEnum>[
  _$tileLayerIndexLayersInnerTypeEnum_source_,
  _$tileLayerIndexLayersInnerTypeEnum_kind,
]);

Serializer<TileLayerIndexLayersInnerTypeEnum>
    _$tileLayerIndexLayersInnerTypeEnumSerializer =
    _$TileLayerIndexLayersInnerTypeEnumSerializer();

class _$TileLayerIndexLayersInnerTypeEnumSerializer
    implements PrimitiveSerializer<TileLayerIndexLayersInnerTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'source_': 'source',
    'kind': 'kind',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'source': 'source_',
    'kind': 'kind',
  };

  @override
  final Iterable<Type> types = const <Type>[TileLayerIndexLayersInnerTypeEnum];
  @override
  final String wireName = 'TileLayerIndexLayersInnerTypeEnum';

  @override
  Object serialize(
          Serializers serializers, TileLayerIndexLayersInnerTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TileLayerIndexLayersInnerTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TileLayerIndexLayersInnerTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TileLayerIndexLayersInner extends TileLayerIndexLayersInner {
  @override
  final String id;
  @override
  final TileLayerIndexLayersInnerTypeEnum type;
  @override
  final String name;
  @override
  final String tilejson;
  @override
  final int? aggBelowZoom;

  factory _$TileLayerIndexLayersInner(
          [void Function(TileLayerIndexLayersInnerBuilder)? updates]) =>
      (TileLayerIndexLayersInnerBuilder()..update(updates))._build();

  _$TileLayerIndexLayersInner._(
      {required this.id,
      required this.type,
      required this.name,
      required this.tilejson,
      this.aggBelowZoom})
      : super._();
  @override
  TileLayerIndexLayersInner rebuild(
          void Function(TileLayerIndexLayersInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TileLayerIndexLayersInnerBuilder toBuilder() =>
      TileLayerIndexLayersInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TileLayerIndexLayersInner &&
        id == other.id &&
        type == other.type &&
        name == other.name &&
        tilejson == other.tilejson &&
        aggBelowZoom == other.aggBelowZoom;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, tilejson.hashCode);
    _$hash = $jc(_$hash, aggBelowZoom.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TileLayerIndexLayersInner')
          ..add('id', id)
          ..add('type', type)
          ..add('name', name)
          ..add('tilejson', tilejson)
          ..add('aggBelowZoom', aggBelowZoom))
        .toString();
  }
}

class TileLayerIndexLayersInnerBuilder
    implements
        Builder<TileLayerIndexLayersInner, TileLayerIndexLayersInnerBuilder> {
  _$TileLayerIndexLayersInner? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  TileLayerIndexLayersInnerTypeEnum? _type;
  TileLayerIndexLayersInnerTypeEnum? get type => _$this._type;
  set type(TileLayerIndexLayersInnerTypeEnum? type) => _$this._type = type;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _tilejson;
  String? get tilejson => _$this._tilejson;
  set tilejson(String? tilejson) => _$this._tilejson = tilejson;

  int? _aggBelowZoom;
  int? get aggBelowZoom => _$this._aggBelowZoom;
  set aggBelowZoom(int? aggBelowZoom) => _$this._aggBelowZoom = aggBelowZoom;

  TileLayerIndexLayersInnerBuilder() {
    TileLayerIndexLayersInner._defaults(this);
  }

  TileLayerIndexLayersInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _name = $v.name;
      _tilejson = $v.tilejson;
      _aggBelowZoom = $v.aggBelowZoom;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TileLayerIndexLayersInner other) {
    _$v = other as _$TileLayerIndexLayersInner;
  }

  @override
  void update(void Function(TileLayerIndexLayersInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TileLayerIndexLayersInner build() => _build();

  _$TileLayerIndexLayersInner _build() {
    final _$result = _$v ??
        _$TileLayerIndexLayersInner._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'TileLayerIndexLayersInner', 'id'),
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'TileLayerIndexLayersInner', 'type'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'TileLayerIndexLayersInner', 'name'),
          tilejson: BuiltValueNullFieldError.checkNotNull(
              tilejson, r'TileLayerIndexLayersInner', 'tilejson'),
          aggBelowZoom: aggBelowZoom,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
