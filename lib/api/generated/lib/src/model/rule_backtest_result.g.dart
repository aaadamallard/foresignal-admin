// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_backtest_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RuleBacktestResultRuleTypeEnum _$ruleBacktestResultRuleTypeEnum_record =
    const RuleBacktestResultRuleTypeEnum._('record');
const RuleBacktestResultRuleTypeEnum _$ruleBacktestResultRuleTypeEnum_count =
    const RuleBacktestResultRuleTypeEnum._('count');
const RuleBacktestResultRuleTypeEnum _$ruleBacktestResultRuleTypeEnum_absence =
    const RuleBacktestResultRuleTypeEnum._('absence');
const RuleBacktestResultRuleTypeEnum _$ruleBacktestResultRuleTypeEnum_anomaly =
    const RuleBacktestResultRuleTypeEnum._('anomaly');

RuleBacktestResultRuleTypeEnum _$ruleBacktestResultRuleTypeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'record':
      return _$ruleBacktestResultRuleTypeEnum_record;
    case 'count':
      return _$ruleBacktestResultRuleTypeEnum_count;
    case 'absence':
      return _$ruleBacktestResultRuleTypeEnum_absence;
    case 'anomaly':
      return _$ruleBacktestResultRuleTypeEnum_anomaly;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RuleBacktestResultRuleTypeEnum>
_$ruleBacktestResultRuleTypeEnumValues =
    BuiltSet<RuleBacktestResultRuleTypeEnum>(
      const <RuleBacktestResultRuleTypeEnum>[
        _$ruleBacktestResultRuleTypeEnum_record,
        _$ruleBacktestResultRuleTypeEnum_count,
        _$ruleBacktestResultRuleTypeEnum_absence,
        _$ruleBacktestResultRuleTypeEnum_anomaly,
      ],
    );

Serializer<RuleBacktestResultRuleTypeEnum>
_$ruleBacktestResultRuleTypeEnumSerializer =
    _$RuleBacktestResultRuleTypeEnumSerializer();

class _$RuleBacktestResultRuleTypeEnumSerializer
    implements PrimitiveSerializer<RuleBacktestResultRuleTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'record': 'record',
    'count': 'count',
    'absence': 'absence',
    'anomaly': 'anomaly',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'record': 'record',
    'count': 'count',
    'absence': 'absence',
    'anomaly': 'anomaly',
  };

  @override
  final Iterable<Type> types = const <Type>[RuleBacktestResultRuleTypeEnum];
  @override
  final String wireName = 'RuleBacktestResultRuleTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    RuleBacktestResultRuleTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RuleBacktestResultRuleTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RuleBacktestResultRuleTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RuleBacktestResult extends RuleBacktestResult {
  @override
  final RuleBacktestResultRuleTypeEnum ruleType;
  @override
  final int wouldFire;
  @override
  final BuiltList<RuleBacktestResultPerDayInner>? perDay;
  @override
  final BuiltList<RuleBacktestResultTopEntitiesInner>? topEntities;
  @override
  final BuiltList<RuleBacktestResultSamplesInner>? samples;
  @override
  final RuleBacktestResultActual? actual;
  @override
  final RuleBacktestResultOverlap? overlap;
  @override
  final RuleBacktestResultWindow? window;
  @override
  final RuleBacktestResultAnomaly? anomaly;
  @override
  final BuiltList<RuleBacktestResultVariantsInner>? variants;

  factory _$RuleBacktestResult([
    void Function(RuleBacktestResultBuilder)? updates,
  ]) => (RuleBacktestResultBuilder()..update(updates))._build();

  _$RuleBacktestResult._({
    required this.ruleType,
    required this.wouldFire,
    this.perDay,
    this.topEntities,
    this.samples,
    this.actual,
    this.overlap,
    this.window,
    this.anomaly,
    this.variants,
  }) : super._();
  @override
  RuleBacktestResult rebuild(
    void Function(RuleBacktestResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RuleBacktestResultBuilder toBuilder() =>
      RuleBacktestResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleBacktestResult &&
        ruleType == other.ruleType &&
        wouldFire == other.wouldFire &&
        perDay == other.perDay &&
        topEntities == other.topEntities &&
        samples == other.samples &&
        actual == other.actual &&
        overlap == other.overlap &&
        window == other.window &&
        anomaly == other.anomaly &&
        variants == other.variants;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ruleType.hashCode);
    _$hash = $jc(_$hash, wouldFire.hashCode);
    _$hash = $jc(_$hash, perDay.hashCode);
    _$hash = $jc(_$hash, topEntities.hashCode);
    _$hash = $jc(_$hash, samples.hashCode);
    _$hash = $jc(_$hash, actual.hashCode);
    _$hash = $jc(_$hash, overlap.hashCode);
    _$hash = $jc(_$hash, window.hashCode);
    _$hash = $jc(_$hash, anomaly.hashCode);
    _$hash = $jc(_$hash, variants.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RuleBacktestResult')
          ..add('ruleType', ruleType)
          ..add('wouldFire', wouldFire)
          ..add('perDay', perDay)
          ..add('topEntities', topEntities)
          ..add('samples', samples)
          ..add('actual', actual)
          ..add('overlap', overlap)
          ..add('window', window)
          ..add('anomaly', anomaly)
          ..add('variants', variants))
        .toString();
  }
}

