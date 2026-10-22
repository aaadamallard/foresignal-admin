// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precursor_window_stats.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PrecursorWindowStatsVerdictEnum
    _$precursorWindowStatsVerdictEnum_insufficient =
    const PrecursorWindowStatsVerdictEnum._('insufficient');
const PrecursorWindowStatsVerdictEnum
    _$precursorWindowStatsVerdictEnum_noEvidenceOfPrecedence =
    const PrecursorWindowStatsVerdictEnum._('noEvidenceOfPrecedence');
const PrecursorWindowStatsVerdictEnum _$precursorWindowStatsVerdictEnum_weak =
    const PrecursorWindowStatsVerdictEnum._('weak');
const PrecursorWindowStatsVerdictEnum
    _$precursorWindowStatsVerdictEnum_notable =
    const PrecursorWindowStatsVerdictEnum._('notable');
const PrecursorWindowStatsVerdictEnum
    _$precursorWindowStatsVerdictEnum_validated =
    const PrecursorWindowStatsVerdictEnum._('validated');
const PrecursorWindowStatsVerdictEnum _$precursorWindowStatsVerdictEnum_failed =
    const PrecursorWindowStatsVerdictEnum._('failed');

PrecursorWindowStatsVerdictEnum _$precursorWindowStatsVerdictEnumValueOf(
    String name) {
  switch (name) {
    case 'insufficient':
      return _$precursorWindowStatsVerdictEnum_insufficient;
    case 'noEvidenceOfPrecedence':
      return _$precursorWindowStatsVerdictEnum_noEvidenceOfPrecedence;
    case 'weak':
      return _$precursorWindowStatsVerdictEnum_weak;
    case 'notable':
      return _$precursorWindowStatsVerdictEnum_notable;
    case 'validated':
      return _$precursorWindowStatsVerdictEnum_validated;
    case 'failed':
      return _$precursorWindowStatsVerdictEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PrecursorWindowStatsVerdictEnum>
    _$precursorWindowStatsVerdictEnumValues = BuiltSet<
        PrecursorWindowStatsVerdictEnum>(const <PrecursorWindowStatsVerdictEnum>[
  _$precursorWindowStatsVerdictEnum_insufficient,
  _$precursorWindowStatsVerdictEnum_noEvidenceOfPrecedence,
  _$precursorWindowStatsVerdictEnum_weak,
  _$precursorWindowStatsVerdictEnum_notable,
  _$precursorWindowStatsVerdictEnum_validated,
  _$precursorWindowStatsVerdictEnum_failed,
]);

Serializer<PrecursorWindowStatsVerdictEnum>
    _$precursorWindowStatsVerdictEnumSerializer =
    _$PrecursorWindowStatsVerdictEnumSerializer();

class _$PrecursorWindowStatsVerdictEnumSerializer
    implements PrimitiveSerializer<PrecursorWindowStatsVerdictEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'insufficient': 'insufficient',
    'noEvidenceOfPrecedence': 'no-evidence-of-precedence',
    'weak': 'weak',
    'notable': 'notable',
    'validated': 'validated',
    'failed': 'failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'insufficient': 'insufficient',
    'no-evidence-of-precedence': 'noEvidenceOfPrecedence',
    'weak': 'weak',
    'notable': 'notable',
    'validated': 'validated',
    'failed': 'failed',
  };

  @override
  final Iterable<Type> types = const <Type>[PrecursorWindowStatsVerdictEnum];
  @override
  final String wireName = 'PrecursorWindowStatsVerdictEnum';

  @override
  Object serialize(
          Serializers serializers, PrecursorWindowStatsVerdictEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PrecursorWindowStatsVerdictEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PrecursorWindowStatsVerdictEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PrecursorWindowStats extends PrecursorWindowStats {
  @override
  final TimeRange window;
  @override
  final int n;
  @override
  final int? hits;
  @override
  final num? hitRate;
  @override
  final StatInterval? hitRateInterval;
  @override
  final num? baseRate;
  @override
  final num? lift;
  @override
  final num? correlation;
  @override
  final String? bestLag;
  @override
  final num? p;
  @override
  final num? adjustedP;
  @override
  final PrecursorWindowStatsVerdictEnum verdict;
  @override
  final PrecursorWindowStatsReverse? reverse;
  @override
  final int? lowDetectabilityExcluded;
  @override
  final num? coverageGapFraction;
  @override
  final int? blockLength;
  @override
  final String? reason;

  factory _$PrecursorWindowStats(
          [void Function(PrecursorWindowStatsBuilder)? updates]) =>
      (PrecursorWindowStatsBuilder()..update(updates))._build();

  _$PrecursorWindowStats._(
      {required this.window,
      required this.n,
      this.hits,
      this.hitRate,
      this.hitRateInterval,
      this.baseRate,
      this.lift,
      this.correlation,
      this.bestLag,
      this.p,
      this.adjustedP,
      required this.verdict,
      this.reverse,
      this.lowDetectabilityExcluded,
      this.coverageGapFraction,
      this.blockLength,
      this.reason})
      : super._();
  @override
  PrecursorWindowStats rebuild(
          void Function(PrecursorWindowStatsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrecursorWindowStatsBuilder toBuilder() =>
      PrecursorWindowStatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrecursorWindowStats &&
        window == other.window &&
        n == other.n &&
        hits == other.hits &&
        hitRate == other.hitRate &&
        hitRateInterval == other.hitRateInterval &&
        baseRate == other.baseRate &&
        lift == other.lift &&
        correlation == other.correlation &&
        bestLag == other.bestLag &&
        p == other.p &&
        adjustedP == other.adjustedP &&
        verdict == other.verdict &&
        reverse == other.reverse &&
        lowDetectabilityExcluded == other.lowDetectabilityExcluded &&
        coverageGapFraction == other.coverageGapFraction &&
        blockLength == other.blockLength &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, window.hashCode);
    _$hash = $jc(_$hash, n.hashCode);
    _$hash = $jc(_$hash, hits.hashCode);
    _$hash = $jc(_$hash, hitRate.hashCode);
    _$hash = $jc(_$hash, hitRateInterval.hashCode);
    _$hash = $jc(_$hash, baseRate.hashCode);
    _$hash = $jc(_$hash, lift.hashCode);
    _$hash = $jc(_$hash, correlation.hashCode);
    _$hash = $jc(_$hash, bestLag.hashCode);
    _$hash = $jc(_$hash, p.hashCode);
    _$hash = $jc(_$hash, adjustedP.hashCode);
    _$hash = $jc(_$hash, verdict.hashCode);
    _$hash = $jc(_$hash, reverse.hashCode);
    _$hash = $jc(_$hash, lowDetectabilityExcluded.hashCode);
    _$hash = $jc(_$hash, coverageGapFraction.hashCode);
    _$hash = $jc(_$hash, blockLength.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrecursorWindowStats')
          ..add('window', window)
          ..add('n', n)
          ..add('hits', hits)
          ..add('hitRate', hitRate)
          ..add('hitRateInterval', hitRateInterval)
          ..add('baseRate', baseRate)
          ..add('lift', lift)
          ..add('correlation', correlation)
          ..add('bestLag', bestLag)
          ..add('p', p)
          ..add('adjustedP', adjustedP)
          ..add('verdict', verdict)
          ..add('reverse', reverse)
          ..add('lowDetectabilityExcluded', lowDetectabilityExcluded)
          ..add('coverageGapFraction', coverageGapFraction)
          ..add('blockLength', blockLength)
          ..add('reason', reason))
        .toString();
  }
}

class PrecursorWindowStatsBuilder
    implements Builder<PrecursorWindowStats, PrecursorWindowStatsBuilder> {
  _$PrecursorWindowStats? _$v;

  TimeRangeBuilder? _window;
  TimeRangeBuilder get window => _$this._window ??= TimeRangeBuilder();
  set window(TimeRangeBuilder? window) => _$this._window = window;

  int? _n;
  int? get n => _$this._n;
  set n(int? n) => _$this._n = n;

  int? _hits;
  int? get hits => _$this._hits;
  set hits(int? hits) => _$this._hits = hits;

  num? _hitRate;
  num? get hitRate => _$this._hitRate;
  set hitRate(num? hitRate) => _$this._hitRate = hitRate;

  StatIntervalBuilder? _hitRateInterval;
  StatIntervalBuilder get hitRateInterval =>
      _$this._hitRateInterval ??= StatIntervalBuilder();
  set hitRateInterval(StatIntervalBuilder? hitRateInterval) =>
      _$this._hitRateInterval = hitRateInterval;

  num? _baseRate;
  num? get baseRate => _$this._baseRate;
  set baseRate(num? baseRate) => _$this._baseRate = baseRate;

  num? _lift;
  num? get lift => _$this._lift;
  set lift(num? lift) => _$this._lift = lift;

  num? _correlation;
  num? get correlation => _$this._correlation;
  set correlation(num? correlation) => _$this._correlation = correlation;

  String? _bestLag;
  String? get bestLag => _$this._bestLag;
  set bestLag(String? bestLag) => _$this._bestLag = bestLag;

  num? _p;
  num? get p => _$this._p;
  set p(num? p) => _$this._p = p;

  num? _adjustedP;
  num? get adjustedP => _$this._adjustedP;
  set adjustedP(num? adjustedP) => _$this._adjustedP = adjustedP;

  PrecursorWindowStatsVerdictEnum? _verdict;
  PrecursorWindowStatsVerdictEnum? get verdict => _$this._verdict;
  set verdict(PrecursorWindowStatsVerdictEnum? verdict) =>
      _$this._verdict = verdict;

  PrecursorWindowStatsReverseBuilder? _reverse;
  PrecursorWindowStatsReverseBuilder get reverse =>
      _$this._reverse ??= PrecursorWindowStatsReverseBuilder();
  set reverse(PrecursorWindowStatsReverseBuilder? reverse) =>
      _$this._reverse = reverse;

  int? _lowDetectabilityExcluded;
  int? get lowDetectabilityExcluded => _$this._lowDetectabilityExcluded;
  set lowDetectabilityExcluded(int? lowDetectabilityExcluded) =>
      _$this._lowDetectabilityExcluded = lowDetectabilityExcluded;

  num? _coverageGapFraction;
  num? get coverageGapFraction => _$this._coverageGapFraction;
  set coverageGapFraction(num? coverageGapFraction) =>
      _$this._coverageGapFraction = coverageGapFraction;

  int? _blockLength;
  int? get blockLength => _$this._blockLength;
  set blockLength(int? blockLength) => _$this._blockLength = blockLength;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  PrecursorWindowStatsBuilder() {
    PrecursorWindowStats._defaults(this);
  }

  PrecursorWindowStatsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _window = $v.window.toBuilder();
      _n = $v.n;
      _hits = $v.hits;
      _hitRate = $v.hitRate;
      _hitRateInterval = $v.hitRateInterval?.toBuilder();
      _baseRate = $v.baseRate;
      _lift = $v.lift;
      _correlation = $v.correlation;
      _bestLag = $v.bestLag;
      _p = $v.p;
      _adjustedP = $v.adjustedP;
      _verdict = $v.verdict;
      _reverse = $v.reverse?.toBuilder();
      _lowDetectabilityExcluded = $v.lowDetectabilityExcluded;
      _coverageGapFraction = $v.coverageGapFraction;
      _blockLength = $v.blockLength;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrecursorWindowStats other) {
    _$v = other as _$PrecursorWindowStats;
  }

  @override
  void update(void Function(PrecursorWindowStatsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrecursorWindowStats build() => _build();

  _$PrecursorWindowStats _build() {
    _$PrecursorWindowStats _$result;
    try {
      _$result = _$v ??
          _$PrecursorWindowStats._(
            window: window.build(),
            n: BuiltValueNullFieldError.checkNotNull(
                n, r'PrecursorWindowStats', 'n'),
            hits: hits,
            hitRate: hitRate,
            hitRateInterval: _hitRateInterval?.build(),
            baseRate: baseRate,
            lift: lift,
            correlation: correlation,
            bestLag: bestLag,
            p: p,
            adjustedP: adjustedP,
            verdict: BuiltValueNullFieldError.checkNotNull(
                verdict, r'PrecursorWindowStats', 'verdict'),
            reverse: _reverse?.build(),
            lowDetectabilityExcluded: lowDetectabilityExcluded,
            coverageGapFraction: coverageGapFraction,
            blockLength: blockLength,
            reason: reason,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'window';
        window.build();

        _$failedField = 'hitRateInterval';
        _hitRateInterval?.build();

        _$failedField = 'reverse';
        _reverse?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PrecursorWindowStats', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
