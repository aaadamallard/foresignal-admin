// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_context.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WeatherContextStatusEnum _$weatherContextStatusEnum_ok =
    const WeatherContextStatusEnum._('ok');
const WeatherContextStatusEnum _$weatherContextStatusEnum_unavailable =
    const WeatherContextStatusEnum._('unavailable');

WeatherContextStatusEnum _$weatherContextStatusEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$weatherContextStatusEnum_ok;
    case 'unavailable':
      return _$weatherContextStatusEnum_unavailable;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<WeatherContextStatusEnum> _$weatherContextStatusEnumValues =
    BuiltSet<WeatherContextStatusEnum>(const <WeatherContextStatusEnum>[
      _$weatherContextStatusEnum_ok,
      _$weatherContextStatusEnum_unavailable,
    ]);

Serializer<WeatherContextStatusEnum> _$weatherContextStatusEnumSerializer =
    _$WeatherContextStatusEnumSerializer();

class _$WeatherContextStatusEnumSerializer
    implements PrimitiveSerializer<WeatherContextStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'unavailable': 'unavailable',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'unavailable': 'unavailable',
  };

  @override
  final Iterable<Type> types = const <Type>[WeatherContextStatusEnum];
  @override
  final String wireName = 'WeatherContextStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    WeatherContextStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  WeatherContextStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => WeatherContextStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$WeatherContext extends WeatherContext {
  @override
  final WeatherContextStatusEnum status;
  @override
  final DateTime? at;
  @override
  final DateTime? computedAt;
  @override
  final WeatherContextRadar? radar;
  @override
  final WeatherContextLightning? lightning;
  @override
  final WeatherContextPrecip? precip;
  @override
  final WeatherContextWarnings? warnings;
  @override
  final WeatherContextWind? wind;
  @override
  final WeatherContextSmoke? smoke;
  @override
  final String? summary;

  factory _$WeatherContext([void Function(WeatherContextBuilder)? updates]) =>
      (WeatherContextBuilder()..update(updates))._build();

  _$WeatherContext._({
    required this.status,
    this.at,
    this.computedAt,
    this.radar,
    this.lightning,
    this.precip,
    this.warnings,
    this.wind,
    this.smoke,
    this.summary,
  }) : super._();
  @override
  WeatherContext rebuild(void Function(WeatherContextBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherContextBuilder toBuilder() => WeatherContextBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherContext &&
        status == other.status &&
        at == other.at &&
        computedAt == other.computedAt &&
        radar == other.radar &&
        lightning == other.lightning &&
        precip == other.precip &&
        warnings == other.warnings &&
        wind == other.wind &&
        smoke == other.smoke &&
        summary == other.summary;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jc(_$hash, computedAt.hashCode);
    _$hash = $jc(_$hash, radar.hashCode);
    _$hash = $jc(_$hash, lightning.hashCode);
    _$hash = $jc(_$hash, precip.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jc(_$hash, wind.hashCode);
    _$hash = $jc(_$hash, smoke.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherContext')
          ..add('status', status)
          ..add('at', at)
          ..add('computedAt', computedAt)
          ..add('radar', radar)
          ..add('lightning', lightning)
          ..add('precip', precip)
          ..add('warnings', warnings)
          ..add('wind', wind)
          ..add('smoke', smoke)
          ..add('summary', summary))
        .toString();
  }
}

class WeatherContextBuilder
    implements Builder<WeatherContext, WeatherContextBuilder> {
  _$WeatherContext? _$v;

  WeatherContextStatusEnum? _status;
  WeatherContextStatusEnum? get status => _$this._status;
  set status(WeatherContextStatusEnum? status) => _$this._status = status;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  DateTime? _computedAt;
  DateTime? get computedAt => _$this._computedAt;
  set computedAt(DateTime? computedAt) => _$this._computedAt = computedAt;

  WeatherContextRadarBuilder? _radar;
  WeatherContextRadarBuilder get radar =>
      _$this._radar ??= WeatherContextRadarBuilder();
  set radar(WeatherContextRadarBuilder? radar) => _$this._radar = radar;

  WeatherContextLightningBuilder? _lightning;
  WeatherContextLightningBuilder get lightning =>
      _$this._lightning ??= WeatherContextLightningBuilder();
  set lightning(WeatherContextLightningBuilder? lightning) =>
      _$this._lightning = lightning;

  WeatherContextPrecipBuilder? _precip;
  WeatherContextPrecipBuilder get precip =>
      _$this._precip ??= WeatherContextPrecipBuilder();
  set precip(WeatherContextPrecipBuilder? precip) => _$this._precip = precip;

  WeatherContextWarningsBuilder? _warnings;
  WeatherContextWarningsBuilder get warnings =>
      _$this._warnings ??= WeatherContextWarningsBuilder();
  set warnings(WeatherContextWarningsBuilder? warnings) =>
      _$this._warnings = warnings;

  WeatherContextWindBuilder? _wind;
  WeatherContextWindBuilder get wind =>
      _$this._wind ??= WeatherContextWindBuilder();
  set wind(WeatherContextWindBuilder? wind) => _$this._wind = wind;

  WeatherContextSmokeBuilder? _smoke;
  WeatherContextSmokeBuilder get smoke =>
      _$this._smoke ??= WeatherContextSmokeBuilder();
  set smoke(WeatherContextSmokeBuilder? smoke) => _$this._smoke = smoke;

  String? _summary;
  String? get summary => _$this._summary;
  set summary(String? summary) => _$this._summary = summary;

  WeatherContextBuilder() {
    WeatherContext._defaults(this);
  }

  WeatherContextBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _at = $v.at;
      _computedAt = $v.computedAt;
      _radar = $v.radar?.toBuilder();
      _lightning = $v.lightning?.toBuilder();
      _precip = $v.precip?.toBuilder();
      _warnings = $v.warnings?.toBuilder();
      _wind = $v.wind?.toBuilder();
      _smoke = $v.smoke?.toBuilder();
      _summary = $v.summary;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherContext other) {
    _$v = other as _$WeatherContext;
  }

  @override
  void update(void Function(WeatherContextBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherContext build() => _build();

  _$WeatherContext _build() {
    _$WeatherContext _$result;
    try {
      _$result =
          _$v ??
          _$WeatherContext._(
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'WeatherContext',
              'status',
            ),
            at: at,
            computedAt: computedAt,
            radar: _radar?.build(),
            lightning: _lightning?.build(),
            precip: _precip?.build(),
            warnings: _warnings?.build(),
            wind: _wind?.build(),
            smoke: _smoke?.build(),
            summary: summary,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'radar';
        _radar?.build();
        _$failedField = 'lightning';
        _lightning?.build();
        _$failedField = 'precip';
        _precip?.build();
        _$failedField = 'warnings';
        _warnings?.build();
        _$failedField = 'wind';
        _wind?.build();
        _$failedField = 'smoke';
        _smoke?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'WeatherContext',
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
