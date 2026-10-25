// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'llm_usage_series.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LlmUsageSeriesResolutionEnum _$llmUsageSeriesResolutionEnum_minute =
    const LlmUsageSeriesResolutionEnum._('minute');
const LlmUsageSeriesResolutionEnum _$llmUsageSeriesResolutionEnum_hour =
    const LlmUsageSeriesResolutionEnum._('hour');
const LlmUsageSeriesResolutionEnum _$llmUsageSeriesResolutionEnum_day =
    const LlmUsageSeriesResolutionEnum._('day');
const LlmUsageSeriesResolutionEnum
_$llmUsageSeriesResolutionEnum_unknownDefaultOpenApi =
    const LlmUsageSeriesResolutionEnum._('unknownDefaultOpenApi');

LlmUsageSeriesResolutionEnum _$llmUsageSeriesResolutionEnumValueOf(
  String name,
) {
  switch (name) {
    case 'minute':
      return _$llmUsageSeriesResolutionEnum_minute;
    case 'hour':
      return _$llmUsageSeriesResolutionEnum_hour;
    case 'day':
      return _$llmUsageSeriesResolutionEnum_day;
    case 'unknownDefaultOpenApi':
      return _$llmUsageSeriesResolutionEnum_unknownDefaultOpenApi;
    default:
      return _$llmUsageSeriesResolutionEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<LlmUsageSeriesResolutionEnum>
_$llmUsageSeriesResolutionEnumValues =
    BuiltSet<LlmUsageSeriesResolutionEnum>(const <LlmUsageSeriesResolutionEnum>[
      _$llmUsageSeriesResolutionEnum_minute,
      _$llmUsageSeriesResolutionEnum_hour,
      _$llmUsageSeriesResolutionEnum_day,
      _$llmUsageSeriesResolutionEnum_unknownDefaultOpenApi,
    ]);

Serializer<LlmUsageSeriesResolutionEnum>
_$llmUsageSeriesResolutionEnumSerializer =
    _$LlmUsageSeriesResolutionEnumSerializer();

class _$LlmUsageSeriesResolutionEnumSerializer
    implements PrimitiveSerializer<LlmUsageSeriesResolutionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'minute': 'minute',
    'hour': 'hour',
    'day': 'day',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'minute': 'minute',
    'hour': 'hour',
    'day': 'day',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[LlmUsageSeriesResolutionEnum];
  @override
  final String wireName = 'LlmUsageSeriesResolutionEnum';

  @override
  Object serialize(
    Serializers serializers,
    LlmUsageSeriesResolutionEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  LlmUsageSeriesResolutionEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => LlmUsageSeriesResolutionEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$LlmUsageSeries extends LlmUsageSeries {
  @override
  final String? provider;
  @override
  final LlmUsageSeriesResolutionEnum resolution;
  @override
  final BuiltList<LlmUsagePoint> points;
  @override
  final LlmUsagePoint? totals;

  factory _$LlmUsageSeries([void Function(LlmUsageSeriesBuilder)? updates]) =>
      (LlmUsageSeriesBuilder()..update(updates))._build();

  _$LlmUsageSeries._({
    this.provider,
    required this.resolution,
    required this.points,
    this.totals,
  }) : super._();
  @override
  LlmUsageSeries rebuild(void Function(LlmUsageSeriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LlmUsageSeriesBuilder toBuilder() => LlmUsageSeriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LlmUsageSeries &&
        provider == other.provider &&
        resolution == other.resolution &&
        points == other.points &&
        totals == other.totals;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jc(_$hash, resolution.hashCode);
    _$hash = $jc(_$hash, points.hashCode);
    _$hash = $jc(_$hash, totals.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LlmUsageSeries')
          ..add('provider', provider)
          ..add('resolution', resolution)
          ..add('points', points)
          ..add('totals', totals))
        .toString();
  }
}

class LlmUsageSeriesBuilder
    implements Builder<LlmUsageSeries, LlmUsageSeriesBuilder> {
  _$LlmUsageSeries? _$v;

  String? _provider;
  String? get provider => _$this._provider;
  set provider(String? provider) => _$this._provider = provider;

  LlmUsageSeriesResolutionEnum? _resolution;
  LlmUsageSeriesResolutionEnum? get resolution => _$this._resolution;
  set resolution(LlmUsageSeriesResolutionEnum? resolution) =>
      _$this._resolution = resolution;

  ListBuilder<LlmUsagePoint>? _points;
  ListBuilder<LlmUsagePoint> get points =>
      _$this._points ??= ListBuilder<LlmUsagePoint>();
  set points(ListBuilder<LlmUsagePoint>? points) => _$this._points = points;

  LlmUsagePointBuilder? _totals;
  LlmUsagePointBuilder get totals => _$this._totals ??= LlmUsagePointBuilder();
  set totals(LlmUsagePointBuilder? totals) => _$this._totals = totals;

  LlmUsageSeriesBuilder() {
    LlmUsageSeries._defaults(this);
  }

  LlmUsageSeriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _provider = $v.provider;
      _resolution = $v.resolution;
      _points = $v.points.toBuilder();
      _totals = $v.totals?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LlmUsageSeries other) {
    _$v = other as _$LlmUsageSeries;
  }

  @override
  void update(void Function(LlmUsageSeriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LlmUsageSeries build() => _build();

  _$LlmUsageSeries _build() {
    _$LlmUsageSeries _$result;
    try {
      _$result =
          _$v ??
          _$LlmUsageSeries._(
            provider: provider,
            resolution: BuiltValueNullFieldError.checkNotNull(
              resolution,
              r'LlmUsageSeries',
              'resolution',
            ),
            points: points.build(),
            totals: _totals?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'points';
        points.build();
        _$failedField = 'totals';
        _totals?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'LlmUsageSeries',
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
