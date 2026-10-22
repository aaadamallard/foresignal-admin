// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_forecast_item_question.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdpForecastItemQuestion extends EdpForecastItemQuestion {
  @override
  final String externalId;
  @override
  final String title;
  @override
  final DateTime? closeTime;
  @override
  final String? resolutionCriteria;

  factory _$EdpForecastItemQuestion(
          [void Function(EdpForecastItemQuestionBuilder)? updates]) =>
      (EdpForecastItemQuestionBuilder()..update(updates))._build();

  _$EdpForecastItemQuestion._(
      {required this.externalId,
      required this.title,
      this.closeTime,
      this.resolutionCriteria})
      : super._();
  @override
  EdpForecastItemQuestion rebuild(
          void Function(EdpForecastItemQuestionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdpForecastItemQuestionBuilder toBuilder() =>
      EdpForecastItemQuestionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpForecastItemQuestion &&
        externalId == other.externalId &&
        title == other.title &&
        closeTime == other.closeTime &&
        resolutionCriteria == other.resolutionCriteria;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, closeTime.hashCode);
    _$hash = $jc(_$hash, resolutionCriteria.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpForecastItemQuestion')
          ..add('externalId', externalId)
          ..add('title', title)
          ..add('closeTime', closeTime)
          ..add('resolutionCriteria', resolutionCriteria))
        .toString();
  }
}

class EdpForecastItemQuestionBuilder
    implements
        Builder<EdpForecastItemQuestion, EdpForecastItemQuestionBuilder> {
  _$EdpForecastItemQuestion? _$v;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DateTime? _closeTime;
  DateTime? get closeTime => _$this._closeTime;
  set closeTime(DateTime? closeTime) => _$this._closeTime = closeTime;

  String? _resolutionCriteria;
  String? get resolutionCriteria => _$this._resolutionCriteria;
  set resolutionCriteria(String? resolutionCriteria) =>
      _$this._resolutionCriteria = resolutionCriteria;

  EdpForecastItemQuestionBuilder() {
    EdpForecastItemQuestion._defaults(this);
  }

  EdpForecastItemQuestionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _externalId = $v.externalId;
      _title = $v.title;
      _closeTime = $v.closeTime;
      _resolutionCriteria = $v.resolutionCriteria;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpForecastItemQuestion other) {
    _$v = other as _$EdpForecastItemQuestion;
  }

  @override
  void update(void Function(EdpForecastItemQuestionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpForecastItemQuestion build() => _build();

  _$EdpForecastItemQuestion _build() {
    final _$result = _$v ??
        _$EdpForecastItemQuestion._(
          externalId: BuiltValueNullFieldError.checkNotNull(
              externalId, r'EdpForecastItemQuestion', 'externalId'),
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'EdpForecastItemQuestion', 'title'),
          closeTime: closeTime,
          resolutionCriteria: resolutionCriteria,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
