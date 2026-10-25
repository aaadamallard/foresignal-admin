// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_temporal_runs_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProductTemporalRunsInnerStatusEnum
_$productTemporalRunsInnerStatusEnum_complete =
    const ProductTemporalRunsInnerStatusEnum._('complete');
const ProductTemporalRunsInnerStatusEnum
_$productTemporalRunsInnerStatusEnum_partial =
    const ProductTemporalRunsInnerStatusEnum._('partial');
const ProductTemporalRunsInnerStatusEnum
_$productTemporalRunsInnerStatusEnum_unknownDefaultOpenApi =
    const ProductTemporalRunsInnerStatusEnum._('unknownDefaultOpenApi');

ProductTemporalRunsInnerStatusEnum _$productTemporalRunsInnerStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'complete':
      return _$productTemporalRunsInnerStatusEnum_complete;
    case 'partial':
      return _$productTemporalRunsInnerStatusEnum_partial;
    case 'unknownDefaultOpenApi':
      return _$productTemporalRunsInnerStatusEnum_unknownDefaultOpenApi;
    default:
      return _$productTemporalRunsInnerStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ProductTemporalRunsInnerStatusEnum>
_$productTemporalRunsInnerStatusEnumValues =
    BuiltSet<ProductTemporalRunsInnerStatusEnum>(
      const <ProductTemporalRunsInnerStatusEnum>[
        _$productTemporalRunsInnerStatusEnum_complete,
        _$productTemporalRunsInnerStatusEnum_partial,
        _$productTemporalRunsInnerStatusEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<ProductTemporalRunsInnerStatusEnum>
_$productTemporalRunsInnerStatusEnumSerializer =
    _$ProductTemporalRunsInnerStatusEnumSerializer();

class _$ProductTemporalRunsInnerStatusEnumSerializer
    implements PrimitiveSerializer<ProductTemporalRunsInnerStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'complete': 'complete',
    'partial': 'partial',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'complete': 'complete',
    'partial': 'partial',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ProductTemporalRunsInnerStatusEnum];
  @override
  final String wireName = 'ProductTemporalRunsInnerStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    ProductTemporalRunsInnerStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ProductTemporalRunsInnerStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ProductTemporalRunsInnerStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ProductTemporalRunsInner extends ProductTemporalRunsInner {
  @override
  final String run;
  @override
  final ProductTemporalRunsInnerStatusEnum status;
  @override
  final BuiltList<int>? steps;
  @override
  final DateTime? validFrom;
  @override
  final DateTime? validTo;

  factory _$ProductTemporalRunsInner([
    void Function(ProductTemporalRunsInnerBuilder)? updates,
  ]) => (ProductTemporalRunsInnerBuilder()..update(updates))._build();

  _$ProductTemporalRunsInner._({
    required this.run,
    required this.status,
    this.steps,
    this.validFrom,
    this.validTo,
  }) : super._();
  @override
  ProductTemporalRunsInner rebuild(
    void Function(ProductTemporalRunsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ProductTemporalRunsInnerBuilder toBuilder() =>
      ProductTemporalRunsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductTemporalRunsInner &&
        run == other.run &&
        status == other.status &&
        steps == other.steps &&
        validFrom == other.validFrom &&
        validTo == other.validTo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, run.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, steps.hashCode);
    _$hash = $jc(_$hash, validFrom.hashCode);
    _$hash = $jc(_$hash, validTo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductTemporalRunsInner')
          ..add('run', run)
          ..add('status', status)
          ..add('steps', steps)
          ..add('validFrom', validFrom)
          ..add('validTo', validTo))
        .toString();
  }
}

class ProductTemporalRunsInnerBuilder
    implements
        Builder<ProductTemporalRunsInner, ProductTemporalRunsInnerBuilder> {
  _$ProductTemporalRunsInner? _$v;

  String? _run;
  String? get run => _$this._run;
  set run(String? run) => _$this._run = run;

  ProductTemporalRunsInnerStatusEnum? _status;
  ProductTemporalRunsInnerStatusEnum? get status => _$this._status;
  set status(ProductTemporalRunsInnerStatusEnum? status) =>
      _$this._status = status;

  ListBuilder<int>? _steps;
  ListBuilder<int> get steps => _$this._steps ??= ListBuilder<int>();
  set steps(ListBuilder<int>? steps) => _$this._steps = steps;

  DateTime? _validFrom;
  DateTime? get validFrom => _$this._validFrom;
  set validFrom(DateTime? validFrom) => _$this._validFrom = validFrom;

  DateTime? _validTo;
  DateTime? get validTo => _$this._validTo;
  set validTo(DateTime? validTo) => _$this._validTo = validTo;

  ProductTemporalRunsInnerBuilder() {
    ProductTemporalRunsInner._defaults(this);
  }

  ProductTemporalRunsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _run = $v.run;
      _status = $v.status;
      _steps = $v.steps?.toBuilder();
      _validFrom = $v.validFrom;
      _validTo = $v.validTo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductTemporalRunsInner other) {
    _$v = other as _$ProductTemporalRunsInner;
  }

  @override
  void update(void Function(ProductTemporalRunsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductTemporalRunsInner build() => _build();

  _$ProductTemporalRunsInner _build() {
    _$ProductTemporalRunsInner _$result;
    try {
      _$result =
          _$v ??
          _$ProductTemporalRunsInner._(
            run: BuiltValueNullFieldError.checkNotNull(
              run,
              r'ProductTemporalRunsInner',
              'run',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'ProductTemporalRunsInner',
              'status',
            ),
            steps: _steps?.build(),
            validFrom: validFrom,
            validTo: validTo,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'steps';
        _steps?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ProductTemporalRunsInner',
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
