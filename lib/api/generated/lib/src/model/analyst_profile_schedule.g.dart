// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyst_profile_schedule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalystProfileSchedule extends AnalystProfileSchedule {
  @override
  final String? cron;
  @override
  final String? timezone;
  @override
  final String? every;

  factory _$AnalystProfileSchedule(
          [void Function(AnalystProfileScheduleBuilder)? updates]) =>
      (AnalystProfileScheduleBuilder()..update(updates))._build();

  _$AnalystProfileSchedule._({this.cron, this.timezone, this.every})
      : super._();
  @override
  AnalystProfileSchedule rebuild(
          void Function(AnalystProfileScheduleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalystProfileScheduleBuilder toBuilder() =>
      AnalystProfileScheduleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalystProfileSchedule &&
        cron == other.cron &&
        timezone == other.timezone &&
        every == other.every;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cron.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, every.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalystProfileSchedule')
          ..add('cron', cron)
          ..add('timezone', timezone)
          ..add('every', every))
        .toString();
  }
}

class AnalystProfileScheduleBuilder
    implements Builder<AnalystProfileSchedule, AnalystProfileScheduleBuilder> {
  _$AnalystProfileSchedule? _$v;

  String? _cron;
  String? get cron => _$this._cron;
  set cron(String? cron) => _$this._cron = cron;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  String? _every;
  String? get every => _$this._every;
  set every(String? every) => _$this._every = every;

  AnalystProfileScheduleBuilder() {
    AnalystProfileSchedule._defaults(this);
  }

  AnalystProfileScheduleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cron = $v.cron;
      _timezone = $v.timezone;
      _every = $v.every;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalystProfileSchedule other) {
    _$v = other as _$AnalystProfileSchedule;
  }

  @override
  void update(void Function(AnalystProfileScheduleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalystProfileSchedule build() => _build();

  _$AnalystProfileSchedule _build() {
    final _$result = _$v ??
        _$AnalystProfileSchedule._(
          cron: cron,
          timezone: timezone,
          every: every,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
