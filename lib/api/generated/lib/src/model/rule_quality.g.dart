// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_quality.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RuleQualityFeedbackMappingEnum _$ruleQualityFeedbackMappingEnum_positive =
    const RuleQualityFeedbackMappingEnum._('positive');
const RuleQualityFeedbackMappingEnum _$ruleQualityFeedbackMappingEnum_negative =
    const RuleQualityFeedbackMappingEnum._('negative');
const RuleQualityFeedbackMappingEnum _$ruleQualityFeedbackMappingEnum_neutral =
    const RuleQualityFeedbackMappingEnum._('neutral');

RuleQualityFeedbackMappingEnum _$ruleQualityFeedbackMappingEnumValueOf(
  String name,
) {
  switch (name) {
    case 'positive':
      return _$ruleQualityFeedbackMappingEnum_positive;
    case 'negative':
      return _$ruleQualityFeedbackMappingEnum_negative;
    case 'neutral':
      return _$ruleQualityFeedbackMappingEnum_neutral;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RuleQualityFeedbackMappingEnum>
_$ruleQualityFeedbackMappingEnumValues =
    BuiltSet<RuleQualityFeedbackMappingEnum>(
      const <RuleQualityFeedbackMappingEnum>[
        _$ruleQualityFeedbackMappingEnum_positive,
        _$ruleQualityFeedbackMappingEnum_negative,
        _$ruleQualityFeedbackMappingEnum_neutral,
      ],
    );

Serializer<RuleQualityFeedbackMappingEnum>
_$ruleQualityFeedbackMappingEnumSerializer =
    _$RuleQualityFeedbackMappingEnumSerializer();

class _$RuleQualityFeedbackMappingEnumSerializer
    implements PrimitiveSerializer<RuleQualityFeedbackMappingEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'positive': 'positive',
    'negative': 'negative',
    'neutral': 'neutral',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'positive': 'positive',
    'negative': 'negative',
    'neutral': 'neutral',
  };

  @override
  final Iterable<Type> types = const <Type>[RuleQualityFeedbackMappingEnum];
  @override
  final String wireName = 'RuleQualityFeedbackMappingEnum';

  @override
  Object serialize(
    Serializers serializers,
    RuleQualityFeedbackMappingEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RuleQualityFeedbackMappingEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RuleQualityFeedbackMappingEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RuleQuality extends RuleQuality {
  @override
  final String ruleId;
  @override
  final DateTime since;
  @override
  final int alerts;
  @override
  final int labeled;
  @override
  final num? labeledShare;
  @override
  final int positive;
  @override
  final int negative;
  @override
  final int neutral;
  @override
  final num? precision;
  @override
  final RuleQualityPrecisionCi? precisionCi;
  @override
  final String? medianTimeToAck;
  @override
  final String? medianTimeToResolve;
  @override
  final int? flapping;
  @override
  final int? duplicates;
  @override
  final BuiltMap<String, int>? severityDistribution;
  @override
  final BuiltMap<String, RuleQualityFeedbackMappingEnum>? feedbackMapping;
  @override
  final BuiltList<Caveat>? caveats;
  @override
  final RuleQualitySignals? signals;
  @override
  final num? signalScore;
  @override
  final BuiltList<RuleQualityDaily>? daily;
  @override
  final BuiltMap<String, num>? signalWeights;

  factory _$RuleQuality([void Function(RuleQualityBuilder)? updates]) =>
      (RuleQualityBuilder()..update(updates))._build();

  _$RuleQuality._({
    required this.ruleId,
    required this.since,
    required this.alerts,
    required this.labeled,
    this.labeledShare,
    required this.positive,
    required this.negative,
    required this.neutral,
    this.precision,
    this.precisionCi,
    this.medianTimeToAck,
    this.medianTimeToResolve,
    this.flapping,
    this.duplicates,
    this.severityDistribution,
    this.feedbackMapping,
    this.caveats,
    this.signals,
    this.signalScore,
    this.daily,
    this.signalWeights,
  }) : super._();
  @override
  RuleQuality rebuild(void Function(RuleQualityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RuleQualityBuilder toBuilder() => RuleQualityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleQuality &&
        ruleId == other.ruleId &&
        since == other.since &&
        alerts == other.alerts &&
        labeled == other.labeled &&
        labeledShare == other.labeledShare &&
        positive == other.positive &&
        negative == other.negative &&
        neutral == other.neutral &&
        precision == other.precision &&
        precisionCi == other.precisionCi &&
        medianTimeToAck == other.medianTimeToAck &&
        medianTimeToResolve == other.medianTimeToResolve &&
        flapping == other.flapping &&
        duplicates == other.duplicates &&
        severityDistribution == other.severityDistribution &&
        feedbackMapping == other.feedbackMapping &&
        caveats == other.caveats &&
        signals == other.signals &&
        signalScore == other.signalScore &&
        daily == other.daily &&
        signalWeights == other.signalWeights;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ruleId.hashCode);
    _$hash = $jc(_$hash, since.hashCode);
    _$hash = $jc(_$hash, alerts.hashCode);
    _$hash = $jc(_$hash, labeled.hashCode);
    _$hash = $jc(_$hash, labeledShare.hashCode);
    _$hash = $jc(_$hash, positive.hashCode);
    _$hash = $jc(_$hash, negative.hashCode);
    _$hash = $jc(_$hash, neutral.hashCode);
    _$hash = $jc(_$hash, precision.hashCode);
    _$hash = $jc(_$hash, precisionCi.hashCode);
    _$hash = $jc(_$hash, medianTimeToAck.hashCode);
    _$hash = $jc(_$hash, medianTimeToResolve.hashCode);
    _$hash = $jc(_$hash, flapping.hashCode);
    _$hash = $jc(_$hash, duplicates.hashCode);
    _$hash = $jc(_$hash, severityDistribution.hashCode);
    _$hash = $jc(_$hash, feedbackMapping.hashCode);
    _$hash = $jc(_$hash, caveats.hashCode);
    _$hash = $jc(_$hash, signals.hashCode);
    _$hash = $jc(_$hash, signalScore.hashCode);
    _$hash = $jc(_$hash, daily.hashCode);
    _$hash = $jc(_$hash, signalWeights.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RuleQuality')
          ..add('ruleId', ruleId)
          ..add('since', since)
          ..add('alerts', alerts)
          ..add('labeled', labeled)
          ..add('labeledShare', labeledShare)
          ..add('positive', positive)
          ..add('negative', negative)
          ..add('neutral', neutral)
          ..add('precision', precision)
          ..add('precisionCi', precisionCi)
          ..add('medianTimeToAck', medianTimeToAck)
          ..add('medianTimeToResolve', medianTimeToResolve)
          ..add('flapping', flapping)
          ..add('duplicates', duplicates)
          ..add('severityDistribution', severityDistribution)
          ..add('feedbackMapping', feedbackMapping)
          ..add('caveats', caveats)
          ..add('signals', signals)
          ..add('signalScore', signalScore)
          ..add('daily', daily)
          ..add('signalWeights', signalWeights))
        .toString();
  }
}

class RuleQualityBuilder implements Builder<RuleQuality, RuleQualityBuilder> {
  _$RuleQuality? _$v;

  String? _ruleId;
  String? get ruleId => _$this._ruleId;
  set ruleId(String? ruleId) => _$this._ruleId = ruleId;

  DateTime? _since;
  DateTime? get since => _$this._since;
  set since(DateTime? since) => _$this._since = since;

  int? _alerts;
  int? get alerts => _$this._alerts;
  set alerts(int? alerts) => _$this._alerts = alerts;

  int? _labeled;
  int? get labeled => _$this._labeled;
  set labeled(int? labeled) => _$this._labeled = labeled;

  num? _labeledShare;
  num? get labeledShare => _$this._labeledShare;
  set labeledShare(num? labeledShare) => _$this._labeledShare = labeledShare;

  int? _positive;
  int? get positive => _$this._positive;
  set positive(int? positive) => _$this._positive = positive;

  int? _negative;
  int? get negative => _$this._negative;
  set negative(int? negative) => _$this._negative = negative;

  int? _neutral;
  int? get neutral => _$this._neutral;
  set neutral(int? neutral) => _$this._neutral = neutral;

  num? _precision;
  num? get precision => _$this._precision;
  set precision(num? precision) => _$this._precision = precision;

  RuleQualityPrecisionCiBuilder? _precisionCi;
  RuleQualityPrecisionCiBuilder get precisionCi =>
      _$this._precisionCi ??= RuleQualityPrecisionCiBuilder();
  set precisionCi(RuleQualityPrecisionCiBuilder? precisionCi) =>
      _$this._precisionCi = precisionCi;

  String? _medianTimeToAck;
  String? get medianTimeToAck => _$this._medianTimeToAck;
  set medianTimeToAck(String? medianTimeToAck) =>
      _$this._medianTimeToAck = medianTimeToAck;

  String? _medianTimeToResolve;
  String? get medianTimeToResolve => _$this._medianTimeToResolve;
  set medianTimeToResolve(String? medianTimeToResolve) =>
      _$this._medianTimeToResolve = medianTimeToResolve;

  int? _flapping;
  int? get flapping => _$this._flapping;
  set flapping(int? flapping) => _$this._flapping = flapping;

  int? _duplicates;
  int? get duplicates => _$this._duplicates;
  set duplicates(int? duplicates) => _$this._duplicates = duplicates;

  MapBuilder<String, int>? _severityDistribution;
  MapBuilder<String, int> get severityDistribution =>
      _$this._severityDistribution ??= MapBuilder<String, int>();
  set severityDistribution(MapBuilder<String, int>? severityDistribution) =>
      _$this._severityDistribution = severityDistribution;

  MapBuilder<String, RuleQualityFeedbackMappingEnum>? _feedbackMapping;
  MapBuilder<String, RuleQualityFeedbackMappingEnum> get feedbackMapping =>
      _$this._feedbackMapping ??=
          MapBuilder<String, RuleQualityFeedbackMappingEnum>();
  set feedbackMapping(
    MapBuilder<String, RuleQualityFeedbackMappingEnum>? feedbackMapping,
  ) => _$this._feedbackMapping = feedbackMapping;

  ListBuilder<Caveat>? _caveats;
  ListBuilder<Caveat> get caveats => _$this._caveats ??= ListBuilder<Caveat>();
  set caveats(ListBuilder<Caveat>? caveats) => _$this._caveats = caveats;

  RuleQualitySignalsBuilder? _signals;
  RuleQualitySignalsBuilder get signals =>
      _$this._signals ??= RuleQualitySignalsBuilder();
  set signals(RuleQualitySignalsBuilder? signals) => _$this._signals = signals;

  num? _signalScore;
  num? get signalScore => _$this._signalScore;
  set signalScore(num? signalScore) => _$this._signalScore = signalScore;

  ListBuilder<RuleQualityDaily>? _daily;
  ListBuilder<RuleQualityDaily> get daily =>
      _$this._daily ??= ListBuilder<RuleQualityDaily>();
  set daily(ListBuilder<RuleQualityDaily>? daily) => _$this._daily = daily;

  MapBuilder<String, num>? _signalWeights;
  MapBuilder<String, num> get signalWeights =>
      _$this._signalWeights ??= MapBuilder<String, num>();
  set signalWeights(MapBuilder<String, num>? signalWeights) =>
      _$this._signalWeights = signalWeights;

  RuleQualityBuilder() {
    RuleQuality._defaults(this);
  }

  RuleQualityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ruleId = $v.ruleId;
      _since = $v.since;
      _alerts = $v.alerts;
      _labeled = $v.labeled;
      _labeledShare = $v.labeledShare;
      _positive = $v.positive;
      _negative = $v.negative;
      _neutral = $v.neutral;
      _precision = $v.precision;
      _precisionCi = $v.precisionCi?.toBuilder();
      _medianTimeToAck = $v.medianTimeToAck;
      _medianTimeToResolve = $v.medianTimeToResolve;
      _flapping = $v.flapping;
      _duplicates = $v.duplicates;
      _severityDistribution = $v.severityDistribution?.toBuilder();
      _feedbackMapping = $v.feedbackMapping?.toBuilder();
      _caveats = $v.caveats?.toBuilder();
      _signals = $v.signals?.toBuilder();
      _signalScore = $v.signalScore;
      _daily = $v.daily?.toBuilder();
      _signalWeights = $v.signalWeights?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RuleQuality other) {
    _$v = other as _$RuleQuality;
  }

  @override
  void update(void Function(RuleQualityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RuleQuality build() => _build();

  _$RuleQuality _build() {
    _$RuleQuality _$result;
    try {
      _$result =
          _$v ??
          _$RuleQuality._(
            ruleId: BuiltValueNullFieldError.checkNotNull(
              ruleId,
              r'RuleQuality',
              'ruleId',
            ),
            since: BuiltValueNullFieldError.checkNotNull(
              since,
              r'RuleQuality',
              'since',
            ),
            alerts: BuiltValueNullFieldError.checkNotNull(
              alerts,
              r'RuleQuality',
              'alerts',
            ),
            labeled: BuiltValueNullFieldError.checkNotNull(
              labeled,
              r'RuleQuality',
              'labeled',
            ),
            labeledShare: labeledShare,
            positive: BuiltValueNullFieldError.checkNotNull(
              positive,
              r'RuleQuality',
              'positive',
            ),
            negative: BuiltValueNullFieldError.checkNotNull(
              negative,
              r'RuleQuality',
              'negative',
            ),
            neutral: BuiltValueNullFieldError.checkNotNull(
              neutral,
              r'RuleQuality',
              'neutral',
            ),
            precision: precision,
            precisionCi: _precisionCi?.build(),
            medianTimeToAck: medianTimeToAck,
            medianTimeToResolve: medianTimeToResolve,
            flapping: flapping,
            duplicates: duplicates,
            severityDistribution: _severityDistribution?.build(),
            feedbackMapping: _feedbackMapping?.build(),
            caveats: _caveats?.build(),
            signals: _signals?.build(),
            signalScore: signalScore,
            daily: _daily?.build(),
            signalWeights: _signalWeights?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'precisionCi';
        _precisionCi?.build();

        _$failedField = 'severityDistribution';
        _severityDistribution?.build();
        _$failedField = 'feedbackMapping';
        _feedbackMapping?.build();
        _$failedField = 'caveats';
        _caveats?.build();
        _$failedField = 'signals';
        _signals?.build();

        _$failedField = 'daily';
        _daily?.build();
        _$failedField = 'signalWeights';
        _signalWeights?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RuleQuality',
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
