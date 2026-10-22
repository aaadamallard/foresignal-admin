// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_context_lightning.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WeatherContextLightning extends WeatherContextLightning {
  @override
  final WeatherSectionStatus status;
  @override
  final DateTime? asOf;
  @override
  final String? statusText;
  @override
  final int? flashes20km15m;

  factory _$WeatherContextLightning([
    void Function(WeatherContextLightningBuilder)? updates,
  ]) => (WeatherContextLightningBuilder()..update(updates))._build();

  _$WeatherContextLightning._({
    required this.status,
    this.asOf,
    this.statusText,
    this.flashes20km15m,
  }) : super._();
  @override
  WeatherContextLightning rebuild(
    void Function(WeatherContextLightningBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  WeatherContextLightningBuilder toBuilder() =>
      WeatherContextLightningBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherContextLightning &&
        status == other.status &&
        asOf == other.asOf &&
        statusText == other.statusText &&
        flashes20km15m == other.flashes20km15m;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, statusText.hashCode);
    _$hash = $jc(_$hash, flashes20km15m.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherContextLightning')
          ..add('status', status)
          ..add('asOf', asOf)
          ..add('statusText', statusText)
          ..add('flashes20km15m', flashes20km15m))
        .toString();
  }
}

class WeatherContextLightningBuilder
    implements
        Builder<WeatherContextLightning, WeatherContextLightningBuilder> {
  _$WeatherContextLightning? _$v;

  WeatherSectionStatus? _status;
  WeatherSectionStatus? get status => _$this._status;
  set status(WeatherSectionStatus? status) => _$this._status = status;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  String? _statusText;
  String? get statusText => _$this._statusText;
  set statusText(String? statusText) => _$this._statusText = statusText;

  int? _flashes20km15m;
  int? get flashes20km15m => _$this._flashes20km15m;
  set flashes20km15m(int? flashes20km15m) =>
      _$this._flashes20km15m = flashes20km15m;

  WeatherContextLightningBuilder() {
    WeatherContextLightning._defaults(this);
  }

  WeatherContextLightningBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _asOf = $v.asOf;
      _statusText = $v.statusText;
      _flashes20km15m = $v.flashes20km15m;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherContextLightning other) {
    _$v = other as _$WeatherContextLightning;
  }

  @override
  void update(void Function(WeatherContextLightningBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherContextLightning build() => _build();

  _$WeatherContextLightning _build() {
    final _$result =
        _$v ??
        _$WeatherContextLightning._(
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'WeatherContextLightning',
            'status',
          ),
          asOf: asOf,
          statusText: statusText,
          flashes20km15m: flashes20km15m,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
