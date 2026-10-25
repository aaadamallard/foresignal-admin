// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'benchmark_component_result_thresholds_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BenchmarkComponentResultThresholdsInnerComparatorEnum
_$benchmarkComponentResultThresholdsInnerComparatorEnum_le =
    const BenchmarkComponentResultThresholdsInnerComparatorEnum._('le');
const BenchmarkComponentResultThresholdsInnerComparatorEnum
_$benchmarkComponentResultThresholdsInnerComparatorEnum_ge =
    const BenchmarkComponentResultThresholdsInnerComparatorEnum._('ge');
const BenchmarkComponentResultThresholdsInnerComparatorEnum
_$benchmarkComponentResultThresholdsInnerComparatorEnum_eq =
    const BenchmarkComponentResultThresholdsInnerComparatorEnum._('eq');
const BenchmarkComponentResultThresholdsInnerComparatorEnum
_$benchmarkComponentResultThresholdsInnerComparatorEnum_within =
    const BenchmarkComponentResultThresholdsInnerComparatorEnum._('within');
const BenchmarkComponentResultThresholdsInnerComparatorEnum
_$benchmarkComponentResultThresholdsInnerComparatorEnum_unknownDefaultOpenApi =
    const BenchmarkComponentResultThresholdsInnerComparatorEnum._(
      'unknownDefaultOpenApi',
    );

