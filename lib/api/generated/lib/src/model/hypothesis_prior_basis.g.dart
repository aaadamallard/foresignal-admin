// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hypothesis_prior_basis.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const HypothesisPriorBasisTypeEnum _$hypothesisPriorBasisTypeEnum_baseRate =
    const HypothesisPriorBasisTypeEnum._('baseRate');
const HypothesisPriorBasisTypeEnum _$hypothesisPriorBasisTypeEnum_analogs =
    const HypothesisPriorBasisTypeEnum._('analogs');
const HypothesisPriorBasisTypeEnum _$hypothesisPriorBasisTypeEnum_operator_ =
    const HypothesisPriorBasisTypeEnum._('operator_');

HypothesisPriorBasisTypeEnum _$hypothesisPriorBasisTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'baseRate':
      return _$hypothesisPriorBasisTypeEnum_baseRate;
    case 'analogs':
      return _$hypothesisPriorBasisTypeEnum_analogs;
    case 'operator_':
      return _$hypothesisPriorBasisTypeEnum_operator_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<HypothesisPriorBasisTypeEnum>
    _$hypothesisPriorBasisTypeEnumValues =
    BuiltSet<HypothesisPriorBasisTypeEnum>(const <HypothesisPriorBasisTypeEnum>[
  _$hypothesisPriorBasisTypeEnum_baseRate,
  _$hypothesisPriorBasisTypeEnum_analogs,
  _$hypothesisPriorBasisTypeEnum_operator_,
]);

Serializer<HypothesisPriorBasisTypeEnum>
    _$hypothesisPriorBasisTypeEnumSerializer =
    _$HypothesisPriorBasisTypeEnumSerializer();

class _$HypothesisPriorBasisTypeEnumSerializer
    implements PrimitiveSerializer<HypothesisPriorBasisTypeEnum> {
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
  final Iterable<Type> types = const <Type>[HypothesisPriorBasisTypeEnum];
  @override
  final String wireName = 'HypothesisPriorBasisTypeEnum';

  @override
  Object serialize(Serializers serializers, HypothesisPriorBasisTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  HypothesisPriorBasisTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      HypothesisPriorBasisTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$HypothesisPriorBasis extends HypothesisPriorBasis {
  @override
  final HypothesisPriorBasisTypeEnum type;
  @override
  final String? ref;
  @override
  final String? rationale;
  @override
  final num? value;
  @override
  final DateTime? refreshedAt;

  factory _$HypothesisPriorBasis(
          [void Function(HypothesisPriorBasisBuilder)? updates]) =>
      (HypothesisPriorBasisBuilder()..update(updates))._build();

  _$HypothesisPriorBasis._(
      {required this.type,
      this.ref,
      this.rationale,
      this.value,
      this.refreshedAt})
      : super._();
  @override
  HypothesisPriorBasis rebuild(
          void Function(HypothesisPriorBasisBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HypothesisPriorBasisBuilder toBuilder() =>
      HypothesisPriorBasisBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HypothesisPriorBasis &&
        type == other.type &&
        ref == other.ref &&
        rationale == other.rationale &&
        value == other.value &&
        refreshedAt == other.refreshedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, rationale.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, refreshedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HypothesisPriorBasis')
          ..add('type', type)
          ..add('ref', ref)
          ..add('rationale', rationale)
          ..add('value', value)
          ..add('refreshedAt', refreshedAt))
        .toString();
  }
}

class HypothesisPriorBasisBuilder
    implements Builder<HypothesisPriorBasis, HypothesisPriorBasisBuilder> {
  _$HypothesisPriorBasis? _$v;

  HypothesisPriorBasisTypeEnum? _type;
  HypothesisPriorBasisTypeEnum? get type => _$this._type;
  set type(HypothesisPriorBasisTypeEnum? type) => _$this._type = type;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _rationale;
  String? get rationale => _$this._rationale;
  set rationale(String? rationale) => _$this._rationale = rationale;

  num? _value;
  num? get value => _$this._value;
  set value(num? value) => _$this._value = value;

  DateTime? _refreshedAt;
  DateTime? get refreshedAt => _$this._refreshedAt;
  set refreshedAt(DateTime? refreshedAt) => _$this._refreshedAt = refreshedAt;

  HypothesisPriorBasisBuilder() {
    HypothesisPriorBasis._defaults(this);
  }

  HypothesisPriorBasisBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _ref = $v.ref;
      _rationale = $v.rationale;
      _value = $v.value;
      _refreshedAt = $v.refreshedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HypothesisPriorBasis other) {
    _$v = other as _$HypothesisPriorBasis;
  }

  @override
  void update(void Function(HypothesisPriorBasisBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HypothesisPriorBasis build() => _build();

  _$HypothesisPriorBasis _build() {
    final _$result = _$v ??
        _$HypothesisPriorBasis._(
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'HypothesisPriorBasis', 'type'),
          ref: ref,
          rationale: rationale,
          value: value,
          refreshedAt: refreshedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
