// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'benchmark_status_components_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BenchmarkStatusComponentsInnerStatusEnum
_$benchmarkStatusComponentsInnerStatusEnum_pass =
    const BenchmarkStatusComponentsInnerStatusEnum._('pass');
const BenchmarkStatusComponentsInnerStatusEnum
_$benchmarkStatusComponentsInnerStatusEnum_warn =
    const BenchmarkStatusComponentsInnerStatusEnum._('warn');
const BenchmarkStatusComponentsInnerStatusEnum
_$benchmarkStatusComponentsInnerStatusEnum_fail =
    const BenchmarkStatusComponentsInnerStatusEnum._('fail');
const BenchmarkStatusComponentsInnerStatusEnum
_$benchmarkStatusComponentsInnerStatusEnum_unknown =
    const BenchmarkStatusComponentsInnerStatusEnum._('unknown');
const BenchmarkStatusComponentsInnerStatusEnum
_$benchmarkStatusComponentsInnerStatusEnum_unknownDefaultOpenApi =
    const BenchmarkStatusComponentsInnerStatusEnum._('unknownDefaultOpenApi');

BenchmarkStatusComponentsInnerStatusEnum
_$benchmarkStatusComponentsInnerStatusEnumValueOf(String name) {
  switch (name) {
    case 'pass':
      return _$benchmarkStatusComponentsInnerStatusEnum_pass;
    case 'warn':
      return _$benchmarkStatusComponentsInnerStatusEnum_warn;
    case 'fail':
      return _$benchmarkStatusComponentsInnerStatusEnum_fail;
    case 'unknown':
      return _$benchmarkStatusComponentsInnerStatusEnum_unknown;
    case 'unknownDefaultOpenApi':
      return _$benchmarkStatusComponentsInnerStatusEnum_unknownDefaultOpenApi;
    default:
      return _$benchmarkStatusComponentsInnerStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<BenchmarkStatusComponentsInnerStatusEnum>
_$benchmarkStatusComponentsInnerStatusEnumValues =
    BuiltSet<BenchmarkStatusComponentsInnerStatusEnum>(
      const <BenchmarkStatusComponentsInnerStatusEnum>[
        _$benchmarkStatusComponentsInnerStatusEnum_pass,
        _$benchmarkStatusComponentsInnerStatusEnum_warn,
        _$benchmarkStatusComponentsInnerStatusEnum_fail,
        _$benchmarkStatusComponentsInnerStatusEnum_unknown,
        _$benchmarkStatusComponentsInnerStatusEnum_unknownDefaultOpenApi,
      ],
    );

const BenchmarkStatusComponentsInnerSuiteEnum
_$benchmarkStatusComponentsInnerSuiteEnum_synthetic =
    const BenchmarkStatusComponentsInnerSuiteEnum._('synthetic');
const BenchmarkStatusComponentsInnerSuiteEnum
_$benchmarkStatusComponentsInnerSuiteEnum_historical =
    const BenchmarkStatusComponentsInnerSuiteEnum._('historical');
const BenchmarkStatusComponentsInnerSuiteEnum
_$benchmarkStatusComponentsInnerSuiteEnum_all =
    const BenchmarkStatusComponentsInnerSuiteEnum._('all');
const BenchmarkStatusComponentsInnerSuiteEnum
_$benchmarkStatusComponentsInnerSuiteEnum_unknownDefaultOpenApi =
    const BenchmarkStatusComponentsInnerSuiteEnum._('unknownDefaultOpenApi');

BenchmarkStatusComponentsInnerSuiteEnum
_$benchmarkStatusComponentsInnerSuiteEnumValueOf(String name) {
  switch (name) {
    case 'synthetic':
      return _$benchmarkStatusComponentsInnerSuiteEnum_synthetic;
    case 'historical':
      return _$benchmarkStatusComponentsInnerSuiteEnum_historical;
    case 'all':
      return _$benchmarkStatusComponentsInnerSuiteEnum_all;
    case 'unknownDefaultOpenApi':
      return _$benchmarkStatusComponentsInnerSuiteEnum_unknownDefaultOpenApi;
    default:
      return _$benchmarkStatusComponentsInnerSuiteEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<BenchmarkStatusComponentsInnerSuiteEnum>
_$benchmarkStatusComponentsInnerSuiteEnumValues =
    BuiltSet<BenchmarkStatusComponentsInnerSuiteEnum>(
      const <BenchmarkStatusComponentsInnerSuiteEnum>[
        _$benchmarkStatusComponentsInnerSuiteEnum_synthetic,
        _$benchmarkStatusComponentsInnerSuiteEnum_historical,
        _$benchmarkStatusComponentsInnerSuiteEnum_all,
        _$benchmarkStatusComponentsInnerSuiteEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<BenchmarkStatusComponentsInnerStatusEnum>
_$benchmarkStatusComponentsInnerStatusEnumSerializer =
    _$BenchmarkStatusComponentsInnerStatusEnumSerializer();
Serializer<BenchmarkStatusComponentsInnerSuiteEnum>
_$benchmarkStatusComponentsInnerSuiteEnumSerializer =
    _$BenchmarkStatusComponentsInnerSuiteEnumSerializer();

class _$BenchmarkStatusComponentsInnerStatusEnumSerializer
    implements PrimitiveSerializer<BenchmarkStatusComponentsInnerStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pass': 'pass',
    'warn': 'warn',
    'fail': 'fail',
    'unknown': 'unknown',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pass': 'pass',
    'warn': 'warn',
    'fail': 'fail',
    'unknown': 'unknown',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    BenchmarkStatusComponentsInnerStatusEnum,
  ];
  @override
  final String wireName = 'BenchmarkStatusComponentsInnerStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    BenchmarkStatusComponentsInnerStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BenchmarkStatusComponentsInnerStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BenchmarkStatusComponentsInnerStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$BenchmarkStatusComponentsInnerSuiteEnumSerializer
    implements PrimitiveSerializer<BenchmarkStatusComponentsInnerSuiteEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'synthetic': 'synthetic',
    'historical': 'historical',
    'all': 'all',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'synthetic': 'synthetic',
    'historical': 'historical',
    'all': 'all',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    BenchmarkStatusComponentsInnerSuiteEnum,
  ];
  @override
  final String wireName = 'BenchmarkStatusComponentsInnerSuiteEnum';

  @override
  Object serialize(
    Serializers serializers,
    BenchmarkStatusComponentsInnerSuiteEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BenchmarkStatusComponentsInnerSuiteEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BenchmarkStatusComponentsInnerSuiteEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$BenchmarkStatusComponentsInner extends BenchmarkStatusComponentsInner {
  @override
  final String component;
  @override
  final String? componentVersion;
  @override
  final BenchmarkStatusComponentsInnerStatusEnum status;
  @override
  final String? runId;
  @override
  final BenchmarkStatusComponentsInnerSuiteEnum? suite;
  @override
  final DateTime? finishedAt;
  @override
  final bool? versionChanged;
  @override
  final BenchmarkStatusComponentsInnerGating? gating;

  factory _$BenchmarkStatusComponentsInner([
    void Function(BenchmarkStatusComponentsInnerBuilder)? updates,
  ]) => (BenchmarkStatusComponentsInnerBuilder()..update(updates))._build();

  _$BenchmarkStatusComponentsInner._({
    required this.component,
    this.componentVersion,
    required this.status,
    this.runId,
    this.suite,
    this.finishedAt,
    this.versionChanged,
    this.gating,
  }) : super._();
  @override
  BenchmarkStatusComponentsInner rebuild(
    void Function(BenchmarkStatusComponentsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BenchmarkStatusComponentsInnerBuilder toBuilder() =>
      BenchmarkStatusComponentsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BenchmarkStatusComponentsInner &&
        component == other.component &&
        componentVersion == other.componentVersion &&
        status == other.status &&
        runId == other.runId &&
        suite == other.suite &&
        finishedAt == other.finishedAt &&
        versionChanged == other.versionChanged &&
        gating == other.gating;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, component.hashCode);
    _$hash = $jc(_$hash, componentVersion.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, runId.hashCode);
    _$hash = $jc(_$hash, suite.hashCode);
    _$hash = $jc(_$hash, finishedAt.hashCode);
    _$hash = $jc(_$hash, versionChanged.hashCode);
    _$hash = $jc(_$hash, gating.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BenchmarkStatusComponentsInner')
          ..add('component', component)
          ..add('componentVersion', componentVersion)
          ..add('status', status)
          ..add('runId', runId)
          ..add('suite', suite)
          ..add('finishedAt', finishedAt)
          ..add('versionChanged', versionChanged)
          ..add('gating', gating))
        .toString();
  }
}

class BenchmarkStatusComponentsInnerBuilder
    implements
        Builder<
          BenchmarkStatusComponentsInner,
          BenchmarkStatusComponentsInnerBuilder
        > {
  _$BenchmarkStatusComponentsInner? _$v;

  String? _component;
  String? get component => _$this._component;
  set component(String? component) => _$this._component = component;

  String? _componentVersion;
  String? get componentVersion => _$this._componentVersion;
  set componentVersion(String? componentVersion) =>
      _$this._componentVersion = componentVersion;

  BenchmarkStatusComponentsInnerStatusEnum? _status;
  BenchmarkStatusComponentsInnerStatusEnum? get status => _$this._status;
  set status(BenchmarkStatusComponentsInnerStatusEnum? status) =>
      _$this._status = status;

  String? _runId;
  String? get runId => _$this._runId;
  set runId(String? runId) => _$this._runId = runId;

  BenchmarkStatusComponentsInnerSuiteEnum? _suite;
  BenchmarkStatusComponentsInnerSuiteEnum? get suite => _$this._suite;
  set suite(BenchmarkStatusComponentsInnerSuiteEnum? suite) =>
      _$this._suite = suite;

  DateTime? _finishedAt;
  DateTime? get finishedAt => _$this._finishedAt;
  set finishedAt(DateTime? finishedAt) => _$this._finishedAt = finishedAt;

  bool? _versionChanged;
  bool? get versionChanged => _$this._versionChanged;
  set versionChanged(bool? versionChanged) =>
      _$this._versionChanged = versionChanged;

  BenchmarkStatusComponentsInnerGatingBuilder? _gating;
  BenchmarkStatusComponentsInnerGatingBuilder get gating =>
      _$this._gating ??= BenchmarkStatusComponentsInnerGatingBuilder();
  set gating(BenchmarkStatusComponentsInnerGatingBuilder? gating) =>
      _$this._gating = gating;

  BenchmarkStatusComponentsInnerBuilder() {
    BenchmarkStatusComponentsInner._defaults(this);
  }

  BenchmarkStatusComponentsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _component = $v.component;
      _componentVersion = $v.componentVersion;
      _status = $v.status;
      _runId = $v.runId;
      _suite = $v.suite;
      _finishedAt = $v.finishedAt;
      _versionChanged = $v.versionChanged;
      _gating = $v.gating?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BenchmarkStatusComponentsInner other) {
    _$v = other as _$BenchmarkStatusComponentsInner;
  }

  @override
  void update(void Function(BenchmarkStatusComponentsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BenchmarkStatusComponentsInner build() => _build();

  _$BenchmarkStatusComponentsInner _build() {
    _$BenchmarkStatusComponentsInner _$result;
    try {
      _$result =
          _$v ??
          _$BenchmarkStatusComponentsInner._(
            component: BuiltValueNullFieldError.checkNotNull(
              component,
              r'BenchmarkStatusComponentsInner',
              'component',
            ),
            componentVersion: componentVersion,
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'BenchmarkStatusComponentsInner',
              'status',
            ),
            runId: runId,
            suite: suite,
            finishedAt: finishedAt,
            versionChanged: versionChanged,
            gating: _gating?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'gating';
        _gating?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BenchmarkStatusComponentsInner',
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
