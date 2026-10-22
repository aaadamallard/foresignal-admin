// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analog_outcomes_hypothesis_outcome.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalogOutcomesHypothesisOutcome
    extends AnalogOutcomesHypothesisOutcome {
  @override
  final String setId;
  @override
  final String outcome;

  factory _$AnalogOutcomesHypothesisOutcome(
          [void Function(AnalogOutcomesHypothesisOutcomeBuilder)? updates]) =>
      (AnalogOutcomesHypothesisOutcomeBuilder()..update(updates))._build();

  _$AnalogOutcomesHypothesisOutcome._(
      {required this.setId, required this.outcome})
      : super._();
  @override
  AnalogOutcomesHypothesisOutcome rebuild(
          void Function(AnalogOutcomesHypothesisOutcomeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalogOutcomesHypothesisOutcomeBuilder toBuilder() =>
      AnalogOutcomesHypothesisOutcomeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalogOutcomesHypothesisOutcome &&
        setId == other.setId &&
        outcome == other.outcome;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, setId.hashCode);
    _$hash = $jc(_$hash, outcome.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalogOutcomesHypothesisOutcome')
          ..add('setId', setId)
          ..add('outcome', outcome))
        .toString();
  }
}

class AnalogOutcomesHypothesisOutcomeBuilder
    implements
        Builder<AnalogOutcomesHypothesisOutcome,
            AnalogOutcomesHypothesisOutcomeBuilder> {
  _$AnalogOutcomesHypothesisOutcome? _$v;

  String? _setId;
  String? get setId => _$this._setId;
  set setId(String? setId) => _$this._setId = setId;

  String? _outcome;
  String? get outcome => _$this._outcome;
  set outcome(String? outcome) => _$this._outcome = outcome;

  AnalogOutcomesHypothesisOutcomeBuilder() {
    AnalogOutcomesHypothesisOutcome._defaults(this);
  }

  AnalogOutcomesHypothesisOutcomeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _setId = $v.setId;
      _outcome = $v.outcome;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalogOutcomesHypothesisOutcome other) {
    _$v = other as _$AnalogOutcomesHypothesisOutcome;
  }

  @override
  void update(void Function(AnalogOutcomesHypothesisOutcomeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalogOutcomesHypothesisOutcome build() => _build();

  _$AnalogOutcomesHypothesisOutcome _build() {
    final _$result = _$v ??
        _$AnalogOutcomesHypothesisOutcome._(
          setId: BuiltValueNullFieldError.checkNotNull(
              setId, r'AnalogOutcomesHypothesisOutcome', 'setId'),
          outcome: BuiltValueNullFieldError.checkNotNull(
              outcome, r'AnalogOutcomesHypothesisOutcome', 'outcome'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
