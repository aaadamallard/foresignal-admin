// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_join_reason.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SituationJoinReasonMethodEnum _$situationJoinReasonMethodEnum_linker =
    const SituationJoinReasonMethodEnum._('linker');
const SituationJoinReasonMethodEnum _$situationJoinReasonMethodEnum_seed =
    const SituationJoinReasonMethodEnum._('seed');
const SituationJoinReasonMethodEnum _$situationJoinReasonMethodEnum_operator_ =
    const SituationJoinReasonMethodEnum._('operator_');
const SituationJoinReasonMethodEnum _$situationJoinReasonMethodEnum_agent =
    const SituationJoinReasonMethodEnum._('agent');
const SituationJoinReasonMethodEnum _$situationJoinReasonMethodEnum_analyst =
    const SituationJoinReasonMethodEnum._('analyst');

SituationJoinReasonMethodEnum _$situationJoinReasonMethodEnumValueOf(
    String name) {
  switch (name) {
    case 'linker':
      return _$situationJoinReasonMethodEnum_linker;
    case 'seed':
      return _$situationJoinReasonMethodEnum_seed;
    case 'operator_':
      return _$situationJoinReasonMethodEnum_operator_;
    case 'agent':
      return _$situationJoinReasonMethodEnum_agent;
    case 'analyst':
      return _$situationJoinReasonMethodEnum_analyst;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SituationJoinReasonMethodEnum>
    _$situationJoinReasonMethodEnumValues = BuiltSet<
        SituationJoinReasonMethodEnum>(const <SituationJoinReasonMethodEnum>[
  _$situationJoinReasonMethodEnum_linker,
  _$situationJoinReasonMethodEnum_seed,
  _$situationJoinReasonMethodEnum_operator_,
  _$situationJoinReasonMethodEnum_agent,
  _$situationJoinReasonMethodEnum_analyst,
]);

Serializer<SituationJoinReasonMethodEnum>
    _$situationJoinReasonMethodEnumSerializer =
    _$SituationJoinReasonMethodEnumSerializer();

class _$SituationJoinReasonMethodEnumSerializer
    implements PrimitiveSerializer<SituationJoinReasonMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'linker': 'linker',
    'seed': 'seed',
    'operator_': 'operator',
    'agent': 'agent',
    'analyst': 'analyst',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'linker': 'linker',
    'seed': 'seed',
    'operator': 'operator_',
    'agent': 'agent',
    'analyst': 'analyst',
  };

  @override
  final Iterable<Type> types = const <Type>[SituationJoinReasonMethodEnum];
  @override
  final String wireName = 'SituationJoinReasonMethodEnum';

  @override
  Object serialize(
          Serializers serializers, SituationJoinReasonMethodEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SituationJoinReasonMethodEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SituationJoinReasonMethodEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SituationJoinReason extends SituationJoinReason {
  @override
  final SituationJoinReasonMethodEnum method;
  @override
  final num? score;
  @override
  final SituationJoinReasonComponents? components;
  @override
  final String? linkerVersion;
  @override
  final String? actor;

  factory _$SituationJoinReason(
          [void Function(SituationJoinReasonBuilder)? updates]) =>
      (SituationJoinReasonBuilder()..update(updates))._build();

  _$SituationJoinReason._(
      {required this.method,
      this.score,
      this.components,
      this.linkerVersion,
      this.actor})
      : super._();
  @override
  SituationJoinReason rebuild(
          void Function(SituationJoinReasonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SituationJoinReasonBuilder toBuilder() =>
      SituationJoinReasonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationJoinReason &&
        method == other.method &&
        score == other.score &&
        components == other.components &&
        linkerVersion == other.linkerVersion &&
        actor == other.actor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, components.hashCode);
    _$hash = $jc(_$hash, linkerVersion.hashCode);
    _$hash = $jc(_$hash, actor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SituationJoinReason')
          ..add('method', method)
          ..add('score', score)
          ..add('components', components)
          ..add('linkerVersion', linkerVersion)
          ..add('actor', actor))
        .toString();
  }
}

class SituationJoinReasonBuilder
    implements Builder<SituationJoinReason, SituationJoinReasonBuilder> {
  _$SituationJoinReason? _$v;

  SituationJoinReasonMethodEnum? _method;
  SituationJoinReasonMethodEnum? get method => _$this._method;
  set method(SituationJoinReasonMethodEnum? method) => _$this._method = method;

  num? _score;
  num? get score => _$this._score;
  set score(num? score) => _$this._score = score;

  SituationJoinReasonComponentsBuilder? _components;
  SituationJoinReasonComponentsBuilder get components =>
      _$this._components ??= SituationJoinReasonComponentsBuilder();
  set components(SituationJoinReasonComponentsBuilder? components) =>
      _$this._components = components;

  String? _linkerVersion;
  String? get linkerVersion => _$this._linkerVersion;
  set linkerVersion(String? linkerVersion) =>
      _$this._linkerVersion = linkerVersion;

  String? _actor;
  String? get actor => _$this._actor;
  set actor(String? actor) => _$this._actor = actor;

  SituationJoinReasonBuilder() {
    SituationJoinReason._defaults(this);
  }

  SituationJoinReasonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _method = $v.method;
      _score = $v.score;
      _components = $v.components?.toBuilder();
      _linkerVersion = $v.linkerVersion;
      _actor = $v.actor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationJoinReason other) {
    _$v = other as _$SituationJoinReason;
  }

  @override
  void update(void Function(SituationJoinReasonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationJoinReason build() => _build();

  _$SituationJoinReason _build() {
    _$SituationJoinReason _$result;
    try {
      _$result = _$v ??
          _$SituationJoinReason._(
            method: BuiltValueNullFieldError.checkNotNull(
                method, r'SituationJoinReason', 'method'),
            score: score,
            components: _components?.build(),
            linkerVersion: linkerVersion,
            actor: actor,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'components';
        _components?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SituationJoinReason', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
