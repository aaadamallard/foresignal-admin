// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_pack_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlacePackRequest extends PlacePackRequest {
  @override
  final BuiltList<String>? products;
  @override
  final int? frames;
  @override
  final num? radiusKm;
  @override
  final int? maxZoom;

  factory _$PlacePackRequest(
          [void Function(PlacePackRequestBuilder)? updates]) =>
      (PlacePackRequestBuilder()..update(updates))._build();

  _$PlacePackRequest._(
      {this.products, this.frames, this.radiusKm, this.maxZoom})
      : super._();
  @override
  PlacePackRequest rebuild(void Function(PlacePackRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlacePackRequestBuilder toBuilder() =>
      PlacePackRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlacePackRequest &&
        products == other.products &&
        frames == other.frames &&
        radiusKm == other.radiusKm &&
        maxZoom == other.maxZoom;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, products.hashCode);
    _$hash = $jc(_$hash, frames.hashCode);
    _$hash = $jc(_$hash, radiusKm.hashCode);
    _$hash = $jc(_$hash, maxZoom.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlacePackRequest')
          ..add('products', products)
          ..add('frames', frames)
          ..add('radiusKm', radiusKm)
          ..add('maxZoom', maxZoom))
        .toString();
  }
}

class PlacePackRequestBuilder
    implements Builder<PlacePackRequest, PlacePackRequestBuilder> {
  _$PlacePackRequest? _$v;

  ListBuilder<String>? _products;
  ListBuilder<String> get products =>
      _$this._products ??= ListBuilder<String>();
  set products(ListBuilder<String>? products) => _$this._products = products;

  int? _frames;
  int? get frames => _$this._frames;
  set frames(int? frames) => _$this._frames = frames;

  num? _radiusKm;
  num? get radiusKm => _$this._radiusKm;
  set radiusKm(num? radiusKm) => _$this._radiusKm = radiusKm;

  int? _maxZoom;
  int? get maxZoom => _$this._maxZoom;
  set maxZoom(int? maxZoom) => _$this._maxZoom = maxZoom;

  PlacePackRequestBuilder() {
    PlacePackRequest._defaults(this);
  }

  PlacePackRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _products = $v.products?.toBuilder();
      _frames = $v.frames;
      _radiusKm = $v.radiusKm;
      _maxZoom = $v.maxZoom;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlacePackRequest other) {
    _$v = other as _$PlacePackRequest;
  }

  @override
  void update(void Function(PlacePackRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlacePackRequest build() => _build();

  _$PlacePackRequest _build() {
    _$PlacePackRequest _$result;
    try {
      _$result = _$v ??
          _$PlacePackRequest._(
            products: _products?.build(),
            frames: frames,
            radiusKm: radiusKm,
            maxZoom: maxZoom,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'products';
        _products?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PlacePackRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
