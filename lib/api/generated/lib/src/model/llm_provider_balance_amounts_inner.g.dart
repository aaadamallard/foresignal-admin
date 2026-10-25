// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'llm_provider_balance_amounts_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LlmProviderBalanceAmountsInner extends LlmProviderBalanceAmountsInner {
  @override
  final num amount;
  @override
  final String currency;

  factory _$LlmProviderBalanceAmountsInner([
    void Function(LlmProviderBalanceAmountsInnerBuilder)? updates,
  ]) => (LlmProviderBalanceAmountsInnerBuilder()..update(updates))._build();

  _$LlmProviderBalanceAmountsInner._({
    required this.amount,
    required this.currency,
  }) : super._();
  @override
  LlmProviderBalanceAmountsInner rebuild(
    void Function(LlmProviderBalanceAmountsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  LlmProviderBalanceAmountsInnerBuilder toBuilder() =>
      LlmProviderBalanceAmountsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LlmProviderBalanceAmountsInner &&
        amount == other.amount &&
        currency == other.currency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LlmProviderBalanceAmountsInner')
          ..add('amount', amount)
          ..add('currency', currency))
        .toString();
  }
}

class LlmProviderBalanceAmountsInnerBuilder
    implements
        Builder<
          LlmProviderBalanceAmountsInner,
          LlmProviderBalanceAmountsInnerBuilder
        > {
  _$LlmProviderBalanceAmountsInner? _$v;

  num? _amount;
  num? get amount => _$this._amount;
  set amount(num? amount) => _$this._amount = amount;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  LlmProviderBalanceAmountsInnerBuilder() {
    LlmProviderBalanceAmountsInner._defaults(this);
  }

  LlmProviderBalanceAmountsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount;
      _currency = $v.currency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LlmProviderBalanceAmountsInner other) {
    _$v = other as _$LlmProviderBalanceAmountsInner;
  }

  @override
  void update(void Function(LlmProviderBalanceAmountsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LlmProviderBalanceAmountsInner build() => _build();

  _$LlmProviderBalanceAmountsInner _build() {
    final _$result =
        _$v ??
        _$LlmProviderBalanceAmountsInner._(
          amount: BuiltValueNullFieldError.checkNotNull(
            amount,
            r'LlmProviderBalanceAmountsInner',
            'amount',
          ),
          currency: BuiltValueNullFieldError.checkNotNull(
            currency,
            r'LlmProviderBalanceAmountsInner',
            'currency',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
