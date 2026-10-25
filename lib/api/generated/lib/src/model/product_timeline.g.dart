// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_timeline.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProductTimelineModeEnum _$productTimelineModeEnum_products =
    const ProductTimelineModeEnum._('products');
const ProductTimelineModeEnum _$productTimelineModeEnum_seamless =
    const ProductTimelineModeEnum._('seamless');
const ProductTimelineModeEnum _$productTimelineModeEnum_unknownDefaultOpenApi =
    const ProductTimelineModeEnum._('unknownDefaultOpenApi');

ProductTimelineModeEnum _$productTimelineModeEnumValueOf(String name) {
  switch (name) {
    case 'products':
      return _$productTimelineModeEnum_products;
    case 'seamless':
      return _$productTimelineModeEnum_seamless;
    case 'unknownDefaultOpenApi':
      return _$productTimelineModeEnum_unknownDefaultOpenApi;
    default:
      return _$productTimelineModeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ProductTimelineModeEnum> _$productTimelineModeEnumValues =
    BuiltSet<ProductTimelineModeEnum>(const <ProductTimelineModeEnum>[
      _$productTimelineModeEnum_products,
      _$productTimelineModeEnum_seamless,
      _$productTimelineModeEnum_unknownDefaultOpenApi,
    ]);

Serializer<ProductTimelineModeEnum> _$productTimelineModeEnumSerializer =
    _$ProductTimelineModeEnumSerializer();

class _$ProductTimelineModeEnumSerializer
    implements PrimitiveSerializer<ProductTimelineModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'products': 'products',
    'seamless': 'seamless',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'products': 'products',
    'seamless': 'seamless',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ProductTimelineModeEnum];
  @override
  final String wireName = 'ProductTimelineModeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ProductTimelineModeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ProductTimelineModeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ProductTimelineModeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ProductTimeline extends ProductTimeline {
  @override
  final ProductTimelineModeEnum mode;
  @override
  final BuiltList<String> products;
  @override
  final DateTime? from;
  @override
  final DateTime? to;
  @override
  final BuiltMap<String, String>? runs;
  @override
  final int? nowIndex;
  @override
  final BuiltList<TimelineTick> ticks;
  @override
  final DateTime serverTime;

  factory _$ProductTimeline([void Function(ProductTimelineBuilder)? updates]) =>
      (ProductTimelineBuilder()..update(updates))._build();

  _$ProductTimeline._({
    required this.mode,
    required this.products,
    this.from,
    this.to,
    this.runs,
    this.nowIndex,
    required this.ticks,
    required this.serverTime,
  }) : super._();
  @override
  ProductTimeline rebuild(void Function(ProductTimelineBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductTimelineBuilder toBuilder() => ProductTimelineBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductTimeline &&
        mode == other.mode &&
        products == other.products &&
        from == other.from &&
        to == other.to &&
        runs == other.runs &&
        nowIndex == other.nowIndex &&
        ticks == other.ticks &&
        serverTime == other.serverTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, products.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, runs.hashCode);
    _$hash = $jc(_$hash, nowIndex.hashCode);
    _$hash = $jc(_$hash, ticks.hashCode);
    _$hash = $jc(_$hash, serverTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductTimeline')
          ..add('mode', mode)
          ..add('products', products)
          ..add('from', from)
          ..add('to', to)
          ..add('runs', runs)
          ..add('nowIndex', nowIndex)
          ..add('ticks', ticks)
          ..add('serverTime', serverTime))
        .toString();
  }
}

class ProductTimelineBuilder
    implements Builder<ProductTimeline, ProductTimelineBuilder> {
  _$ProductTimeline? _$v;

  ProductTimelineModeEnum? _mode;
  ProductTimelineModeEnum? get mode => _$this._mode;
  set mode(ProductTimelineModeEnum? mode) => _$this._mode = mode;

  ListBuilder<String>? _products;
  ListBuilder<String> get products =>
      _$this._products ??= ListBuilder<String>();
  set products(ListBuilder<String>? products) => _$this._products = products;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  MapBuilder<String, String>? _runs;
  MapBuilder<String, String> get runs =>
      _$this._runs ??= MapBuilder<String, String>();
  set runs(MapBuilder<String, String>? runs) => _$this._runs = runs;

  int? _nowIndex;
  int? get nowIndex => _$this._nowIndex;
  set nowIndex(int? nowIndex) => _$this._nowIndex = nowIndex;

  ListBuilder<TimelineTick>? _ticks;
  ListBuilder<TimelineTick> get ticks =>
      _$this._ticks ??= ListBuilder<TimelineTick>();
  set ticks(ListBuilder<TimelineTick>? ticks) => _$this._ticks = ticks;

  DateTime? _serverTime;
  DateTime? get serverTime => _$this._serverTime;
  set serverTime(DateTime? serverTime) => _$this._serverTime = serverTime;

  ProductTimelineBuilder() {
    ProductTimeline._defaults(this);
  }

  ProductTimelineBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mode = $v.mode;
      _products = $v.products.toBuilder();
      _from = $v.from;
      _to = $v.to;
      _runs = $v.runs?.toBuilder();
      _nowIndex = $v.nowIndex;
      _ticks = $v.ticks.toBuilder();
      _serverTime = $v.serverTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductTimeline other) {
    _$v = other as _$ProductTimeline;
  }

  @override
  void update(void Function(ProductTimelineBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductTimeline build() => _build();

  _$ProductTimeline _build() {
    _$ProductTimeline _$result;
    try {
      _$result =
          _$v ??
          _$ProductTimeline._(
            mode: BuiltValueNullFieldError.checkNotNull(
              mode,
              r'ProductTimeline',
              'mode',
            ),
            products: products.build(),
            from: from,
            to: to,
            runs: _runs?.build(),
            nowIndex: nowIndex,
            ticks: ticks.build(),
            serverTime: BuiltValueNullFieldError.checkNotNull(
              serverTime,
              r'ProductTimeline',
              'serverTime',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'products';
        products.build();

        _$failedField = 'runs';
        _runs?.build();

        _$failedField = 'ticks';
        ticks.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ProductTimeline',
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
