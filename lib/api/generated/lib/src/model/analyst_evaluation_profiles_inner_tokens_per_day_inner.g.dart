// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyst_evaluation_profiles_inner_tokens_per_day_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalystEvaluationProfilesInnerTokensPerDayInner
    extends AnalystEvaluationProfilesInnerTokensPerDayInner {
  @override
  final Date date;
  @override
  final int tokens;

  factory _$AnalystEvaluationProfilesInnerTokensPerDayInner(
          [void Function(
                  AnalystEvaluationProfilesInnerTokensPerDayInnerBuilder)?
              updates]) =>
      (AnalystEvaluationProfilesInnerTokensPerDayInnerBuilder()
            ..update(updates))
          ._build();

  _$AnalystEvaluationProfilesInnerTokensPerDayInner._(
      {required this.date, required this.tokens})
      : super._();
  @override
  AnalystEvaluationProfilesInnerTokensPerDayInner rebuild(
          void Function(AnalystEvaluationProfilesInnerTokensPerDayInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalystEvaluationProfilesInnerTokensPerDayInnerBuilder toBuilder() =>
      AnalystEvaluationProfilesInnerTokensPerDayInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalystEvaluationProfilesInnerTokensPerDayInner &&
        date == other.date &&
        tokens == other.tokens;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, tokens.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'AnalystEvaluationProfilesInnerTokensPerDayInner')
          ..add('date', date)
          ..add('tokens', tokens))
        .toString();
  }
}

class AnalystEvaluationProfilesInnerTokensPerDayInnerBuilder
    implements
        Builder<AnalystEvaluationProfilesInnerTokensPerDayInner,
            AnalystEvaluationProfilesInnerTokensPerDayInnerBuilder> {
  _$AnalystEvaluationProfilesInnerTokensPerDayInner? _$v;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  int? _tokens;
  int? get tokens => _$this._tokens;
  set tokens(int? tokens) => _$this._tokens = tokens;

  AnalystEvaluationProfilesInnerTokensPerDayInnerBuilder() {
    AnalystEvaluationProfilesInnerTokensPerDayInner._defaults(this);
  }

  AnalystEvaluationProfilesInnerTokensPerDayInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _tokens = $v.tokens;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalystEvaluationProfilesInnerTokensPerDayInner other) {
    _$v = other as _$AnalystEvaluationProfilesInnerTokensPerDayInner;
  }

  @override
  void update(
      void Function(AnalystEvaluationProfilesInnerTokensPerDayInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalystEvaluationProfilesInnerTokensPerDayInner build() => _build();

  _$AnalystEvaluationProfilesInnerTokensPerDayInner _build() {
    final _$result = _$v ??
        _$AnalystEvaluationProfilesInnerTokensPerDayInner._(
          date: BuiltValueNullFieldError.checkNotNull(
              date, r'AnalystEvaluationProfilesInnerTokensPerDayInner', 'date'),
          tokens: BuiltValueNullFieldError.checkNotNull(tokens,
              r'AnalystEvaluationProfilesInnerTokensPerDayInner', 'tokens'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
