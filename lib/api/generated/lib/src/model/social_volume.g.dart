// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_volume.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SocialVolumeMetricEnum _$socialVolumeMetricEnum_posts =
    const SocialVolumeMetricEnum._('posts');
const SocialVolumeMetricEnum _$socialVolumeMetricEnum_uniqueAuthors =
    const SocialVolumeMetricEnum._('uniqueAuthors');
const SocialVolumeMetricEnum _$socialVolumeMetricEnum_reposts =
    const SocialVolumeMetricEnum._('reposts');
const SocialVolumeMetricEnum _$socialVolumeMetricEnum_engagement =
    const SocialVolumeMetricEnum._('engagement');
const SocialVolumeMetricEnum _$socialVolumeMetricEnum_denominator =
    const SocialVolumeMetricEnum._('denominator');
const SocialVolumeMetricEnum _$socialVolumeMetricEnum_unknownDefaultOpenApi =
    const SocialVolumeMetricEnum._('unknownDefaultOpenApi');

SocialVolumeMetricEnum _$socialVolumeMetricEnumValueOf(String name) {
  switch (name) {
    case 'posts':
      return _$socialVolumeMetricEnum_posts;
    case 'uniqueAuthors':
      return _$socialVolumeMetricEnum_uniqueAuthors;
    case 'reposts':
      return _$socialVolumeMetricEnum_reposts;
    case 'engagement':
      return _$socialVolumeMetricEnum_engagement;
    case 'denominator':
      return _$socialVolumeMetricEnum_denominator;
    case 'unknownDefaultOpenApi':
      return _$socialVolumeMetricEnum_unknownDefaultOpenApi;
    default:
      return _$socialVolumeMetricEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SocialVolumeMetricEnum> _$socialVolumeMetricEnumValues =
    BuiltSet<SocialVolumeMetricEnum>(const <SocialVolumeMetricEnum>[
      _$socialVolumeMetricEnum_posts,
      _$socialVolumeMetricEnum_uniqueAuthors,
      _$socialVolumeMetricEnum_reposts,
      _$socialVolumeMetricEnum_engagement,
      _$socialVolumeMetricEnum_denominator,
      _$socialVolumeMetricEnum_unknownDefaultOpenApi,
    ]);

const SocialVolumeIntervalEnum _$socialVolumeIntervalEnum_PT1H =
    const SocialVolumeIntervalEnum._('PT1H');
const SocialVolumeIntervalEnum _$socialVolumeIntervalEnum_P1D =
    const SocialVolumeIntervalEnum._('P1D');
const SocialVolumeIntervalEnum
_$socialVolumeIntervalEnum_unknownDefaultOpenApi =
    const SocialVolumeIntervalEnum._('unknownDefaultOpenApi');

SocialVolumeIntervalEnum _$socialVolumeIntervalEnumValueOf(String name) {
  switch (name) {
    case 'PT1H':
      return _$socialVolumeIntervalEnum_PT1H;
    case 'P1D':
      return _$socialVolumeIntervalEnum_P1D;
    case 'unknownDefaultOpenApi':
      return _$socialVolumeIntervalEnum_unknownDefaultOpenApi;
    default:
      return _$socialVolumeIntervalEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SocialVolumeIntervalEnum> _$socialVolumeIntervalEnumValues =
    BuiltSet<SocialVolumeIntervalEnum>(const <SocialVolumeIntervalEnum>[
      _$socialVolumeIntervalEnum_PT1H,
      _$socialVolumeIntervalEnum_P1D,
      _$socialVolumeIntervalEnum_unknownDefaultOpenApi,
    ]);

Serializer<SocialVolumeMetricEnum> _$socialVolumeMetricEnumSerializer =
    _$SocialVolumeMetricEnumSerializer();
Serializer<SocialVolumeIntervalEnum> _$socialVolumeIntervalEnumSerializer =
    _$SocialVolumeIntervalEnumSerializer();

class _$SocialVolumeMetricEnumSerializer
    implements PrimitiveSerializer<SocialVolumeMetricEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'posts': 'posts',
    'uniqueAuthors': 'uniqueAuthors',
    'reposts': 'reposts',
    'engagement': 'engagement',
    'denominator': 'denominator',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'posts': 'posts',
    'uniqueAuthors': 'uniqueAuthors',
    'reposts': 'reposts',
    'engagement': 'engagement',
    'denominator': 'denominator',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SocialVolumeMetricEnum];
  @override
  final String wireName = 'SocialVolumeMetricEnum';

  @override
  Object serialize(
    Serializers serializers,
    SocialVolumeMetricEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SocialVolumeMetricEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SocialVolumeMetricEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SocialVolumeIntervalEnumSerializer
    implements PrimitiveSerializer<SocialVolumeIntervalEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'PT1H': 'PT1H',
    'P1D': 'P1D',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PT1H': 'PT1H',
    'P1D': 'P1D',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SocialVolumeIntervalEnum];
  @override
  final String wireName = 'SocialVolumeIntervalEnum';

  @override
  Object serialize(
    Serializers serializers,
    SocialVolumeIntervalEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SocialVolumeIntervalEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SocialVolumeIntervalEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SocialVolume extends SocialVolume {
  @override
  final SocialVolumeScope scope;
  @override
  final SocialVolumeMetricEnum metric;
  @override
  final SocialVolumeIntervalEnum interval;
  @override
  final DateTime since;
  @override
  final DateTime until;
  @override
  final BuiltList<SocialVolumeSeries> series;
  @override
  final DetectorRef baseline;
  @override
  final BuiltList<Caveat>? caveats;

  factory _$SocialVolume([void Function(SocialVolumeBuilder)? updates]) =>
      (SocialVolumeBuilder()..update(updates))._build();

  _$SocialVolume._({
    required this.scope,
    required this.metric,
    required this.interval,
    required this.since,
    required this.until,
    required this.series,
    required this.baseline,
    this.caveats,
  }) : super._();
  @override
  SocialVolume rebuild(void Function(SocialVolumeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialVolumeBuilder toBuilder() => SocialVolumeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialVolume &&
        scope == other.scope &&
        metric == other.metric &&
        interval == other.interval &&
        since == other.since &&
        until == other.until &&
        series == other.series &&
        baseline == other.baseline &&
        caveats == other.caveats;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, metric.hashCode);
    _$hash = $jc(_$hash, interval.hashCode);
    _$hash = $jc(_$hash, since.hashCode);
    _$hash = $jc(_$hash, until.hashCode);
    _$hash = $jc(_$hash, series.hashCode);
    _$hash = $jc(_$hash, baseline.hashCode);
    _$hash = $jc(_$hash, caveats.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialVolume')
          ..add('scope', scope)
          ..add('metric', metric)
          ..add('interval', interval)
          ..add('since', since)
          ..add('until', until)
          ..add('series', series)
          ..add('baseline', baseline)
          ..add('caveats', caveats))
        .toString();
  }
}

class SocialVolumeBuilder
    implements Builder<SocialVolume, SocialVolumeBuilder> {
  _$SocialVolume? _$v;

  SocialVolumeScopeBuilder? _scope;
  SocialVolumeScopeBuilder get scope =>
      _$this._scope ??= SocialVolumeScopeBuilder();
  set scope(SocialVolumeScopeBuilder? scope) => _$this._scope = scope;

  SocialVolumeMetricEnum? _metric;
  SocialVolumeMetricEnum? get metric => _$this._metric;
  set metric(SocialVolumeMetricEnum? metric) => _$this._metric = metric;

  SocialVolumeIntervalEnum? _interval;
  SocialVolumeIntervalEnum? get interval => _$this._interval;
  set interval(SocialVolumeIntervalEnum? interval) =>
      _$this._interval = interval;

  DateTime? _since;
  DateTime? get since => _$this._since;
  set since(DateTime? since) => _$this._since = since;

  DateTime? _until;
  DateTime? get until => _$this._until;
  set until(DateTime? until) => _$this._until = until;

  ListBuilder<SocialVolumeSeries>? _series;
  ListBuilder<SocialVolumeSeries> get series =>
      _$this._series ??= ListBuilder<SocialVolumeSeries>();
  set series(ListBuilder<SocialVolumeSeries>? series) =>
      _$this._series = series;

  DetectorRefBuilder? _baseline;
  DetectorRefBuilder get baseline => _$this._baseline ??= DetectorRefBuilder();
  set baseline(DetectorRefBuilder? baseline) => _$this._baseline = baseline;

  ListBuilder<Caveat>? _caveats;
  ListBuilder<Caveat> get caveats => _$this._caveats ??= ListBuilder<Caveat>();
  set caveats(ListBuilder<Caveat>? caveats) => _$this._caveats = caveats;

  SocialVolumeBuilder() {
    SocialVolume._defaults(this);
  }

  SocialVolumeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _scope = $v.scope.toBuilder();
      _metric = $v.metric;
      _interval = $v.interval;
      _since = $v.since;
      _until = $v.until;
      _series = $v.series.toBuilder();
      _baseline = $v.baseline.toBuilder();
      _caveats = $v.caveats?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialVolume other) {
    _$v = other as _$SocialVolume;
  }

  @override
  void update(void Function(SocialVolumeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialVolume build() => _build();

  _$SocialVolume _build() {
    _$SocialVolume _$result;
    try {
      _$result =
          _$v ??
          _$SocialVolume._(
            scope: scope.build(),
            metric: BuiltValueNullFieldError.checkNotNull(
              metric,
              r'SocialVolume',
              'metric',
            ),
            interval: BuiltValueNullFieldError.checkNotNull(
              interval,
              r'SocialVolume',
              'interval',
            ),
            since: BuiltValueNullFieldError.checkNotNull(
              since,
              r'SocialVolume',
              'since',
            ),
            until: BuiltValueNullFieldError.checkNotNull(
              until,
              r'SocialVolume',
              'until',
            ),
            series: series.build(),
            baseline: baseline.build(),
            caveats: _caveats?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'scope';
        scope.build();

        _$failedField = 'series';
        series.build();
        _$failedField = 'baseline';
        baseline.build();
        _$failedField = 'caveats';
        _caveats?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SocialVolume',
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
