// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'narrative_timeline.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NarrativeTimelineIntervalEnum _$narrativeTimelineIntervalEnum_PT5M =
    const NarrativeTimelineIntervalEnum._('PT5M');
const NarrativeTimelineIntervalEnum _$narrativeTimelineIntervalEnum_PT15M =
    const NarrativeTimelineIntervalEnum._('PT15M');
const NarrativeTimelineIntervalEnum _$narrativeTimelineIntervalEnum_PT1H =
    const NarrativeTimelineIntervalEnum._('PT1H');
const NarrativeTimelineIntervalEnum _$narrativeTimelineIntervalEnum_P1D =
    const NarrativeTimelineIntervalEnum._('P1D');
const NarrativeTimelineIntervalEnum
_$narrativeTimelineIntervalEnum_unknownDefaultOpenApi =
    const NarrativeTimelineIntervalEnum._('unknownDefaultOpenApi');

NarrativeTimelineIntervalEnum _$narrativeTimelineIntervalEnumValueOf(
  String name,
) {
  switch (name) {
    case 'PT5M':
      return _$narrativeTimelineIntervalEnum_PT5M;
    case 'PT15M':
      return _$narrativeTimelineIntervalEnum_PT15M;
    case 'PT1H':
      return _$narrativeTimelineIntervalEnum_PT1H;
    case 'P1D':
      return _$narrativeTimelineIntervalEnum_P1D;
    case 'unknownDefaultOpenApi':
      return _$narrativeTimelineIntervalEnum_unknownDefaultOpenApi;
    default:
      return _$narrativeTimelineIntervalEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<NarrativeTimelineIntervalEnum>
_$narrativeTimelineIntervalEnumValues = BuiltSet<NarrativeTimelineIntervalEnum>(
  const <NarrativeTimelineIntervalEnum>[
    _$narrativeTimelineIntervalEnum_PT5M,
    _$narrativeTimelineIntervalEnum_PT15M,
    _$narrativeTimelineIntervalEnum_PT1H,
    _$narrativeTimelineIntervalEnum_P1D,
    _$narrativeTimelineIntervalEnum_unknownDefaultOpenApi,
  ],
);

Serializer<NarrativeTimelineIntervalEnum>
_$narrativeTimelineIntervalEnumSerializer =
    _$NarrativeTimelineIntervalEnumSerializer();

class _$NarrativeTimelineIntervalEnumSerializer
    implements PrimitiveSerializer<NarrativeTimelineIntervalEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'PT5M': 'PT5M',
    'PT15M': 'PT15M',
    'PT1H': 'PT1H',
    'P1D': 'P1D',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PT5M': 'PT5M',
    'PT15M': 'PT15M',
    'PT1H': 'PT1H',
    'P1D': 'P1D',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[NarrativeTimelineIntervalEnum];
  @override
  final String wireName = 'NarrativeTimelineIntervalEnum';

  @override
  Object serialize(
    Serializers serializers,
    NarrativeTimelineIntervalEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NarrativeTimelineIntervalEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NarrativeTimelineIntervalEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$NarrativeTimeline extends NarrativeTimeline {
  @override
  final String narrativeId;
  @override
  final NarrativeTimelineIntervalEnum interval;
  @override
  final BuiltList<NarrativeTimelineSeriesInner> series;

  factory _$NarrativeTimeline([
    void Function(NarrativeTimelineBuilder)? updates,
  ]) => (NarrativeTimelineBuilder()..update(updates))._build();

  _$NarrativeTimeline._({
    required this.narrativeId,
    required this.interval,
    required this.series,
  }) : super._();
  @override
  NarrativeTimeline rebuild(void Function(NarrativeTimelineBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NarrativeTimelineBuilder toBuilder() =>
      NarrativeTimelineBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NarrativeTimeline &&
        narrativeId == other.narrativeId &&
        interval == other.interval &&
        series == other.series;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, narrativeId.hashCode);
    _$hash = $jc(_$hash, interval.hashCode);
    _$hash = $jc(_$hash, series.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NarrativeTimeline')
          ..add('narrativeId', narrativeId)
          ..add('interval', interval)
          ..add('series', series))
        .toString();
  }
}

class NarrativeTimelineBuilder
    implements Builder<NarrativeTimeline, NarrativeTimelineBuilder> {
  _$NarrativeTimeline? _$v;

  String? _narrativeId;
  String? get narrativeId => _$this._narrativeId;
  set narrativeId(String? narrativeId) => _$this._narrativeId = narrativeId;

  NarrativeTimelineIntervalEnum? _interval;
  NarrativeTimelineIntervalEnum? get interval => _$this._interval;
  set interval(NarrativeTimelineIntervalEnum? interval) =>
      _$this._interval = interval;

  ListBuilder<NarrativeTimelineSeriesInner>? _series;
  ListBuilder<NarrativeTimelineSeriesInner> get series =>
      _$this._series ??= ListBuilder<NarrativeTimelineSeriesInner>();
  set series(ListBuilder<NarrativeTimelineSeriesInner>? series) =>
      _$this._series = series;

  NarrativeTimelineBuilder() {
    NarrativeTimeline._defaults(this);
  }

  NarrativeTimelineBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _narrativeId = $v.narrativeId;
      _interval = $v.interval;
      _series = $v.series.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NarrativeTimeline other) {
    _$v = other as _$NarrativeTimeline;
  }

  @override
  void update(void Function(NarrativeTimelineBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NarrativeTimeline build() => _build();

  _$NarrativeTimeline _build() {
    _$NarrativeTimeline _$result;
    try {
      _$result =
          _$v ??
          _$NarrativeTimeline._(
            narrativeId: BuiltValueNullFieldError.checkNotNull(
              narrativeId,
              r'NarrativeTimeline',
              'narrativeId',
            ),
            interval: BuiltValueNullFieldError.checkNotNull(
              interval,
              r'NarrativeTimeline',
              'interval',
            ),
            series: series.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'series';
        series.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NarrativeTimeline',
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
