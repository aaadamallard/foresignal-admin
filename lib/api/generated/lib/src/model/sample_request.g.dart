// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SampleRequestUnitsEnum _$sampleRequestUnitsEnum_metric =
    const SampleRequestUnitsEnum._('metric');
const SampleRequestUnitsEnum _$sampleRequestUnitsEnum_imperial =
    const SampleRequestUnitsEnum._('imperial');

SampleRequestUnitsEnum _$sampleRequestUnitsEnumValueOf(String name) {
  switch (name) {
    case 'metric':
      return _$sampleRequestUnitsEnum_metric;
    case 'imperial':
      return _$sampleRequestUnitsEnum_imperial;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SampleRequestUnitsEnum> _$sampleRequestUnitsEnumValues =
    BuiltSet<SampleRequestUnitsEnum>(const <SampleRequestUnitsEnum>[
  _$sampleRequestUnitsEnum_metric,
  _$sampleRequestUnitsEnum_imperial,
]);

Serializer<SampleRequestUnitsEnum> _$sampleRequestUnitsEnumSerializer =
    _$SampleRequestUnitsEnumSerializer();

class _$SampleRequestUnitsEnumSerializer
    implements PrimitiveSerializer<SampleRequestUnitsEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'metric': 'metric',
    'imperial': 'imperial',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'metric': 'metric',
    'imperial': 'imperial',
  };

  @override
  final Iterable<Type> types = const <Type>[SampleRequestUnitsEnum];
  @override
  final String wireName = 'SampleRequestUnitsEnum';

  @override
  Object serialize(Serializers serializers, SampleRequestUnitsEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SampleRequestUnitsEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SampleRequestUnitsEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SampleRequest extends SampleRequest {
  @override
  final BuiltList<JsonObject?> points;
  @override
  final BuiltList<String> products;
  @override
  final String? time;
  @override
  final SampleRequestUnitsEnum? units;

  factory _$SampleRequest([void Function(SampleRequestBuilder)? updates]) =>
      (SampleRequestBuilder()..update(updates))._build();

  _$SampleRequest._(
      {required this.points, required this.products, this.time, this.units})
      : super._();
  @override
  SampleRequest rebuild(void Function(SampleRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SampleRequestBuilder toBuilder() => SampleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SampleRequest &&
        points == other.points &&
        products == other.products &&
        time == other.time &&
        units == other.units;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, points.hashCode);
    _$hash = $jc(_$hash, products.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, units.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SampleRequest')
          ..add('points', points)
          ..add('products', products)
          ..add('time', time)
          ..add('units', units))
        .toString();
  }
}

class SampleRequestBuilder
    implements Builder<SampleRequest, SampleRequestBuilder> {
  _$SampleRequest? _$v;

  ListBuilder<JsonObject?>? _points;
  ListBuilder<JsonObject?> get points =>
      _$this._points ??= ListBuilder<JsonObject?>();
  set points(ListBuilder<JsonObject?>? points) => _$this._points = points;

  ListBuilder<String>? _products;
  ListBuilder<String> get products =>
      _$this._products ??= ListBuilder<String>();
  set products(ListBuilder<String>? products) => _$this._products = products;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  SampleRequestUnitsEnum? _units;
  SampleRequestUnitsEnum? get units => _$this._units;
  set units(SampleRequestUnitsEnum? units) => _$this._units = units;

  SampleRequestBuilder() {
    SampleRequest._defaults(this);
  }

  SampleRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _points = $v.points.toBuilder();
      _products = $v.products.toBuilder();
      _time = $v.time;
      _units = $v.units;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SampleRequest other) {
    _$v = other as _$SampleRequest;
  }

  @override
  void update(void Function(SampleRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SampleRequest build() => _build();

  _$SampleRequest _build() {
    _$SampleRequest _$result;
    try {
      _$result = _$v ??
          _$SampleRequest._(
            points: points.build(),
            products: products.build(),
            time: time,
            units: units,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'points';
        points.build();
        _$failedField = 'products';
        products.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SampleRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
