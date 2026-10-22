// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indicator_signal_question.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IndicatorSignalQuestion extends IndicatorSignalQuestion {
  @override
  final String questionId;
  @override
  final String outcome;

  factory _$IndicatorSignalQuestion(
          [void Function(IndicatorSignalQuestionBuilder)? updates]) =>
      (IndicatorSignalQuestionBuilder()..update(updates))._build();

  _$IndicatorSignalQuestion._({required this.questionId, required this.outcome})
      : super._();
  @override
  IndicatorSignalQuestion rebuild(
          void Function(IndicatorSignalQuestionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IndicatorSignalQuestionBuilder toBuilder() =>
      IndicatorSignalQuestionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndicatorSignalQuestion &&
        questionId == other.questionId &&
        outcome == other.outcome;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, questionId.hashCode);
    _$hash = $jc(_$hash, outcome.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IndicatorSignalQuestion')
          ..add('questionId', questionId)
          ..add('outcome', outcome))
        .toString();
  }
}

class IndicatorSignalQuestionBuilder
    implements
        Builder<IndicatorSignalQuestion, IndicatorSignalQuestionBuilder> {
  _$IndicatorSignalQuestion? _$v;

  String? _questionId;
  String? get questionId => _$this._questionId;
  set questionId(String? questionId) => _$this._questionId = questionId;

  String? _outcome;
  String? get outcome => _$this._outcome;
  set outcome(String? outcome) => _$this._outcome = outcome;

  IndicatorSignalQuestionBuilder() {
    IndicatorSignalQuestion._defaults(this);
  }

  IndicatorSignalQuestionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _questionId = $v.questionId;
      _outcome = $v.outcome;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IndicatorSignalQuestion other) {
    _$v = other as _$IndicatorSignalQuestion;
  }

  @override
  void update(void Function(IndicatorSignalQuestionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IndicatorSignalQuestion build() => _build();

  _$IndicatorSignalQuestion _build() {
    final _$result = _$v ??
        _$IndicatorSignalQuestion._(
          questionId: BuiltValueNullFieldError.checkNotNull(
              questionId, r'IndicatorSignalQuestion', 'questionId'),
          outcome: BuiltValueNullFieldError.checkNotNull(
              outcome, r'IndicatorSignalQuestion', 'outcome'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
