// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'llm_provider_balance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LlmProviderBalance extends LlmProviderBalance {
  @override
  final String provider;
  @override
  final String kind;
  @override
  final BuiltList<LlmProviderBalanceAmountsInner> amounts;
  @override
  final DateTime fetchedAt;
  @override
  final String? error;

  factory _$LlmProviderBalance([
    void Function(LlmProviderBalanceBuilder)? updates,
  ]) => (LlmProviderBalanceBuilder()..update(updates))._build();

  _$LlmProviderBalance._({
    required this.provider,
    required this.kind,
    required this.amounts,
    required this.fetchedAt,
    this.error,
  }) : super._();
  @override
  LlmProviderBalance rebuild(
    void Function(LlmProviderBalanceBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  LlmProviderBalanceBuilder toBuilder() =>
      LlmProviderBalanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LlmProviderBalance &&
        provider == other.provider &&
        kind == other.kind &&
        amounts == other.amounts &&
        fetchedAt == other.fetchedAt &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, amounts.hashCode);
    _$hash = $jc(_$hash, fetchedAt.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LlmProviderBalance')
          ..add('provider', provider)
          ..add('kind', kind)
          ..add('amounts', amounts)
          ..add('fetchedAt', fetchedAt)
          ..add('error', error))
        .toString();
  }
}

class LlmProviderBalanceBuilder
    implements Builder<LlmProviderBalance, LlmProviderBalanceBuilder> {
  _$LlmProviderBalance? _$v;

  String? _provider;
  String? get provider => _$this._provider;
  set provider(String? provider) => _$this._provider = provider;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  ListBuilder<LlmProviderBalanceAmountsInner>? _amounts;
  ListBuilder<LlmProviderBalanceAmountsInner> get amounts =>
      _$this._amounts ??= ListBuilder<LlmProviderBalanceAmountsInner>();
  set amounts(ListBuilder<LlmProviderBalanceAmountsInner>? amounts) =>
      _$this._amounts = amounts;

  DateTime? _fetchedAt;
  DateTime? get fetchedAt => _$this._fetchedAt;
  set fetchedAt(DateTime? fetchedAt) => _$this._fetchedAt = fetchedAt;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  LlmProviderBalanceBuilder() {
    LlmProviderBalance._defaults(this);
  }

  LlmProviderBalanceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _provider = $v.provider;
      _kind = $v.kind;
      _amounts = $v.amounts.toBuilder();
      _fetchedAt = $v.fetchedAt;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LlmProviderBalance other) {
    _$v = other as _$LlmProviderBalance;
  }

  @override
  void update(void Function(LlmProviderBalanceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LlmProviderBalance build() => _build();

  _$LlmProviderBalance _build() {
    _$LlmProviderBalance _$result;
    try {
      _$result =
          _$v ??
          _$LlmProviderBalance._(
            provider: BuiltValueNullFieldError.checkNotNull(
              provider,
              r'LlmProviderBalance',
              'provider',
            ),
            kind: BuiltValueNullFieldError.checkNotNull(
              kind,
              r'LlmProviderBalance',
              'kind',
            ),
            amounts: amounts.build(),
            fetchedAt: BuiltValueNullFieldError.checkNotNull(
              fetchedAt,
              r'LlmProviderBalance',
              'fetchedAt',
            ),
            error: error,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'amounts';
        amounts.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'LlmProviderBalance',
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
