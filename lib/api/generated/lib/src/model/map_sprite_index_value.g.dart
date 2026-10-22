// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_sprite_index_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MapSpriteIndexValue extends MapSpriteIndexValue {
  @override
  final int x;
  @override
  final int y;
  @override
  final int width;
  @override
  final int height;
  @override
  final num pixelRatio;
  @override
  final bool? sdf;

  factory _$MapSpriteIndexValue(
          [void Function(MapSpriteIndexValueBuilder)? updates]) =>
      (MapSpriteIndexValueBuilder()..update(updates))._build();

  _$MapSpriteIndexValue._(
      {required this.x,
      required this.y,
      required this.width,
      required this.height,
      required this.pixelRatio,
      this.sdf})
      : super._();
  @override
  MapSpriteIndexValue rebuild(
          void Function(MapSpriteIndexValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MapSpriteIndexValueBuilder toBuilder() =>
      MapSpriteIndexValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MapSpriteIndexValue &&
        x == other.x &&
        y == other.y &&
        width == other.width &&
        height == other.height &&
        pixelRatio == other.pixelRatio &&
        sdf == other.sdf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, x.hashCode);
    _$hash = $jc(_$hash, y.hashCode);
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jc(_$hash, height.hashCode);
    _$hash = $jc(_$hash, pixelRatio.hashCode);
    _$hash = $jc(_$hash, sdf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MapSpriteIndexValue')
          ..add('x', x)
          ..add('y', y)
          ..add('width', width)
          ..add('height', height)
          ..add('pixelRatio', pixelRatio)
          ..add('sdf', sdf))
        .toString();
  }
}

class MapSpriteIndexValueBuilder
    implements Builder<MapSpriteIndexValue, MapSpriteIndexValueBuilder> {
  _$MapSpriteIndexValue? _$v;

  int? _x;
  int? get x => _$this._x;
  set x(int? x) => _$this._x = x;

  int? _y;
  int? get y => _$this._y;
  set y(int? y) => _$this._y = y;

  int? _width;
  int? get width => _$this._width;
  set width(int? width) => _$this._width = width;

  int? _height;
  int? get height => _$this._height;
  set height(int? height) => _$this._height = height;

  num? _pixelRatio;
  num? get pixelRatio => _$this._pixelRatio;
  set pixelRatio(num? pixelRatio) => _$this._pixelRatio = pixelRatio;

  bool? _sdf;
  bool? get sdf => _$this._sdf;
  set sdf(bool? sdf) => _$this._sdf = sdf;

  MapSpriteIndexValueBuilder() {
    MapSpriteIndexValue._defaults(this);
  }

  MapSpriteIndexValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _x = $v.x;
      _y = $v.y;
      _width = $v.width;
      _height = $v.height;
      _pixelRatio = $v.pixelRatio;
      _sdf = $v.sdf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MapSpriteIndexValue other) {
    _$v = other as _$MapSpriteIndexValue;
  }

  @override
  void update(void Function(MapSpriteIndexValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MapSpriteIndexValue build() => _build();

  _$MapSpriteIndexValue _build() {
    final _$result = _$v ??
        _$MapSpriteIndexValue._(
          x: BuiltValueNullFieldError.checkNotNull(
              x, r'MapSpriteIndexValue', 'x'),
          y: BuiltValueNullFieldError.checkNotNull(
              y, r'MapSpriteIndexValue', 'y'),
          width: BuiltValueNullFieldError.checkNotNull(
              width, r'MapSpriteIndexValue', 'width'),
          height: BuiltValueNullFieldError.checkNotNull(
              height, r'MapSpriteIndexValue', 'height'),
          pixelRatio: BuiltValueNullFieldError.checkNotNull(
              pixelRatio, r'MapSpriteIndexValue', 'pixelRatio'),
          sdf: sdf,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
