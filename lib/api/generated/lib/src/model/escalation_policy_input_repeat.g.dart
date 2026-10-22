// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'escalation_policy_input_repeat.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EscalationPolicyInputRepeat extends EscalationPolicyInputRepeat {
  @override
  final int everyMinutes;
  @override
  final int maxTimes;

  factory _$EscalationPolicyInputRepeat([
    void Function(EscalationPolicyInputRepeatBuilder)? updates,
  ]) => (EscalationPolicyInputRepeatBuilder()..update(updates))._build();

  _$EscalationPolicyInputRepeat._({
    required this.everyMinutes,
    required this.maxTimes,
  }) : super._();
  @override
  EscalationPolicyInputRepeat rebuild(
    void Function(EscalationPolicyInputRepeatBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EscalationPolicyInputRepeatBuilder toBuilder() =>
      EscalationPolicyInputRepeatBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EscalationPolicyInputRepeat &&
        everyMinutes == other.everyMinutes &&
        maxTimes == other.maxTimes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, everyMinutes.hashCode);
    _$hash = $jc(_$hash, maxTimes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EscalationPolicyInputRepeat')
          ..add('everyMinutes', everyMinutes)
          ..add('maxTimes', maxTimes))
        .toString();
  }
}

class EscalationPolicyInputRepeatBuilder
    implements
        Builder<
          EscalationPolicyInputRepeat,
          EscalationPolicyInputRepeatBuilder
        > {
  _$EscalationPolicyInputRepeat? _$v;

  int? _everyMinutes;
  int? get everyMinutes => _$this._everyMinutes;
  set everyMinutes(int? everyMinutes) => _$this._everyMinutes = everyMinutes;

  int? _maxTimes;
  int? get maxTimes => _$this._maxTimes;
  set maxTimes(int? maxTimes) => _$this._maxTimes = maxTimes;

  EscalationPolicyInputRepeatBuilder() {
    EscalationPolicyInputRepeat._defaults(this);
  }

  EscalationPolicyInputRepeatBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _everyMinutes = $v.everyMinutes;
      _maxTimes = $v.maxTimes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EscalationPolicyInputRepeat other) {
    _$v = other as _$EscalationPolicyInputRepeat;
  }

  @override
  void update(void Function(EscalationPolicyInputRepeatBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EscalationPolicyInputRepeat build() => _build();

  _$EscalationPolicyInputRepeat _build() {
    final _$result =
        _$v ??
        _$EscalationPolicyInputRepeat._(
          everyMinutes: BuiltValueNullFieldError.checkNotNull(
            everyMinutes,
            r'EscalationPolicyInputRepeat',
            'everyMinutes',
          ),
          maxTimes: BuiltValueNullFieldError.checkNotNull(
            maxTimes,
            r'EscalationPolicyInputRepeat',
            'maxTimes',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
