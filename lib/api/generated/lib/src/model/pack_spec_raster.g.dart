// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pack_spec_raster.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PackSpecRaster extends PackSpecRaster {
  @override
  final String productId;
  @override
  final String? frame;

  factory _$PackSpecRaster([void Function(PackSpecRasterBuilder)? updates]) =>
      (PackSpecRasterBuilder()..update(updates))._build();

  _$PackSpecRaster._({required this.productId, this.frame}) : super._();
  @override
  PackSpecRaster rebuild(void Function(PackSpecRasterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PackSpecRasterBuilder toBuilder() => PackSpecRasterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PackSpecRaster &&
        productId == other.productId &&
        frame == other.frame;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, frame.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PackSpecRaster')
          ..add('productId', productId)
          ..add('frame', frame))
        .toString();
  }
}

class PackSpecRasterBuilder
    implements Builder<PackSpecRaster, PackSpecRasterBuilder> {
  _$PackSpecRaster? _$v;

  String? _productId;
  String? get productId => _$this._productId;
  set productId(String? productId) => _$this._productId = productId;

  String? _frame;
  String? get frame => _$this._frame;
  set frame(String? frame) => _$this._frame = frame;

  PackSpecRasterBuilder() {
    PackSpecRaster._defaults(this);
  }

  PackSpecRasterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productId = $v.productId;
      _frame = $v.frame;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PackSpecRaster other) {
    _$v = other as _$PackSpecRaster;
  }

  @override
  void update(void Function(PackSpecRasterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PackSpecRaster build() => _build();

  _$PackSpecRaster _build() {
    final _$result =
        _$v ??
        _$PackSpecRaster._(
          productId: BuiltValueNullFieldError.checkNotNull(
            productId,
            r'PackSpecRaster',
            'productId',
          ),
          frame: frame,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
