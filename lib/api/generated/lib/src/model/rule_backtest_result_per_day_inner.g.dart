// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_backtest_result_per_day_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RuleBacktestResultPerDayInner extends RuleBacktestResultPerDayInner {
  @override
  final Date date;
  @override
  final int count;

  factory _$RuleBacktestResultPerDayInner(
          [void Function(RuleBacktestResultPerDayInnerBuilder)? updates]) =>
      (RuleBacktestResultPerDayInnerBuilder()..update(updates))._build();

  _$RuleBacktestResultPerDayInner._({required this.date, required this.count})
      : super._();
  @override
  RuleBacktestResultPerDayInner rebuild(
          void Function(RuleBacktestResultPerDayInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RuleBacktestResultPerDayInnerBuilder toBuilder() =>
      RuleBacktestResultPerDayInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleBacktestResultPerDayInner &&
        date == other.date &&
        count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RuleBacktestResultPerDayInner')
          ..add('date', date)
          ..add('count', count))
        .toString();
  }
}

class RuleBacktestResultPerDayInnerBuilder
    implements
        Builder<RuleBacktestResultPerDayInner,
            RuleBacktestResultPerDayInnerBuilder> {
  _$RuleBacktestResultPerDayInner? _$v;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  RuleBacktestResultPerDayInnerBuilder() {
    RuleBacktestResultPerDayInner._defaults(this);
  }

  RuleBacktestResultPerDayInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RuleBacktestResultPerDayInner other) {
    _$v = other as _$RuleBacktestResultPerDayInner;
  }

  @override
  void update(void Function(RuleBacktestResultPerDayInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RuleBacktestResultPerDayInner build() => _build();

  _$RuleBacktestResultPerDayInner _build() {
    final _$result = _$v ??
        _$RuleBacktestResultPerDayInner._(
          date: BuiltValueNullFieldError.checkNotNull(
              date, r'RuleBacktestResultPerDayInner', 'date'),
          count: BuiltValueNullFieldError.checkNotNull(
              count, r'RuleBacktestResultPerDayInner', 'count'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
