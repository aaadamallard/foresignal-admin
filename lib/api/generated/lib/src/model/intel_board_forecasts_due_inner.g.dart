// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intel_board_forecasts_due_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntelBoardForecastsDueInner extends IntelBoardForecastsDueInner {
  @override
  final String questionId;
  @override
  final String title;
  @override
  final DateTime dueAt;
  @override
  final num? probability;
  @override
  final IcdTerm? estimativeTerm;

  factory _$IntelBoardForecastsDueInner(
          [void Function(IntelBoardForecastsDueInnerBuilder)? updates]) =>
      (IntelBoardForecastsDueInnerBuilder()..update(updates))._build();

  _$IntelBoardForecastsDueInner._(
      {required this.questionId,
      required this.title,
      required this.dueAt,
      this.probability,
      this.estimativeTerm})
      : super._();
  @override
  IntelBoardForecastsDueInner rebuild(
          void Function(IntelBoardForecastsDueInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntelBoardForecastsDueInnerBuilder toBuilder() =>
      IntelBoardForecastsDueInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelBoardForecastsDueInner &&
        questionId == other.questionId &&
        title == other.title &&
        dueAt == other.dueAt &&
        probability == other.probability &&
        estimativeTerm == other.estimativeTerm;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, questionId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, dueAt.hashCode);
    _$hash = $jc(_$hash, probability.hashCode);
    _$hash = $jc(_$hash, estimativeTerm.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntelBoardForecastsDueInner')
          ..add('questionId', questionId)
          ..add('title', title)
          ..add('dueAt', dueAt)
          ..add('probability', probability)
          ..add('estimativeTerm', estimativeTerm))
        .toString();
  }
}

class IntelBoardForecastsDueInnerBuilder
    implements
        Builder<IntelBoardForecastsDueInner,
            IntelBoardForecastsDueInnerBuilder> {
  _$IntelBoardForecastsDueInner? _$v;

  String? _questionId;
  String? get questionId => _$this._questionId;
  set questionId(String? questionId) => _$this._questionId = questionId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DateTime? _dueAt;
  DateTime? get dueAt => _$this._dueAt;
  set dueAt(DateTime? dueAt) => _$this._dueAt = dueAt;

  num? _probability;
  num? get probability => _$this._probability;
  set probability(num? probability) => _$this._probability = probability;

  IcdTerm? _estimativeTerm;
  IcdTerm? get estimativeTerm => _$this._estimativeTerm;
  set estimativeTerm(IcdTerm? estimativeTerm) =>
      _$this._estimativeTerm = estimativeTerm;

  IntelBoardForecastsDueInnerBuilder() {
    IntelBoardForecastsDueInner._defaults(this);
  }

  IntelBoardForecastsDueInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _questionId = $v.questionId;
      _title = $v.title;
      _dueAt = $v.dueAt;
      _probability = $v.probability;
      _estimativeTerm = $v.estimativeTerm;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelBoardForecastsDueInner other) {
    _$v = other as _$IntelBoardForecastsDueInner;
  }

  @override
  void update(void Function(IntelBoardForecastsDueInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntelBoardForecastsDueInner build() => _build();

  _$IntelBoardForecastsDueInner _build() {
    final _$result = _$v ??
        _$IntelBoardForecastsDueInner._(
          questionId: BuiltValueNullFieldError.checkNotNull(
              questionId, r'IntelBoardForecastsDueInner', 'questionId'),
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'IntelBoardForecastsDueInner', 'title'),
          dueAt: BuiltValueNullFieldError.checkNotNull(
              dueAt, r'IntelBoardForecastsDueInner', 'dueAt'),
          probability: probability,
          estimativeTerm: estimativeTerm,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
