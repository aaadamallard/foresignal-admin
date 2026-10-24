// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scorecard_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ScorecardEntryLabelEnum _$scorecardEntryLabelEnum_ok =
    const ScorecardEntryLabelEnum._('ok');
const ScorecardEntryLabelEnum _$scorecardEntryLabelEnum_insufficient =
    const ScorecardEntryLabelEnum._('insufficient');

ScorecardEntryLabelEnum _$scorecardEntryLabelEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$scorecardEntryLabelEnum_ok;
    case 'insufficient':
      return _$scorecardEntryLabelEnum_insufficient;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ScorecardEntryLabelEnum> _$scorecardEntryLabelEnumValues =
    BuiltSet<ScorecardEntryLabelEnum>(const <ScorecardEntryLabelEnum>[
      _$scorecardEntryLabelEnum_ok,
      _$scorecardEntryLabelEnum_insufficient,
    ]);

Serializer<ScorecardEntryLabelEnum> _$scorecardEntryLabelEnumSerializer =
    _$ScorecardEntryLabelEnumSerializer();

class _$ScorecardEntryLabelEnumSerializer
    implements PrimitiveSerializer<ScorecardEntryLabelEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'insufficient': 'insufficient',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'insufficient': 'insufficient',
  };

  @override
  final Iterable<Type> types = const <Type>[ScorecardEntryLabelEnum];
  @override
  final String wireName = 'ScorecardEntryLabelEnum';

  @override
  Object serialize(
    Serializers serializers,
    ScorecardEntryLabelEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ScorecardEntryLabelEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ScorecardEntryLabelEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ScorecardEntry extends ScorecardEntry {
  @override
  final String forecasterId;
  @override
  final String? forecasterType;
  @override
  final String? category;
  @override
  final int nResolved;
  @override
  final int? nForecasts;
  @override
  final ScorecardEntryLabelEnum label;
  @override
  final num? brier;
  @override
  final num? logScore;
  @override
  final num? rps;
  @override
  final num? crps;
  @override
  final num? timeAveragedBrier;
  @override
  final ScorecardEntryIntervalCoverage? intervalCoverage;
  @override
  final ScorecardEntryMurphy? murphy;
  @override
  final ScorecardEntrySkill? skill;
  @override
  final ScorecardEntryBias? bias;
  @override
  final ScorecardEntryRecalibration? recalibration;
  @override
  final num? ensembleWeight;

  factory _$ScorecardEntry([void Function(ScorecardEntryBuilder)? updates]) =>
      (ScorecardEntryBuilder()..update(updates))._build();

  _$ScorecardEntry._({
    required this.forecasterId,
    this.forecasterType,
    this.category,
    required this.nResolved,
    this.nForecasts,
    required this.label,
    this.brier,
    this.logScore,
    this.rps,
    this.crps,
    this.timeAveragedBrier,
    this.intervalCoverage,
    this.murphy,
    this.skill,
    this.bias,
    this.recalibration,
    this.ensembleWeight,
  }) : super._();
  @override
  ScorecardEntry rebuild(void Function(ScorecardEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScorecardEntryBuilder toBuilder() => ScorecardEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScorecardEntry &&
        forecasterId == other.forecasterId &&
        forecasterType == other.forecasterType &&
        category == other.category &&
        nResolved == other.nResolved &&
        nForecasts == other.nForecasts &&
        label == other.label &&
        brier == other.brier &&
        logScore == other.logScore &&
        rps == other.rps &&
        crps == other.crps &&
        timeAveragedBrier == other.timeAveragedBrier &&
        intervalCoverage == other.intervalCoverage &&
        murphy == other.murphy &&
        skill == other.skill &&
        bias == other.bias &&
        recalibration == other.recalibration &&
        ensembleWeight == other.ensembleWeight;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, forecasterId.hashCode);
    _$hash = $jc(_$hash, forecasterType.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, nResolved.hashCode);
    _$hash = $jc(_$hash, nForecasts.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, brier.hashCode);
    _$hash = $jc(_$hash, logScore.hashCode);
    _$hash = $jc(_$hash, rps.hashCode);
    _$hash = $jc(_$hash, crps.hashCode);
    _$hash = $jc(_$hash, timeAveragedBrier.hashCode);
    _$hash = $jc(_$hash, intervalCoverage.hashCode);
    _$hash = $jc(_$hash, murphy.hashCode);
    _$hash = $jc(_$hash, skill.hashCode);
    _$hash = $jc(_$hash, bias.hashCode);
    _$hash = $jc(_$hash, recalibration.hashCode);
    _$hash = $jc(_$hash, ensembleWeight.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScorecardEntry')
          ..add('forecasterId', forecasterId)
          ..add('forecasterType', forecasterType)
          ..add('category', category)
          ..add('nResolved', nResolved)
          ..add('nForecasts', nForecasts)
          ..add('label', label)
          ..add('brier', brier)
          ..add('logScore', logScore)
          ..add('rps', rps)
          ..add('crps', crps)
          ..add('timeAveragedBrier', timeAveragedBrier)
          ..add('intervalCoverage', intervalCoverage)
          ..add('murphy', murphy)
          ..add('skill', skill)
          ..add('bias', bias)
          ..add('recalibration', recalibration)
          ..add('ensembleWeight', ensembleWeight))
        .toString();
  }
}

class ScorecardEntryBuilder
    implements Builder<ScorecardEntry, ScorecardEntryBuilder> {
  _$ScorecardEntry? _$v;

  String? _forecasterId;
  String? get forecasterId => _$this._forecasterId;
  set forecasterId(String? forecasterId) => _$this._forecasterId = forecasterId;

  String? _forecasterType;
  String? get forecasterType => _$this._forecasterType;
  set forecasterType(String? forecasterType) =>
      _$this._forecasterType = forecasterType;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  int? _nResolved;
  int? get nResolved => _$this._nResolved;
  set nResolved(int? nResolved) => _$this._nResolved = nResolved;

  int? _nForecasts;
  int? get nForecasts => _$this._nForecasts;
  set nForecasts(int? nForecasts) => _$this._nForecasts = nForecasts;

  ScorecardEntryLabelEnum? _label;
  ScorecardEntryLabelEnum? get label => _$this._label;
  set label(ScorecardEntryLabelEnum? label) => _$this._label = label;

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

  num? _timeAveragedBrier;
  num? get timeAveragedBrier => _$this._timeAveragedBrier;
  set timeAveragedBrier(num? timeAveragedBrier) =>
      _$this._timeAveragedBrier = timeAveragedBrier;

  ScorecardEntryIntervalCoverageBuilder? _intervalCoverage;
  ScorecardEntryIntervalCoverageBuilder get intervalCoverage =>
      _$this._intervalCoverage ??= ScorecardEntryIntervalCoverageBuilder();
  set intervalCoverage(
    ScorecardEntryIntervalCoverageBuilder? intervalCoverage,
  ) => _$this._intervalCoverage = intervalCoverage;

  ScorecardEntryMurphyBuilder? _murphy;
  ScorecardEntryMurphyBuilder get murphy =>
      _$this._murphy ??= ScorecardEntryMurphyBuilder();
  set murphy(ScorecardEntryMurphyBuilder? murphy) => _$this._murphy = murphy;

  ScorecardEntrySkillBuilder? _skill;
  ScorecardEntrySkillBuilder get skill =>
      _$this._skill ??= ScorecardEntrySkillBuilder();
  set skill(ScorecardEntrySkillBuilder? skill) => _$this._skill = skill;

  ScorecardEntryBiasBuilder? _bias;
  ScorecardEntryBiasBuilder get bias =>
      _$this._bias ??= ScorecardEntryBiasBuilder();
  set bias(ScorecardEntryBiasBuilder? bias) => _$this._bias = bias;

  ScorecardEntryRecalibrationBuilder? _recalibration;
  ScorecardEntryRecalibrationBuilder get recalibration =>
      _$this._recalibration ??= ScorecardEntryRecalibrationBuilder();
  set recalibration(ScorecardEntryRecalibrationBuilder? recalibration) =>
      _$this._recalibration = recalibration;

  num? _ensembleWeight;
  num? get ensembleWeight => _$this._ensembleWeight;
  set ensembleWeight(num? ensembleWeight) =>
      _$this._ensembleWeight = ensembleWeight;

  ScorecardEntryBuilder() {
    ScorecardEntry._defaults(this);
  }

  ScorecardEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _forecasterId = $v.forecasterId;
      _forecasterType = $v.forecasterType;
      _category = $v.category;
      _nResolved = $v.nResolved;
      _nForecasts = $v.nForecasts;
      _label = $v.label;
      _brier = $v.brier;
      _logScore = $v.logScore;
      _rps = $v.rps;
      _crps = $v.crps;
      _timeAveragedBrier = $v.timeAveragedBrier;
      _intervalCoverage = $v.intervalCoverage?.toBuilder();
      _murphy = $v.murphy?.toBuilder();
      _skill = $v.skill?.toBuilder();
      _bias = $v.bias?.toBuilder();
      _recalibration = $v.recalibration?.toBuilder();
      _ensembleWeight = $v.ensembleWeight;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScorecardEntry other) {
    _$v = other as _$ScorecardEntry;
  }

  @override
  void update(void Function(ScorecardEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScorecardEntry build() => _build();

  _$ScorecardEntry _build() {
    _$ScorecardEntry _$result;
    try {
      _$result =
          _$v ??
          _$ScorecardEntry._(
            forecasterId: BuiltValueNullFieldError.checkNotNull(
              forecasterId,
              r'ScorecardEntry',
              'forecasterId',
            ),
            forecasterType: forecasterType,
            category: category,
            nResolved: BuiltValueNullFieldError.checkNotNull(
              nResolved,
              r'ScorecardEntry',
              'nResolved',
            ),
            nForecasts: nForecasts,
            label: BuiltValueNullFieldError.checkNotNull(
              label,
              r'ScorecardEntry',
              'label',
            ),
            brier: brier,
            logScore: logScore,
            rps: rps,
            crps: crps,
            timeAveragedBrier: timeAveragedBrier,
            intervalCoverage: _intervalCoverage?.build(),
            murphy: _murphy?.build(),
            skill: _skill?.build(),
            bias: _bias?.build(),
            recalibration: _recalibration?.build(),
            ensembleWeight: ensembleWeight,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'intervalCoverage';
        _intervalCoverage?.build();
        _$failedField = 'murphy';
        _murphy?.build();
        _$failedField = 'skill';
        _skill?.build();
        _$failedField = 'bias';
        _bias?.build();
        _$failedField = 'recalibration';
        _recalibration?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ScorecardEntry',
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
