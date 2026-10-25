// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_temporal.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProductTemporalTypeEnum _$productTemporalTypeEnum_observation =
    const ProductTemporalTypeEnum._('observation');
const ProductTemporalTypeEnum _$productTemporalTypeEnum_forecast =
    const ProductTemporalTypeEnum._('forecast');
const ProductTemporalTypeEnum _$productTemporalTypeEnum_pass =
    const ProductTemporalTypeEnum._('pass');
const ProductTemporalTypeEnum _$productTemporalTypeEnum_unknownDefaultOpenApi =
    const ProductTemporalTypeEnum._('unknownDefaultOpenApi');

ProductTemporalTypeEnum _$productTemporalTypeEnumValueOf(String name) {
  switch (name) {
    case 'observation':
      return _$productTemporalTypeEnum_observation;
    case 'forecast':
      return _$productTemporalTypeEnum_forecast;
    case 'pass':
      return _$productTemporalTypeEnum_pass;
    case 'unknownDefaultOpenApi':
      return _$productTemporalTypeEnum_unknownDefaultOpenApi;
    default:
      return _$productTemporalTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ProductTemporalTypeEnum> _$productTemporalTypeEnumValues =
    BuiltSet<ProductTemporalTypeEnum>(const <ProductTemporalTypeEnum>[
      _$productTemporalTypeEnum_observation,
      _$productTemporalTypeEnum_forecast,
      _$productTemporalTypeEnum_pass,
      _$productTemporalTypeEnum_unknownDefaultOpenApi,
    ]);

Serializer<ProductTemporalTypeEnum> _$productTemporalTypeEnumSerializer =
    _$ProductTemporalTypeEnumSerializer();

class _$ProductTemporalTypeEnumSerializer
    implements PrimitiveSerializer<ProductTemporalTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'observation': 'observation',
    'forecast': 'forecast',
    'pass': 'pass',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'observation': 'observation',
    'forecast': 'forecast',
    'pass': 'pass',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ProductTemporalTypeEnum];
  @override
  final String wireName = 'ProductTemporalTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ProductTemporalTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ProductTemporalTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ProductTemporalTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ProductTemporal extends ProductTemporal {
  @override
  final ProductTemporalTypeEnum type;
  @override
  final String? cadence;
  @override
  final String? maxGap;
  @override
  final DateTime? earliest;
  @override
  final DateTime? latest;
  @override
  final ProductTemporalRetention? retention;
  @override
  final BuiltList<ProductTemporalRunsInner>? runs;

  factory _$ProductTemporal([void Function(ProductTemporalBuilder)? updates]) =>
      (ProductTemporalBuilder()..update(updates))._build();

  _$ProductTemporal._({
    required this.type,
    this.cadence,
    this.maxGap,
    this.earliest,
    this.latest,
    this.retention,
    this.runs,
  }) : super._();
  @override
  ProductTemporal rebuild(void Function(ProductTemporalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductTemporalBuilder toBuilder() => ProductTemporalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductTemporal &&
        type == other.type &&
        cadence == other.cadence &&
        maxGap == other.maxGap &&
        earliest == other.earliest &&
        latest == other.latest &&
        retention == other.retention &&
        runs == other.runs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, cadence.hashCode);
    _$hash = $jc(_$hash, maxGap.hashCode);
    _$hash = $jc(_$hash, earliest.hashCode);
    _$hash = $jc(_$hash, latest.hashCode);
    _$hash = $jc(_$hash, retention.hashCode);
    _$hash = $jc(_$hash, runs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductTemporal')
          ..add('type', type)
          ..add('cadence', cadence)
          ..add('maxGap', maxGap)
          ..add('earliest', earliest)
          ..add('latest', latest)
          ..add('retention', retention)
          ..add('runs', runs))
        .toString();
  }
}

class ProductTemporalBuilder
    implements Builder<ProductTemporal, ProductTemporalBuilder> {
  _$ProductTemporal? _$v;

  ProductTemporalTypeEnum? _type;
  ProductTemporalTypeEnum? get type => _$this._type;
  set type(ProductTemporalTypeEnum? type) => _$this._type = type;

  String? _cadence;
  String? get cadence => _$this._cadence;
  set cadence(String? cadence) => _$this._cadence = cadence;

  String? _maxGap;
  String? get maxGap => _$this._maxGap;
  set maxGap(String? maxGap) => _$this._maxGap = maxGap;

  DateTime? _earliest;
  DateTime? get earliest => _$this._earliest;
  set earliest(DateTime? earliest) => _$this._earliest = earliest;

  DateTime? _latest;
  DateTime? get latest => _$this._latest;
  set latest(DateTime? latest) => _$this._latest = latest;

  ProductTemporalRetentionBuilder? _retention;
  ProductTemporalRetentionBuilder get retention =>
      _$this._retention ??= ProductTemporalRetentionBuilder();
  set retention(ProductTemporalRetentionBuilder? retention) =>
      _$this._retention = retention;

  ListBuilder<ProductTemporalRunsInner>? _runs;
  ListBuilder<ProductTemporalRunsInner> get runs =>
      _$this._runs ??= ListBuilder<ProductTemporalRunsInner>();
  set runs(ListBuilder<ProductTemporalRunsInner>? runs) => _$this._runs = runs;

  ProductTemporalBuilder() {
    ProductTemporal._defaults(this);
  }

  ProductTemporalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _cadence = $v.cadence;
      _maxGap = $v.maxGap;
      _earliest = $v.earliest;
      _latest = $v.latest;
      _retention = $v.retention?.toBuilder();
      _runs = $v.runs?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductTemporal other) {
    _$v = other as _$ProductTemporal;
  }

  @override
  void update(void Function(ProductTemporalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductTemporal build() => _build();

  _$ProductTemporal _build() {
    _$ProductTemporal _$result;
    try {
      _$result =
          _$v ??
          _$ProductTemporal._(
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'ProductTemporal',
              'type',
            ),
            cadence: cadence,
            maxGap: maxGap,
            earliest: earliest,
            latest: latest,
            retention: _retention?.build(),
            runs: _runs?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'retention';
        _retention?.build();
        _$failedField = 'runs';
        _runs?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ProductTemporal',
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
