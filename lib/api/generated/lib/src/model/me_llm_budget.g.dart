// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'me_llm_budget.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MeLlmBudget extends MeLlmBudget {
  @override
  final BuiltList<LlmBudgetProvider> providers;
  @override
  final num totalSpentUsd;
  @override
  final DateTime? asOf;

  factory _$MeLlmBudget([void Function(MeLlmBudgetBuilder)? updates]) =>
      (MeLlmBudgetBuilder()..update(updates))._build();

  _$MeLlmBudget._({
    required this.providers,
    required this.totalSpentUsd,
    this.asOf,
  }) : super._();
  @override
  MeLlmBudget rebuild(void Function(MeLlmBudgetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MeLlmBudgetBuilder toBuilder() => MeLlmBudgetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MeLlmBudget &&
        providers == other.providers &&
        totalSpentUsd == other.totalSpentUsd &&
        asOf == other.asOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, providers.hashCode);
    _$hash = $jc(_$hash, totalSpentUsd.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MeLlmBudget')
          ..add('providers', providers)
          ..add('totalSpentUsd', totalSpentUsd)
          ..add('asOf', asOf))
        .toString();
  }
}

class MeLlmBudgetBuilder implements Builder<MeLlmBudget, MeLlmBudgetBuilder> {
  _$MeLlmBudget? _$v;

  ListBuilder<LlmBudgetProvider>? _providers;
  ListBuilder<LlmBudgetProvider> get providers =>
      _$this._providers ??= ListBuilder<LlmBudgetProvider>();
  set providers(ListBuilder<LlmBudgetProvider>? providers) =>
      _$this._providers = providers;

  num? _totalSpentUsd;
  num? get totalSpentUsd => _$this._totalSpentUsd;
  set totalSpentUsd(num? totalSpentUsd) =>
      _$this._totalSpentUsd = totalSpentUsd;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  MeLlmBudgetBuilder() {
    MeLlmBudget._defaults(this);
  }

  MeLlmBudgetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _providers = $v.providers.toBuilder();
      _totalSpentUsd = $v.totalSpentUsd;
      _asOf = $v.asOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MeLlmBudget other) {
    _$v = other as _$MeLlmBudget;
  }

  @override
  void update(void Function(MeLlmBudgetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MeLlmBudget build() => _build();

  _$MeLlmBudget _build() {
    _$MeLlmBudget _$result;
    try {
      _$result =
          _$v ??
          _$MeLlmBudget._(
            providers: providers.build(),
            totalSpentUsd: BuiltValueNullFieldError.checkNotNull(
              totalSpentUsd,
              r'MeLlmBudget',
              'totalSpentUsd',
            ),
            asOf: asOf,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'providers';
        providers.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MeLlmBudget',
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
