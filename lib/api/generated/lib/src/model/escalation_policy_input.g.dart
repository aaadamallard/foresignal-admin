// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'escalation_policy_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EscalationPolicyInput extends EscalationPolicyInput {
  @override
  final String name;
  @override
  final BuiltList<EscalationStep> steps;
  @override
  final EscalationPolicyInputRepeat? repeat;
  @override
  final EscalationPolicyInputStopOn? stopOn;

  factory _$EscalationPolicyInput(
          [void Function(EscalationPolicyInputBuilder)? updates]) =>
      (EscalationPolicyInputBuilder()..update(updates))._build();

  _$EscalationPolicyInput._(
      {required this.name, required this.steps, this.repeat, this.stopOn})
      : super._();
  @override
  EscalationPolicyInput rebuild(
          void Function(EscalationPolicyInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EscalationPolicyInputBuilder toBuilder() =>
      EscalationPolicyInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EscalationPolicyInput &&
        name == other.name &&
        steps == other.steps &&
        repeat == other.repeat &&
        stopOn == other.stopOn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, steps.hashCode);
    _$hash = $jc(_$hash, repeat.hashCode);
    _$hash = $jc(_$hash, stopOn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EscalationPolicyInput')
          ..add('name', name)
          ..add('steps', steps)
          ..add('repeat', repeat)
          ..add('stopOn', stopOn))
        .toString();
  }
}

class EscalationPolicyInputBuilder
    implements Builder<EscalationPolicyInput, EscalationPolicyInputBuilder> {
  _$EscalationPolicyInput? _$v;

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

  EscalationPolicyInputBuilder() {
    EscalationPolicyInput._defaults(this);
  }

  EscalationPolicyInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _steps = $v.steps.toBuilder();
      _repeat = $v.repeat?.toBuilder();
      _stopOn = $v.stopOn?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EscalationPolicyInput other) {
    _$v = other as _$EscalationPolicyInput;
  }

  @override
  void update(void Function(EscalationPolicyInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EscalationPolicyInput build() => _build();

  _$EscalationPolicyInput _build() {
    _$EscalationPolicyInput _$result;
    try {
      _$result = _$v ??
          _$EscalationPolicyInput._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'EscalationPolicyInput', 'name'),
            steps: steps.build(),
            repeat: _repeat?.build(),
            stopOn: _stopOn?.build(),
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
            r'EscalationPolicyInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
