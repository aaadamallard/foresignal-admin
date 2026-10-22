// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_context_smoke.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WeatherContextSmoke extends WeatherContextSmoke {
  @override
  final WeatherSectionStatus status;
  @override
  final DateTime? asOf;
  @override
  final String? statusText;
  @override
  final num? pm25UgM3;
  @override
  final String? run;
  @override
  final DateTime? validTime;
  @override
  final int? step;

  factory _$WeatherContextSmoke([
    void Function(WeatherContextSmokeBuilder)? updates,
  ]) => (WeatherContextSmokeBuilder()..update(updates))._build();

  _$WeatherContextSmoke._({
    required this.status,
    this.asOf,
    this.statusText,
    this.pm25UgM3,
    this.run,
    this.validTime,
    this.step,
  }) : super._();
  @override
  WeatherContextSmoke rebuild(
    void Function(WeatherContextSmokeBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  WeatherContextSmokeBuilder toBuilder() =>
      WeatherContextSmokeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherContextSmoke &&
        status == other.status &&
        asOf == other.asOf &&
        statusText == other.statusText &&
        pm25UgM3 == other.pm25UgM3 &&
        run == other.run &&
        validTime == other.validTime &&
        step == other.step;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, statusText.hashCode);
    _$hash = $jc(_$hash, pm25UgM3.hashCode);
    _$hash = $jc(_$hash, run.hashCode);
    _$hash = $jc(_$hash, validTime.hashCode);
    _$hash = $jc(_$hash, step.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherContextSmoke')
          ..add('status', status)
          ..add('asOf', asOf)
          ..add('statusText', statusText)
          ..add('pm25UgM3', pm25UgM3)
          ..add('run', run)
          ..add('validTime', validTime)
          ..add('step', step))
        .toString();
  }
}

class WeatherContextSmokeBuilder
    implements Builder<WeatherContextSmoke, WeatherContextSmokeBuilder> {
  _$WeatherContextSmoke? _$v;

  WeatherSectionStatus? _status;
  WeatherSectionStatus? get status => _$this._status;
  set status(WeatherSectionStatus? status) => _$this._status = status;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  String? _statusText;
  String? get statusText => _$this._statusText;
  set statusText(String? statusText) => _$this._statusText = statusText;

  num? _pm25UgM3;
  num? get pm25UgM3 => _$this._pm25UgM3;
  set pm25UgM3(num? pm25UgM3) => _$this._pm25UgM3 = pm25UgM3;

  String? _run;
  String? get run => _$this._run;
  set run(String? run) => _$this._run = run;

  DateTime? _validTime;
  DateTime? get validTime => _$this._validTime;
  set validTime(DateTime? validTime) => _$this._validTime = validTime;

  int? _step;
  int? get step => _$this._step;
  set step(int? step) => _$this._step = step;

  WeatherContextSmokeBuilder() {
    WeatherContextSmoke._defaults(this);
  }

  WeatherContextSmokeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _asOf = $v.asOf;
      _statusText = $v.statusText;
      _pm25UgM3 = $v.pm25UgM3;
      _run = $v.run;
      _validTime = $v.validTime;
      _step = $v.step;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherContextSmoke other) {
    _$v = other as _$WeatherContextSmoke;
  }

  @override
  void update(void Function(WeatherContextSmokeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherContextSmoke build() => _build();

  _$WeatherContextSmoke _build() {
    final _$result =
        _$v ??
        _$WeatherContextSmoke._(
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'WeatherContextSmoke',
            'status',
          ),
          asOf: asOf,
          statusText: statusText,
          pm25UgM3: pm25UgM3,
          run: run,
          validTime: validTime,
          step: step,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
