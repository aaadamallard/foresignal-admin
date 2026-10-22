// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hypothesis_input_prior_basis.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const HypothesisInputPriorBasisTypeEnum
    _$hypothesisInputPriorBasisTypeEnum_baseRate =
    const HypothesisInputPriorBasisTypeEnum._('baseRate');
const HypothesisInputPriorBasisTypeEnum
    _$hypothesisInputPriorBasisTypeEnum_analogs =
    const HypothesisInputPriorBasisTypeEnum._('analogs');
const HypothesisInputPriorBasisTypeEnum
    _$hypothesisInputPriorBasisTypeEnum_operator_ =
    const HypothesisInputPriorBasisTypeEnum._('operator_');

HypothesisInputPriorBasisTypeEnum _$hypothesisInputPriorBasisTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'baseRate':
      return _$hypothesisInputPriorBasisTypeEnum_baseRate;
    case 'analogs':
      return _$hypothesisInputPriorBasisTypeEnum_analogs;
    case 'operator_':
      return _$hypothesisInputPriorBasisTypeEnum_operator_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<HypothesisInputPriorBasisTypeEnum>
    _$hypothesisInputPriorBasisTypeEnumValues = BuiltSet<
        HypothesisInputPriorBasisTypeEnum>(const <HypothesisInputPriorBasisTypeEnum>[
  _$hypothesisInputPriorBasisTypeEnum_baseRate,
  _$hypothesisInputPriorBasisTypeEnum_analogs,
  _$hypothesisInputPriorBasisTypeEnum_operator_,
]);

Serializer<HypothesisInputPriorBasisTypeEnum>
    _$hypothesisInputPriorBasisTypeEnumSerializer =
    _$HypothesisInputPriorBasisTypeEnumSerializer();

class _$HypothesisInputPriorBasisTypeEnumSerializer
    implements PrimitiveSerializer<HypothesisInputPriorBasisTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'baseRate': 'base-rate',
    'analogs': 'analogs',
    'operator_': 'operator',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'base-rate': 'baseRate',
    'analogs': 'analogs',
    'operator': 'operator_',
  };

  @override
  final Iterable<Type> types = const <Type>[HypothesisInputPriorBasisTypeEnum];
  @override
  final String wireName = 'HypothesisInputPriorBasisTypeEnum';

  @override
  Object serialize(
          Serializers serializers, HypothesisInputPriorBasisTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  HypothesisInputPriorBasisTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      HypothesisInputPriorBasisTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$HypothesisInputPriorBasis extends HypothesisInputPriorBasis {
  @override
  final HypothesisInputPriorBasisTypeEnum type;
  @override
  final String? ref;
  @override
  final String? rationale;
  @override
  final num? value;

  factory _$HypothesisInputPriorBasis(
          [void Function(HypothesisInputPriorBasisBuilder)? updates]) =>
      (HypothesisInputPriorBasisBuilder()..update(updates))._build();

  _$HypothesisInputPriorBasis._(
      {required this.type, this.ref, this.rationale, this.value})
      : super._();
  @override
  HypothesisInputPriorBasis rebuild(
          void Function(HypothesisInputPriorBasisBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HypothesisInputPriorBasisBuilder toBuilder() =>
      HypothesisInputPriorBasisBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HypothesisInputPriorBasis &&
        type == other.type &&
        ref == other.ref &&
        rationale == other.rationale &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, rationale.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HypothesisInputPriorBasis')
          ..add('type', type)
          ..add('ref', ref)
          ..add('rationale', rationale)
          ..add('value', value))
        .toString();
  }
}

class HypothesisInputPriorBasisBuilder
    implements
        Builder<HypothesisInputPriorBasis, HypothesisInputPriorBasisBuilder> {
  _$HypothesisInputPriorBasis? _$v;

  HypothesisInputPriorBasisTypeEnum? _type;
  HypothesisInputPriorBasisTypeEnum? get type => _$this._type;
  set type(HypothesisInputPriorBasisTypeEnum? type) => _$this._type = type;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _rationale;
  String? get rationale => _$this._rationale;
  set rationale(String? rationale) => _$this._rationale = rationale;

  num? _value;
  num? get value => _$this._value;
  set value(num? value) => _$this._value = value;

  HypothesisInputPriorBasisBuilder() {
    HypothesisInputPriorBasis._defaults(this);
  }

  HypothesisInputPriorBasisBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _ref = $v.ref;
      _rationale = $v.rationale;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HypothesisInputPriorBasis other) {
    _$v = other as _$HypothesisInputPriorBasis;
  }

  @override
  void update(void Function(HypothesisInputPriorBasisBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HypothesisInputPriorBasis build() => _build();

  _$HypothesisInputPriorBasis _build() {
    final _$result = _$v ??
        _$HypothesisInputPriorBasis._(
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'HypothesisInputPriorBasis', 'type'),
          ref: ref,
          rationale: rationale,
          value: value,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
