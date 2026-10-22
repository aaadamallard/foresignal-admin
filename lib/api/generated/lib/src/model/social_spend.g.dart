// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_spend.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SocialSpendCurrencyEnum _$socialSpendCurrencyEnum_USD =
    const SocialSpendCurrencyEnum._('USD');

SocialSpendCurrencyEnum _$socialSpendCurrencyEnumValueOf(String name) {
  switch (name) {
    case 'USD':
      return _$socialSpendCurrencyEnum_USD;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SocialSpendCurrencyEnum> _$socialSpendCurrencyEnumValues =
    BuiltSet<SocialSpendCurrencyEnum>(const <SocialSpendCurrencyEnum>[
  _$socialSpendCurrencyEnum_USD,
]);

Serializer<SocialSpendCurrencyEnum> _$socialSpendCurrencyEnumSerializer =
    _$SocialSpendCurrencyEnumSerializer();

class _$SocialSpendCurrencyEnumSerializer
    implements PrimitiveSerializer<SocialSpendCurrencyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'USD': 'USD',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'USD': 'USD',
  };

  @override
  final Iterable<Type> types = const <Type>[SocialSpendCurrencyEnum];
  @override
  final String wireName = 'SocialSpendCurrencyEnum';

  @override
  Object serialize(Serializers serializers, SocialSpendCurrencyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SocialSpendCurrencyEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SocialSpendCurrencyEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SocialSpend extends SocialSpend {
  @override
  final SocialSpendCurrencyEnum currency;
  @override
  final num spentThisMonth;
  @override
  final num? monthlyCapUsd;
  @override
  final num? projectedThisMonth;
  @override
  final num? standingCountsEstimateMonthly;
  @override
  final Date? pricesAsOf;
  @override
  final int? refusedThisMonth;

  factory _$SocialSpend([void Function(SocialSpendBuilder)? updates]) =>
      (SocialSpendBuilder()..update(updates))._build();

  _$SocialSpend._(
      {required this.currency,
      required this.spentThisMonth,
      this.monthlyCapUsd,
      this.projectedThisMonth,
      this.standingCountsEstimateMonthly,
      this.pricesAsOf,
      this.refusedThisMonth})
      : super._();
  @override
  SocialSpend rebuild(void Function(SocialSpendBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialSpendBuilder toBuilder() => SocialSpendBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialSpend &&
        currency == other.currency &&
        spentThisMonth == other.spentThisMonth &&
        monthlyCapUsd == other.monthlyCapUsd &&
        projectedThisMonth == other.projectedThisMonth &&
        standingCountsEstimateMonthly == other.standingCountsEstimateMonthly &&
        pricesAsOf == other.pricesAsOf &&
        refusedThisMonth == other.refusedThisMonth;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, spentThisMonth.hashCode);
    _$hash = $jc(_$hash, monthlyCapUsd.hashCode);
    _$hash = $jc(_$hash, projectedThisMonth.hashCode);
    _$hash = $jc(_$hash, standingCountsEstimateMonthly.hashCode);
    _$hash = $jc(_$hash, pricesAsOf.hashCode);
    _$hash = $jc(_$hash, refusedThisMonth.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialSpend')
          ..add('currency', currency)
          ..add('spentThisMonth', spentThisMonth)
          ..add('monthlyCapUsd', monthlyCapUsd)
          ..add('projectedThisMonth', projectedThisMonth)
          ..add('standingCountsEstimateMonthly', standingCountsEstimateMonthly)
          ..add('pricesAsOf', pricesAsOf)
          ..add('refusedThisMonth', refusedThisMonth))
        .toString();
  }
}

class SocialSpendBuilder implements Builder<SocialSpend, SocialSpendBuilder> {
  _$SocialSpend? _$v;

  SocialSpendCurrencyEnum? _currency;
  SocialSpendCurrencyEnum? get currency => _$this._currency;
  set currency(SocialSpendCurrencyEnum? currency) =>
      _$this._currency = currency;

  num? _spentThisMonth;
  num? get spentThisMonth => _$this._spentThisMonth;
  set spentThisMonth(num? spentThisMonth) =>
      _$this._spentThisMonth = spentThisMonth;

  num? _monthlyCapUsd;
  num? get monthlyCapUsd => _$this._monthlyCapUsd;
  set monthlyCapUsd(num? monthlyCapUsd) =>
      _$this._monthlyCapUsd = monthlyCapUsd;

  num? _projectedThisMonth;
  num? get projectedThisMonth => _$this._projectedThisMonth;
  set projectedThisMonth(num? projectedThisMonth) =>
      _$this._projectedThisMonth = projectedThisMonth;

  num? _standingCountsEstimateMonthly;
  num? get standingCountsEstimateMonthly =>
      _$this._standingCountsEstimateMonthly;
  set standingCountsEstimateMonthly(num? standingCountsEstimateMonthly) =>
      _$this._standingCountsEstimateMonthly = standingCountsEstimateMonthly;

  Date? _pricesAsOf;
  Date? get pricesAsOf => _$this._pricesAsOf;
  set pricesAsOf(Date? pricesAsOf) => _$this._pricesAsOf = pricesAsOf;

  int? _refusedThisMonth;
  int? get refusedThisMonth => _$this._refusedThisMonth;
  set refusedThisMonth(int? refusedThisMonth) =>
      _$this._refusedThisMonth = refusedThisMonth;

  SocialSpendBuilder() {
    SocialSpend._defaults(this);
  }

  SocialSpendBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currency = $v.currency;
      _spentThisMonth = $v.spentThisMonth;
      _monthlyCapUsd = $v.monthlyCapUsd;
      _projectedThisMonth = $v.projectedThisMonth;
      _standingCountsEstimateMonthly = $v.standingCountsEstimateMonthly;
      _pricesAsOf = $v.pricesAsOf;
      _refusedThisMonth = $v.refusedThisMonth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialSpend other) {
    _$v = other as _$SocialSpend;
  }

  @override
  void update(void Function(SocialSpendBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialSpend build() => _build();

  _$SocialSpend _build() {
    final _$result = _$v ??
        _$SocialSpend._(
          currency: BuiltValueNullFieldError.checkNotNull(
              currency, r'SocialSpend', 'currency'),
          spentThisMonth: BuiltValueNullFieldError.checkNotNull(
              spentThisMonth, r'SocialSpend', 'spentThisMonth'),
          monthlyCapUsd: monthlyCapUsd,
          projectedThisMonth: projectedThisMonth,
          standingCountsEstimateMonthly: standingCountsEstimateMonthly,
          pricesAsOf: pricesAsOf,
          refusedThisMonth: refusedThisMonth,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