class RuleBacktestResultBuilder
    implements Builder<RuleBacktestResult, RuleBacktestResultBuilder> {
  _$RuleBacktestResult? _$v;

  RuleBacktestResultRuleTypeEnum? _ruleType;
  RuleBacktestResultRuleTypeEnum? get ruleType => _$this._ruleType;
  set ruleType(RuleBacktestResultRuleTypeEnum? ruleType) =>
      _$this._ruleType = ruleType;

  int? _wouldFire;
  int? get wouldFire => _$this._wouldFire;
  set wouldFire(int? wouldFire) => _$this._wouldFire = wouldFire;

  ListBuilder<RuleBacktestResultPerDayInner>? _perDay;
  ListBuilder<RuleBacktestResultPerDayInner> get perDay =>
      _$this._perDay ??= ListBuilder<RuleBacktestResultPerDayInner>();
  set perDay(ListBuilder<RuleBacktestResultPerDayInner>? perDay) =>
      _$this._perDay = perDay;

  ListBuilder<RuleBacktestResultTopEntitiesInner>? _topEntities;
  ListBuilder<RuleBacktestResultTopEntitiesInner> get topEntities =>
      _$this._topEntities ??= ListBuilder<RuleBacktestResultTopEntitiesInner>();
  set topEntities(
    ListBuilder<RuleBacktestResultTopEntitiesInner>? topEntities,
  ) => _$this._topEntities = topEntities;

  ListBuilder<RuleBacktestResultSamplesInner>? _samples;
  ListBuilder<RuleBacktestResultSamplesInner> get samples =>
      _$this._samples ??= ListBuilder<RuleBacktestResultSamplesInner>();
  set samples(ListBuilder<RuleBacktestResultSamplesInner>? samples) =>
      _$this._samples = samples;

  RuleBacktestResultActualBuilder? _actual;
  RuleBacktestResultActualBuilder get actual =>
      _$this._actual ??= RuleBacktestResultActualBuilder();
  set actual(RuleBacktestResultActualBuilder? actual) =>
      _$this._actual = actual;

  RuleBacktestResultOverlapBuilder? _overlap;
  RuleBacktestResultOverlapBuilder get overlap =>
      _$this._overlap ??= RuleBacktestResultOverlapBuilder();
  set overlap(RuleBacktestResultOverlapBuilder? overlap) =>
      _$this._overlap = overlap;

  RuleBacktestResultWindowBuilder? _window;
  RuleBacktestResultWindowBuilder get window =>
      _$this._window ??= RuleBacktestResultWindowBuilder();
  set window(RuleBacktestResultWindowBuilder? window) =>
      _$this._window = window;

  RuleBacktestResultAnomalyBuilder? _anomaly;
  RuleBacktestResultAnomalyBuilder get anomaly =>
      _$this._anomaly ??= RuleBacktestResultAnomalyBuilder();
  set anomaly(RuleBacktestResultAnomalyBuilder? anomaly) =>
      _$this._anomaly = anomaly;

  ListBuilder<RuleBacktestResultVariantsInner>? _variants;
  ListBuilder<RuleBacktestResultVariantsInner> get variants =>
      _$this._variants ??= ListBuilder<RuleBacktestResultVariantsInner>();
  set variants(ListBuilder<RuleBacktestResultVariantsInner>? variants) =>
      _$this._variants = variants;

  RuleBacktestResultBuilder() {
    RuleBacktestResult._defaults(this);
  }

  RuleBacktestResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ruleType = $v.ruleType;
      _wouldFire = $v.wouldFire;
      _perDay = $v.perDay?.toBuilder();
      _topEntities = $v.topEntities?.toBuilder();
      _samples = $v.samples?.toBuilder();
      _actual = $v.actual?.toBuilder();
      _overlap = $v.overlap?.toBuilder();
      _window = $v.window?.toBuilder();
      _anomaly = $v.anomaly?.toBuilder();
      _variants = $v.variants?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RuleBacktestResult other) {
    _$v = other as _$RuleBacktestResult;
  }

  @override
  void update(void Function(RuleBacktestResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RuleBacktestResult build() => _build();

  _$RuleBacktestResult _build() {
    _$RuleBacktestResult _$result;
    try {
      _$result =
          _$v ??
          _$RuleBacktestResult._(
            ruleType: BuiltValueNullFieldError.checkNotNull(
              ruleType,
              r'RuleBacktestResult',
              'ruleType',
            ),
            wouldFire: BuiltValueNullFieldError.checkNotNull(
              wouldFire,
              r'RuleBacktestResult',
              'wouldFire',
            ),
            perDay: _perDay?.build(),
            topEntities: _topEntities?.build(),
            samples: _samples?.build(),
            actual: _actual?.build(),
            overlap: _overlap?.build(),
            window: _window?.build(),
            anomaly: _anomaly?.build(),
            variants: _variants?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'perDay';
        _perDay?.build();
        _$failedField = 'topEntities';
        _topEntities?.build();
        _$failedField = 'samples';
        _samples?.build();
        _$failedField = 'actual';
        _actual?.build();
        _$failedField = 'overlap';
        _overlap?.build();
        _$failedField = 'window';
        _window?.build();
        _$failedField = 'anomaly';
        _anomaly?.build();
        _$failedField = 'variants';
        _variants?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RuleBacktestResult',
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
