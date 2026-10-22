// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'digest_alerts_by_rule_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DigestAlertsByRuleInner extends DigestAlertsByRuleInner {
  @override
  final String ruleId;
  @override
  final String? ruleName;
  @override
  final int count;

  factory _$DigestAlertsByRuleInner([
    void Function(DigestAlertsByRuleInnerBuilder)? updates,
  ]) => (DigestAlertsByRuleInnerBuilder()..update(updates))._build();

  _$DigestAlertsByRuleInner._({
    required this.ruleId,
    this.ruleName,
    required this.count,
  }) : super._();
  @override
  DigestAlertsByRuleInner rebuild(
    void Function(DigestAlertsByRuleInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DigestAlertsByRuleInnerBuilder toBuilder() =>
      DigestAlertsByRuleInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DigestAlertsByRuleInner &&
        ruleId == other.ruleId &&
        ruleName == other.ruleName &&
        count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ruleId.hashCode);
    _$hash = $jc(_$hash, ruleName.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DigestAlertsByRuleInner')
          ..add('ruleId', ruleId)
          ..add('ruleName', ruleName)
          ..add('count', count))
        .toString();
  }
}

class DigestAlertsByRuleInnerBuilder
    implements
        Builder<DigestAlertsByRuleInner, DigestAlertsByRuleInnerBuilder> {
  _$DigestAlertsByRuleInner? _$v;

  String? _ruleId;
  String? get ruleId => _$this._ruleId;
  set ruleId(String? ruleId) => _$this._ruleId = ruleId;

  String? _ruleName;
  String? get ruleName => _$this._ruleName;
  set ruleName(String? ruleName) => _$this._ruleName = ruleName;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  DigestAlertsByRuleInnerBuilder() {
    DigestAlertsByRuleInner._defaults(this);
  }

  DigestAlertsByRuleInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ruleId = $v.ruleId;
      _ruleName = $v.ruleName;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DigestAlertsByRuleInner other) {
    _$v = other as _$DigestAlertsByRuleInner;
  }

  @override
  void update(void Function(DigestAlertsByRuleInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DigestAlertsByRuleInner build() => _build();

  _$DigestAlertsByRuleInner _build() {
    final _$result =
        _$v ??
        _$DigestAlertsByRuleInner._(
          ruleId: BuiltValueNullFieldError.checkNotNull(
            ruleId,
            r'DigestAlertsByRuleInner',
            'ruleId',
          ),
          ruleName: ruleName,
          count: BuiltValueNullFieldError.checkNotNull(
            count,
            r'DigestAlertsByRuleInner',
            'count',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
