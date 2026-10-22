// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_rate_definition_condition.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BaseRateDefinitionCondition extends BaseRateDefinitionCondition {
  @override
  final String family;
  @override
  final int withinDays;

  factory _$BaseRateDefinitionCondition(
          [void Function(BaseRateDefinitionConditionBuilder)? updates]) =>
      (BaseRateDefinitionConditionBuilder()..update(updates))._build();

  _$BaseRateDefinitionCondition._(
      {required this.family, required this.withinDays})
      : super._();
  @override
  BaseRateDefinitionCondition rebuild(
          void Function(BaseRateDefinitionConditionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BaseRateDefinitionConditionBuilder toBuilder() =>
      BaseRateDefinitionConditionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseRateDefinitionCondition &&
        family == other.family &&
        withinDays == other.withinDays;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, family.hashCode);
    _$hash = $jc(_$hash, withinDays.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BaseRateDefinitionCondition')
          ..add('family', family)
          ..add('withinDays', withinDays))
        .toString();
  }
}

class BaseRateDefinitionConditionBuilder
    implements
        Builder<BaseRateDefinitionCondition,
            BaseRateDefinitionConditionBuilder> {
  _$BaseRateDefinitionCondition? _$v;

  String? _family;
  String? get family => _$this._family;
  set family(String? family) => _$this._family = family;

  int? _withinDays;
  int? get withinDays => _$this._withinDays;
  set withinDays(int? withinDays) => _$this._withinDays = withinDays;

  BaseRateDefinitionConditionBuilder() {
    BaseRateDefinitionCondition._defaults(this);
  }

  BaseRateDefinitionConditionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _family = $v.family;
      _withinDays = $v.withinDays;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaseRateDefinitionCondition other) {
    _$v = other as _$BaseRateDefinitionCondition;
  }

  @override
  void update(void Function(BaseRateDefinitionConditionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BaseRateDefinitionCondition build() => _build();

  _$BaseRateDefinitionCondition _build() {
    final _$result = _$v ??
        _$BaseRateDefinitionCondition._(
          family: BuiltValueNullFieldError.checkNotNull(
              family, r'BaseRateDefinitionCondition', 'family'),
          withinDays: BuiltValueNullFieldError.checkNotNull(
              withinDays, r'BaseRateDefinitionCondition', 'withinDays'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
