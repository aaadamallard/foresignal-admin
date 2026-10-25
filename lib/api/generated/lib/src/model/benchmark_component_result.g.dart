// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'benchmark_component_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BenchmarkComponentResultStatusEnum
_$benchmarkComponentResultStatusEnum_pass =
    const BenchmarkComponentResultStatusEnum._('pass');
const BenchmarkComponentResultStatusEnum
_$benchmarkComponentResultStatusEnum_warn =
    const BenchmarkComponentResultStatusEnum._('warn');
const BenchmarkComponentResultStatusEnum
_$benchmarkComponentResultStatusEnum_fail =
    const BenchmarkComponentResultStatusEnum._('fail');
const BenchmarkComponentResultStatusEnum
_$benchmarkComponentResultStatusEnum_unknownDefaultOpenApi =
    const BenchmarkComponentResultStatusEnum._('unknownDefaultOpenApi');

BenchmarkComponentResultStatusEnum _$benchmarkComponentResultStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'pass':
      return _$benchmarkComponentResultStatusEnum_pass;
    case 'warn':
      return _$benchmarkComponentResultStatusEnum_warn;
    case 'fail':
      return _$benchmarkComponentResultStatusEnum_fail;
    case 'unknownDefaultOpenApi':
      return _$benchmarkComponentResultStatusEnum_unknownDefaultOpenApi;
    default:
      return _$benchmarkComponentResultStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<BenchmarkComponentResultStatusEnum>
