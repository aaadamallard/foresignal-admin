// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precursor_test_result_hit_rate_ci.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PrecursorTestResultHitRateCiMethodEnum
    _$precursorTestResultHitRateCiMethodEnum_wilson95 =
    const PrecursorTestResultHitRateCiMethodEnum._('wilson95');

PrecursorTestResultHitRateCiMethodEnum
    _$precursorTestResultHitRateCiMethodEnumValueOf(String name) {
  switch (name) {
    case 'wilson95':
      return _$precursorTestResultHitRateCiMethodEnum_wilson95;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PrecursorTestResultHitRateCiMethodEnum>
    _$precursorTestResultHitRateCiMethodEnumValues = BuiltSet<
        PrecursorTestResultHitRateCiMethodEnum>(const <PrecursorTestResultHitRateCiMethodEnum>[
  _$precursorTestResultHitRateCiMethodEnum_wilson95,
]);

Serializer<PrecursorTestResultHitRateCiMethodEnum>
    _$precursorTestResultHitRateCiMethodEnumSerializer =
    _$PrecursorTestResultHitRateCiMethodEnumSerializer();

class _$PrecursorTestResultHitRateCiMethodEnumSerializer
    implements PrimitiveSerializer<PrecursorTestResultHitRateCiMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'wilson95': 'wilson-95',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'wilson-95': 'wilson95',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PrecursorTestResultHitRateCiMethodEnum
  ];
  @override
  final String wireName = 'PrecursorTestResultHitRateCiMethodEnum';

  @override
  Object serialize(Serializers serializers,
          PrecursorTestResultHitRateCiMethodEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PrecursorTestResultHitRateCiMethodEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PrecursorTestResultHitRateCiMethodEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PrecursorTestResultHitRateCi extends PrecursorTestResultHitRateCi {
  @override
  final num? lower;
  @override
  final num? upper;
  @override
  final PrecursorTestResultHitRateCiMethodEnum? method;

  factory _$PrecursorTestResultHitRateCi(
          [void Function(PrecursorTestResultHitRateCiBuilder)? updates]) =>
      (PrecursorTestResultHitRateCiBuilder()..update(updates))._build();

  _$PrecursorTestResultHitRateCi._({this.lower, this.upper, this.method})
      : super._();
  @override
  PrecursorTestResultHitRateCi rebuild(
          void Function(PrecursorTestResultHitRateCiBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrecursorTestResultHitRateCiBuilder toBuilder() =>
      PrecursorTestResultHitRateCiBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrecursorTestResultHitRateCi &&
        lower == other.lower &&
        upper == other.upper &&
        method == other.method;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lower.hashCode);
    _$hash = $jc(_$hash, upper.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrecursorTestResultHitRateCi')
          ..add('lower', lower)
          ..add('upper', upper)
          ..add('method', method))
        .toString();
  }
}

class PrecursorTestResultHitRateCiBuilder
    implements
        Builder<PrecursorTestResultHitRateCi,
            PrecursorTestResultHitRateCiBuilder> {
  _$PrecursorTestResultHitRateCi? _$v;

  num? _lower;
  num? get lower => _$this._lower;
  set lower(num? lower) => _$this._lower = lower;

  num? _upper;
  num? get upper => _$this._upper;
  set upper(num? upper) => _$this._upper = upper;

  PrecursorTestResultHitRateCiMethodEnum? _method;
  PrecursorTestResultHitRateCiMethodEnum? get method => _$this._method;
  set method(PrecursorTestResultHitRateCiMethodEnum? method) =>
      _$this._method = method;

  PrecursorTestResultHitRateCiBuilder() {
    PrecursorTestResultHitRateCi._defaults(this);
  }

  PrecursorTestResultHitRateCiBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lower = $v.lower;
      _upper = $v.upper;
      _method = $v.method;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrecursorTestResultHitRateCi other) {
    _$v = other as _$PrecursorTestResultHitRateCi;
  }

  @override
  void update(void Function(PrecursorTestResultHitRateCiBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrecursorTestResultHitRateCi build() => _build();

  _$PrecursorTestResultHitRateCi _build() {
    final _$result = _$v ??
        _$PrecursorTestResultHitRateCi._(
          lower: lower,
          upper: upper,
          method: method,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