BenchmarkComponentResultThresholdsInnerComparatorEnum
_$benchmarkComponentResultThresholdsInnerComparatorEnumValueOf(String name) {
  switch (name) {
    case 'le':
      return _$benchmarkComponentResultThresholdsInnerComparatorEnum_le;
    case 'ge':
      return _$benchmarkComponentResultThresholdsInnerComparatorEnum_ge;
    case 'eq':
      return _$benchmarkComponentResultThresholdsInnerComparatorEnum_eq;
    case 'within':
      return _$benchmarkComponentResultThresholdsInnerComparatorEnum_within;
    case 'unknownDefaultOpenApi':
      return _$benchmarkComponentResultThresholdsInnerComparatorEnum_unknownDefaultOpenApi;
    default:
      return _$benchmarkComponentResultThresholdsInnerComparatorEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<BenchmarkComponentResultThresholdsInnerComparatorEnum>
_$benchmarkComponentResultThresholdsInnerComparatorEnumValues =
    BuiltSet<BenchmarkComponentResultThresholdsInnerComparatorEnum>(const <
      BenchmarkComponentResultThresholdsInnerComparatorEnum
    >[
      _$benchmarkComponentResultThresholdsInnerComparatorEnum_le,
      _$benchmarkComponentResultThresholdsInnerComparatorEnum_ge,
      _$benchmarkComponentResultThresholdsInnerComparatorEnum_eq,
      _$benchmarkComponentResultThresholdsInnerComparatorEnum_within,
      _$benchmarkComponentResultThresholdsInnerComparatorEnum_unknownDefaultOpenApi,
    ]);

const BenchmarkComponentResultThresholdsInnerStatusEnum
_$benchmarkComponentResultThresholdsInnerStatusEnum_pass =
    const BenchmarkComponentResultThresholdsInnerStatusEnum._('pass');
const BenchmarkComponentResultThresholdsInnerStatusEnum
_$benchmarkComponentResultThresholdsInnerStatusEnum_warn =
    const BenchmarkComponentResultThresholdsInnerStatusEnum._('warn');
const BenchmarkComponentResultThresholdsInnerStatusEnum
_$benchmarkComponentResultThresholdsInnerStatusEnum_fail =
    const BenchmarkComponentResultThresholdsInnerStatusEnum._('fail');
const BenchmarkComponentResultThresholdsInnerStatusEnum
_$benchmarkComponentResultThresholdsInnerStatusEnum_unknownDefaultOpenApi =
    const BenchmarkComponentResultThresholdsInnerStatusEnum._(
      'unknownDefaultOpenApi',
    );

BenchmarkComponentResultThresholdsInnerStatusEnum
_$benchmarkComponentResultThresholdsInnerStatusEnumValueOf(String name) {
  switch (name) {
    case 'pass':
      return _$benchmarkComponentResultThresholdsInnerStatusEnum_pass;
    case 'warn':
      return _$benchmarkComponentResultThresholdsInnerStatusEnum_warn;
    case 'fail':
      return _$benchmarkComponentResultThresholdsInnerStatusEnum_fail;
    case 'unknownDefaultOpenApi':
      return _$benchmarkComponentResultThresholdsInnerStatusEnum_unknownDefaultOpenApi;
    default:
      return _$benchmarkComponentResultThresholdsInnerStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<BenchmarkComponentResultThresholdsInnerStatusEnum>
_$benchmarkComponentResultThresholdsInnerStatusEnumValues =
    BuiltSet<BenchmarkComponentResultThresholdsInnerStatusEnum>(const <
      BenchmarkComponentResultThresholdsInnerStatusEnum
    >[
      _$benchmarkComponentResultThresholdsInnerStatusEnum_pass,
      _$benchmarkComponentResultThresholdsInnerStatusEnum_warn,
      _$benchmarkComponentResultThresholdsInnerStatusEnum_fail,
      _$benchmarkComponentResultThresholdsInnerStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<BenchmarkComponentResultThresholdsInnerComparatorEnum>
_$benchmarkComponentResultThresholdsInnerComparatorEnumSerializer =
    _$BenchmarkComponentResultThresholdsInnerComparatorEnumSerializer();
Serializer<BenchmarkComponentResultThresholdsInnerStatusEnum>
_$benchmarkComponentResultThresholdsInnerStatusEnumSerializer =
    _$BenchmarkComponentResultThresholdsInnerStatusEnumSerializer();

class _$BenchmarkComponentResultThresholdsInnerComparatorEnumSerializer
    implements
        PrimitiveSerializer<
          BenchmarkComponentResultThresholdsInnerComparatorEnum
        > {
  static const Map<String, Object> _toWire = const <String, Object>{
    'le': 'le',
    'ge': 'ge',
    'eq': 'eq',
    'within': 'within',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'le': 'le',
    'ge': 'ge',
    'eq': 'eq',
    'within': 'within',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    BenchmarkComponentResultThresholdsInnerComparatorEnum,
  ];
  @override
  final String wireName =
      'BenchmarkComponentResultThresholdsInnerComparatorEnum';

  @override
  Object serialize(
    Serializers serializers,
    BenchmarkComponentResultThresholdsInnerComparatorEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BenchmarkComponentResultThresholdsInnerComparatorEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BenchmarkComponentResultThresholdsInnerComparatorEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$BenchmarkComponentResultThresholdsInnerStatusEnumSerializer
    implements
        PrimitiveSerializer<BenchmarkComponentResultThresholdsInnerStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pass': 'pass',
    'warn': 'warn',
    'fail': 'fail',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pass': 'pass',
    'warn': 'warn',
    'fail': 'fail',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    BenchmarkComponentResultThresholdsInnerStatusEnum,
  ];
  @override
  final String wireName = 'BenchmarkComponentResultThresholdsInnerStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    BenchmarkComponentResultThresholdsInnerStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BenchmarkComponentResultThresholdsInnerStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BenchmarkComponentResultThresholdsInnerStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$BenchmarkComponentResultThresholdsInner
    extends BenchmarkComponentResultThresholdsInner {
  @override
  final String metric;
  @override
  final BenchmarkComponentResultThresholdsInnerComparatorEnum comparator;
  @override
  final num threshold;
  @override
  final num? observed;
  @override
  final BenchmarkComponentResultThresholdsInnerStatusEnum status;
  @override
  final num? warn;
  @override
  final String? scenario;
  @override
  final String? note;

  factory _$BenchmarkComponentResultThresholdsInner([
    void Function(BenchmarkComponentResultThresholdsInnerBuilder)? updates,
  ]) => (BenchmarkComponentResultThresholdsInnerBuilder()..update(updates))
      ._build();

  _$BenchmarkComponentResultThresholdsInner._({
    required this.metric,
    required this.comparator,
    required this.threshold,
    this.observed,
    required this.status,
    this.warn,
    this.scenario,
    this.note,
  }) : super._();
  @override
  BenchmarkComponentResultThresholdsInner rebuild(
    void Function(BenchmarkComponentResultThresholdsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BenchmarkComponentResultThresholdsInnerBuilder toBuilder() =>
      BenchmarkComponentResultThresholdsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BenchmarkComponentResultThresholdsInner &&
        metric == other.metric &&
        comparator == other.comparator &&
        threshold == other.threshold &&
        observed == other.observed &&
        status == other.status &&
        warn == other.warn &&
        scenario == other.scenario &&
        note == other.note;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, metric.hashCode);
    _$hash = $jc(_$hash, comparator.hashCode);
    _$hash = $jc(_$hash, threshold.hashCode);
    _$hash = $jc(_$hash, observed.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, warn.hashCode);
    _$hash = $jc(_$hash, scenario.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BenchmarkComponentResultThresholdsInner',
          )
          ..add('metric', metric)
          ..add('comparator', comparator)
          ..add('threshold', threshold)
          ..add('observed', observed)
          ..add('status', status)
          ..add('warn', warn)
          ..add('scenario', scenario)
          ..add('note', note))
        .toString();
  }
}

class BenchmarkComponentResultThresholdsInnerBuilder
    implements
        Builder<
          BenchmarkComponentResultThresholdsInner,
          BenchmarkComponentResultThresholdsInnerBuilder
        > {
  _$BenchmarkComponentResultThresholdsInner? _$v;

  String? _metric;
  String? get metric => _$this._metric;
  set metric(String? metric) => _$this._metric = metric;

  BenchmarkComponentResultThresholdsInnerComparatorEnum? _comparator;
  BenchmarkComponentResultThresholdsInnerComparatorEnum? get comparator =>
      _$this._comparator;
  set comparator(
    BenchmarkComponentResultThresholdsInnerComparatorEnum? comparator,
  ) => _$this._comparator = comparator;

  num? _threshold;
  num? get threshold => _$this._threshold;
  set threshold(num? threshold) => _$this._threshold = threshold;

  num? _observed;
  num? get observed => _$this._observed;
  set observed(num? observed) => _$this._observed = observed;

  BenchmarkComponentResultThresholdsInnerStatusEnum? _status;
  BenchmarkComponentResultThresholdsInnerStatusEnum? get status =>
      _$this._status;
  set status(BenchmarkComponentResultThresholdsInnerStatusEnum? status) =>
      _$this._status = status;

  num? _warn;
  num? get warn => _$this._warn;
  set warn(num? warn) => _$this._warn = warn;

  String? _scenario;
  String? get scenario => _$this._scenario;
  set scenario(String? scenario) => _$this._scenario = scenario;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  BenchmarkComponentResultThresholdsInnerBuilder() {
    BenchmarkComponentResultThresholdsInner._defaults(this);
  }

  BenchmarkComponentResultThresholdsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _metric = $v.metric;
      _comparator = $v.comparator;
      _threshold = $v.threshold;
      _observed = $v.observed;
      _status = $v.status;
      _warn = $v.warn;
      _scenario = $v.scenario;
      _note = $v.note;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BenchmarkComponentResultThresholdsInner other) {
    _$v = other as _$BenchmarkComponentResultThresholdsInner;
  }

  @override
  void update(
    void Function(BenchmarkComponentResultThresholdsInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  BenchmarkComponentResultThresholdsInner build() => _build();

  _$BenchmarkComponentResultThresholdsInner _build() {
    final _$result =
        _$v ??
        _$BenchmarkComponentResultThresholdsInner._(
          metric: BuiltValueNullFieldError.checkNotNull(
            metric,
            r'BenchmarkComponentResultThresholdsInner',
            'metric',
          ),
          comparator: BuiltValueNullFieldError.checkNotNull(
            comparator,
            r'BenchmarkComponentResultThresholdsInner',
            'comparator',
          ),
          threshold: BuiltValueNullFieldError.checkNotNull(
            threshold,
            r'BenchmarkComponentResultThresholdsInner',
            'threshold',
          ),
          observed: observed,
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'BenchmarkComponentResultThresholdsInner',
            'status',
          ),
          warn: warn,
          scenario: scenario,
          note: note,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
