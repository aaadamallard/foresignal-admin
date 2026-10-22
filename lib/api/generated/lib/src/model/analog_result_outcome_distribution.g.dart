// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analog_result_outcome_distribution.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalogResultOutcomeDistribution
    extends AnalogResultOutcomeDistribution {
  @override
  final String outcome;
  @override
  final int analogCount;
  @override
  final int hits;
  @override
  final num? frequency;
  @override
  final num? baseRate;
  @override
  final String? baseRateId;
  @override
  final num probability;
  @override
  final StatInterval interval;

  factory _$AnalogResultOutcomeDistribution(
          [void Function(AnalogResultOutcomeDistributionBuilder)? updates]) =>
      (AnalogResultOutcomeDistributionBuilder()..update(updates))._build();

  _$AnalogResultOutcomeDistribution._(
      {required this.outcome,
      required this.analogCount,
      required this.hits,
      this.frequency,
      this.baseRate,
      this.baseRateId,
      required this.probability,
      required this.interval})
      : super._();
  @override
  AnalogResultOutcomeDistribution rebuild(
          void Function(AnalogResultOutcomeDistributionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalogResultOutcomeDistributionBuilder toBuilder() =>
      AnalogResultOutcomeDistributionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalogResultOutcomeDistribution &&
        outcome == other.outcome &&
        analogCount == other.analogCount &&
        hits == other.hits &&
        frequency == other.frequency &&
        baseRate == other.baseRate &&
        baseRateId == other.baseRateId &&
        probability == other.probability &&
        interval == other.interval;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, outcome.hashCode);
    _$hash = $jc(_$hash, analogCount.hashCode);
    _$hash = $jc(_$hash, hits.hashCode);
    _$hash = $jc(_$hash, frequency.hashCode);
    _$hash = $jc(_$hash, baseRate.hashCode);
    _$hash = $jc(_$hash, baseRateId.hashCode);
    _$hash = $jc(_$hash, probability.hashCode);
    _$hash = $jc(_$hash, interval.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalogResultOutcomeDistribution')
          ..add('outcome', outcome)
          ..add('analogCount', analogCount)
          ..add('hits', hits)
          ..add('frequency', frequency)
          ..add('baseRate', baseRate)
          ..add('baseRateId', baseRateId)
          ..add('probability', probability)
          ..add('interval', interval))
        .toString();
  }
}

class AnalogResultOutcomeDistributionBuilder
    implements
        Builder<AnalogResultOutcomeDistribution,
            AnalogResultOutcomeDistributionBuilder> {
  _$AnalogResultOutcomeDistribution? _$v;

  String? _outcome;
  String? get outcome => _$this._outcome;
  set outcome(String? outcome) => _$this._outcome = outcome;

  int? _analogCount;
  int? get analogCount => _$this._analogCount;
  set analogCount(int? analogCount) => _$this._analogCount = analogCount;

  int? _hits;
  int? get hits => _$this._hits;
  set hits(int? hits) => _$this._hits = hits;

  num? _frequency;
  num? get frequency => _$this._frequency;
  set frequency(num? frequency) => _$this._frequency = frequency;

  num? _baseRate;
  num? get baseRate => _$this._baseRate;
  set baseRate(num? baseRate) => _$this._baseRate = baseRate;

  String? _baseRateId;
  String? get baseRateId => _$this._baseRateId;
  set baseRateId(String? baseRateId) => _$this._baseRateId = baseRateId;

  num? _probability;
  num? get probability => _$this._probability;
  set probability(num? probability) => _$this._probability = probability;

  StatIntervalBuilder? _interval;
  StatIntervalBuilder get interval =>
      _$this._interval ??= StatIntervalBuilder();
  set interval(StatIntervalBuilder? interval) => _$this._interval = interval;

  AnalogResultOutcomeDistributionBuilder() {
    AnalogResultOutcomeDistribution._defaults(this);
  }

  AnalogResultOutcomeDistributionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _outcome = $v.outcome;
      _analogCount = $v.analogCount;
      _hits = $v.hits;
      _frequency = $v.frequency;
      _baseRate = $v.baseRate;
      _baseRateId = $v.baseRateId;
      _probability = $v.probability;
      _interval = $v.interval.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalogResultOutcomeDistribution other) {
    _$v = other as _$AnalogResultOutcomeDistribution;
  }

  @override
  void update(void Function(AnalogResultOutcomeDistributionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalogResultOutcomeDistribution build() => _build();

  _$AnalogResultOutcomeDistribution _build() {
    _$AnalogResultOutcomeDistribution _$result;
    try {
      _$result = _$v ??
          _$AnalogResultOutcomeDistribution._(
            outcome: BuiltValueNullFieldError.checkNotNull(
                outcome, r'AnalogResultOutcomeDistribution', 'outcome'),
            analogCount: BuiltValueNullFieldError.checkNotNull(
                analogCount, r'AnalogResultOutcomeDistribution', 'analogCount'),
            hits: BuiltValueNullFieldError.checkNotNull(
                hits, r'AnalogResultOutcomeDistribution', 'hits'),
            frequency: frequency,
            baseRate: baseRate,
            baseRateId: baseRateId,
            probability: BuiltValueNullFieldError.checkNotNull(
                probability, r'AnalogResultOutcomeDistribution', 'probability'),
            interval: interval.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'interval';
        interval.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AnalogResultOutcomeDistribution', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
