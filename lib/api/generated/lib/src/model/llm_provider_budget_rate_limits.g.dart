// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'llm_provider_budget_rate_limits.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LlmProviderBudgetRateLimits extends LlmProviderBudgetRateLimits {
  @override
  final int requestsPerMinute;
  @override
  final int tokensPerDay;
  @override
  final int tokensToday;

  factory _$LlmProviderBudgetRateLimits([
    void Function(LlmProviderBudgetRateLimitsBuilder)? updates,
  ]) => (LlmProviderBudgetRateLimitsBuilder()..update(updates))._build();

  _$LlmProviderBudgetRateLimits._({
    required this.requestsPerMinute,
    required this.tokensPerDay,
    required this.tokensToday,
  }) : super._();
  @override
  LlmProviderBudgetRateLimits rebuild(
    void Function(LlmProviderBudgetRateLimitsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  LlmProviderBudgetRateLimitsBuilder toBuilder() =>
      LlmProviderBudgetRateLimitsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LlmProviderBudgetRateLimits &&
        requestsPerMinute == other.requestsPerMinute &&
        tokensPerDay == other.tokensPerDay &&
        tokensToday == other.tokensToday;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, requestsPerMinute.hashCode);
    _$hash = $jc(_$hash, tokensPerDay.hashCode);
    _$hash = $jc(_$hash, tokensToday.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LlmProviderBudgetRateLimits')
          ..add('requestsPerMinute', requestsPerMinute)
          ..add('tokensPerDay', tokensPerDay)
          ..add('tokensToday', tokensToday))
        .toString();
  }
}

class LlmProviderBudgetRateLimitsBuilder
    implements
        Builder<
          LlmProviderBudgetRateLimits,
          LlmProviderBudgetRateLimitsBuilder
        > {
  _$LlmProviderBudgetRateLimits? _$v;

  int? _requestsPerMinute;
  int? get requestsPerMinute => _$this._requestsPerMinute;
  set requestsPerMinute(int? requestsPerMinute) =>
      _$this._requestsPerMinute = requestsPerMinute;

  int? _tokensPerDay;
  int? get tokensPerDay => _$this._tokensPerDay;
  set tokensPerDay(int? tokensPerDay) => _$this._tokensPerDay = tokensPerDay;

  int? _tokensToday;
  int? get tokensToday => _$this._tokensToday;
  set tokensToday(int? tokensToday) => _$this._tokensToday = tokensToday;

  LlmProviderBudgetRateLimitsBuilder() {
    LlmProviderBudgetRateLimits._defaults(this);
  }

  LlmProviderBudgetRateLimitsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requestsPerMinute = $v.requestsPerMinute;
      _tokensPerDay = $v.tokensPerDay;
      _tokensToday = $v.tokensToday;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LlmProviderBudgetRateLimits other) {
    _$v = other as _$LlmProviderBudgetRateLimits;
  }

  @override
  void update(void Function(LlmProviderBudgetRateLimitsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LlmProviderBudgetRateLimits build() => _build();

  _$LlmProviderBudgetRateLimits _build() {
    final _$result =
        _$v ??
        _$LlmProviderBudgetRateLimits._(
          requestsPerMinute: BuiltValueNullFieldError.checkNotNull(
            requestsPerMinute,
            r'LlmProviderBudgetRateLimits',
            'requestsPerMinute',
          ),
          tokensPerDay: BuiltValueNullFieldError.checkNotNull(
            tokensPerDay,
            r'LlmProviderBudgetRateLimits',
            'tokensPerDay',
          ),
          tokensToday: BuiltValueNullFieldError.checkNotNull(
            tokensToday,
            r'LlmProviderBudgetRateLimits',
            'tokensToday',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
