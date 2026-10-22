// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ledger_question_brief_forecasters_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LedgerQuestionBriefForecastersInner
    extends LedgerQuestionBriefForecastersInner {
  @override
  final String forecasterId;
  @override
  final num? probability;
  @override
  final DateTime? madeAt;
  @override
  final Date? knowledgeCutoff;

  factory _$LedgerQuestionBriefForecastersInner([
    void Function(LedgerQuestionBriefForecastersInnerBuilder)? updates,
  ]) =>
      (LedgerQuestionBriefForecastersInnerBuilder()..update(updates))._build();

  _$LedgerQuestionBriefForecastersInner._({
    required this.forecasterId,
    this.probability,
    this.madeAt,
    this.knowledgeCutoff,
  }) : super._();
  @override
  LedgerQuestionBriefForecastersInner rebuild(
    void Function(LedgerQuestionBriefForecastersInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  LedgerQuestionBriefForecastersInnerBuilder toBuilder() =>
      LedgerQuestionBriefForecastersInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LedgerQuestionBriefForecastersInner &&
        forecasterId == other.forecasterId &&
        probability == other.probability &&
        madeAt == other.madeAt &&
        knowledgeCutoff == other.knowledgeCutoff;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, forecasterId.hashCode);
    _$hash = $jc(_$hash, probability.hashCode);
    _$hash = $jc(_$hash, madeAt.hashCode);
    _$hash = $jc(_$hash, knowledgeCutoff.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LedgerQuestionBriefForecastersInner')
          ..add('forecasterId', forecasterId)
          ..add('probability', probability)
          ..add('madeAt', madeAt)
          ..add('knowledgeCutoff', knowledgeCutoff))
        .toString();
  }
}

class LedgerQuestionBriefForecastersInnerBuilder
    implements
        Builder<
          LedgerQuestionBriefForecastersInner,
          LedgerQuestionBriefForecastersInnerBuilder
        > {
  _$LedgerQuestionBriefForecastersInner? _$v;

  String? _forecasterId;
  String? get forecasterId => _$this._forecasterId;
  set forecasterId(String? forecasterId) => _$this._forecasterId = forecasterId;

  num? _probability;
  num? get probability => _$this._probability;
  set probability(num? probability) => _$this._probability = probability;

  DateTime? _madeAt;
  DateTime? get madeAt => _$this._madeAt;
  set madeAt(DateTime? madeAt) => _$this._madeAt = madeAt;

  Date? _knowledgeCutoff;
  Date? get knowledgeCutoff => _$this._knowledgeCutoff;
  set knowledgeCutoff(Date? knowledgeCutoff) =>
      _$this._knowledgeCutoff = knowledgeCutoff;

  LedgerQuestionBriefForecastersInnerBuilder() {
    LedgerQuestionBriefForecastersInner._defaults(this);
  }

  LedgerQuestionBriefForecastersInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _forecasterId = $v.forecasterId;
      _probability = $v.probability;
      _madeAt = $v.madeAt;
      _knowledgeCutoff = $v.knowledgeCutoff;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LedgerQuestionBriefForecastersInner other) {
    _$v = other as _$LedgerQuestionBriefForecastersInner;
  }

  @override
  void update(
    void Function(LedgerQuestionBriefForecastersInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  LedgerQuestionBriefForecastersInner build() => _build();

  _$LedgerQuestionBriefForecastersInner _build() {
    final _$result =
        _$v ??
        _$LedgerQuestionBriefForecastersInner._(
          forecasterId: BuiltValueNullFieldError.checkNotNull(
            forecasterId,
            r'LedgerQuestionBriefForecastersInner',
            'forecasterId',
          ),
          probability: probability,
          madeAt: madeAt,
          knowledgeCutoff: knowledgeCutoff,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
