// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'satellite_pass_payload_products_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SatellitePassPayloadProductsInner
    extends SatellitePassPayloadProductsInner {
  @override
  final String? productId;
  @override
  final String? frameKey;
  @override
  final String composite;
  @override
  final String? thumbMediaId;
  @override
  final String? tilesTemplate;
  @override
  final String? instrument;
  @override
  final String? mediaId;

  factory _$SatellitePassPayloadProductsInner([
    void Function(SatellitePassPayloadProductsInnerBuilder)? updates,
  ]) => (SatellitePassPayloadProductsInnerBuilder()..update(updates))._build();

  _$SatellitePassPayloadProductsInner._({
    this.productId,
    this.frameKey,
    required this.composite,
    this.thumbMediaId,
    this.tilesTemplate,
    this.instrument,
    this.mediaId,
  }) : super._();
  @override
  SatellitePassPayloadProductsInner rebuild(
    void Function(SatellitePassPayloadProductsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SatellitePassPayloadProductsInnerBuilder toBuilder() =>
      SatellitePassPayloadProductsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SatellitePassPayloadProductsInner &&
        productId == other.productId &&
        frameKey == other.frameKey &&
        composite == other.composite &&
        thumbMediaId == other.thumbMediaId &&
        tilesTemplate == other.tilesTemplate &&
        instrument == other.instrument &&
        mediaId == other.mediaId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, frameKey.hashCode);
    _$hash = $jc(_$hash, composite.hashCode);
    _$hash = $jc(_$hash, thumbMediaId.hashCode);
    _$hash = $jc(_$hash, tilesTemplate.hashCode);
    _$hash = $jc(_$hash, instrument.hashCode);
    _$hash = $jc(_$hash, mediaId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SatellitePassPayloadProductsInner')
          ..add('productId', productId)
          ..add('frameKey', frameKey)
          ..add('composite', composite)
          ..add('thumbMediaId', thumbMediaId)
          ..add('tilesTemplate', tilesTemplate)
          ..add('instrument', instrument)
          ..add('mediaId', mediaId))
        .toString();
  }
}

class SatellitePassPayloadProductsInnerBuilder
    implements
        Builder<
          SatellitePassPayloadProductsInner,
          SatellitePassPayloadProductsInnerBuilder
        > {
  _$SatellitePassPayloadProductsInner? _$v;

  String? _productId;
  String? get productId => _$this._productId;
  set productId(String? productId) => _$this._productId = productId;

  String? _frameKey;
  String? get frameKey => _$this._frameKey;
  set frameKey(String? frameKey) => _$this._frameKey = frameKey;

  String? _composite;
  String? get composite => _$this._composite;
  set composite(String? composite) => _$this._composite = composite;

  String? _thumbMediaId;
  String? get thumbMediaId => _$this._thumbMediaId;
  set thumbMediaId(String? thumbMediaId) => _$this._thumbMediaId = thumbMediaId;

  String? _tilesTemplate;
  String? get tilesTemplate => _$this._tilesTemplate;
  set tilesTemplate(String? tilesTemplate) =>
      _$this._tilesTemplate = tilesTemplate;

  String? _instrument;
  String? get instrument => _$this._instrument;
  set instrument(String? instrument) => _$this._instrument = instrument;

  String? _mediaId;
  String? get mediaId => _$this._mediaId;
  set mediaId(String? mediaId) => _$this._mediaId = mediaId;

  SatellitePassPayloadProductsInnerBuilder() {
    SatellitePassPayloadProductsInner._defaults(this);
  }

  SatellitePassPayloadProductsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productId = $v.productId;
      _frameKey = $v.frameKey;
      _composite = $v.composite;
      _thumbMediaId = $v.thumbMediaId;
      _tilesTemplate = $v.tilesTemplate;
      _instrument = $v.instrument;
      _mediaId = $v.mediaId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SatellitePassPayloadProductsInner other) {
    _$v = other as _$SatellitePassPayloadProductsInner;
  }

  @override
  void update(
    void Function(SatellitePassPayloadProductsInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  SatellitePassPayloadProductsInner build() => _build();

  _$SatellitePassPayloadProductsInner _build() {
    final _$result =
        _$v ??
        _$SatellitePassPayloadProductsInner._(
          productId: productId,
          frameKey: frameKey,
          composite: BuiltValueNullFieldError.checkNotNull(
            composite,
            r'SatellitePassPayloadProductsInner',
            'composite',
          ),
          thumbMediaId: thumbMediaId,
          tilesTemplate: tilesTemplate,
          instrument: instrument,
          mediaId: mediaId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
