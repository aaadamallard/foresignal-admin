// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_series.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AnalysisSeriesDetectorsEnum
_$analysisSeriesDetectorsEnum_changepointCusum =
    const AnalysisSeriesDetectorsEnum._('changepointCusum');
const AnalysisSeriesDetectorsEnum
_$analysisSeriesDetectorsEnum_changepointBocpd =
    const AnalysisSeriesDetectorsEnum._('changepointBocpd');
const AnalysisSeriesDetectorsEnum _$analysisSeriesDetectorsEnum_forecast =
    const AnalysisSeriesDetectorsEnum._('forecast');
const AnalysisSeriesDetectorsEnum
_$analysisSeriesDetectorsEnum_unknownDefaultOpenApi =
    const AnalysisSeriesDetectorsEnum._('unknownDefaultOpenApi');

AnalysisSeriesDetectorsEnum _$analysisSeriesDetectorsEnumValueOf(String name) {
  switch (name) {
    case 'changepointCusum':
      return _$analysisSeriesDetectorsEnum_changepointCusum;
    case 'changepointBocpd':
      return _$analysisSeriesDetectorsEnum_changepointBocpd;
    case 'forecast':
      return _$analysisSeriesDetectorsEnum_forecast;
    case 'unknownDefaultOpenApi':
      return _$analysisSeriesDetectorsEnum_unknownDefaultOpenApi;
    default:
      return _$analysisSeriesDetectorsEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AnalysisSeriesDetectorsEnum>
_$analysisSeriesDetectorsEnumValues =
    BuiltSet<AnalysisSeriesDetectorsEnum>(const <AnalysisSeriesDetectorsEnum>[
      _$analysisSeriesDetectorsEnum_changepointCusum,
      _$analysisSeriesDetectorsEnum_changepointBocpd,
      _$analysisSeriesDetectorsEnum_forecast,
      _$analysisSeriesDetectorsEnum_unknownDefaultOpenApi,
    ]);

const AnalysisSeriesFrequencyEnum _$analysisSeriesFrequencyEnum_hour =
    const AnalysisSeriesFrequencyEnum._('hour');
const AnalysisSeriesFrequencyEnum _$analysisSeriesFrequencyEnum_day =
    const AnalysisSeriesFrequencyEnum._('day');
const AnalysisSeriesFrequencyEnum _$analysisSeriesFrequencyEnum_week =
    const AnalysisSeriesFrequencyEnum._('week');
const AnalysisSeriesFrequencyEnum
_$analysisSeriesFrequencyEnum_unknownDefaultOpenApi =
    const AnalysisSeriesFrequencyEnum._('unknownDefaultOpenApi');

AnalysisSeriesFrequencyEnum _$analysisSeriesFrequencyEnumValueOf(String name) {
  switch (name) {
    case 'hour':
      return _$analysisSeriesFrequencyEnum_hour;
    case 'day':
      return _$analysisSeriesFrequencyEnum_day;
    case 'week':
      return _$analysisSeriesFrequencyEnum_week;
    case 'unknownDefaultOpenApi':
      return _$analysisSeriesFrequencyEnum_unknownDefaultOpenApi;
    default:
      return _$analysisSeriesFrequencyEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AnalysisSeriesFrequencyEnum>
_$analysisSeriesFrequencyEnumValues =
    BuiltSet<AnalysisSeriesFrequencyEnum>(const <AnalysisSeriesFrequencyEnum>[
      _$analysisSeriesFrequencyEnum_hour,
      _$analysisSeriesFrequencyEnum_day,
      _$analysisSeriesFrequencyEnum_week,
      _$analysisSeriesFrequencyEnum_unknownDefaultOpenApi,
    ]);

const AnalysisSeriesOriginEnum _$analysisSeriesOriginEnum_auto =
    const AnalysisSeriesOriginEnum._('auto');
const AnalysisSeriesOriginEnum _$analysisSeriesOriginEnum_operator_ =
    const AnalysisSeriesOriginEnum._('operator_');
const AnalysisSeriesOriginEnum
_$analysisSeriesOriginEnum_unknownDefaultOpenApi =
    const AnalysisSeriesOriginEnum._('unknownDefaultOpenApi');

AnalysisSeriesOriginEnum _$analysisSeriesOriginEnumValueOf(String name) {
  switch (name) {
    case 'auto':
      return _$analysisSeriesOriginEnum_auto;
    case 'operator_':
      return _$analysisSeriesOriginEnum_operator_;
    case 'unknownDefaultOpenApi':
      return _$analysisSeriesOriginEnum_unknownDefaultOpenApi;
    default:
      return _$analysisSeriesOriginEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AnalysisSeriesOriginEnum> _$analysisSeriesOriginEnumValues =
    BuiltSet<AnalysisSeriesOriginEnum>(const <AnalysisSeriesOriginEnum>[
      _$analysisSeriesOriginEnum_auto,
      _$analysisSeriesOriginEnum_operator_,
      _$analysisSeriesOriginEnum_unknownDefaultOpenApi,
    ]);

Serializer<AnalysisSeriesDetectorsEnum>
_$analysisSeriesDetectorsEnumSerializer =
    _$AnalysisSeriesDetectorsEnumSerializer();
Serializer<AnalysisSeriesFrequencyEnum>
_$analysisSeriesFrequencyEnumSerializer =
    _$AnalysisSeriesFrequencyEnumSerializer();
Serializer<AnalysisSeriesOriginEnum> _$analysisSeriesOriginEnumSerializer =
    _$AnalysisSeriesOriginEnumSerializer();

class _$AnalysisSeriesDetectorsEnumSerializer
    implements PrimitiveSerializer<AnalysisSeriesDetectorsEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'changepointCusum': 'changepoint-cusum',
    'changepointBocpd': 'changepoint-bocpd',
    'forecast': 'forecast',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'changepoint-cusum': 'changepointCusum',
    'changepoint-bocpd': 'changepointBocpd',
    'forecast': 'forecast',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AnalysisSeriesDetectorsEnum];
  @override
  final String wireName = 'AnalysisSeriesDetectorsEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnalysisSeriesDetectorsEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnalysisSeriesDetectorsEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnalysisSeriesDetectorsEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnalysisSeriesFrequencyEnumSerializer
    implements PrimitiveSerializer<AnalysisSeriesFrequencyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'hour': 'hour',
    'day': 'day',
    'week': 'week',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'hour': 'hour',
    'day': 'day',
    'week': 'week',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AnalysisSeriesFrequencyEnum];
  @override
  final String wireName = 'AnalysisSeriesFrequencyEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnalysisSeriesFrequencyEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnalysisSeriesFrequencyEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnalysisSeriesFrequencyEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnalysisSeriesOriginEnumSerializer
    implements PrimitiveSerializer<AnalysisSeriesOriginEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'auto': 'auto',
    'operator_': 'operator',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'auto': 'auto',
    'operator': 'operator_',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AnalysisSeriesOriginEnum];
  @override
  final String wireName = 'AnalysisSeriesOriginEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnalysisSeriesOriginEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnalysisSeriesOriginEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnalysisSeriesOriginEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnalysisSeries extends AnalysisSeries {
  @override
  final String ref;
  @override
  final bool enabled;
  @override
  final BuiltList<AnalysisSeriesDetectorsEnum> detectors;
  @override
  final AnalysisSeriesFrequencyEnum frequency;
  @override
  final String? family;
  @override
  final String? regionCode;
  @override
  final BuiltList<WatchPair>? watchPairs;
  @override
  final AnalysisSeriesOriginEnum origin;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? lastRunAt;
  @override
  final String? lastError;

  factory _$AnalysisSeries([void Function(AnalysisSeriesBuilder)? updates]) =>
      (AnalysisSeriesBuilder()..update(updates))._build();

  _$AnalysisSeries._({
    required this.ref,
    required this.enabled,
    required this.detectors,
    required this.frequency,
    this.family,
    this.regionCode,
    this.watchPairs,
    required this.origin,
    this.createdAt,
    this.lastRunAt,
    this.lastError,
  }) : super._();
  @override
  AnalysisSeries rebuild(void Function(AnalysisSeriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalysisSeriesBuilder toBuilder() => AnalysisSeriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalysisSeries &&
        ref == other.ref &&
        enabled == other.enabled &&
        detectors == other.detectors &&
        frequency == other.frequency &&
        family == other.family &&
        regionCode == other.regionCode &&
        watchPairs == other.watchPairs &&
        origin == other.origin &&
        createdAt == other.createdAt &&
        lastRunAt == other.lastRunAt &&
        lastError == other.lastError;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, detectors.hashCode);
    _$hash = $jc(_$hash, frequency.hashCode);
    _$hash = $jc(_$hash, family.hashCode);
    _$hash = $jc(_$hash, regionCode.hashCode);
    _$hash = $jc(_$hash, watchPairs.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, lastRunAt.hashCode);
    _$hash = $jc(_$hash, lastError.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalysisSeries')
          ..add('ref', ref)
          ..add('enabled', enabled)
          ..add('detectors', detectors)
          ..add('frequency', frequency)
          ..add('family', family)
          ..add('regionCode', regionCode)
          ..add('watchPairs', watchPairs)
          ..add('origin', origin)
          ..add('createdAt', createdAt)
          ..add('lastRunAt', lastRunAt)
          ..add('lastError', lastError))
        .toString();
  }
}

class AnalysisSeriesBuilder
    implements Builder<AnalysisSeries, AnalysisSeriesBuilder> {
  _$AnalysisSeries? _$v;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  ListBuilder<AnalysisSeriesDetectorsEnum>? _detectors;
  ListBuilder<AnalysisSeriesDetectorsEnum> get detectors =>
      _$this._detectors ??= ListBuilder<AnalysisSeriesDetectorsEnum>();
  set detectors(ListBuilder<AnalysisSeriesDetectorsEnum>? detectors) =>
      _$this._detectors = detectors;

  AnalysisSeriesFrequencyEnum? _frequency;
  AnalysisSeriesFrequencyEnum? get frequency => _$this._frequency;
  set frequency(AnalysisSeriesFrequencyEnum? frequency) =>
      _$this._frequency = frequency;

  String? _family;
  String? get family => _$this._family;
  set family(String? family) => _$this._family = family;

  String? _regionCode;
  String? get regionCode => _$this._regionCode;
  set regionCode(String? regionCode) => _$this._regionCode = regionCode;

  ListBuilder<WatchPair>? _watchPairs;
  ListBuilder<WatchPair> get watchPairs =>
      _$this._watchPairs ??= ListBuilder<WatchPair>();
  set watchPairs(ListBuilder<WatchPair>? watchPairs) =>
      _$this._watchPairs = watchPairs;

  AnalysisSeriesOriginEnum? _origin;
  AnalysisSeriesOriginEnum? get origin => _$this._origin;
  set origin(AnalysisSeriesOriginEnum? origin) => _$this._origin = origin;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _lastRunAt;
  DateTime? get lastRunAt => _$this._lastRunAt;
  set lastRunAt(DateTime? lastRunAt) => _$this._lastRunAt = lastRunAt;

  String? _lastError;
  String? get lastError => _$this._lastError;
  set lastError(String? lastError) => _$this._lastError = lastError;

  AnalysisSeriesBuilder() {
    AnalysisSeries._defaults(this);
  }

  AnalysisSeriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ref = $v.ref;
      _enabled = $v.enabled;
      _detectors = $v.detectors.toBuilder();
      _frequency = $v.frequency;
      _family = $v.family;
      _regionCode = $v.regionCode;
      _watchPairs = $v.watchPairs?.toBuilder();
      _origin = $v.origin;
      _createdAt = $v.createdAt;
      _lastRunAt = $v.lastRunAt;
      _lastError = $v.lastError;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalysisSeries other) {
    _$v = other as _$AnalysisSeries;
  }

  @override
  void update(void Function(AnalysisSeriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalysisSeries build() => _build();

  _$AnalysisSeries _build() {
    _$AnalysisSeries _$result;
    try {
      _$result =
          _$v ??
          _$AnalysisSeries._(
            ref: BuiltValueNullFieldError.checkNotNull(
              ref,
              r'AnalysisSeries',
              'ref',
            ),
            enabled: BuiltValueNullFieldError.checkNotNull(
              enabled,
              r'AnalysisSeries',
              'enabled',
            ),
            detectors: detectors.build(),
            frequency: BuiltValueNullFieldError.checkNotNull(
              frequency,
              r'AnalysisSeries',
              'frequency',
            ),
            family: family,
            regionCode: regionCode,
            watchPairs: _watchPairs?.build(),
            origin: BuiltValueNullFieldError.checkNotNull(
              origin,
              r'AnalysisSeries',
              'origin',
            ),
            createdAt: createdAt,
            lastRunAt: lastRunAt,
            lastError: lastError,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'detectors';
        detectors.build();

        _$failedField = 'watchPairs';
        _watchPairs?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AnalysisSeries',
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
