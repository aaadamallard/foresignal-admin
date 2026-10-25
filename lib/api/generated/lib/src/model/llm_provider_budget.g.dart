// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'llm_provider_budget.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LlmProviderBudgetCurrencyEnum _$llmProviderBudgetCurrencyEnum_USD =
    const LlmProviderBudgetCurrencyEnum._('USD');
const LlmProviderBudgetCurrencyEnum
_$llmProviderBudgetCurrencyEnum_unknownDefaultOpenApi =
    const LlmProviderBudgetCurrencyEnum._('unknownDefaultOpenApi');

LlmProviderBudgetCurrencyEnum _$llmProviderBudgetCurrencyEnumValueOf(
  String name,
) {
  switch (name) {
    case 'USD':
      return _$llmProviderBudgetCurrencyEnum_USD;
    case 'unknownDefaultOpenApi':
      return _$llmProviderBudgetCurrencyEnum_unknownDefaultOpenApi;
    default:
      return _$llmProviderBudgetCurrencyEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<LlmProviderBudgetCurrencyEnum>
_$llmProviderBudgetCurrencyEnumValues = BuiltSet<LlmProviderBudgetCurrencyEnum>(
  const <LlmProviderBudgetCurrencyEnum>[
    _$llmProviderBudgetCurrencyEnum_USD,
    _$llmProviderBudgetCurrencyEnum_unknownDefaultOpenApi,
  ],
);

Serializer<LlmProviderBudgetCurrencyEnum>
_$llmProviderBudgetCurrencyEnumSerializer =
    _$LlmProviderBudgetCurrencyEnumSerializer();

class _$LlmProviderBudgetCurrencyEnumSerializer
    implements PrimitiveSerializer<LlmProviderBudgetCurrencyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'USD': 'USD',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'USD': 'USD',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[LlmProviderBudgetCurrencyEnum];
  @override
  final String wireName = 'LlmProviderBudgetCurrencyEnum';

  @override
  Object serialize(
    Serializers serializers,
    LlmProviderBudgetCurrencyEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  LlmProviderBudgetCurrencyEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => LlmProviderBudgetCurrencyEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$LlmProviderBudget extends LlmProviderBudget {
  @override
  final String providerId;
  @override
  final LlmProviderBudgetCurrencyEnum currency;
  @override
  final bool priced;
  @override
  final LlmPricing pricing;
  @override
  final LlmProviderBudgetWindows windows;
  @override
  final LlmProviderBudgetRateLimits rateLimits;
  @override
  final LlmProviderBalance? providerBalance;

  factory _$LlmProviderBudget([
    void Function(LlmProviderBudgetBuilder)? updates,
  ]) => (LlmProviderBudgetBuilder()..update(updates))._build();

  _$LlmProviderBudget._({
    required this.providerId,
    required this.currency,
    required this.priced,
    required this.pricing,
    required this.windows,
    required this.rateLimits,
    this.providerBalance,
  }) : super._();
  @override
  LlmProviderBudget rebuild(void Function(LlmProviderBudgetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LlmProviderBudgetBuilder toBuilder() =>
      LlmProviderBudgetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LlmProviderBudget &&
        providerId == other.providerId &&
        currency == other.currency &&
        priced == other.priced &&
        pricing == other.pricing &&
        windows == other.windows &&
        rateLimits == other.rateLimits &&
        providerBalance == other.providerBalance;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, providerId.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, priced.hashCode);
    _$hash = $jc(_$hash, pricing.hashCode);
    _$hash = $jc(_$hash, windows.hashCode);
    _$hash = $jc(_$hash, rateLimits.hashCode);
    _$hash = $jc(_$hash, providerBalance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LlmProviderBudget')
          ..add('providerId', providerId)
          ..add('currency', currency)
          ..add('priced', priced)
          ..add('pricing', pricing)
          ..add('windows', windows)
          ..add('rateLimits', rateLimits)
          ..add('providerBalance', providerBalance))
        .toString();
  }
}

class LlmProviderBudgetBuilder
    implements Builder<LlmProviderBudget, LlmProviderBudgetBuilder> {
  _$LlmProviderBudget? _$v;

  String? _providerId;
  String? get providerId => _$this._providerId;
  set providerId(String? providerId) => _$this._providerId = providerId;

  LlmProviderBudgetCurrencyEnum? _currency;
  LlmProviderBudgetCurrencyEnum? get currency => _$this._currency;
  set currency(LlmProviderBudgetCurrencyEnum? currency) =>
      _$this._currency = currency;

  bool? _priced;
  bool? get priced => _$this._priced;
  set priced(bool? priced) => _$this._priced = priced;

  LlmPricingBuilder? _pricing;
  LlmPricingBuilder get pricing => _$this._pricing ??= LlmPricingBuilder();
  set pricing(LlmPricingBuilder? pricing) => _$this._pricing = pricing;

  LlmProviderBudgetWindowsBuilder? _windows;
  LlmProviderBudgetWindowsBuilder get windows =>
      _$this._windows ??= LlmProviderBudgetWindowsBuilder();
  set windows(LlmProviderBudgetWindowsBuilder? windows) =>
      _$this._windows = windows;

  LlmProviderBudgetRateLimitsBuilder? _rateLimits;
  LlmProviderBudgetRateLimitsBuilder get rateLimits =>
      _$this._rateLimits ??= LlmProviderBudgetRateLimitsBuilder();
  set rateLimits(LlmProviderBudgetRateLimitsBuilder? rateLimits) =>
      _$this._rateLimits = rateLimits;

  LlmProviderBalanceBuilder? _providerBalance;
  LlmProviderBalanceBuilder get providerBalance =>
      _$this._providerBalance ??= LlmProviderBalanceBuilder();
  set providerBalance(LlmProviderBalanceBuilder? providerBalance) =>
      _$this._providerBalance = providerBalance;

  LlmProviderBudgetBuilder() {
    LlmProviderBudget._defaults(this);
  }

  LlmProviderBudgetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _providerId = $v.providerId;
      _currency = $v.currency;
      _priced = $v.priced;
      _pricing = $v.pricing.toBuilder();
      _windows = $v.windows.toBuilder();
      _rateLimits = $v.rateLimits.toBuilder();
      _providerBalance = $v.providerBalance?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LlmProviderBudget other) {
    _$v = other as _$LlmProviderBudget;
  }

  @override
  void update(void Function(LlmProviderBudgetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LlmProviderBudget build() => _build();

  _$LlmProviderBudget _build() {
    _$LlmProviderBudget _$result;
    try {
      _$result =
          _$v ??
          _$LlmProviderBudget._(
            providerId: BuiltValueNullFieldError.checkNotNull(
              providerId,
              r'LlmProviderBudget',
              'providerId',
            ),
            currency: BuiltValueNullFieldError.checkNotNull(
              currency,
              r'LlmProviderBudget',
              'currency',
            ),
            priced: BuiltValueNullFieldError.checkNotNull(
              priced,
              r'LlmProviderBudget',
              'priced',
            ),
            pricing: pricing.build(),
            windows: windows.build(),
            rateLimits: rateLimits.build(),
            providerBalance: _providerBalance?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pricing';
        pricing.build();
        _$failedField = 'windows';
        windows.build();
        _$failedField = 'rateLimits';
        rateLimits.build();
        _$failedField = 'providerBalance';
        _providerBalance?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'LlmProviderBudget',
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
