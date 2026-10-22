// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'escalation_policy_input_stop_on.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EscalationPolicyInputStopOn extends EscalationPolicyInputStopOn {
  @override
  final bool? resolve;
  @override
  final bool? snooze;

  factory _$EscalationPolicyInputStopOn([
    void Function(EscalationPolicyInputStopOnBuilder)? updates,
  ]) => (EscalationPolicyInputStopOnBuilder()..update(updates))._build();

  _$EscalationPolicyInputStopOn._({this.resolve, this.snooze}) : super._();
  @override
  EscalationPolicyInputStopOn rebuild(
    void Function(EscalationPolicyInputStopOnBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EscalationPolicyInputStopOnBuilder toBuilder() =>
      EscalationPolicyInputStopOnBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EscalationPolicyInputStopOn &&
        resolve == other.resolve &&
        snooze == other.snooze;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resolve.hashCode);
    _$hash = $jc(_$hash, snooze.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EscalationPolicyInputStopOn')
          ..add('resolve', resolve)
          ..add('snooze', snooze))
        .toString();
  }
}

class EscalationPolicyInputStopOnBuilder
    implements
        Builder<
          EscalationPolicyInputStopOn,
          EscalationPolicyInputStopOnBuilder
        > {
  _$EscalationPolicyInputStopOn? _$v;

  bool? _resolve;
  bool? get resolve => _$this._resolve;
  set resolve(bool? resolve) => _$this._resolve = resolve;

  bool? _snooze;
  bool? get snooze => _$this._snooze;
  set snooze(bool? snooze) => _$this._snooze = snooze;

  EscalationPolicyInputStopOnBuilder() {
    EscalationPolicyInputStopOn._defaults(this);
  }

  EscalationPolicyInputStopOnBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resolve = $v.resolve;
      _snooze = $v.snooze;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EscalationPolicyInputStopOn other) {
    _$v = other as _$EscalationPolicyInputStopOn;
  }

  @override
  void update(void Function(EscalationPolicyInputStopOnBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EscalationPolicyInputStopOn build() => _build();

  _$EscalationPolicyInputStopOn _build() {
    final _$result =
        _$v ??
        _$EscalationPolicyInputStopOn._(resolve: resolve, snooze: snooze);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
