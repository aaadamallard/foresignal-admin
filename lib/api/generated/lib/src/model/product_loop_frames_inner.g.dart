// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_loop_frames_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProductLoopFramesInnerKindEnum _$productLoopFramesInnerKindEnum_observed =
    const ProductLoopFramesInnerKindEnum._('observed');
const ProductLoopFramesInnerKindEnum _$productLoopFramesInnerKindEnum_forecast =
    const ProductLoopFramesInnerKindEnum._('forecast');

ProductLoopFramesInnerKindEnum _$productLoopFramesInnerKindEnumValueOf(
    String name) {
  switch (name) {
    case 'observed':
      return _$productLoopFramesInnerKindEnum_observed;
    case 'forecast':
      return _$productLoopFramesInnerKindEnum_forecast;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ProductLoopFramesInnerKindEnum>
    _$productLoopFramesInnerKindEnumValues = BuiltSet<
        ProductLoopFramesInnerKindEnum>(const <ProductLoopFramesInnerKindEnum>[
  _$productLoopFramesInnerKindEnum_observed,
  _$productLoopFramesInnerKindEnum_forecast,
]);

Serializer<ProductLoopFramesInnerKindEnum>
    _$productLoopFramesInnerKindEnumSerializer =
    _$ProductLoopFramesInnerKindEnumSerializer();

class _$ProductLoopFramesInnerKindEnumSerializer
    implements PrimitiveSerializer<ProductLoopFramesInnerKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'observed': 'observed',
    'forecast': 'forecast',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'observed': 'observed',
    'forecast': 'forecast',
  };

  @override
  final Iterable<Type> types = const <Type>[ProductLoopFramesInnerKindEnum];
  @override
  final String wireName = 'ProductLoopFramesInnerKindEnum';

  @override
  Object serialize(
          Serializers serializers, ProductLoopFramesInnerKindEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ProductLoopFramesInnerKindEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ProductLoopFramesInnerKindEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ProductLoopFramesInner extends ProductLoopFramesInner {
  @override
  final String productId;
  @override
  final DateTime time;
  @override
  final String? timeKey;
  @override
  final String frameKey;
  @override
  final ProductLoopFramesInnerKindEnum kind;
  @override
  final String? run;
  @override
  final int? step;
  @override
  final String url;
  @override
  final int? bytes;
  @override
  final DateTime? expiresAt;

  factory _$ProductLoopFramesInner(
          [void Function(ProductLoopFramesInnerBuilder)? updates]) =>
      (ProductLoopFramesInnerBuilder()..update(updates))._build();

  _$ProductLoopFramesInner._(
      {required this.productId,
      required this.time,
      this.timeKey,
      required this.frameKey,
      required this.kind,
      this.run,
      this.step,
      required this.url,
      this.bytes,
      this.expiresAt})
      : super._();
  @override
  ProductLoopFramesInner rebuild(
          void Function(ProductLoopFramesInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductLoopFramesInnerBuilder toBuilder() =>
      ProductLoopFramesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductLoopFramesInner &&
        productId == other.productId &&
        time == other.time &&
        timeKey == other.timeKey &&
        frameKey == other.frameKey &&
        kind == other.kind &&
        run == other.run &&
        step == other.step &&
        url == other.url &&
        bytes == other.bytes &&
        expiresAt == other.expiresAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, timeKey.hashCode);
    _$hash = $jc(_$hash, frameKey.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, run.hashCode);
    _$hash = $jc(_$hash, step.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, bytes.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductLoopFramesInner')
          ..add('productId', productId)
          ..add('time', time)
          ..add('timeKey', timeKey)
          ..add('frameKey', frameKey)
          ..add('kind', kind)
          ..add('run', run)
          ..add('step', step)
          ..add('url', url)
          ..add('bytes', bytes)
          ..add('expiresAt', expiresAt))
        .toString();
  }
}

class ProductLoopFramesInnerBuilder
    implements Builder<ProductLoopFramesInner, ProductLoopFramesInnerBuilder> {
  _$ProductLoopFramesInner? _$v;

  String? _productId;
  String? get productId => _$this._productId;
  set productId(String? productId) => _$this._productId = productId;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  String? _timeKey;
  String? get timeKey => _$this._timeKey;
  set timeKey(String? timeKey) => _$this._timeKey = timeKey;

  String? _frameKey;
  String? get frameKey => _$this._frameKey;
  set frameKey(String? frameKey) => _$this._frameKey = frameKey;

  ProductLoopFramesInnerKindEnum? _kind;
  ProductLoopFramesInnerKindEnum? get kind => _$this._kind;
  set kind(ProductLoopFramesInnerKindEnum? kind) => _$this._kind = kind;

  String? _run;
  String? get run => _$this._run;
  set run(String? run) => _$this._run = run;

  int? _step;
  int? get step => _$this._step;
  set step(int? step) => _$this._step = step;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  int? _bytes;
  int? get bytes => _$this._bytes;
  set bytes(int? bytes) => _$this._bytes = bytes;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  ProductLoopFramesInnerBuilder() {
    ProductLoopFramesInner._defaults(this);
  }

  ProductLoopFramesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productId = $v.productId;
      _time = $v.time;
      _timeKey = $v.timeKey;
      _frameKey = $v.frameKey;
      _kind = $v.kind;
      _run = $v.run;
      _step = $v.step;
      _url = $v.url;
      _bytes = $v.bytes;
      _expiresAt = $v.expiresAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductLoopFramesInner other) {
    _$v = other as _$ProductLoopFramesInner;
  }

  @override
  void update(void Function(ProductLoopFramesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductLoopFramesInner build() => _build();

  _$ProductLoopFramesInner _build() {
    final _$result = _$v ??
        _$ProductLoopFramesInner._(
          productId: BuiltValueNullFieldError.checkNotNull(
              productId, r'ProductLoopFramesInner', 'productId'),
          time: BuiltValueNullFieldError.checkNotNull(
              time, r'ProductLoopFramesInner', 'time'),
          timeKey: timeKey,
          frameKey: BuiltValueNullFieldError.checkNotNull(
              frameKey, r'ProductLoopFramesInner', 'frameKey'),
          kind: BuiltValueNullFieldError.checkNotNull(
              kind, r'ProductLoopFramesInner', 'kind'),
          run: run,
          step: step,
          url: BuiltValueNullFieldError.checkNotNull(
              url, r'ProductLoopFramesInner', 'url'),
          bytes: bytes,
          expiresAt: expiresAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
