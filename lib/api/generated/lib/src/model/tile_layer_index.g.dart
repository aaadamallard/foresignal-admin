// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tile_layer_index.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TileLayerIndexTilejsonEnum _$tileLayerIndexTilejsonEnum_n3period0Period0 =
    const TileLayerIndexTilejsonEnum._('n3period0Period0');

TileLayerIndexTilejsonEnum _$tileLayerIndexTilejsonEnumValueOf(String name) {
  switch (name) {
    case 'n3period0Period0':
      return _$tileLayerIndexTilejsonEnum_n3period0Period0;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TileLayerIndexTilejsonEnum> _$tileLayerIndexTilejsonEnumValues =
    BuiltSet<TileLayerIndexTilejsonEnum>(const <TileLayerIndexTilejsonEnum>[
  _$tileLayerIndexTilejsonEnum_n3period0Period0,
]);

Serializer<TileLayerIndexTilejsonEnum> _$tileLayerIndexTilejsonEnumSerializer =
    _$TileLayerIndexTilejsonEnumSerializer();

class _$TileLayerIndexTilejsonEnumSerializer
    implements PrimitiveSerializer<TileLayerIndexTilejsonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'n3period0Period0': '3.0.0',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '3.0.0': 'n3period0Period0',
  };

  @override
  final Iterable<Type> types = const <Type>[TileLayerIndexTilejsonEnum];
  @override
  final String wireName = 'TileLayerIndexTilejsonEnum';

  @override
  Object serialize(Serializers serializers, TileLayerIndexTilejsonEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TileLayerIndexTilejsonEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TileLayerIndexTilejsonEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TileLayerIndex extends TileLayerIndex {
  @override
  final TileLayerIndexTilejsonEnum tilejson;
  @override
  final BuiltList<TileLayerIndexLayersInner> layers;

  factory _$TileLayerIndex([void Function(TileLayerIndexBuilder)? updates]) =>
      (TileLayerIndexBuilder()..update(updates))._build();

  _$TileLayerIndex._({required this.tilejson, required this.layers})
      : super._();
  @override
  TileLayerIndex rebuild(void Function(TileLayerIndexBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TileLayerIndexBuilder toBuilder() => TileLayerIndexBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TileLayerIndex &&
        tilejson == other.tilejson &&
        layers == other.layers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tilejson.hashCode);
    _$hash = $jc(_$hash, layers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TileLayerIndex')
          ..add('tilejson', tilejson)
          ..add('layers', layers))
        .toString();
  }
}

class TileLayerIndexBuilder
    implements Builder<TileLayerIndex, TileLayerIndexBuilder> {
  _$TileLayerIndex? _$v;

  TileLayerIndexTilejsonEnum? _tilejson;
  TileLayerIndexTilejsonEnum? get tilejson => _$this._tilejson;
  set tilejson(TileLayerIndexTilejsonEnum? tilejson) =>
      _$this._tilejson = tilejson;

  ListBuilder<TileLayerIndexLayersInner>? _layers;
  ListBuilder<TileLayerIndexLayersInner> get layers =>
      _$this._layers ??= ListBuilder<TileLayerIndexLayersInner>();
  set layers(ListBuilder<TileLayerIndexLayersInner>? layers) =>
      _$this._layers = layers;

  TileLayerIndexBuilder() {
    TileLayerIndex._defaults(this);
  }

  TileLayerIndexBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tilejson = $v.tilejson;
      _layers = $v.layers.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TileLayerIndex other) {
    _$v = other as _$TileLayerIndex;
  }

  @override
  void update(void Function(TileLayerIndexBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TileLayerIndex build() => _build();

  _$TileLayerIndex _build() {
    _$TileLayerIndex _$result;
    try {
      _$result = _$v ??
          _$TileLayerIndex._(
            tilejson: BuiltValueNullFieldError.checkNotNull(
                tilejson, r'TileLayerIndex', 'tilejson'),
            layers: layers.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'layers';
        layers.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TileLayerIndex', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
