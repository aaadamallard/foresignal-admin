// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regional_outlook_skill.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RegionalOutlookSkillLabelEnum _$regionalOutlookSkillLabelEnum_ok =
    const RegionalOutlookSkillLabelEnum._('ok');
const RegionalOutlookSkillLabelEnum
    _$regionalOutlookSkillLabelEnum_insufficient =
    const RegionalOutlookSkillLabelEnum._('insufficient');

RegionalOutlookSkillLabelEnum _$regionalOutlookSkillLabelEnumValueOf(
    String name) {
  switch (name) {
    case 'ok':
      return _$regionalOutlookSkillLabelEnum_ok;
    case 'insufficient':
      return _$regionalOutlookSkillLabelEnum_insufficient;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RegionalOutlookSkillLabelEnum>
    _$regionalOutlookSkillLabelEnumValues = BuiltSet<
        RegionalOutlookSkillLabelEnum>(const <RegionalOutlookSkillLabelEnum>[
  _$regionalOutlookSkillLabelEnum_ok,
  _$regionalOutlookSkillLabelEnum_insufficient,
]);

Serializer<RegionalOutlookSkillLabelEnum>
    _$regionalOutlookSkillLabelEnumSerializer =
    _$RegionalOutlookSkillLabelEnumSerializer();

class _$RegionalOutlookSkillLabelEnumSerializer
    implements PrimitiveSerializer<RegionalOutlookSkillLabelEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'insufficient': 'insufficient',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'insufficient': 'insufficient',
  };

  @override
  final Iterable<Type> types = const <Type>[RegionalOutlookSkillLabelEnum];
  @override
  final String wireName = 'RegionalOutlookSkillLabelEnum';

  @override
  Object serialize(
          Serializers serializers, RegionalOutlookSkillLabelEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RegionalOutlookSkillLabelEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RegionalOutlookSkillLabelEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$RegionalOutlookSkill extends RegionalOutlookSkill {
  @override
  final int? evaluatedWeeks;
  @override
  final int n;
  @override
  final num? meanPinballLoss;
  @override
  final num? crps;
  @override
  final num? skillVsSeasonalNaive;
  @override
  final num? skillVsClimatology;
  @override
  final num? intervalCoverageP10P90;
  @override
  final RegionalOutlookSkillLabelEnum label;
  @override
  final BuiltMap<String, JsonObject?>? backtest;

  factory _$RegionalOutlookSkill(
          [void Function(RegionalOutlookSkillBuilder)? updates]) =>
      (RegionalOutlookSkillBuilder()..update(updates))._build();

  _$RegionalOutlookSkill._(
      {this.evaluatedWeeks,
      required this.n,
      this.meanPinballLoss,
      this.crps,
      this.skillVsSeasonalNaive,
      this.skillVsClimatology,
      this.intervalCoverageP10P90,
      required this.label,
      this.backtest})
      : super._();
  @override
  RegionalOutlookSkill rebuild(
          void Function(RegionalOutlookSkillBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegionalOutlookSkillBuilder toBuilder() =>
      RegionalOutlookSkillBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegionalOutlookSkill &&
        evaluatedWeeks == other.evaluatedWeeks &&
        n == other.n &&
        meanPinballLoss == other.meanPinballLoss &&
        crps == other.crps &&
        skillVsSeasonalNaive == other.skillVsSeasonalNaive &&
        skillVsClimatology == other.skillVsClimatology &&
        intervalCoverageP10P90 == other.intervalCoverageP10P90 &&
        label == other.label &&
        backtest == other.backtest;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, evaluatedWeeks.hashCode);
    _$hash = $jc(_$hash, n.hashCode);
    _$hash = $jc(_$hash, meanPinballLoss.hashCode);
    _$hash = $jc(_$hash, crps.hashCode);
    _$hash = $jc(_$hash, skillVsSeasonalNaive.hashCode);
    _$hash = $jc(_$hash, skillVsClimatology.hashCode);
    _$hash = $jc(_$hash, intervalCoverageP10P90.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, backtest.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegionalOutlookSkill')
          ..add('evaluatedWeeks', evaluatedWeeks)
          ..add('n', n)
          ..add('meanPinballLoss', meanPinballLoss)
          ..add('crps', crps)
          ..add('skillVsSeasonalNaive', skillVsSeasonalNaive)
          ..add('skillVsClimatology', skillVsClimatology)
          ..add('intervalCoverageP10P90', intervalCoverageP10P90)
          ..add('label', label)
          ..add('backtest', backtest))
        .toString();
  }
}

class RegionalOutlookSkillBuilder
    implements Builder<RegionalOutlookSkill, RegionalOutlookSkillBuilder> {
  _$RegionalOutlookSkill? _$v;

  int? _evaluatedWeeks;
  int? get evaluatedWeeks => _$this._evaluatedWeeks;
  set evaluatedWeeks(int? evaluatedWeeks) =>
      _$this._evaluatedWeeks = evaluatedWeeks;

  int? _n;
  int? get n => _$this._n;
  set n(int? n) => _$this._n = n;

  num? _meanPinballLoss;
  num? get meanPinballLoss => _$this._meanPinballLoss;
  set meanPinballLoss(num? meanPinballLoss) =>
      _$this._meanPinballLoss = meanPinballLoss;

  num? _crps;
  num? get crps => _$this._crps;
  set crps(num? crps) => _$this._crps = crps;

  num? _skillVsSeasonalNaive;
  num? get skillVsSeasonalNaive => _$this._skillVsSeasonalNaive;
  set skillVsSeasonalNaive(num? skillVsSeasonalNaive) =>
      _$this._skillVsSeasonalNaive = skillVsSeasonalNaive;

  num? _skillVsClimatology;
  num? get skillVsClimatology => _$this._skillVsClimatology;
  set skillVsClimatology(num? skillVsClimatology) =>
      _$this._skillVsClimatology = skillVsClimatology;

  num? _intervalCoverageP10P90;
  num? get intervalCoverageP10P90 => _$this._intervalCoverageP10P90;
  set intervalCoverageP10P90(num? intervalCoverageP10P90) =>
      _$this._intervalCoverageP10P90 = intervalCoverageP10P90;

  RegionalOutlookSkillLabelEnum? _label;
  RegionalOutlookSkillLabelEnum? get label => _$this._label;
  set label(RegionalOutlookSkillLabelEnum? label) => _$this._label = label;

  MapBuilder<String, JsonObject?>? _backtest;
  MapBuilder<String, JsonObject?> get backtest =>
      _$this._backtest ??= MapBuilder<String, JsonObject?>();
  set backtest(MapBuilder<String, JsonObject?>? backtest) =>
      _$this._backtest = backtest;

  RegionalOutlookSkillBuilder() {
    RegionalOutlookSkill._defaults(this);
  }

  RegionalOutlookSkillBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _evaluatedWeeks = $v.evaluatedWeeks;
      _n = $v.n;
      _meanPinballLoss = $v.meanPinballLoss;
      _crps = $v.crps;
      _skillVsSeasonalNaive = $v.skillVsSeasonalNaive;
      _skillVsClimatology = $v.skillVsClimatology;
      _intervalCoverageP10P90 = $v.intervalCoverageP10P90;
      _label = $v.label;
      _backtest = $v.backtest?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegionalOutlookSkill other) {
    _$v = other as _$RegionalOutlookSkill;
  }

  @override
  void update(void Function(RegionalOutlookSkillBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegionalOutlookSkill build() => _build();

  _$RegionalOutlookSkill _build() {
    _$RegionalOutlookSkill _$result;
    try {
      _$result = _$v ??
          _$RegionalOutlookSkill._(
            evaluatedWeeks: evaluatedWeeks,
            n: BuiltValueNullFieldError.checkNotNull(
                n, r'RegionalOutlookSkill', 'n'),
            meanPinballLoss: meanPinballLoss,
            crps: crps,
            skillVsSeasonalNaive: skillVsSeasonalNaive,
            skillVsClimatology: skillVsClimatology,
            intervalCoverageP10P90: intervalCoverageP10P90,
            label: BuiltValueNullFieldError.checkNotNull(
                label, r'RegionalOutlookSkill', 'label'),
            backtest: _backtest?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'backtest';
        _backtest?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RegionalOutlookSkill', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
