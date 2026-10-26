// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'llm_budget_provider.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LlmBudgetProvider extends LlmBudgetProvider {
  @override
  final String providerId;
  @override
  final String name;
  @override
  final bool shared;
  @override
  final num? capUsd;
  @override
  final num spentUsd;
  @override
  final num? remainingUsd;

  factory _$LlmBudgetProvider([
    void Function(LlmBudgetProviderBuilder)? updates,
  ]) => (LlmBudgetProviderBuilder()..update(updates))._build();

  _$LlmBudgetProvider._({
    required this.providerId,
    required this.name,
    required this.shared,
    this.capUsd,
    required this.spentUsd,
    this.remainingUsd,
  }) : super._();
  @override
  LlmBudgetProvider rebuild(void Function(LlmBudgetProviderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LlmBudgetProviderBuilder toBuilder() =>
      LlmBudgetProviderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LlmBudgetProvider &&
        providerId == other.providerId &&
        name == other.name &&
        shared == other.shared &&
        capUsd == other.capUsd &&
        spentUsd == other.spentUsd &&
        remainingUsd == other.remainingUsd;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, providerId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, shared.hashCode);
    _$hash = $jc(_$hash, capUsd.hashCode);
    _$hash = $jc(_$hash, spentUsd.hashCode);
    _$hash = $jc(_$hash, remainingUsd.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LlmBudgetProvider')
          ..add('providerId', providerId)
          ..add('name', name)
          ..add('shared', shared)
          ..add('capUsd', capUsd)
          ..add('spentUsd', spentUsd)
          ..add('remainingUsd', remainingUsd))
        .toString();
  }
}

class LlmBudgetProviderBuilder
    implements Builder<LlmBudgetProvider, LlmBudgetProviderBuilder> {
  _$LlmBudgetProvider? _$v;

  String? _providerId;
  String? get providerId => _$this._providerId;
  set providerId(String? providerId) => _$this._providerId = providerId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _shared;
  bool? get shared => _$this._shared;
  set shared(bool? shared) => _$this._shared = shared;

  num? _capUsd;
  num? get capUsd => _$this._capUsd;
  set capUsd(num? capUsd) => _$this._capUsd = capUsd;

  num? _spentUsd;
  num? get spentUsd => _$this._spentUsd;
  set spentUsd(num? spentUsd) => _$this._spentUsd = spentUsd;

  num? _remainingUsd;
  num? get remainingUsd => _$this._remainingUsd;
  set remainingUsd(num? remainingUsd) => _$this._remainingUsd = remainingUsd;

  LlmBudgetProviderBuilder() {
    LlmBudgetProvider._defaults(this);
  }

  LlmBudgetProviderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _providerId = $v.providerId;
      _name = $v.name;
      _shared = $v.shared;
      _capUsd = $v.capUsd;
      _spentUsd = $v.spentUsd;
      _remainingUsd = $v.remainingUsd;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LlmBudgetProvider other) {
    _$v = other as _$LlmBudgetProvider;
  }

  @override
  void update(void Function(LlmBudgetProviderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LlmBudgetProvider build() => _build();

  _$LlmBudgetProvider _build() {
    final _$result =
        _$v ??
        _$LlmBudgetProvider._(
          providerId: BuiltValueNullFieldError.checkNotNull(
            providerId,
            r'LlmBudgetProvider',
            'providerId',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'LlmBudgetProvider',
            'name',
          ),
          shared: BuiltValueNullFieldError.checkNotNull(
            shared,
            r'LlmBudgetProvider',
            'shared',
          ),
          capUsd: capUsd,
          spentUsd: BuiltValueNullFieldError.checkNotNull(
            spentUsd,
            r'LlmBudgetProvider',
            'spentUsd',
          ),
          remainingUsd: remainingUsd,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
