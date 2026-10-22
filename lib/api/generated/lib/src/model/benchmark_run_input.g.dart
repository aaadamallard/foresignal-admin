// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'benchmark_run_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BenchmarkRunInputSuiteEnum _$benchmarkRunInputSuiteEnum_synthetic =
    const BenchmarkRunInputSuiteEnum._('synthetic');
const BenchmarkRunInputSuiteEnum _$benchmarkRunInputSuiteEnum_historical =
    const BenchmarkRunInputSuiteEnum._('historical');
const BenchmarkRunInputSuiteEnum _$benchmarkRunInputSuiteEnum_all =
    const BenchmarkRunInputSuiteEnum._('all');

BenchmarkRunInputSuiteEnum _$benchmarkRunInputSuiteEnumValueOf(String name) {
  switch (name) {
    case 'synthetic':
      return _$benchmarkRunInputSuiteEnum_synthetic;
    case 'historical':
      return _$benchmarkRunInputSuiteEnum_historical;
    case 'all':
      return _$benchmarkRunInputSuiteEnum_all;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<BenchmarkRunInputSuiteEnum> _$benchmarkRunInputSuiteEnumValues =
    BuiltSet<BenchmarkRunInputSuiteEnum>(const <BenchmarkRunInputSuiteEnum>[
      _$benchmarkRunInputSuiteEnum_synthetic,
      _$benchmarkRunInputSuiteEnum_historical,
      _$benchmarkRunInputSuiteEnum_all,
    ]);

Serializer<BenchmarkRunInputSuiteEnum> _$benchmarkRunInputSuiteEnumSerializer =
    _$BenchmarkRunInputSuiteEnumSerializer();

class _$BenchmarkRunInputSuiteEnumSerializer
    implements PrimitiveSerializer<BenchmarkRunInputSuiteEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'synthetic': 'synthetic',
    'historical': 'historical',
    'all': 'all',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'synthetic': 'synthetic',
    'historical': 'historical',
    'all': 'all',
  };

  @override
  final Iterable<Type> types = const <Type>[BenchmarkRunInputSuiteEnum];
  @override
  final String wireName = 'BenchmarkRunInputSuiteEnum';

  @override
  Object serialize(
    Serializers serializers,
    BenchmarkRunInputSuiteEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BenchmarkRunInputSuiteEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BenchmarkRunInputSuiteEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$BenchmarkRunInput extends BenchmarkRunInput {
  @override
  final BenchmarkRunInputSuiteEnum suite;
  @override
  final BuiltList<String>? components;
  @override
  final int? seed;

  factory _$BenchmarkRunInput([
    void Function(BenchmarkRunInputBuilder)? updates,
  ]) => (BenchmarkRunInputBuilder()..update(updates))._build();

  _$BenchmarkRunInput._({required this.suite, this.components, this.seed})
    : super._();
  @override
  BenchmarkRunInput rebuild(void Function(BenchmarkRunInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BenchmarkRunInputBuilder toBuilder() =>
      BenchmarkRunInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BenchmarkRunInput &&
        suite == other.suite &&
        components == other.components &&
        seed == other.seed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, suite.hashCode);
    _$hash = $jc(_$hash, components.hashCode);
    _$hash = $jc(_$hash, seed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BenchmarkRunInput')
          ..add('suite', suite)
          ..add('components', components)
          ..add('seed', seed))
        .toString();
  }
}

class BenchmarkRunInputBuilder
    implements Builder<BenchmarkRunInput, BenchmarkRunInputBuilder> {
  _$BenchmarkRunInput? _$v;

  BenchmarkRunInputSuiteEnum? _suite;
  BenchmarkRunInputSuiteEnum? get suite => _$this._suite;
  set suite(BenchmarkRunInputSuiteEnum? suite) => _$this._suite = suite;

  ListBuilder<String>? _components;
  ListBuilder<String> get components =>
      _$this._components ??= ListBuilder<String>();
  set components(ListBuilder<String>? components) =>
      _$this._components = components;

  int? _seed;
  int? get seed => _$this._seed;
  set seed(int? seed) => _$this._seed = seed;

  BenchmarkRunInputBuilder() {
    BenchmarkRunInput._defaults(this);
  }

  BenchmarkRunInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _suite = $v.suite;
      _components = $v.components?.toBuilder();
      _seed = $v.seed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BenchmarkRunInput other) {
    _$v = other as _$BenchmarkRunInput;
  }

  @override
  void update(void Function(BenchmarkRunInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BenchmarkRunInput build() => _build();

  _$BenchmarkRunInput _build() {
    _$BenchmarkRunInput _$result;
    try {
      _$result =
          _$v ??
          _$BenchmarkRunInput._(
            suite: BuiltValueNullFieldError.checkNotNull(
              suite,
              r'BenchmarkRunInput',
              'suite',
            ),
            components: _components?.build(),
            seed: seed,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'components';
        _components?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BenchmarkRunInput',
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
