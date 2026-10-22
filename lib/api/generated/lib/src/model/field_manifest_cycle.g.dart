// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_manifest_cycle.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FieldManifestCycle extends FieldManifestCycle {
  @override
  final String date;
  @override
  final int hour;
  @override
  final int forecastHour;
  @override
  final DateTime runIso;
  @override
  final DateTime validIso;

  factory _$FieldManifestCycle(
          [void Function(FieldManifestCycleBuilder)? updates]) =>
      (FieldManifestCycleBuilder()..update(updates))._build();

  _$FieldManifestCycle._(
      {required this.date,
      required this.hour,
      required this.forecastHour,
      required this.runIso,
      required this.validIso})
      : super._();
  @override
  FieldManifestCycle rebuild(
          void Function(FieldManifestCycleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FieldManifestCycleBuilder toBuilder() =>
      FieldManifestCycleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FieldManifestCycle &&
        date == other.date &&
        hour == other.hour &&
        forecastHour == other.forecastHour &&
        runIso == other.runIso &&
        validIso == other.validIso;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, hour.hashCode);
    _$hash = $jc(_$hash, forecastHour.hashCode);
    _$hash = $jc(_$hash, runIso.hashCode);
    _$hash = $jc(_$hash, validIso.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FieldManifestCycle')
          ..add('date', date)
          ..add('hour', hour)
          ..add('forecastHour', forecastHour)
          ..add('runIso', runIso)
          ..add('validIso', validIso))
        .toString();
  }
}

class FieldManifestCycleBuilder
    implements Builder<FieldManifestCycle, FieldManifestCycleBuilder> {
  _$FieldManifestCycle? _$v;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  int? _hour;
  int? get hour => _$this._hour;
  set hour(int? hour) => _$this._hour = hour;

  int? _forecastHour;
  int? get forecastHour => _$this._forecastHour;
  set forecastHour(int? forecastHour) => _$this._forecastHour = forecastHour;

  DateTime? _runIso;
  DateTime? get runIso => _$this._runIso;
  set runIso(DateTime? runIso) => _$this._runIso = runIso;

  DateTime? _validIso;
  DateTime? get validIso => _$this._validIso;
  set validIso(DateTime? validIso) => _$this._validIso = validIso;

  FieldManifestCycleBuilder() {
    FieldManifestCycle._defaults(this);
  }

  FieldManifestCycleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _hour = $v.hour;
      _forecastHour = $v.forecastHour;
      _runIso = $v.runIso;
      _validIso = $v.validIso;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FieldManifestCycle other) {
    _$v = other as _$FieldManifestCycle;
  }

  @override
  void update(void Function(FieldManifestCycleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FieldManifestCycle build() => _build();

  _$FieldManifestCycle _build() {
    final _$result = _$v ??
        _$FieldManifestCycle._(
          date: BuiltValueNullFieldError.checkNotNull(
              date, r'FieldManifestCycle', 'date'),
          hour: BuiltValueNullFieldError.checkNotNull(
              hour, r'FieldManifestCycle', 'hour'),
          forecastHour: BuiltValueNullFieldError.checkNotNull(
              forecastHour, r'FieldManifestCycle', 'forecastHour'),
          runIso: BuiltValueNullFieldError.checkNotNull(
              runIso, r'FieldManifestCycle', 'runIso'),
          validIso: BuiltValueNullFieldError.checkNotNull(
              validIso, r'FieldManifestCycle', 'validIso'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
