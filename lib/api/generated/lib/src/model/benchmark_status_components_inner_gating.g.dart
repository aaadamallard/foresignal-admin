// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'benchmark_status_components_inner_gating.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum
_$benchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum_allowed =
    const BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum._(
      'allowed',
    );
const BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum
_$benchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum_degraded =
    const BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum._(
      'degraded',
    );

BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum
_$benchmarkStatusComponentsInnerGatingProposerAutoExecutionEnumValueOf(
  String name,
) {
  switch (name) {
    case 'allowed':
      return _$benchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum_allowed;
    case 'degraded':
      return _$benchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum_degraded;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum>
_$benchmarkStatusComponentsInnerGatingProposerAutoExecutionEnumValues =
    BuiltSet<
      BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum
    >(const <BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum>[
      _$benchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum_allowed,
      _$benchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum_degraded,
    ]);

const BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum
_$benchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum_allowed =
    const BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum._(
      'allowed',
    );
const BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum
_$benchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum_degraded =
    const BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum._(
      'degraded',
    );

BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum
_$benchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnumValueOf(
  String name,
) {
  switch (name) {
    case 'allowed':
      return _$benchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum_allowed;
    case 'degraded':
      return _$benchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum_degraded;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum>
_$benchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnumValues =
    BuiltSet<BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum>(
      const <BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum>[
        _$benchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum_allowed,
        _$benchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum_degraded,
      ],
    );

Serializer<BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum>
_$benchmarkStatusComponentsInnerGatingProposerAutoExecutionEnumSerializer =
    _$BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnumSerializer();
Serializer<BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum>
_$benchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnumSerializer =
    _$BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnumSerializer();

class _$BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnumSerializer
    implements
        PrimitiveSerializer<
          BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum
        > {
  static const Map<String, Object> _toWire = const <String, Object>{
    'allowed': 'allowed',
    'degraded': 'degraded',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'allowed': 'allowed',
    'degraded': 'degraded',
  };

  @override
  final Iterable<Type> types = const <Type>[
    BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum,
  ];
  @override
  final String wireName =
      'BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum';

  @override
  Object serialize(
    Serializers serializers,
    BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnumSerializer
    implements
        PrimitiveSerializer<
          BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum
        > {
  static const Map<String, Object> _toWire = const <String, Object>{
    'allowed': 'allowed',
    'degraded': 'degraded',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'allowed': 'allowed',
    'degraded': 'degraded',
  };

  @override
  final Iterable<Type> types = const <Type>[
    BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum,
  ];
  @override
  final String wireName =
      'BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum';

  @override
  Object serialize(
    Serializers serializers,
    BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$BenchmarkStatusComponentsInnerGating
    extends BenchmarkStatusComponentsInnerGating {
  @override
  final BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum?
  proposerAutoExecution;
  @override
  final BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum?
  llmEnsembleWeight;
  @override
  final String? findingCaveat;

  factory _$BenchmarkStatusComponentsInnerGating([
    void Function(BenchmarkStatusComponentsInnerGatingBuilder)? updates,
  ]) =>
      (BenchmarkStatusComponentsInnerGatingBuilder()..update(updates))._build();

  _$BenchmarkStatusComponentsInnerGating._({
    this.proposerAutoExecution,
    this.llmEnsembleWeight,
    this.findingCaveat,
  }) : super._();
  @override
  BenchmarkStatusComponentsInnerGating rebuild(
    void Function(BenchmarkStatusComponentsInnerGatingBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BenchmarkStatusComponentsInnerGatingBuilder toBuilder() =>
      BenchmarkStatusComponentsInnerGatingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BenchmarkStatusComponentsInnerGating &&
        proposerAutoExecution == other.proposerAutoExecution &&
        llmEnsembleWeight == other.llmEnsembleWeight &&
        findingCaveat == other.findingCaveat;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, proposerAutoExecution.hashCode);
    _$hash = $jc(_$hash, llmEnsembleWeight.hashCode);
    _$hash = $jc(_$hash, findingCaveat.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BenchmarkStatusComponentsInnerGating')
          ..add('proposerAutoExecution', proposerAutoExecution)
          ..add('llmEnsembleWeight', llmEnsembleWeight)
          ..add('findingCaveat', findingCaveat))
        .toString();
  }
}

class BenchmarkStatusComponentsInnerGatingBuilder
    implements
        Builder<
          BenchmarkStatusComponentsInnerGating,
          BenchmarkStatusComponentsInnerGatingBuilder
        > {
  _$BenchmarkStatusComponentsInnerGating? _$v;

  BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum?
  _proposerAutoExecution;
  BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum?
  get proposerAutoExecution => _$this._proposerAutoExecution;
  set proposerAutoExecution(
    BenchmarkStatusComponentsInnerGatingProposerAutoExecutionEnum?
    proposerAutoExecution,
  ) => _$this._proposerAutoExecution = proposerAutoExecution;

  BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum? _llmEnsembleWeight;
  BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum?
  get llmEnsembleWeight => _$this._llmEnsembleWeight;
  set llmEnsembleWeight(
    BenchmarkStatusComponentsInnerGatingLlmEnsembleWeightEnum?
    llmEnsembleWeight,
  ) => _$this._llmEnsembleWeight = llmEnsembleWeight;

  String? _findingCaveat;
  String? get findingCaveat => _$this._findingCaveat;
  set findingCaveat(String? findingCaveat) =>
      _$this._findingCaveat = findingCaveat;

  BenchmarkStatusComponentsInnerGatingBuilder() {
    BenchmarkStatusComponentsInnerGating._defaults(this);
  }

  BenchmarkStatusComponentsInnerGatingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _proposerAutoExecution = $v.proposerAutoExecution;
      _llmEnsembleWeight = $v.llmEnsembleWeight;
      _findingCaveat = $v.findingCaveat;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BenchmarkStatusComponentsInnerGating other) {
    _$v = other as _$BenchmarkStatusComponentsInnerGating;
  }

  @override
  void update(
    void Function(BenchmarkStatusComponentsInnerGatingBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  BenchmarkStatusComponentsInnerGating build() => _build();

  _$BenchmarkStatusComponentsInnerGating _build() {
    final _$result =
        _$v ??
        _$BenchmarkStatusComponentsInnerGating._(
          proposerAutoExecution: proposerAutoExecution,
          llmEnsembleWeight: llmEnsembleWeight,
          findingCaveat: findingCaveat,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
