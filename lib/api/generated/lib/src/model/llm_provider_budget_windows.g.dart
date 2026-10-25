// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'llm_provider_budget_windows.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LlmProviderBudgetWindows extends LlmProviderBudgetWindows {
  @override
  final LlmSpendWindow hour;
  @override
  final LlmSpendWindow day;
  @override
  final LlmSpendWindow month;

  factory _$LlmProviderBudgetWindows([
    void Function(LlmProviderBudgetWindowsBuilder)? updates,
  ]) => (LlmProviderBudgetWindowsBuilder()..update(updates))._build();

  _$LlmProviderBudgetWindows._({
    required this.hour,
    required this.day,
    required this.month,
  }) : super._();
  @override
  LlmProviderBudgetWindows rebuild(
    void Function(LlmProviderBudgetWindowsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  LlmProviderBudgetWindowsBuilder toBuilder() =>
      LlmProviderBudgetWindowsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LlmProviderBudgetWindows &&
        hour == other.hour &&
        day == other.day &&
        month == other.month;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hour.hashCode);
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jc(_$hash, month.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LlmProviderBudgetWindows')
          ..add('hour', hour)
          ..add('day', day)
          ..add('month', month))
        .toString();
  }
}

class LlmProviderBudgetWindowsBuilder
    implements
        Builder<LlmProviderBudgetWindows, LlmProviderBudgetWindowsBuilder> {
  _$LlmProviderBudgetWindows? _$v;

  LlmSpendWindowBuilder? _hour;
  LlmSpendWindowBuilder get hour => _$this._hour ??= LlmSpendWindowBuilder();
  set hour(LlmSpendWindowBuilder? hour) => _$this._hour = hour;

  LlmSpendWindowBuilder? _day;
  LlmSpendWindowBuilder get day => _$this._day ??= LlmSpendWindowBuilder();
  set day(LlmSpendWindowBuilder? day) => _$this._day = day;

  LlmSpendWindowBuilder? _month;
  LlmSpendWindowBuilder get month => _$this._month ??= LlmSpendWindowBuilder();
  set month(LlmSpendWindowBuilder? month) => _$this._month = month;

  LlmProviderBudgetWindowsBuilder() {
    LlmProviderBudgetWindows._defaults(this);
  }

  LlmProviderBudgetWindowsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hour = $v.hour.toBuilder();
      _day = $v.day.toBuilder();
      _month = $v.month.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LlmProviderBudgetWindows other) {
    _$v = other as _$LlmProviderBudgetWindows;
  }

  @override
  void update(void Function(LlmProviderBudgetWindowsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LlmProviderBudgetWindows build() => _build();

  _$LlmProviderBudgetWindows _build() {
    _$LlmProviderBudgetWindows _$result;
    try {
      _$result =
          _$v ??
          _$LlmProviderBudgetWindows._(
            hour: hour.build(),
            day: day.build(),
            month: month.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hour';
        hour.build();
        _$failedField = 'day';
        day.build();
        _$failedField = 'month';
        month.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'LlmProviderBudgetWindows',
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
