// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_series_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AnalysisSeriesInputDetectorsEnum
_$analysisSeriesInputDetectorsEnum_changepointCusum =
    const AnalysisSeriesInputDetectorsEnum._('changepointCusum');
const AnalysisSeriesInputDetectorsEnum
_$analysisSeriesInputDetectorsEnum_changepointBocpd =
    const AnalysisSeriesInputDetectorsEnum._('changepointBocpd');
const AnalysisSeriesInputDetectorsEnum
_$analysisSeriesInputDetectorsEnum_forecast =
    const AnalysisSeriesInputDetectorsEnum._('forecast');
const AnalysisSeriesInputDetectorsEnum
_$analysisSeriesInputDetectorsEnum_unknownDefaultOpenApi =
    const AnalysisSeriesInputDetectorsEnum._('unknownDefaultOpenApi');

AnalysisSeriesInputDetectorsEnum _$analysisSeriesInputDetectorsEnumValueOf(
  String name,
) {
  switch (name) {
    case 'changepointCusum':
      return _$analysisSeriesInputDetectorsEnum_changepointCusum;
    case 'changepointBocpd':
      return _$analysisSeriesInputDetectorsEnum_changepointBocpd;
    case 'forecast':
      return _$analysisSeriesInputDetectorsEnum_forecast;
    case 'unknownDefaultOpenApi':
      return _$analysisSeriesInputDetectorsEnum_unknownDefaultOpenApi;
    default:
      return _$analysisSeriesInputDetectorsEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AnalysisSeriesInputDetectorsEnum>
_$analysisSeriesInputDetectorsEnumValues =
    BuiltSet<AnalysisSeriesInputDetectorsEnum>(
      const <AnalysisSeriesInputDetectorsEnum>[
        _$analysisSeriesInputDetectorsEnum_changepointCusum,
        _$analysisSeriesInputDetectorsEnum_changepointBocpd,
        _$analysisSeriesInputDetectorsEnum_forecast,
        _$analysisSeriesInputDetectorsEnum_unknownDefaultOpenApi,
      ],
    );

const AnalysisSeriesInputFrequencyEnum _$analysisSeriesInputFrequencyEnum_hour =
    const AnalysisSeriesInputFrequencyEnum._('hour');
const AnalysisSeriesInputFrequencyEnum _$analysisSeriesInputFrequencyEnum_day =
    const AnalysisSeriesInputFrequencyEnum._('day');
const AnalysisSeriesInputFrequencyEnum _$analysisSeriesInputFrequencyEnum_week =
    const AnalysisSeriesInputFrequencyEnum._('week');
const AnalysisSeriesInputFrequencyEnum
_$analysisSeriesInputFrequencyEnum_unknownDefaultOpenApi =
    const AnalysisSeriesInputFrequencyEnum._('unknownDefaultOpenApi');

AnalysisSeriesInputFrequencyEnum _$analysisSeriesInputFrequencyEnumValueOf(
  String name,
) {
  switch (name) {
    case 'hour':
      return _$analysisSeriesInputFrequencyEnum_hour;
    case 'day':
      return _$analysisSeriesInputFrequencyEnum_day;
    case 'week':
      return _$analysisSeriesInputFrequencyEnum_week;
    case 'unknownDefaultOpenApi':
      return _$analysisSeriesInputFrequencyEnum_unknownDefaultOpenApi;
    default:
      return _$analysisSeriesInputFrequencyEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AnalysisSeriesInputFrequencyEnum>
_$analysisSeriesInputFrequencyEnumValues =
    BuiltSet<AnalysisSeriesInputFrequencyEnum>(
      const <AnalysisSeriesInputFrequencyEnum>[
        _$analysisSeriesInputFrequencyEnum_hour,
        _$analysisSeriesInputFrequencyEnum_day,
        _$analysisSeriesInputFrequencyEnum_week,
        _$analysisSeriesInputFrequencyEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<AnalysisSeriesInputDetectorsEnum>
_$analysisSeriesInputDetectorsEnumSerializer =
    _$AnalysisSeriesInputDetectorsEnumSerializer();
Serializer<AnalysisSeriesInputFrequencyEnum>
_$analysisSeriesInputFrequencyEnumSerializer =
    _$AnalysisSeriesInputFrequencyEnumSerializer();

class _$AnalysisSeriesInputDetectorsEnumSerializer
    implements PrimitiveSerializer<AnalysisSeriesInputDetectorsEnum> {
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
  final Iterable<Type> types = const <Type>[AnalysisSeriesInputDetectorsEnum];
  @override
  final String wireName = 'AnalysisSeriesInputDetectorsEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnalysisSeriesInputDetectorsEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnalysisSeriesInputDetectorsEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnalysisSeriesInputDetectorsEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnalysisSeriesInputFrequencyEnumSerializer
    implements PrimitiveSerializer<AnalysisSeriesInputFrequencyEnum> {
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
  final Iterable<Type> types = const <Type>[AnalysisSeriesInputFrequencyEnum];
  @override
  final String wireName = 'AnalysisSeriesInputFrequencyEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnalysisSeriesInputFrequencyEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnalysisSeriesInputFrequencyEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnalysisSeriesInputFrequencyEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnalysisSeriesInput extends AnalysisSeriesInput {
  @override
  final String ref;
  @override
  final bool? enabled;
  @override
  final BuiltList<AnalysisSeriesInputDetectorsEnum>? detectors;
  @override
  final AnalysisSeriesInputFrequencyEnum? frequency;
  @override
  final String? family;
  @override
  final String? regionCode;
  @override
  final BuiltList<WatchPair>? watchPairs;

  factory _$AnalysisSeriesInput([
    void Function(AnalysisSeriesInputBuilder)? updates,
  ]) => (AnalysisSeriesInputBuilder()..update(updates))._build();

  _$AnalysisSeriesInput._({
    required this.ref,
    this.enabled,
    this.detectors,
    this.frequency,
    this.family,
    this.regionCode,
    this.watchPairs,
  }) : super._();
  @override
  AnalysisSeriesInput rebuild(
    void Function(AnalysisSeriesInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AnalysisSeriesInputBuilder toBuilder() =>
      AnalysisSeriesInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalysisSeriesInput &&
        ref == other.ref &&
        enabled == other.enabled &&
        detectors == other.detectors &&
        frequency == other.frequency &&
        family == other.family &&
        regionCode == other.regionCode &&
        watchPairs == other.watchPairs;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalysisSeriesInput')
          ..add('ref', ref)
          ..add('enabled', enabled)
          ..add('detectors', detectors)
          ..add('frequency', frequency)
          ..add('family', family)
          ..add('regionCode', regionCode)
          ..add('watchPairs', watchPairs))
        .toString();
  }
}

class AnalysisSeriesInputBuilder
    implements Builder<AnalysisSeriesInput, AnalysisSeriesInputBuilder> {
  _$AnalysisSeriesInput? _$v;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  ListBuilder<AnalysisSeriesInputDetectorsEnum>? _detectors;
  ListBuilder<AnalysisSeriesInputDetectorsEnum> get detectors =>
      _$this._detectors ??= ListBuilder<AnalysisSeriesInputDetectorsEnum>();
  set detectors(ListBuilder<AnalysisSeriesInputDetectorsEnum>? detectors) =>
      _$this._detectors = detectors;

  AnalysisSeriesInputFrequencyEnum? _frequency;
  AnalysisSeriesInputFrequencyEnum? get frequency => _$this._frequency;
  set frequency(AnalysisSeriesInputFrequencyEnum? frequency) =>
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

  AnalysisSeriesInputBuilder() {
    AnalysisSeriesInput._defaults(this);
  }

  AnalysisSeriesInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ref = $v.ref;
      _enabled = $v.enabled;
      _detectors = $v.detectors?.toBuilder();
      _frequency = $v.frequency;
      _family = $v.family;
      _regionCode = $v.regionCode;
      _watchPairs = $v.watchPairs?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalysisSeriesInput other) {
    _$v = other as _$AnalysisSeriesInput;
  }

  @override
  void update(void Function(AnalysisSeriesInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalysisSeriesInput build() => _build();

  _$AnalysisSeriesInput _build() {
    _$AnalysisSeriesInput _$result;
    try {
      _$result =
          _$v ??
          _$AnalysisSeriesInput._(
            ref: BuiltValueNullFieldError.checkNotNull(
              ref,
              r'AnalysisSeriesInput',
              'ref',
            ),
            enabled: enabled,
            detectors: _detectors?.build(),
            frequency: frequency,
            family: family,
            regionCode: regionCode,
            watchPairs: _watchPairs?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'detectors';
        _detectors?.build();

        _$failedField = 'watchPairs';
        _watchPairs?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AnalysisSeriesInput',
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
