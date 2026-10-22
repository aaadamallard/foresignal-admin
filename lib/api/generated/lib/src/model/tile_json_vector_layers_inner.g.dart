// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tile_json_vector_layers_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TileJsonVectorLayersInner extends TileJsonVectorLayersInner {
  @override
  final String id;
  @override
  final String? description;
  @override
  final int? minzoom;
  @override
  final int? maxzoom;
  @override
  final BuiltMap<String, String> fields;

  factory _$TileJsonVectorLayersInner([
    void Function(TileJsonVectorLayersInnerBuilder)? updates,
  ]) => (TileJsonVectorLayersInnerBuilder()..update(updates))._build();

  _$TileJsonVectorLayersInner._({
    required this.id,
    this.description,
    this.minzoom,
    this.maxzoom,
    required this.fields,
  }) : super._();
  @override
  TileJsonVectorLayersInner rebuild(
    void Function(TileJsonVectorLayersInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TileJsonVectorLayersInnerBuilder toBuilder() =>
      TileJsonVectorLayersInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TileJsonVectorLayersInner &&
        id == other.id &&
        description == other.description &&
        minzoom == other.minzoom &&
        maxzoom == other.maxzoom &&
        fields == other.fields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, minzoom.hashCode);
    _$hash = $jc(_$hash, maxzoom.hashCode);
    _$hash = $jc(_$hash, fields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TileJsonVectorLayersInner')
          ..add('id', id)
          ..add('description', description)
          ..add('minzoom', minzoom)
          ..add('maxzoom', maxzoom)
          ..add('fields', fields))
        .toString();
  }
}

class TileJsonVectorLayersInnerBuilder
    implements
        Builder<TileJsonVectorLayersInner, TileJsonVectorLayersInnerBuilder> {
  _$TileJsonVectorLayersInner? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _minzoom;
  int? get minzoom => _$this._minzoom;
  set minzoom(int? minzoom) => _$this._minzoom = minzoom;

  int? _maxzoom;
  int? get maxzoom => _$this._maxzoom;
  set maxzoom(int? maxzoom) => _$this._maxzoom = maxzoom;

  MapBuilder<String, String>? _fields;
  MapBuilder<String, String> get fields =>
      _$this._fields ??= MapBuilder<String, String>();
  set fields(MapBuilder<String, String>? fields) => _$this._fields = fields;

  TileJsonVectorLayersInnerBuilder() {
    TileJsonVectorLayersInner._defaults(this);
  }

  TileJsonVectorLayersInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _description = $v.description;
      _minzoom = $v.minzoom;
      _maxzoom = $v.maxzoom;
      _fields = $v.fields.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TileJsonVectorLayersInner other) {
    _$v = other as _$TileJsonVectorLayersInner;
  }

  @override
  void update(void Function(TileJsonVectorLayersInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TileJsonVectorLayersInner build() => _build();

  _$TileJsonVectorLayersInner _build() {
    _$TileJsonVectorLayersInner _$result;
    try {
      _$result =
          _$v ??
          _$TileJsonVectorLayersInner._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'TileJsonVectorLayersInner',
              'id',
            ),
            description: description,
            minzoom: minzoom,
            maxzoom: maxzoom,
            fields: fields.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fields';
        fields.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TileJsonVectorLayersInner',
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
