// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cycle_packet.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CyclePacketCadenceEnum _$cyclePacketCadenceEnum_daily =
    const CyclePacketCadenceEnum._('daily');
const CyclePacketCadenceEnum _$cyclePacketCadenceEnum_weekly =
    const CyclePacketCadenceEnum._('weekly');
const CyclePacketCadenceEnum _$cyclePacketCadenceEnum_monthly =
    const CyclePacketCadenceEnum._('monthly');
const CyclePacketCadenceEnum _$cyclePacketCadenceEnum_onDemand =
    const CyclePacketCadenceEnum._('onDemand');
const CyclePacketCadenceEnum _$cyclePacketCadenceEnum_unknownDefaultOpenApi =
    const CyclePacketCadenceEnum._('unknownDefaultOpenApi');

CyclePacketCadenceEnum _$cyclePacketCadenceEnumValueOf(String name) {
  switch (name) {
    case 'daily':
      return _$cyclePacketCadenceEnum_daily;
    case 'weekly':
      return _$cyclePacketCadenceEnum_weekly;
    case 'monthly':
      return _$cyclePacketCadenceEnum_monthly;
    case 'onDemand':
      return _$cyclePacketCadenceEnum_onDemand;
    case 'unknownDefaultOpenApi':
      return _$cyclePacketCadenceEnum_unknownDefaultOpenApi;
    default:
      return _$cyclePacketCadenceEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<CyclePacketCadenceEnum> _$cyclePacketCadenceEnumValues =
    BuiltSet<CyclePacketCadenceEnum>(const <CyclePacketCadenceEnum>[
      _$cyclePacketCadenceEnum_daily,
      _$cyclePacketCadenceEnum_weekly,
      _$cyclePacketCadenceEnum_monthly,
      _$cyclePacketCadenceEnum_onDemand,
      _$cyclePacketCadenceEnum_unknownDefaultOpenApi,
    ]);

Serializer<CyclePacketCadenceEnum> _$cyclePacketCadenceEnumSerializer =
    _$CyclePacketCadenceEnumSerializer();

class _$CyclePacketCadenceEnumSerializer
    implements PrimitiveSerializer<CyclePacketCadenceEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'daily': 'daily',
    'weekly': 'weekly',
    'monthly': 'monthly',
    'onDemand': 'on-demand',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'daily': 'daily',
    'weekly': 'weekly',
    'monthly': 'monthly',
    'on-demand': 'onDemand',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[CyclePacketCadenceEnum];
  @override
  final String wireName = 'CyclePacketCadenceEnum';

  @override
  Object serialize(
    Serializers serializers,
    CyclePacketCadenceEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CyclePacketCadenceEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CyclePacketCadenceEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$CyclePacket extends CyclePacket {
  @override
  final String version;
  @override
  final DateTime since;
  @override
  final DateTime until;
  @override
  final bool? firstRun;
  @override
  final CyclePacketSituations? situations;
  @override
  final CyclePacketHypotheses? hypotheses;
  @override
  final BuiltList<CyclePacketItem>? findings;
  @override
  final CyclePacketForecasts? forecasts;
  @override
  final CyclePacketOutlooks? outlooks;
  @override
  final CyclePacketCoverage? coverage;
  @override
  final BuiltList<CollectionGap>? collectionGaps;
  @override
  final BuiltList<CyclePacketItem>? verdicts;
  @override
  final BuiltList<KeyJudgment>? previousJudgments;
  @override
  final BuiltMap<String, int>? truncatedForLlm;
  @override
  final SocialVersusObserved? social;
  @override
  final CyclePacketCadenceEnum? cadence;

  factory _$CyclePacket([void Function(CyclePacketBuilder)? updates]) =>
      (CyclePacketBuilder()..update(updates))._build();

  _$CyclePacket._({
    required this.version,
    required this.since,
    required this.until,
    this.firstRun,
    this.situations,
    this.hypotheses,
    this.findings,
    this.forecasts,
    this.outlooks,
    this.coverage,
    this.collectionGaps,
    this.verdicts,
    this.previousJudgments,
    this.truncatedForLlm,
    this.social,
    this.cadence,
  }) : super._();
  @override
  CyclePacket rebuild(void Function(CyclePacketBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CyclePacketBuilder toBuilder() => CyclePacketBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CyclePacket &&
        version == other.version &&
        since == other.since &&
        until == other.until &&
        firstRun == other.firstRun &&
        situations == other.situations &&
        hypotheses == other.hypotheses &&
        findings == other.findings &&
        forecasts == other.forecasts &&
        outlooks == other.outlooks &&
        coverage == other.coverage &&
        collectionGaps == other.collectionGaps &&
        verdicts == other.verdicts &&
        previousJudgments == other.previousJudgments &&
        truncatedForLlm == other.truncatedForLlm &&
        social == other.social &&
        cadence == other.cadence;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, since.hashCode);
    _$hash = $jc(_$hash, until.hashCode);
    _$hash = $jc(_$hash, firstRun.hashCode);
    _$hash = $jc(_$hash, situations.hashCode);
    _$hash = $jc(_$hash, hypotheses.hashCode);
    _$hash = $jc(_$hash, findings.hashCode);
    _$hash = $jc(_$hash, forecasts.hashCode);
    _$hash = $jc(_$hash, outlooks.hashCode);
    _$hash = $jc(_$hash, coverage.hashCode);
    _$hash = $jc(_$hash, collectionGaps.hashCode);
    _$hash = $jc(_$hash, verdicts.hashCode);
    _$hash = $jc(_$hash, previousJudgments.hashCode);
    _$hash = $jc(_$hash, truncatedForLlm.hashCode);
    _$hash = $jc(_$hash, social.hashCode);
    _$hash = $jc(_$hash, cadence.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CyclePacket')
          ..add('version', version)
          ..add('since', since)
          ..add('until', until)
          ..add('firstRun', firstRun)
          ..add('situations', situations)
          ..add('hypotheses', hypotheses)
          ..add('findings', findings)
          ..add('forecasts', forecasts)
          ..add('outlooks', outlooks)
          ..add('coverage', coverage)
          ..add('collectionGaps', collectionGaps)
          ..add('verdicts', verdicts)
          ..add('previousJudgments', previousJudgments)
          ..add('truncatedForLlm', truncatedForLlm)
          ..add('social', social)
          ..add('cadence', cadence))
        .toString();
  }
}

class CyclePacketBuilder implements Builder<CyclePacket, CyclePacketBuilder> {
  _$CyclePacket? _$v;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  DateTime? _since;
  DateTime? get since => _$this._since;
  set since(DateTime? since) => _$this._since = since;

  DateTime? _until;
  DateTime? get until => _$this._until;
  set until(DateTime? until) => _$this._until = until;

  bool? _firstRun;
  bool? get firstRun => _$this._firstRun;
  set firstRun(bool? firstRun) => _$this._firstRun = firstRun;

  CyclePacketSituationsBuilder? _situations;
  CyclePacketSituationsBuilder get situations =>
      _$this._situations ??= CyclePacketSituationsBuilder();
  set situations(CyclePacketSituationsBuilder? situations) =>
      _$this._situations = situations;

  CyclePacketHypothesesBuilder? _hypotheses;
  CyclePacketHypothesesBuilder get hypotheses =>
      _$this._hypotheses ??= CyclePacketHypothesesBuilder();
  set hypotheses(CyclePacketHypothesesBuilder? hypotheses) =>
      _$this._hypotheses = hypotheses;

  ListBuilder<CyclePacketItem>? _findings;
  ListBuilder<CyclePacketItem> get findings =>
      _$this._findings ??= ListBuilder<CyclePacketItem>();
  set findings(ListBuilder<CyclePacketItem>? findings) =>
      _$this._findings = findings;

  CyclePacketForecastsBuilder? _forecasts;
  CyclePacketForecastsBuilder get forecasts =>
      _$this._forecasts ??= CyclePacketForecastsBuilder();
  set forecasts(CyclePacketForecastsBuilder? forecasts) =>
      _$this._forecasts = forecasts;

  CyclePacketOutlooksBuilder? _outlooks;
  CyclePacketOutlooksBuilder get outlooks =>
      _$this._outlooks ??= CyclePacketOutlooksBuilder();
  set outlooks(CyclePacketOutlooksBuilder? outlooks) =>
      _$this._outlooks = outlooks;

  CyclePacketCoverageBuilder? _coverage;
  CyclePacketCoverageBuilder get coverage =>
      _$this._coverage ??= CyclePacketCoverageBuilder();
  set coverage(CyclePacketCoverageBuilder? coverage) =>
      _$this._coverage = coverage;

  ListBuilder<CollectionGap>? _collectionGaps;
  ListBuilder<CollectionGap> get collectionGaps =>
      _$this._collectionGaps ??= ListBuilder<CollectionGap>();
  set collectionGaps(ListBuilder<CollectionGap>? collectionGaps) =>
      _$this._collectionGaps = collectionGaps;

  ListBuilder<CyclePacketItem>? _verdicts;
  ListBuilder<CyclePacketItem> get verdicts =>
      _$this._verdicts ??= ListBuilder<CyclePacketItem>();
  set verdicts(ListBuilder<CyclePacketItem>? verdicts) =>
      _$this._verdicts = verdicts;

  ListBuilder<KeyJudgment>? _previousJudgments;
  ListBuilder<KeyJudgment> get previousJudgments =>
      _$this._previousJudgments ??= ListBuilder<KeyJudgment>();
  set previousJudgments(ListBuilder<KeyJudgment>? previousJudgments) =>
      _$this._previousJudgments = previousJudgments;

  MapBuilder<String, int>? _truncatedForLlm;
  MapBuilder<String, int> get truncatedForLlm =>
      _$this._truncatedForLlm ??= MapBuilder<String, int>();
  set truncatedForLlm(MapBuilder<String, int>? truncatedForLlm) =>
      _$this._truncatedForLlm = truncatedForLlm;

  SocialVersusObservedBuilder? _social;
  SocialVersusObservedBuilder get social =>
      _$this._social ??= SocialVersusObservedBuilder();
  set social(SocialVersusObservedBuilder? social) => _$this._social = social;

  CyclePacketCadenceEnum? _cadence;
  CyclePacketCadenceEnum? get cadence => _$this._cadence;
  set cadence(CyclePacketCadenceEnum? cadence) => _$this._cadence = cadence;

  CyclePacketBuilder() {
    CyclePacket._defaults(this);
  }

  CyclePacketBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _since = $v.since;
      _until = $v.until;
      _firstRun = $v.firstRun;
      _situations = $v.situations?.toBuilder();
      _hypotheses = $v.hypotheses?.toBuilder();
      _findings = $v.findings?.toBuilder();
      _forecasts = $v.forecasts?.toBuilder();
      _outlooks = $v.outlooks?.toBuilder();
      _coverage = $v.coverage?.toBuilder();
      _collectionGaps = $v.collectionGaps?.toBuilder();
      _verdicts = $v.verdicts?.toBuilder();
      _previousJudgments = $v.previousJudgments?.toBuilder();
      _truncatedForLlm = $v.truncatedForLlm?.toBuilder();
      _social = $v.social?.toBuilder();
      _cadence = $v.cadence;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CyclePacket other) {
    _$v = other as _$CyclePacket;
  }

  @override
  void update(void Function(CyclePacketBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CyclePacket build() => _build();

  _$CyclePacket _build() {
    _$CyclePacket _$result;
    try {
      _$result =
          _$v ??
          _$CyclePacket._(
            version: BuiltValueNullFieldError.checkNotNull(
              version,
              r'CyclePacket',
              'version',
            ),
            since: BuiltValueNullFieldError.checkNotNull(
              since,
              r'CyclePacket',
              'since',
            ),
            until: BuiltValueNullFieldError.checkNotNull(
              until,
              r'CyclePacket',
              'until',
            ),
            firstRun: firstRun,
            situations: _situations?.build(),
            hypotheses: _hypotheses?.build(),
            findings: _findings?.build(),
            forecasts: _forecasts?.build(),
            outlooks: _outlooks?.build(),
            coverage: _coverage?.build(),
            collectionGaps: _collectionGaps?.build(),
            verdicts: _verdicts?.build(),
            previousJudgments: _previousJudgments?.build(),
            truncatedForLlm: _truncatedForLlm?.build(),
            social: _social?.build(),
            cadence: cadence,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'situations';
        _situations?.build();
        _$failedField = 'hypotheses';
        _hypotheses?.build();
        _$failedField = 'findings';
        _findings?.build();
        _$failedField = 'forecasts';
        _forecasts?.build();
        _$failedField = 'outlooks';
        _outlooks?.build();
        _$failedField = 'coverage';
        _coverage?.build();
        _$failedField = 'collectionGaps';
        _collectionGaps?.build();
        _$failedField = 'verdicts';
        _verdicts?.build();
        _$failedField = 'previousJudgments';
        _previousJudgments?.build();
        _$failedField = 'truncatedForLlm';
        _truncatedForLlm?.build();
        _$failedField = 'social';
        _social?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CyclePacket',
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
