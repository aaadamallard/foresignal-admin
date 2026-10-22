// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trigger_rule_input_conditions_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TriggerRuleInputConditionsInnerTypeEnum
    _$triggerRuleInputConditionsInnerTypeEnum_approach =
    const TriggerRuleInputConditionsInnerTypeEnum._('approach');

TriggerRuleInputConditionsInnerTypeEnum
    _$triggerRuleInputConditionsInnerTypeEnumValueOf(String name) {
  switch (name) {
    case 'approach':
      return _$triggerRuleInputConditionsInnerTypeEnum_approach;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TriggerRuleInputConditionsInnerTypeEnum>
    _$triggerRuleInputConditionsInnerTypeEnumValues = BuiltSet<
        TriggerRuleInputConditionsInnerTypeEnum>(const <TriggerRuleInputConditionsInnerTypeEnum>[
  _$triggerRuleInputConditionsInnerTypeEnum_approach,
]);

Serializer<TriggerRuleInputConditionsInnerTypeEnum>
    _$triggerRuleInputConditionsInnerTypeEnumSerializer =
    _$TriggerRuleInputConditionsInnerTypeEnumSerializer();

class _$TriggerRuleInputConditionsInnerTypeEnumSerializer
    implements PrimitiveSerializer<TriggerRuleInputConditionsInnerTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'approach': 'approach',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'approach': 'approach',
  };

  @override
  final Iterable<Type> types = const <Type>[
    TriggerRuleInputConditionsInnerTypeEnum
  ];
  @override
  final String wireName = 'TriggerRuleInputConditionsInnerTypeEnum';

  @override
  Object serialize(Serializers serializers,
          TriggerRuleInputConditionsInnerTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TriggerRuleInputConditionsInnerTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TriggerRuleInputConditionsInnerTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TriggerRuleInputConditionsInner
    extends TriggerRuleInputConditionsInner {
  @override
  final OneOf oneOf;

  factory _$TriggerRuleInputConditionsInner(
          [void Function(TriggerRuleInputConditionsInnerBuilder)? updates]) =>
      (TriggerRuleInputConditionsInnerBuilder()..update(updates))._build();

  _$TriggerRuleInputConditionsInner._({required this.oneOf}) : super._();
  @override
  TriggerRuleInputConditionsInner rebuild(
          void Function(TriggerRuleInputConditionsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TriggerRuleInputConditionsInnerBuilder toBuilder() =>
      TriggerRuleInputConditionsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TriggerRuleInputConditionsInner && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TriggerRuleInputConditionsInner')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class TriggerRuleInputConditionsInnerBuilder
    implements
        Builder<TriggerRuleInputConditionsInner,
            TriggerRuleInputConditionsInnerBuilder> {
  _$TriggerRuleInputConditionsInner? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  TriggerRuleInputConditionsInnerBuilder() {
    TriggerRuleInputConditionsInner._defaults(this);
  }

  TriggerRuleInputConditionsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TriggerRuleInputConditionsInner other) {
    _$v = other as _$TriggerRuleInputConditionsInner;
  }

  @override
  void update(void Function(TriggerRuleInputConditionsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TriggerRuleInputConditionsInner build() => _build();

  _$TriggerRuleInputConditionsInner _build() {
    final _$result = _$v ??
        _$TriggerRuleInputConditionsInner._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'TriggerRuleInputConditionsInner', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
