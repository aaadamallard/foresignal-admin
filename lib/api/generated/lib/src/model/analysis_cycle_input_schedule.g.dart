// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_cycle_input_schedule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalysisCycleInputSchedule extends AnalysisCycleInputSchedule {
  @override
  final String cron;
  @override
  final String timezone;

  factory _$AnalysisCycleInputSchedule([
    void Function(AnalysisCycleInputScheduleBuilder)? updates,
  ]) => (AnalysisCycleInputScheduleBuilder()..update(updates))._build();

  _$AnalysisCycleInputSchedule._({required this.cron, required this.timezone})
    : super._();
  @override
  AnalysisCycleInputSchedule rebuild(
    void Function(AnalysisCycleInputScheduleBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AnalysisCycleInputScheduleBuilder toBuilder() =>
      AnalysisCycleInputScheduleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalysisCycleInputSchedule &&
        cron == other.cron &&
        timezone == other.timezone;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cron.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalysisCycleInputSchedule')
          ..add('cron', cron)
          ..add('timezone', timezone))
        .toString();
  }
}

class AnalysisCycleInputScheduleBuilder
    implements
        Builder<AnalysisCycleInputSchedule, AnalysisCycleInputScheduleBuilder> {
  _$AnalysisCycleInputSchedule? _$v;

  String? _cron;
  String? get cron => _$this._cron;
  set cron(String? cron) => _$this._cron = cron;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  AnalysisCycleInputScheduleBuilder() {
    AnalysisCycleInputSchedule._defaults(this);
  }

  AnalysisCycleInputScheduleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cron = $v.cron;
      _timezone = $v.timezone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalysisCycleInputSchedule other) {
    _$v = other as _$AnalysisCycleInputSchedule;
  }

  @override
  void update(void Function(AnalysisCycleInputScheduleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalysisCycleInputSchedule build() => _build();

  _$AnalysisCycleInputSchedule _build() {
    final _$result =
        _$v ??
        _$AnalysisCycleInputSchedule._(
          cron: BuiltValueNullFieldError.checkNotNull(
            cron,
            r'AnalysisCycleInputSchedule',
            'cron',
          ),
          timezone: BuiltValueNullFieldError.checkNotNull(
            timezone,
            r'AnalysisCycleInputSchedule',
            'timezone',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
