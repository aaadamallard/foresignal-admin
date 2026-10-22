// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_stats_skipped_rules_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExerciseStatsSkippedRulesInner extends ExerciseStatsSkippedRulesInner {
  @override
  final String ruleId;
  @override
  final String reason;

  factory _$ExerciseStatsSkippedRulesInner([
    void Function(ExerciseStatsSkippedRulesInnerBuilder)? updates,
  ]) => (ExerciseStatsSkippedRulesInnerBuilder()..update(updates))._build();

  _$ExerciseStatsSkippedRulesInner._({
    required this.ruleId,
    required this.reason,
  }) : super._();
  @override
  ExerciseStatsSkippedRulesInner rebuild(
    void Function(ExerciseStatsSkippedRulesInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ExerciseStatsSkippedRulesInnerBuilder toBuilder() =>
      ExerciseStatsSkippedRulesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExerciseStatsSkippedRulesInner &&
        ruleId == other.ruleId &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ruleId.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExerciseStatsSkippedRulesInner')
          ..add('ruleId', ruleId)
          ..add('reason', reason))
        .toString();
  }
}

class ExerciseStatsSkippedRulesInnerBuilder
    implements
        Builder<
          ExerciseStatsSkippedRulesInner,
          ExerciseStatsSkippedRulesInnerBuilder
        > {
  _$ExerciseStatsSkippedRulesInner? _$v;

  String? _ruleId;
  String? get ruleId => _$this._ruleId;
  set ruleId(String? ruleId) => _$this._ruleId = ruleId;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  ExerciseStatsSkippedRulesInnerBuilder() {
    ExerciseStatsSkippedRulesInner._defaults(this);
  }

  ExerciseStatsSkippedRulesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ruleId = $v.ruleId;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExerciseStatsSkippedRulesInner other) {
    _$v = other as _$ExerciseStatsSkippedRulesInner;
  }

  @override
  void update(void Function(ExerciseStatsSkippedRulesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExerciseStatsSkippedRulesInner build() => _build();

  _$ExerciseStatsSkippedRulesInner _build() {
    final _$result =
        _$v ??
        _$ExerciseStatsSkippedRulesInner._(
          ruleId: BuiltValueNullFieldError.checkNotNull(
            ruleId,
            r'ExerciseStatsSkippedRulesInner',
            'ruleId',
          ),
          reason: BuiltValueNullFieldError.checkNotNull(
            reason,
            r'ExerciseStatsSkippedRulesInner',
            'reason',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
