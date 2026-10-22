// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_score.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForecastScore extends ForecastScore {
  @override
  final String questionId;
  @override
  final String forecasterId;
  @override
  final num? brier;
  @override
  final num? logScore;
  @override
  final num? rps;
  @override
  final num? crps;
  @override
  final BuiltMap<String, num>? pinball;
  @override
  final ForecastScoreIntervalHits? intervalHits;
  @override
  final num? timeAveragedBrier;
  @override
  final int nDays;
  @override
  final num? finalProbability;
  @override
  final String scorerVersion;
  @override
  final DateTime computedAt;

  factory _$ForecastScore([void Function(ForecastScoreBuilder)? updates]) =>
      (ForecastScoreBuilder()..update(updates))._build();

  _$ForecastScore._({
    required this.questionId,
    required this.forecasterId,
    this.brier,
    this.logScore,
    this.rps,
    this.crps,
    this.pinball,
    this.intervalHits,
    this.timeAveragedBrier,
    required this.nDays,
    this.finalProbability,
    required this.scorerVersion,
    required this.computedAt,
  }) : super._();
  @override
  ForecastScore rebuild(void Function(ForecastScoreBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastScoreBuilder toBuilder() => ForecastScoreBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastScore &&
        questionId == other.questionId &&
        forecasterId == other.forecasterId &&
        brier == other.brier &&
        logScore == other.logScore &&
        rps == other.rps &&
        crps == other.crps &&
        pinball == other.pinball &&
        intervalHits == other.intervalHits &&
        timeAveragedBrier == other.timeAveragedBrier &&
        nDays == other.nDays &&
        finalProbability == other.finalProbability &&
        scorerVersion == other.scorerVersion &&
        computedAt == other.computedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, questionId.hashCode);
    _$hash = $jc(_$hash, forecasterId.hashCode);
    _$hash = $jc(_$hash, brier.hashCode);
    _$hash = $jc(_$hash, logScore.hashCode);
    _$hash = $jc(_$hash, rps.hashCode);
    _$hash = $jc(_$hash, crps.hashCode);
    _$hash = $jc(_$hash, pinball.hashCode);
    _$hash = $jc(_$hash, intervalHits.hashCode);
    _$hash = $jc(_$hash, timeAveragedBrier.hashCode);
    _$hash = $jc(_$hash, nDays.hashCode);
    _$hash = $jc(_$hash, finalProbability.hashCode);
    _$hash = $jc(_$hash, scorerVersion.hashCode);
    _$hash = $jc(_$hash, computedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecastScore')
          ..add('questionId', questionId)
          ..add('forecasterId', forecasterId)
          ..add('brier', brier)
          ..add('logScore', logScore)
          ..add('rps', rps)
          ..add('crps', crps)
          ..add('pinball', pinball)
          ..add('intervalHits', intervalHits)
          ..add('timeAveragedBrier', timeAveragedBrier)
          ..add('nDays', nDays)
          ..add('finalProbability', finalProbability)
          ..add('scorerVersion', scorerVersion)
          ..add('computedAt', computedAt))
        .toString();
  }
}

class ForecastScoreBuilder
    implements Builder<ForecastScore, ForecastScoreBuilder> {
  _$ForecastScore? _$v;

  String? _questionId;
  String? get questionId => _$this._questionId;
  set questionId(String? questionId) => _$this._questionId = questionId;

  String? _forecasterId;
  String? get forecasterId => _$this._forecasterId;
  set forecasterId(String? forecasterId) => _$this._forecasterId = forecasterId;

  num? _brier;
  num? get brier => _$this._brier;
  set brier(num? brier) => _$this._brier = brier;

  num? _logScore;
  num? get logScore => _$this._logScore;
  set logScore(num? logScore) => _$this._logScore = logScore;

  num? _rps;
  num? get rps => _$this._rps;
  set rps(num? rps) => _$this._rps = rps;

  num? _crps;
  num? get crps => _$this._crps;
  set crps(num? crps) => _$this._crps = crps;

  MapBuilder<String, num>? _pinball;
  MapBuilder<String, num> get pinball =>
      _$this._pinball ??= MapBuilder<String, num>();
  set pinball(MapBuilder<String, num>? pinball) => _$this._pinball = pinball;

  ForecastScoreIntervalHitsBuilder? _intervalHits;
  ForecastScoreIntervalHitsBuilder get intervalHits =>
      _$this._intervalHits ??= ForecastScoreIntervalHitsBuilder();
  set intervalHits(ForecastScoreIntervalHitsBuilder? intervalHits) =>
      _$this._intervalHits = intervalHits;

  num? _timeAveragedBrier;
  num? get timeAveragedBrier => _$this._timeAveragedBrier;
  set timeAveragedBrier(num? timeAveragedBrier) =>
      _$this._timeAveragedBrier = timeAveragedBrier;

  int? _nDays;
  int? get nDays => _$this._nDays;
  set nDays(int? nDays) => _$this._nDays = nDays;

  num? _finalProbability;
  num? get finalProbability => _$this._finalProbability;
  set finalProbability(num? finalProbability) =>
      _$this._finalProbability = finalProbability;

  String? _scorerVersion;
  String? get scorerVersion => _$this._scorerVersion;
  set scorerVersion(String? scorerVersion) =>
      _$this._scorerVersion = scorerVersion;

  DateTime? _computedAt;
  DateTime? get computedAt => _$this._computedAt;
  set computedAt(DateTime? computedAt) => _$this._computedAt = computedAt;

  ForecastScoreBuilder() {
    ForecastScore._defaults(this);
  }

  ForecastScoreBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _questionId = $v.questionId;
      _forecasterId = $v.forecasterId;
      _brier = $v.brier;
      _logScore = $v.logScore;
      _rps = $v.rps;
      _crps = $v.crps;
      _pinball = $v.pinball?.toBuilder();
      _intervalHits = $v.intervalHits?.toBuilder();
      _timeAveragedBrier = $v.timeAveragedBrier;
      _nDays = $v.nDays;
      _finalProbability = $v.finalProbability;
      _scorerVersion = $v.scorerVersion;
      _computedAt = $v.computedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastScore other) {
    _$v = other as _$ForecastScore;
  }

  @override
  void update(void Function(ForecastScoreBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastScore build() => _build();

  _$ForecastScore _build() {
    _$ForecastScore _$result;
    try {
      _$result =
          _$v ??
          _$ForecastScore._(
            questionId: BuiltValueNullFieldError.checkNotNull(
              questionId,
              r'ForecastScore',
              'questionId',
            ),
            forecasterId: BuiltValueNullFieldError.checkNotNull(
              forecasterId,
              r'ForecastScore',
              'forecasterId',
            ),
            brier: brier,
            logScore: logScore,
            rps: rps,
            crps: crps,
            pinball: _pinball?.build(),
            intervalHits: _intervalHits?.build(),
            timeAveragedBrier: timeAveragedBrier,
            nDays: BuiltValueNullFieldError.checkNotNull(
              nDays,
              r'ForecastScore',
              'nDays',
            ),
            finalProbability: finalProbability,
            scorerVersion: BuiltValueNullFieldError.checkNotNull(
              scorerVersion,
              r'ForecastScore',
              'scorerVersion',
            ),
            computedAt: BuiltValueNullFieldError.checkNotNull(
              computedAt,
              r'ForecastScore',
              'computedAt',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pinball';
        _pinball?.build();
        _$failedField = 'intervalHits';
        _intervalHits?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ForecastScore',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
