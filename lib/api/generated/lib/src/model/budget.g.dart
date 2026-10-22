// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'budget.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Budget extends Budget {
  @override
  final int perMinute;
  @override
  final int perDay;
  @override
  final num? monthlyCapUsd;

  factory _$Budget([void Function(BudgetBuilder)? updates]) =>
      (BudgetBuilder()..update(updates))._build();

  _$Budget._(
      {required this.perMinute, required this.perDay, this.monthlyCapUsd})
      : super._();
  @override
  Budget rebuild(void Function(BudgetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BudgetBuilder toBuilder() => BudgetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Budget &&
        perMinute == other.perMinute &&
        perDay == other.perDay &&
        monthlyCapUsd == other.monthlyCapUsd;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, perMinute.hashCode);
    _$hash = $jc(_$hash, perDay.hashCode);
    _$hash = $jc(_$hash, monthlyCapUsd.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Budget')
          ..add('perMinute', perMinute)
          ..add('perDay', perDay)
          ..add('monthlyCapUsd', monthlyCapUsd))
        .toString();
  }
}

class BudgetBuilder implements Builder<Budget, BudgetBuilder> {
  _$Budget? _$v;

  int? _perMinute;
  int? get perMinute => _$this._perMinute;
  set perMinute(int? perMinute) => _$this._perMinute = perMinute;

  int? _perDay;
  int? get perDay => _$this._perDay;
  set perDay(int? perDay) => _$this._perDay = perDay;

  num? _monthlyCapUsd;
  num? get monthlyCapUsd => _$this._monthlyCapUsd;
  set monthlyCapUsd(num? monthlyCapUsd) =>
      _$this._monthlyCapUsd = monthlyCapUsd;

  BudgetBuilder() {
    Budget._defaults(this);
  }

  BudgetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _perMinute = $v.perMinute;
      _perDay = $v.perDay;
      _monthlyCapUsd = $v.monthlyCapUsd;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Budget other) {
    _$v = other as _$Budget;
  }

  @override
  void update(void Function(BudgetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Budget build() => _build();

  _$Budget _build() {
    final _$result = _$v ??
        _$Budget._(
          perMinute: BuiltValueNullFieldError.checkNotNull(
              perMinute, r'Budget', 'perMinute'),
          perDay: BuiltValueNullFieldError.checkNotNull(
              perDay, r'Budget', 'perDay'),
          monthlyCapUsd: monthlyCapUsd,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
