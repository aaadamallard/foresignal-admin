// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_track_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SampleTrackRequestUnitsEnum _$sampleTrackRequestUnitsEnum_metric =
    const SampleTrackRequestUnitsEnum._('metric');
const SampleTrackRequestUnitsEnum _$sampleTrackRequestUnitsEnum_imperial =
    const SampleTrackRequestUnitsEnum._('imperial');

SampleTrackRequestUnitsEnum _$sampleTrackRequestUnitsEnumValueOf(String name) {
  switch (name) {
    case 'metric':
      return _$sampleTrackRequestUnitsEnum_metric;
    case 'imperial':
      return _$sampleTrackRequestUnitsEnum_imperial;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SampleTrackRequestUnitsEnum>
_$sampleTrackRequestUnitsEnumValues = BuiltSet<SampleTrackRequestUnitsEnum>(
  const <SampleTrackRequestUnitsEnum>[
    _$sampleTrackRequestUnitsEnum_metric,
    _$sampleTrackRequestUnitsEnum_imperial,
  ],
);

Serializer<SampleTrackRequestUnitsEnum>
_$sampleTrackRequestUnitsEnumSerializer =
    _$SampleTrackRequestUnitsEnumSerializer();

class _$SampleTrackRequestUnitsEnumSerializer
    implements PrimitiveSerializer<SampleTrackRequestUnitsEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'metric': 'metric',
    'imperial': 'imperial',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'metric': 'metric',
    'imperial': 'imperial',
  };

  @override
  final Iterable<Type> types = const <Type>[SampleTrackRequestUnitsEnum];
  @override
  final String wireName = 'SampleTrackRequestUnitsEnum';

  @override
  Object serialize(
    Serializers serializers,
    SampleTrackRequestUnitsEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SampleTrackRequestUnitsEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SampleTrackRequestUnitsEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SampleTrackRequest extends SampleTrackRequest {
  @override
  final String? record;
  @override
  final DateTime? from;
  @override
  final DateTime? to;
  @override
  final BuiltList<SampleTrackRequestPointsInner>? points;
  @override
  final BuiltList<String> products;
  @override
  final String? maxGap;
  @override
  final String? run;
  @override
  final SampleTrackRequestUnitsEnum? units;

  factory _$SampleTrackRequest([
    void Function(SampleTrackRequestBuilder)? updates,
  ]) => (SampleTrackRequestBuilder()..update(updates))._build();

  _$SampleTrackRequest._({
    this.record,
    this.from,
    this.to,
    this.points,
    required this.products,
    this.maxGap,
    this.run,
    this.units,
  }) : super._();
  @override
  SampleTrackRequest rebuild(
    void Function(SampleTrackRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SampleTrackRequestBuilder toBuilder() =>
      SampleTrackRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SampleTrackRequest &&
        record == other.record &&
        from == other.from &&
        to == other.to &&
        points == other.points &&
        products == other.products &&
        maxGap == other.maxGap &&
        run == other.run &&
        units == other.units;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, record.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, points.hashCode);
    _$hash = $jc(_$hash, products.hashCode);
    _$hash = $jc(_$hash, maxGap.hashCode);
    _$hash = $jc(_$hash, run.hashCode);
    _$hash = $jc(_$hash, units.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SampleTrackRequest')
          ..add('record', record)
          ..add('from', from)
          ..add('to', to)
          ..add('points', points)
          ..add('products', products)
          ..add('maxGap', maxGap)
          ..add('run', run)
          ..add('units', units))
        .toString();
  }
}

class SampleTrackRequestBuilder
    implements Builder<SampleTrackRequest, SampleTrackRequestBuilder> {
  _$SampleTrackRequest? _$v;

  String? _record;
  String? get record => _$this._record;
  set record(String? record) => _$this._record = record;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  ListBuilder<SampleTrackRequestPointsInner>? _points;
  ListBuilder<SampleTrackRequestPointsInner> get points =>
      _$this._points ??= ListBuilder<SampleTrackRequestPointsInner>();
  set points(ListBuilder<SampleTrackRequestPointsInner>? points) =>
      _$this._points = points;

  ListBuilder<String>? _products;
  ListBuilder<String> get products =>
      _$this._products ??= ListBuilder<String>();
  set products(ListBuilder<String>? products) => _$this._products = products;

  String? _maxGap;
  String? get maxGap => _$this._maxGap;
  set maxGap(String? maxGap) => _$this._maxGap = maxGap;

  String? _run;
  String? get run => _$this._run;
  set run(String? run) => _$this._run = run;

  SampleTrackRequestUnitsEnum? _units;
  SampleTrackRequestUnitsEnum? get units => _$this._units;
  set units(SampleTrackRequestUnitsEnum? units) => _$this._units = units;

  SampleTrackRequestBuilder() {
    SampleTrackRequest._defaults(this);
  }

  SampleTrackRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _record = $v.record;
      _from = $v.from;
      _to = $v.to;
      _points = $v.points?.toBuilder();
      _products = $v.products.toBuilder();
      _maxGap = $v.maxGap;
      _run = $v.run;
      _units = $v.units;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SampleTrackRequest other) {
    _$v = other as _$SampleTrackRequest;
  }

  @override
  void update(void Function(SampleTrackRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SampleTrackRequest build() => _build();

  _$SampleTrackRequest _build() {
    _$SampleTrackRequest _$result;
    try {
      _$result =
          _$v ??
          _$SampleTrackRequest._(
            record: record,
            from: from,
            to: to,
            points: _points?.build(),
            products: products.build(),
            maxGap: maxGap,
            run: run,
            units: units,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'points';
        _points?.build();
        _$failedField = 'products';
        products.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SampleTrackRequest',
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
