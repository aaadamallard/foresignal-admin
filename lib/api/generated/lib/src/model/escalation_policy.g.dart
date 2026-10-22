// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'escalation_policy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EscalationPolicy extends EscalationPolicy {
  @override
  final String name;
  @override
  final BuiltList<EscalationStep> steps;
  @override
  final EscalationPolicyInputRepeat? repeat;
  @override
  final EscalationPolicyInputStopOn? stopOn;
  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final int? ruleCount;

  factory _$EscalationPolicy(
          [void Function(EscalationPolicyBuilder)? updates]) =>
      (EscalationPolicyBuilder()..update(updates))._build();

  _$EscalationPolicy._(
      {required this.name,
      required this.steps,
      this.repeat,
      this.stopOn,
      required this.id,
      required this.createdAt,
      required this.updatedAt,
      this.ruleCount})
      : super._();
  @override
  EscalationPolicy rebuild(void Function(EscalationPolicyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EscalationPolicyBuilder toBuilder() =>
      EscalationPolicyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EscalationPolicy &&
        name == other.name &&
        steps == other.steps &&
        repeat == other.repeat &&
        stopOn == other.stopOn &&
        id == other.id &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        ruleCount == other.ruleCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, steps.hashCode);
    _$hash = $jc(_$hash, repeat.hashCode);
    _$hash = $jc(_$hash, stopOn.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, ruleCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EscalationPolicy')
          ..add('name', name)
          ..add('steps', steps)
          ..add('repeat', repeat)
          ..add('stopOn', stopOn)
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('ruleCount', ruleCount))
        .toString();
  }
}

class EscalationPolicyBuilder
    implements Builder<EscalationPolicy, EscalationPolicyBuilder> {
  _$EscalationPolicy? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<EscalationStep>? _steps;
  ListBuilder<EscalationStep> get steps =>
      _$this._steps ??= ListBuilder<EscalationStep>();
  set steps(ListBuilder<EscalationStep>? steps) => _$this._steps = steps;

  EscalationPolicyInputRepeatBuilder? _repeat;
  EscalationPolicyInputRepeatBuilder get repeat =>
      _$this._repeat ??= EscalationPolicyInputRepeatBuilder();
  set repeat(EscalationPolicyInputRepeatBuilder? repeat) =>
      _$this._repeat = repeat;

  EscalationPolicyInputStopOnBuilder? _stopOn;
  EscalationPolicyInputStopOnBuilder get stopOn =>
      _$this._stopOn ??= EscalationPolicyInputStopOnBuilder();
  set stopOn(EscalationPolicyInputStopOnBuilder? stopOn) =>
      _$this._stopOn = stopOn;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  int? _ruleCount;
  int? get ruleCount => _$this._ruleCount;
  set ruleCount(int? ruleCount) => _$this._ruleCount = ruleCount;

  EscalationPolicyBuilder() {
    EscalationPolicy._defaults(this);
  }

  EscalationPolicyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _steps = $v.steps.toBuilder();
      _repeat = $v.repeat?.toBuilder();
      _stopOn = $v.stopOn?.toBuilder();
      _id = $v.id;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _ruleCount = $v.ruleCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EscalationPolicy other) {
    _$v = other as _$EscalationPolicy;
  }

  @override
  void update(void Function(EscalationPolicyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EscalationPolicy build() => _build();

  _$EscalationPolicy _build() {
    _$EscalationPolicy _$result;
    try {
      _$result = _$v ??
          _$EscalationPolicy._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'EscalationPolicy', 'name'),
            steps: steps.build(),
            repeat: _repeat?.build(),
            stopOn: _stopOn?.build(),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'EscalationPolicy', 'id'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'EscalationPolicy', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'EscalationPolicy', 'updatedAt'),
            ruleCount: ruleCount,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'steps';
        steps.build();
        _$failedField = 'repeat';
        _repeat?.build();
        _$failedField = 'stopOn';
        _stopOn?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'EscalationPolicy', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
