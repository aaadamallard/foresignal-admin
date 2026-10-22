// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regional_index_def_skill.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegionalIndexDefSkill extends RegionalIndexDefSkill {
  @override
  final DateTime evaluatedAt;
  @override
  final int n;
  @override
  final num? pinballLoss;
  @override
  final num? logScore;
  @override
  final num? baselinePinballLoss;
  @override
  final num? baselineLogScore;
  @override
  final num? skillPinball;
  @override
  final num? skillLog;
  @override
  final String? baseline;

  factory _$RegionalIndexDefSkill(
          [void Function(RegionalIndexDefSkillBuilder)? updates]) =>
      (RegionalIndexDefSkillBuilder()..update(updates))._build();

  _$RegionalIndexDefSkill._(
      {required this.evaluatedAt,
      required this.n,
      this.pinballLoss,
      this.logScore,
      this.baselinePinballLoss,
      this.baselineLogScore,
      this.skillPinball,
      this.skillLog,
      this.baseline})
      : super._();
  @override
  RegionalIndexDefSkill rebuild(
          void Function(RegionalIndexDefSkillBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegionalIndexDefSkillBuilder toBuilder() =>
      RegionalIndexDefSkillBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegionalIndexDefSkill &&
        evaluatedAt == other.evaluatedAt &&
        n == other.n &&
        pinballLoss == other.pinballLoss &&
        logScore == other.logScore &&
        baselinePinballLoss == other.baselinePinballLoss &&
        baselineLogScore == other.baselineLogScore &&
        skillPinball == other.skillPinball &&
        skillLog == other.skillLog &&
        baseline == other.baseline;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, evaluatedAt.hashCode);
    _$hash = $jc(_$hash, n.hashCode);
    _$hash = $jc(_$hash, pinballLoss.hashCode);
    _$hash = $jc(_$hash, logScore.hashCode);
    _$hash = $jc(_$hash, baselinePinballLoss.hashCode);
    _$hash = $jc(_$hash, baselineLogScore.hashCode);
    _$hash = $jc(_$hash, skillPinball.hashCode);
    _$hash = $jc(_$hash, skillLog.hashCode);
    _$hash = $jc(_$hash, baseline.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegionalIndexDefSkill')
          ..add('evaluatedAt', evaluatedAt)
          ..add('n', n)
          ..add('pinballLoss', pinballLoss)
          ..add('logScore', logScore)
          ..add('baselinePinballLoss', baselinePinballLoss)
          ..add('baselineLogScore', baselineLogScore)
          ..add('skillPinball', skillPinball)
          ..add('skillLog', skillLog)
          ..add('baseline', baseline))
        .toString();
  }
}

class RegionalIndexDefSkillBuilder
    implements Builder<RegionalIndexDefSkill, RegionalIndexDefSkillBuilder> {
  _$RegionalIndexDefSkill? _$v;

  DateTime? _evaluatedAt;
  DateTime? get evaluatedAt => _$this._evaluatedAt;
  set evaluatedAt(DateTime? evaluatedAt) => _$this._evaluatedAt = evaluatedAt;

  int? _n;
  int? get n => _$this._n;
  set n(int? n) => _$this._n = n;

  num? _pinballLoss;
  num? get pinballLoss => _$this._pinballLoss;
  set pinballLoss(num? pinballLoss) => _$this._pinballLoss = pinballLoss;

  num? _logScore;
  num? get logScore => _$this._logScore;
  set logScore(num? logScore) => _$this._logScore = logScore;

  num? _baselinePinballLoss;
  num? get baselinePinballLoss => _$this._baselinePinballLoss;
  set baselinePinballLoss(num? baselinePinballLoss) =>
      _$this._baselinePinballLoss = baselinePinballLoss;

  num? _baselineLogScore;
  num? get baselineLogScore => _$this._baselineLogScore;
  set baselineLogScore(num? baselineLogScore) =>
      _$this._baselineLogScore = baselineLogScore;

  num? _skillPinball;
  num? get skillPinball => _$this._skillPinball;
  set skillPinball(num? skillPinball) => _$this._skillPinball = skillPinball;

  num? _skillLog;
  num? get skillLog => _$this._skillLog;
  set skillLog(num? skillLog) => _$this._skillLog = skillLog;

  String? _baseline;
  String? get baseline => _$this._baseline;
  set baseline(String? baseline) => _$this._baseline = baseline;

  RegionalIndexDefSkillBuilder() {
    RegionalIndexDefSkill._defaults(this);
  }

  RegionalIndexDefSkillBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _evaluatedAt = $v.evaluatedAt;
      _n = $v.n;
      _pinballLoss = $v.pinballLoss;
      _logScore = $v.logScore;
      _baselinePinballLoss = $v.baselinePinballLoss;
      _baselineLogScore = $v.baselineLogScore;
      _skillPinball = $v.skillPinball;
      _skillLog = $v.skillLog;
      _baseline = $v.baseline;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegionalIndexDefSkill other) {
    _$v = other as _$RegionalIndexDefSkill;
  }

  @override
  void update(void Function(RegionalIndexDefSkillBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegionalIndexDefSkill build() => _build();

  _$RegionalIndexDefSkill _build() {
    final _$result = _$v ??
        _$RegionalIndexDefSkill._(
          evaluatedAt: BuiltValueNullFieldError.checkNotNull(
              evaluatedAt, r'RegionalIndexDefSkill', 'evaluatedAt'),
          n: BuiltValueNullFieldError.checkNotNull(
              n, r'RegionalIndexDefSkill', 'n'),
          pinballLoss: pinballLoss,
          logScore: logScore,
          baselinePinballLoss: baselinePinballLoss,
          baselineLogScore: baselineLogScore,
          skillPinball: skillPinball,
          skillLog: skillLog,
          baseline: baseline,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
