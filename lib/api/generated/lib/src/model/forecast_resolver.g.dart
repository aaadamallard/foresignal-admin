// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_resolver.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ForecastResolverTypeEnum _$forecastResolverTypeEnum_eventExists =
    const ForecastResolverTypeEnum._('eventExists');
const ForecastResolverTypeEnum _$forecastResolverTypeEnum_countThreshold =
    const ForecastResolverTypeEnum._('countThreshold');
const ForecastResolverTypeEnum _$forecastResolverTypeEnum_seriesValue =
    const ForecastResolverTypeEnum._('seriesValue');
const ForecastResolverTypeEnum _$forecastResolverTypeEnum_alertFired =
    const ForecastResolverTypeEnum._('alertFired');
const ForecastResolverTypeEnum _$forecastResolverTypeEnum_situationStatus =
    const ForecastResolverTypeEnum._('situationStatus');
const ForecastResolverTypeEnum _$forecastResolverTypeEnum_hypothesisOutcome =
    const ForecastResolverTypeEnum._('hypothesisOutcome');
const ForecastResolverTypeEnum _$forecastResolverTypeEnum_manual =
    const ForecastResolverTypeEnum._('manual');

ForecastResolverTypeEnum _$forecastResolverTypeEnumValueOf(String name) {
  switch (name) {
    case 'eventExists':
      return _$forecastResolverTypeEnum_eventExists;
    case 'countThreshold':
      return _$forecastResolverTypeEnum_countThreshold;
    case 'seriesValue':
      return _$forecastResolverTypeEnum_seriesValue;
    case 'alertFired':
      return _$forecastResolverTypeEnum_alertFired;
    case 'situationStatus':
      return _$forecastResolverTypeEnum_situationStatus;
    case 'hypothesisOutcome':
      return _$forecastResolverTypeEnum_hypothesisOutcome;
    case 'manual':
      return _$forecastResolverTypeEnum_manual;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ForecastResolverTypeEnum> _$forecastResolverTypeEnumValues =
    BuiltSet<ForecastResolverTypeEnum>(const <ForecastResolverTypeEnum>[
  _$forecastResolverTypeEnum_eventExists,
  _$forecastResolverTypeEnum_countThreshold,
  _$forecastResolverTypeEnum_seriesValue,
  _$forecastResolverTypeEnum_alertFired,
  _$forecastResolverTypeEnum_situationStatus,
  _$forecastResolverTypeEnum_hypothesisOutcome,
  _$forecastResolverTypeEnum_manual,
]);

const ForecastResolverOpEnum _$forecastResolverOpEnum_gt =
    const ForecastResolverOpEnum._('gt');
const ForecastResolverOpEnum _$forecastResolverOpEnum_gte =
    const ForecastResolverOpEnum._('gte');
const ForecastResolverOpEnum _$forecastResolverOpEnum_lt =
    const ForecastResolverOpEnum._('lt');
const ForecastResolverOpEnum _$forecastResolverOpEnum_lte =
    const ForecastResolverOpEnum._('lte');
const ForecastResolverOpEnum _$forecastResolverOpEnum_eq =
    const ForecastResolverOpEnum._('eq');

ForecastResolverOpEnum _$forecastResolverOpEnumValueOf(String name) {
  switch (name) {
    case 'gt':
      return _$forecastResolverOpEnum_gt;
    case 'gte':
      return _$forecastResolverOpEnum_gte;
    case 'lt':
      return _$forecastResolverOpEnum_lt;
    case 'lte':
      return _$forecastResolverOpEnum_lte;
    case 'eq':
      return _$forecastResolverOpEnum_eq;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ForecastResolverOpEnum> _$forecastResolverOpEnumValues =
    BuiltSet<ForecastResolverOpEnum>(const <ForecastResolverOpEnum>[
  _$forecastResolverOpEnum_gt,
  _$forecastResolverOpEnum_gte,
  _$forecastResolverOpEnum_lt,
  _$forecastResolverOpEnum_lte,
  _$forecastResolverOpEnum_eq,
]);

const ForecastResolverAggregateEnum _$forecastResolverAggregateEnum_last =
    const ForecastResolverAggregateEnum._('last');
const ForecastResolverAggregateEnum _$forecastResolverAggregateEnum_mean =
    const ForecastResolverAggregateEnum._('mean');
const ForecastResolverAggregateEnum _$forecastResolverAggregateEnum_max =
    const ForecastResolverAggregateEnum._('max');
const ForecastResolverAggregateEnum _$forecastResolverAggregateEnum_sum =
    const ForecastResolverAggregateEnum._('sum');

ForecastResolverAggregateEnum _$forecastResolverAggregateEnumValueOf(
    String name) {
  switch (name) {
    case 'last':
      return _$forecastResolverAggregateEnum_last;
    case 'mean':
      return _$forecastResolverAggregateEnum_mean;
    case 'max':
      return _$forecastResolverAggregateEnum_max;
    case 'sum':
      return _$forecastResolverAggregateEnum_sum;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ForecastResolverAggregateEnum>
    _$forecastResolverAggregateEnumValues = BuiltSet<
        ForecastResolverAggregateEnum>(const <ForecastResolverAggregateEnum>[
  _$forecastResolverAggregateEnum_last,
  _$forecastResolverAggregateEnum_mean,
  _$forecastResolverAggregateEnum_max,
  _$forecastResolverAggregateEnum_sum,
]);

Serializer<ForecastResolverTypeEnum> _$forecastResolverTypeEnumSerializer =
    _$ForecastResolverTypeEnumSerializer();
Serializer<ForecastResolverOpEnum> _$forecastResolverOpEnumSerializer =
    _$ForecastResolverOpEnumSerializer();
Serializer<ForecastResolverAggregateEnum>
    _$forecastResolverAggregateEnumSerializer =
    _$ForecastResolverAggregateEnumSerializer();

class _$ForecastResolverTypeEnumSerializer
    implements PrimitiveSerializer<ForecastResolverTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'eventExists': 'event-exists',
    'countThreshold': 'count-threshold',
    'seriesValue': 'series-value',
    'alertFired': 'alert-fired',
    'situationStatus': 'situation-status',
    'hypothesisOutcome': 'hypothesis-outcome',
    'manual': 'manual',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'event-exists': 'eventExists',
    'count-threshold': 'countThreshold',
    'series-value': 'seriesValue',
    'alert-fired': 'alertFired',
    'situation-status': 'situationStatus',
    'hypothesis-outcome': 'hypothesisOutcome',
    'manual': 'manual',
  };

  @override
  final Iterable<Type> types = const <Type>[ForecastResolverTypeEnum];
  @override
  final String wireName = 'ForecastResolverTypeEnum';

  @override
  Object serialize(Serializers serializers, ForecastResolverTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ForecastResolverTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ForecastResolverTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ForecastResolverOpEnumSerializer
    implements PrimitiveSerializer<ForecastResolverOpEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'gt': 'gt',
    'gte': 'gte',
    'lt': 'lt',
    'lte': 'lte',
    'eq': 'eq',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'gt': 'gt',
    'gte': 'gte',
    'lt': 'lt',
    'lte': 'lte',
    'eq': 'eq',
  };

  @override
  final Iterable<Type> types = const <Type>[ForecastResolverOpEnum];
  @override
  final String wireName = 'ForecastResolverOpEnum';

  @override
  Object serialize(Serializers serializers, ForecastResolverOpEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ForecastResolverOpEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ForecastResolverOpEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ForecastResolverAggregateEnumSerializer
    implements PrimitiveSerializer<ForecastResolverAggregateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'last': 'last',
    'mean': 'mean',
    'max': 'max',
    'sum': 'sum',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'last': 'last',
    'mean': 'mean',
    'max': 'max',
    'sum': 'sum',
  };

  @override
  final Iterable<Type> types = const <Type>[ForecastResolverAggregateEnum];
  @override
  final String wireName = 'ForecastResolverAggregateEnum';

  @override
  Object serialize(
          Serializers serializers, ForecastResolverAggregateEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ForecastResolverAggregateEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ForecastResolverAggregateEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ForecastResolver extends ForecastResolver {
  @override
  final ForecastResolverTypeEnum type;
  @override
  final EventSelector? selector;
  @override
  final ResolverArea? area;
  @override
  final TimeRange? window;
  @override
  final ForecastResolverOpEnum? op;
  @override
  final num? threshold;
  @override
  final String? ref;
  @override
  final String? period;
  @override
  final ForecastResolverAggregateEnum? aggregate;
  @override
  final String? ruleId;
  @override
  final String? situationId;
  @override
  final SituationStatus? status;
  @override
  final Severity? minSeverity;
  @override
  final String? setId;
  @override
  final String? version;

  factory _$ForecastResolver(
          [void Function(ForecastResolverBuilder)? updates]) =>
      (ForecastResolverBuilder()..update(updates))._build();

  _$ForecastResolver._(
      {required this.type,
      this.selector,
      this.area,
      this.window,
      this.op,
      this.threshold,
      this.ref,
      this.period,
      this.aggregate,
      this.ruleId,
      this.situationId,
      this.status,
      this.minSeverity,
      this.setId,
      this.version})
      : super._();
  @override
  ForecastResolver rebuild(void Function(ForecastResolverBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastResolverBuilder toBuilder() =>
      ForecastResolverBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastResolver &&
        type == other.type &&
        selector == other.selector &&
        area == other.area &&
        window == other.window &&
        op == other.op &&
        threshold == other.threshold &&
        ref == other.ref &&
        period == other.period &&
        aggregate == other.aggregate &&
        ruleId == other.ruleId &&
        situationId == other.situationId &&
        status == other.status &&
        minSeverity == other.minSeverity &&
        setId == other.setId &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, selector.hashCode);
    _$hash = $jc(_$hash, area.hashCode);
    _$hash = $jc(_$hash, window.hashCode);
    _$hash = $jc(_$hash, op.hashCode);
    _$hash = $jc(_$hash, threshold.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jc(_$hash, aggregate.hashCode);
    _$hash = $jc(_$hash, ruleId.hashCode);
    _$hash = $jc(_$hash, situationId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, minSeverity.hashCode);
    _$hash = $jc(_$hash, setId.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecastResolver')
          ..add('type', type)
          ..add('selector', selector)
          ..add('area', area)
          ..add('window', window)
          ..add('op', op)
          ..add('threshold', threshold)
          ..add('ref', ref)
          ..add('period', period)
          ..add('aggregate', aggregate)
          ..add('ruleId', ruleId)
          ..add('situationId', situationId)
          ..add('status', status)
          ..add('minSeverity', minSeverity)
          ..add('setId', setId)
          ..add('version', version))
        .toString();
  }
}

class ForecastResolverBuilder
    implements Builder<ForecastResolver, ForecastResolverBuilder> {
  _$ForecastResolver? _$v;

  ForecastResolverTypeEnum? _type;
  ForecastResolverTypeEnum? get type => _$this._type;
  set type(ForecastResolverTypeEnum? type) => _$this._type = type;

  EventSelectorBuilder? _selector;
  EventSelectorBuilder get selector =>
      _$this._selector ??= EventSelectorBuilder();
  set selector(EventSelectorBuilder? selector) => _$this._selector = selector;

  ResolverAreaBuilder? _area;
  ResolverAreaBuilder get area => _$this._area ??= ResolverAreaBuilder();
  set area(ResolverAreaBuilder? area) => _$this._area = area;

  TimeRangeBuilder? _window;
  TimeRangeBuilder get window => _$this._window ??= TimeRangeBuilder();
  set window(TimeRangeBuilder? window) => _$this._window = window;

  ForecastResolverOpEnum? _op;
  ForecastResolverOpEnum? get op => _$this._op;
  set op(ForecastResolverOpEnum? op) => _$this._op = op;

  num? _threshold;
  num? get threshold => _$this._threshold;
  set threshold(num? threshold) => _$this._threshold = threshold;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _period;
  String? get period => _$this._period;
  set period(String? period) => _$this._period = period;

  ForecastResolverAggregateEnum? _aggregate;
  ForecastResolverAggregateEnum? get aggregate => _$this._aggregate;
  set aggregate(ForecastResolverAggregateEnum? aggregate) =>
      _$this._aggregate = aggregate;

  String? _ruleId;
  String? get ruleId => _$this._ruleId;
  set ruleId(String? ruleId) => _$this._ruleId = ruleId;

  String? _situationId;
  String? get situationId => _$this._situationId;
  set situationId(String? situationId) => _$this._situationId = situationId;

  SituationStatus? _status;
  SituationStatus? get status => _$this._status;
  set status(SituationStatus? status) => _$this._status = status;

  Severity? _minSeverity;
  Severity? get minSeverity => _$this._minSeverity;
  set minSeverity(Severity? minSeverity) => _$this._minSeverity = minSeverity;

  String? _setId;
  String? get setId => _$this._setId;
  set setId(String? setId) => _$this._setId = setId;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  ForecastResolverBuilder() {
    ForecastResolver._defaults(this);
  }

  ForecastResolverBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _selector = $v.selector?.toBuilder();
      _area = $v.area?.toBuilder();
      _window = $v.window?.toBuilder();
      _op = $v.op;
      _threshold = $v.threshold;
      _ref = $v.ref;
      _period = $v.period;
      _aggregate = $v.aggregate;
      _ruleId = $v.ruleId;
      _situationId = $v.situationId;
      _status = $v.status;
      _minSeverity = $v.minSeverity;
      _setId = $v.setId;
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastResolver other) {
    _$v = other as _$ForecastResolver;
  }

  @override
  void update(void Function(ForecastResolverBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastResolver build() => _build();

  _$ForecastResolver _build() {
    _$ForecastResolver _$result;
    try {
      _$result = _$v ??
          _$ForecastResolver._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'ForecastResolver', 'type'),
            selector: _selector?.build(),
            area: _area?.build(),
            window: _window?.build(),
            op: op,
            threshold: threshold,
            ref: ref,
            period: period,
            aggregate: aggregate,
            ruleId: ruleId,
            situationId: situationId,
            status: status,
            minSeverity: minSeverity,
            setId: setId,
            version: version,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'selector';
        _selector?.build();
        _$failedField = 'area';
        _area?.build();
        _$failedField = 'window';
        _window?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ForecastResolver', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