_$benchmarkComponentResultStatusEnumValues =
    BuiltSet<BenchmarkComponentResultStatusEnum>(
      const <BenchmarkComponentResultStatusEnum>[
        _$benchmarkComponentResultStatusEnum_pass,
        _$benchmarkComponentResultStatusEnum_warn,
        _$benchmarkComponentResultStatusEnum_fail,
        _$benchmarkComponentResultStatusEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<BenchmarkComponentResultStatusEnum>
_$benchmarkComponentResultStatusEnumSerializer =
    _$BenchmarkComponentResultStatusEnumSerializer();

class _$BenchmarkComponentResultStatusEnumSerializer
    implements PrimitiveSerializer<BenchmarkComponentResultStatusEnum> {
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
  final Iterable<Type> types = const <Type>[BenchmarkComponentResultStatusEnum];
  @override
  final String wireName = 'BenchmarkComponentResultStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    BenchmarkComponentResultStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BenchmarkComponentResultStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BenchmarkComponentResultStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$BenchmarkComponentResult extends BenchmarkComponentResult {
  @override
  final String component;
  @override
  final String componentVersion;
  @override
  final BenchmarkComponentResultStatusEnum status;
  @override
  final BuiltMap<String, num?> metrics;
  @override
  final BuiltList<BenchmarkComponentResultThresholdsInner>? thresholds;
  @override
  final BuiltList<BenchmarkComponentResultScenariosInner>? scenarios;
  @override
  final BuiltList<Caveat>? caveats;

  factory _$BenchmarkComponentResult([
    void Function(BenchmarkComponentResultBuilder)? updates,
  ]) => (BenchmarkComponentResultBuilder()..update(updates))._build();

  _$BenchmarkComponentResult._({
    required this.component,
    required this.componentVersion,
    required this.status,
    required this.metrics,
    this.thresholds,
    this.scenarios,
    this.caveats,
  }) : super._();
  @override
  BenchmarkComponentResult rebuild(
    void Function(BenchmarkComponentResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BenchmarkComponentResultBuilder toBuilder() =>
      BenchmarkComponentResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BenchmarkComponentResult &&
        component == other.component &&
        componentVersion == other.componentVersion &&
        status == other.status &&
        metrics == other.metrics &&
        thresholds == other.thresholds &&
        scenarios == other.scenarios &&
        caveats == other.caveats;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, component.hashCode);
    _$hash = $jc(_$hash, componentVersion.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, metrics.hashCode);
    _$hash = $jc(_$hash, thresholds.hashCode);
    _$hash = $jc(_$hash, scenarios.hashCode);
    _$hash = $jc(_$hash, caveats.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BenchmarkComponentResult')
          ..add('component', component)
          ..add('componentVersion', componentVersion)
          ..add('status', status)
          ..add('metrics', metrics)
          ..add('thresholds', thresholds)
          ..add('scenarios', scenarios)
          ..add('caveats', caveats))
        .toString();
  }
}

class BenchmarkComponentResultBuilder
    implements
        Builder<BenchmarkComponentResult, BenchmarkComponentResultBuilder> {
  _$BenchmarkComponentResult? _$v;

  String? _component;
  String? get component => _$this._component;
  set component(String? component) => _$this._component = component;

  String? _componentVersion;
  String? get componentVersion => _$this._componentVersion;
  set componentVersion(String? componentVersion) =>
      _$this._componentVersion = componentVersion;

  BenchmarkComponentResultStatusEnum? _status;
  BenchmarkComponentResultStatusEnum? get status => _$this._status;
  set status(BenchmarkComponentResultStatusEnum? status) =>
      _$this._status = status;

  MapBuilder<String, num?>? _metrics;
  MapBuilder<String, num?> get metrics =>
      _$this._metrics ??= MapBuilder<String, num?>();
  set metrics(MapBuilder<String, num?>? metrics) => _$this._metrics = metrics;

  ListBuilder<BenchmarkComponentResultThresholdsInner>? _thresholds;
  ListBuilder<BenchmarkComponentResultThresholdsInner> get thresholds =>
      _$this._thresholds ??=
          ListBuilder<BenchmarkComponentResultThresholdsInner>();
  set thresholds(
    ListBuilder<BenchmarkComponentResultThresholdsInner>? thresholds,
  ) => _$this._thresholds = thresholds;

  ListBuilder<BenchmarkComponentResultScenariosInner>? _scenarios;
  ListBuilder<BenchmarkComponentResultScenariosInner> get scenarios =>
      _$this._scenarios ??=
          ListBuilder<BenchmarkComponentResultScenariosInner>();
  set scenarios(
    ListBuilder<BenchmarkComponentResultScenariosInner>? scenarios,
  ) => _$this._scenarios = scenarios;

  ListBuilder<Caveat>? _caveats;
  ListBuilder<Caveat> get caveats => _$this._caveats ??= ListBuilder<Caveat>();
  set caveats(ListBuilder<Caveat>? caveats) => _$this._caveats = caveats;

  BenchmarkComponentResultBuilder() {
    BenchmarkComponentResult._defaults(this);
  }

  BenchmarkComponentResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _component = $v.component;
      _componentVersion = $v.componentVersion;
      _status = $v.status;
      _metrics = $v.metrics.toBuilder();
      _thresholds = $v.thresholds?.toBuilder();
      _scenarios = $v.scenarios?.toBuilder();
      _caveats = $v.caveats?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BenchmarkComponentResult other) {
    _$v = other as _$BenchmarkComponentResult;
  }

  @override
  void update(void Function(BenchmarkComponentResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BenchmarkComponentResult build() => _build();

  _$BenchmarkComponentResult _build() {
    _$BenchmarkComponentResult _$result;
    try {
      _$result =
          _$v ??
          _$BenchmarkComponentResult._(
            component: BuiltValueNullFieldError.checkNotNull(
              component,
              r'BenchmarkComponentResult',
              'component',
            ),
            componentVersion: BuiltValueNullFieldError.checkNotNull(
              componentVersion,
              r'BenchmarkComponentResult',
              'componentVersion',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'BenchmarkComponentResult',
              'status',
            ),
            metrics: metrics.build(),
            thresholds: _thresholds?.build(),
            scenarios: _scenarios?.build(),
            caveats: _caveats?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metrics';
        metrics.build();
        _$failedField = 'thresholds';
        _thresholds?.build();
        _$failedField = 'scenarios';
        _scenarios?.build();
        _$failedField = 'caveats';
        _caveats?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BenchmarkComponentResult',
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
