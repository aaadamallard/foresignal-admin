// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'benchmark_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BenchmarkStatusOverallEnum _$benchmarkStatusOverallEnum_pass =
    const BenchmarkStatusOverallEnum._('pass');
const BenchmarkStatusOverallEnum _$benchmarkStatusOverallEnum_warn =
    const BenchmarkStatusOverallEnum._('warn');
const BenchmarkStatusOverallEnum _$benchmarkStatusOverallEnum_fail =
    const BenchmarkStatusOverallEnum._('fail');
const BenchmarkStatusOverallEnum _$benchmarkStatusOverallEnum_unknown =
    const BenchmarkStatusOverallEnum._('unknown');

BenchmarkStatusOverallEnum _$benchmarkStatusOverallEnumValueOf(String name) {
  switch (name) {
    case 'pass':
      return _$benchmarkStatusOverallEnum_pass;
    case 'warn':
      return _$benchmarkStatusOverallEnum_warn;
    case 'fail':
      return _$benchmarkStatusOverallEnum_fail;
    case 'unknown':
      return _$benchmarkStatusOverallEnum_unknown;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<BenchmarkStatusOverallEnum> _$benchmarkStatusOverallEnumValues =
    BuiltSet<BenchmarkStatusOverallEnum>(const <BenchmarkStatusOverallEnum>[
      _$benchmarkStatusOverallEnum_pass,
      _$benchmarkStatusOverallEnum_warn,
      _$benchmarkStatusOverallEnum_fail,
      _$benchmarkStatusOverallEnum_unknown,
    ]);

Serializer<BenchmarkStatusOverallEnum> _$benchmarkStatusOverallEnumSerializer =
    _$BenchmarkStatusOverallEnumSerializer();

class _$BenchmarkStatusOverallEnumSerializer
    implements PrimitiveSerializer<BenchmarkStatusOverallEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pass': 'pass',
    'warn': 'warn',
    'fail': 'fail',
    'unknown': 'unknown',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pass': 'pass',
    'warn': 'warn',
    'fail': 'fail',
    'unknown': 'unknown',
  };

  @override
  final Iterable<Type> types = const <Type>[BenchmarkStatusOverallEnum];
  @override
  final String wireName = 'BenchmarkStatusOverallEnum';

  @override
  Object serialize(
    Serializers serializers,
    BenchmarkStatusOverallEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BenchmarkStatusOverallEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BenchmarkStatusOverallEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$BenchmarkStatus extends BenchmarkStatus {
  @override
  final DateTime generatedAt;
  @override
  final BenchmarkStatusOverallEnum overall;
  @override
  final BuiltList<BenchmarkStatusComponentsInner> components;

  factory _$BenchmarkStatus([void Function(BenchmarkStatusBuilder)? updates]) =>
      (BenchmarkStatusBuilder()..update(updates))._build();

  _$BenchmarkStatus._({
    required this.generatedAt,
    required this.overall,
    required this.components,
  }) : super._();
  @override
  BenchmarkStatus rebuild(void Function(BenchmarkStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BenchmarkStatusBuilder toBuilder() => BenchmarkStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BenchmarkStatus &&
        generatedAt == other.generatedAt &&
        overall == other.overall &&
        components == other.components;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, generatedAt.hashCode);
    _$hash = $jc(_$hash, overall.hashCode);
    _$hash = $jc(_$hash, components.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BenchmarkStatus')
          ..add('generatedAt', generatedAt)
          ..add('overall', overall)
          ..add('components', components))
        .toString();
  }
}

class BenchmarkStatusBuilder
    implements Builder<BenchmarkStatus, BenchmarkStatusBuilder> {
  _$BenchmarkStatus? _$v;

  DateTime? _generatedAt;
  DateTime? get generatedAt => _$this._generatedAt;
  set generatedAt(DateTime? generatedAt) => _$this._generatedAt = generatedAt;

  BenchmarkStatusOverallEnum? _overall;
  BenchmarkStatusOverallEnum? get overall => _$this._overall;
  set overall(BenchmarkStatusOverallEnum? overall) => _$this._overall = overall;

  ListBuilder<BenchmarkStatusComponentsInner>? _components;
  ListBuilder<BenchmarkStatusComponentsInner> get components =>
      _$this._components ??= ListBuilder<BenchmarkStatusComponentsInner>();
  set components(ListBuilder<BenchmarkStatusComponentsInner>? components) =>
      _$this._components = components;

  BenchmarkStatusBuilder() {
    BenchmarkStatus._defaults(this);
  }

  BenchmarkStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _generatedAt = $v.generatedAt;
      _overall = $v.overall;
      _components = $v.components.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BenchmarkStatus other) {
    _$v = other as _$BenchmarkStatus;
  }

  @override
  void update(void Function(BenchmarkStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BenchmarkStatus build() => _build();

  _$BenchmarkStatus _build() {
    _$BenchmarkStatus _$result;
    try {
      _$result =
          _$v ??
          _$BenchmarkStatus._(
            generatedAt: BuiltValueNullFieldError.checkNotNull(
              generatedAt,
              r'BenchmarkStatus',
              'generatedAt',
            ),
            overall: BuiltValueNullFieldError.checkNotNull(
              overall,
              r'BenchmarkStatus',
              'overall',
            ),
            components: components.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'components';
        components.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BenchmarkStatus',
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
