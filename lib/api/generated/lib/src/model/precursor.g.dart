// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precursor.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PrecursorKindEnum _$precursorKindEnum_event = const PrecursorKindEnum._(
  'event',
);
const PrecursorKindEnum _$precursorKindEnum_series = const PrecursorKindEnum._(
  'series',
);
const PrecursorKindEnum _$precursorKindEnum_unknownDefaultOpenApi =
    const PrecursorKindEnum._('unknownDefaultOpenApi');

PrecursorKindEnum _$precursorKindEnumValueOf(String name) {
  switch (name) {
    case 'event':
      return _$precursorKindEnum_event;
    case 'series':
      return _$precursorKindEnum_series;
    case 'unknownDefaultOpenApi':
      return _$precursorKindEnum_unknownDefaultOpenApi;
    default:
      return _$precursorKindEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PrecursorKindEnum> _$precursorKindEnumValues =
    BuiltSet<PrecursorKindEnum>(const <PrecursorKindEnum>[
      _$precursorKindEnum_event,
      _$precursorKindEnum_series,
      _$precursorKindEnum_unknownDefaultOpenApi,
    ]);

const PrecursorCorrelationSignEnum _$precursorCorrelationSignEnum_positive =
    const PrecursorCorrelationSignEnum._('positive');
const PrecursorCorrelationSignEnum _$precursorCorrelationSignEnum_negative =
    const PrecursorCorrelationSignEnum._('negative');
const PrecursorCorrelationSignEnum
_$precursorCorrelationSignEnum_unknownDefaultOpenApi =
    const PrecursorCorrelationSignEnum._('unknownDefaultOpenApi');

PrecursorCorrelationSignEnum _$precursorCorrelationSignEnumValueOf(
  String name,
) {
  switch (name) {
    case 'positive':
      return _$precursorCorrelationSignEnum_positive;
    case 'negative':
      return _$precursorCorrelationSignEnum_negative;
    case 'unknownDefaultOpenApi':
      return _$precursorCorrelationSignEnum_unknownDefaultOpenApi;
    default:
      return _$precursorCorrelationSignEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PrecursorCorrelationSignEnum>
_$precursorCorrelationSignEnumValues =
    BuiltSet<PrecursorCorrelationSignEnum>(const <PrecursorCorrelationSignEnum>[
      _$precursorCorrelationSignEnum_positive,
      _$precursorCorrelationSignEnum_negative,
      _$precursorCorrelationSignEnum_unknownDefaultOpenApi,
    ]);

const PrecursorStatusEnum _$precursorStatusEnum_candidate =
    const PrecursorStatusEnum._('candidate');
const PrecursorStatusEnum _$precursorStatusEnum_validated =
    const PrecursorStatusEnum._('validated');
const PrecursorStatusEnum _$precursorStatusEnum_stale =
    const PrecursorStatusEnum._('stale');
const PrecursorStatusEnum _$precursorStatusEnum_retired =
    const PrecursorStatusEnum._('retired');
const PrecursorStatusEnum _$precursorStatusEnum_unknownDefaultOpenApi =
    const PrecursorStatusEnum._('unknownDefaultOpenApi');

PrecursorStatusEnum _$precursorStatusEnumValueOf(String name) {
  switch (name) {
    case 'candidate':
      return _$precursorStatusEnum_candidate;
    case 'validated':
      return _$precursorStatusEnum_validated;
    case 'stale':
      return _$precursorStatusEnum_stale;
    case 'retired':
      return _$precursorStatusEnum_retired;
    case 'unknownDefaultOpenApi':
      return _$precursorStatusEnum_unknownDefaultOpenApi;
    default:
      return _$precursorStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PrecursorStatusEnum> _$precursorStatusEnumValues =
    BuiltSet<PrecursorStatusEnum>(const <PrecursorStatusEnum>[
      _$precursorStatusEnum_candidate,
      _$precursorStatusEnum_validated,
      _$precursorStatusEnum_stale,
      _$precursorStatusEnum_retired,
      _$precursorStatusEnum_unknownDefaultOpenApi,
    ]);

const PrecursorOriginEnum _$precursorOriginEnum_auto =
    const PrecursorOriginEnum._('auto');
const PrecursorOriginEnum _$precursorOriginEnum_operator_ =
    const PrecursorOriginEnum._('operator_');
const PrecursorOriginEnum _$precursorOriginEnum_unknownDefaultOpenApi =
    const PrecursorOriginEnum._('unknownDefaultOpenApi');

PrecursorOriginEnum _$precursorOriginEnumValueOf(String name) {
  switch (name) {
    case 'auto':
      return _$precursorOriginEnum_auto;
    case 'operator_':
      return _$precursorOriginEnum_operator_;
    case 'unknownDefaultOpenApi':
      return _$precursorOriginEnum_unknownDefaultOpenApi;
    default:
      return _$precursorOriginEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PrecursorOriginEnum> _$precursorOriginEnumValues =
    BuiltSet<PrecursorOriginEnum>(const <PrecursorOriginEnum>[
      _$precursorOriginEnum_auto,
      _$precursorOriginEnum_operator_,
      _$precursorOriginEnum_unknownDefaultOpenApi,
    ]);

Serializer<PrecursorKindEnum> _$precursorKindEnumSerializer =
    _$PrecursorKindEnumSerializer();
Serializer<PrecursorCorrelationSignEnum>
_$precursorCorrelationSignEnumSerializer =
    _$PrecursorCorrelationSignEnumSerializer();
Serializer<PrecursorStatusEnum> _$precursorStatusEnumSerializer =
    _$PrecursorStatusEnumSerializer();
Serializer<PrecursorOriginEnum> _$precursorOriginEnumSerializer =
    _$PrecursorOriginEnumSerializer();

class _$PrecursorKindEnumSerializer
    implements PrimitiveSerializer<PrecursorKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'event': 'event',
    'series': 'series',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'event': 'event',
    'series': 'series',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PrecursorKindEnum];
  @override
  final String wireName = 'PrecursorKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    PrecursorKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PrecursorKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PrecursorKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PrecursorCorrelationSignEnumSerializer
    implements PrimitiveSerializer<PrecursorCorrelationSignEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'positive': 'positive',
    'negative': 'negative',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'positive': 'positive',
    'negative': 'negative',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PrecursorCorrelationSignEnum];
  @override
  final String wireName = 'PrecursorCorrelationSignEnum';

  @override
  Object serialize(
    Serializers serializers,
    PrecursorCorrelationSignEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PrecursorCorrelationSignEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PrecursorCorrelationSignEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PrecursorStatusEnumSerializer
    implements PrimitiveSerializer<PrecursorStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'candidate': 'candidate',
    'validated': 'validated',
    'stale': 'stale',
    'retired': 'retired',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'candidate': 'candidate',
    'validated': 'validated',
    'stale': 'stale',
    'retired': 'retired',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PrecursorStatusEnum];
  @override
  final String wireName = 'PrecursorStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    PrecursorStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PrecursorStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PrecursorStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PrecursorOriginEnumSerializer
    implements PrimitiveSerializer<PrecursorOriginEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'auto': 'auto',
    'operator_': 'operator',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'auto': 'auto',
    'operator': 'operator_',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PrecursorOriginEnum];
  @override
  final String wireName = 'PrecursorOriginEnum';

  @override
  Object serialize(
    Serializers serializers,
    PrecursorOriginEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PrecursorOriginEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PrecursorOriginEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Precursor extends Precursor {
  @override
  final String id;
  @override
  final PrecursorKindEnum kind;
  @override
  final PrecursorSide antecedent;
  @override
  final PrecursorSide consequent;
  @override
  final PrecursorSpatial spatial;
  @override
  final BuiltList<String>? regionCodes;
  @override
  final String lagMin;
  @override
  final String lagMax;
  @override
  final String? bestLag;
  @override
  final PrecursorLagDistribution? lagDistribution;
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
  final PrecursorCorrelationSignEnum? correlationSign;
  @override
  final int nAntecedent;
  @override
  final PrecursorWindowStats discovery;
  @override
  final PrecursorWindowStats? validation;
  @override
  final PrecursorWindowStats? lastRetest;
  @override
  final String batchId;
  @override
  final int batchSize;
  @override
  final PrecursorStatusEnum status;
  @override
  final String? statusReason;
  @override
  final bool? operatorValidated;
  @override
  final DetectorRef detector;
  @override
  final DateTime? firstValidatedAt;
  @override
  final DateTime? lastTestedAt;
  @override
  final PrecursorOriginEnum origin;
  @override
  final String description;
  @override
  final String associationNote;
  @override
  final BuiltList<Caveat> caveats;
  @override
  final BuiltList<PrecursorHistoryInner>? history;
  @override
  final String manifestId;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$Precursor([void Function(PrecursorBuilder)? updates]) =>
      (PrecursorBuilder()..update(updates))._build();

  _$Precursor._({
    required this.id,
    required this.kind,
    required this.antecedent,
    required this.consequent,
    required this.spatial,
    this.regionCodes,
    required this.lagMin,
    required this.lagMax,
    this.bestLag,
    this.lagDistribution,
    this.hitRate,
    this.hitRateInterval,
    this.baseRate,
    this.lift,
    this.correlation,
    this.correlationSign,
    required this.nAntecedent,
    required this.discovery,
    this.validation,
    this.lastRetest,
    required this.batchId,
    required this.batchSize,
    required this.status,
    this.statusReason,
    this.operatorValidated,
    required this.detector,
    this.firstValidatedAt,
    this.lastTestedAt,
    required this.origin,
    required this.description,
    required this.associationNote,
    required this.caveats,
    this.history,
    required this.manifestId,
    this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  Precursor rebuild(void Function(PrecursorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrecursorBuilder toBuilder() => PrecursorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Precursor &&
        id == other.id &&
        kind == other.kind &&
        antecedent == other.antecedent &&
        consequent == other.consequent &&
        spatial == other.spatial &&
        regionCodes == other.regionCodes &&
        lagMin == other.lagMin &&
        lagMax == other.lagMax &&
        bestLag == other.bestLag &&
        lagDistribution == other.lagDistribution &&
        hitRate == other.hitRate &&
        hitRateInterval == other.hitRateInterval &&
        baseRate == other.baseRate &&
        lift == other.lift &&
        correlation == other.correlation &&
        correlationSign == other.correlationSign &&
        nAntecedent == other.nAntecedent &&
        discovery == other.discovery &&
        validation == other.validation &&
        lastRetest == other.lastRetest &&
        batchId == other.batchId &&
        batchSize == other.batchSize &&
        status == other.status &&
        statusReason == other.statusReason &&
        operatorValidated == other.operatorValidated &&
        detector == other.detector &&
        firstValidatedAt == other.firstValidatedAt &&
        lastTestedAt == other.lastTestedAt &&
        origin == other.origin &&
        description == other.description &&
        associationNote == other.associationNote &&
        caveats == other.caveats &&
        history == other.history &&
        manifestId == other.manifestId &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, antecedent.hashCode);
    _$hash = $jc(_$hash, consequent.hashCode);
    _$hash = $jc(_$hash, spatial.hashCode);
    _$hash = $jc(_$hash, regionCodes.hashCode);
    _$hash = $jc(_$hash, lagMin.hashCode);
    _$hash = $jc(_$hash, lagMax.hashCode);
    _$hash = $jc(_$hash, bestLag.hashCode);
    _$hash = $jc(_$hash, lagDistribution.hashCode);
    _$hash = $jc(_$hash, hitRate.hashCode);
    _$hash = $jc(_$hash, hitRateInterval.hashCode);
    _$hash = $jc(_$hash, baseRate.hashCode);
    _$hash = $jc(_$hash, lift.hashCode);
    _$hash = $jc(_$hash, correlation.hashCode);
    _$hash = $jc(_$hash, correlationSign.hashCode);
    _$hash = $jc(_$hash, nAntecedent.hashCode);
    _$hash = $jc(_$hash, discovery.hashCode);
    _$hash = $jc(_$hash, validation.hashCode);
    _$hash = $jc(_$hash, lastRetest.hashCode);
    _$hash = $jc(_$hash, batchId.hashCode);
    _$hash = $jc(_$hash, batchSize.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusReason.hashCode);
    _$hash = $jc(_$hash, operatorValidated.hashCode);
    _$hash = $jc(_$hash, detector.hashCode);
    _$hash = $jc(_$hash, firstValidatedAt.hashCode);
    _$hash = $jc(_$hash, lastTestedAt.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, associationNote.hashCode);
    _$hash = $jc(_$hash, caveats.hashCode);
    _$hash = $jc(_$hash, history.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Precursor')
          ..add('id', id)
          ..add('kind', kind)
          ..add('antecedent', antecedent)
          ..add('consequent', consequent)
          ..add('spatial', spatial)
          ..add('regionCodes', regionCodes)
          ..add('lagMin', lagMin)
          ..add('lagMax', lagMax)
          ..add('bestLag', bestLag)
          ..add('lagDistribution', lagDistribution)
          ..add('hitRate', hitRate)
          ..add('hitRateInterval', hitRateInterval)
          ..add('baseRate', baseRate)
          ..add('lift', lift)
          ..add('correlation', correlation)
          ..add('correlationSign', correlationSign)
          ..add('nAntecedent', nAntecedent)
          ..add('discovery', discovery)
          ..add('validation', validation)
          ..add('lastRetest', lastRetest)
          ..add('batchId', batchId)
          ..add('batchSize', batchSize)
          ..add('status', status)
          ..add('statusReason', statusReason)
          ..add('operatorValidated', operatorValidated)
          ..add('detector', detector)
          ..add('firstValidatedAt', firstValidatedAt)
          ..add('lastTestedAt', lastTestedAt)
          ..add('origin', origin)
          ..add('description', description)
          ..add('associationNote', associationNote)
          ..add('caveats', caveats)
          ..add('history', history)
          ..add('manifestId', manifestId)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class PrecursorBuilder implements Builder<Precursor, PrecursorBuilder> {
  _$Precursor? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  PrecursorKindEnum? _kind;
  PrecursorKindEnum? get kind => _$this._kind;
  set kind(PrecursorKindEnum? kind) => _$this._kind = kind;

  PrecursorSideBuilder? _antecedent;
  PrecursorSideBuilder get antecedent =>
      _$this._antecedent ??= PrecursorSideBuilder();
  set antecedent(PrecursorSideBuilder? antecedent) =>
      _$this._antecedent = antecedent;

  PrecursorSideBuilder? _consequent;
  PrecursorSideBuilder get consequent =>
      _$this._consequent ??= PrecursorSideBuilder();
  set consequent(PrecursorSideBuilder? consequent) =>
      _$this._consequent = consequent;

  PrecursorSpatialBuilder? _spatial;
  PrecursorSpatialBuilder get spatial =>
      _$this._spatial ??= PrecursorSpatialBuilder();
  set spatial(PrecursorSpatialBuilder? spatial) => _$this._spatial = spatial;

  ListBuilder<String>? _regionCodes;
  ListBuilder<String> get regionCodes =>
      _$this._regionCodes ??= ListBuilder<String>();
  set regionCodes(ListBuilder<String>? regionCodes) =>
      _$this._regionCodes = regionCodes;

  String? _lagMin;
  String? get lagMin => _$this._lagMin;
  set lagMin(String? lagMin) => _$this._lagMin = lagMin;

  String? _lagMax;
  String? get lagMax => _$this._lagMax;
  set lagMax(String? lagMax) => _$this._lagMax = lagMax;

  String? _bestLag;
  String? get bestLag => _$this._bestLag;
  set bestLag(String? bestLag) => _$this._bestLag = bestLag;

  PrecursorLagDistributionBuilder? _lagDistribution;
  PrecursorLagDistributionBuilder get lagDistribution =>
      _$this._lagDistribution ??= PrecursorLagDistributionBuilder();
  set lagDistribution(PrecursorLagDistributionBuilder? lagDistribution) =>
      _$this._lagDistribution = lagDistribution;

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

  PrecursorCorrelationSignEnum? _correlationSign;
  PrecursorCorrelationSignEnum? get correlationSign => _$this._correlationSign;
  set correlationSign(PrecursorCorrelationSignEnum? correlationSign) =>
      _$this._correlationSign = correlationSign;

  int? _nAntecedent;
  int? get nAntecedent => _$this._nAntecedent;
  set nAntecedent(int? nAntecedent) => _$this._nAntecedent = nAntecedent;

  PrecursorWindowStatsBuilder? _discovery;
  PrecursorWindowStatsBuilder get discovery =>
      _$this._discovery ??= PrecursorWindowStatsBuilder();
  set discovery(PrecursorWindowStatsBuilder? discovery) =>
      _$this._discovery = discovery;

  PrecursorWindowStatsBuilder? _validation;
  PrecursorWindowStatsBuilder get validation =>
      _$this._validation ??= PrecursorWindowStatsBuilder();
  set validation(PrecursorWindowStatsBuilder? validation) =>
      _$this._validation = validation;

  PrecursorWindowStatsBuilder? _lastRetest;
  PrecursorWindowStatsBuilder get lastRetest =>
      _$this._lastRetest ??= PrecursorWindowStatsBuilder();
  set lastRetest(PrecursorWindowStatsBuilder? lastRetest) =>
      _$this._lastRetest = lastRetest;

  String? _batchId;
  String? get batchId => _$this._batchId;
  set batchId(String? batchId) => _$this._batchId = batchId;

  int? _batchSize;
  int? get batchSize => _$this._batchSize;
  set batchSize(int? batchSize) => _$this._batchSize = batchSize;

  PrecursorStatusEnum? _status;
  PrecursorStatusEnum? get status => _$this._status;
  set status(PrecursorStatusEnum? status) => _$this._status = status;

  String? _statusReason;
  String? get statusReason => _$this._statusReason;
  set statusReason(String? statusReason) => _$this._statusReason = statusReason;

  bool? _operatorValidated;
  bool? get operatorValidated => _$this._operatorValidated;
  set operatorValidated(bool? operatorValidated) =>
      _$this._operatorValidated = operatorValidated;

  DetectorRefBuilder? _detector;
  DetectorRefBuilder get detector => _$this._detector ??= DetectorRefBuilder();
  set detector(DetectorRefBuilder? detector) => _$this._detector = detector;

  DateTime? _firstValidatedAt;
  DateTime? get firstValidatedAt => _$this._firstValidatedAt;
  set firstValidatedAt(DateTime? firstValidatedAt) =>
      _$this._firstValidatedAt = firstValidatedAt;

  DateTime? _lastTestedAt;
  DateTime? get lastTestedAt => _$this._lastTestedAt;
  set lastTestedAt(DateTime? lastTestedAt) =>
      _$this._lastTestedAt = lastTestedAt;

  PrecursorOriginEnum? _origin;
  PrecursorOriginEnum? get origin => _$this._origin;
  set origin(PrecursorOriginEnum? origin) => _$this._origin = origin;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _associationNote;
  String? get associationNote => _$this._associationNote;
  set associationNote(String? associationNote) =>
      _$this._associationNote = associationNote;

  ListBuilder<Caveat>? _caveats;
  ListBuilder<Caveat> get caveats => _$this._caveats ??= ListBuilder<Caveat>();
  set caveats(ListBuilder<Caveat>? caveats) => _$this._caveats = caveats;

  ListBuilder<PrecursorHistoryInner>? _history;
  ListBuilder<PrecursorHistoryInner> get history =>
      _$this._history ??= ListBuilder<PrecursorHistoryInner>();
  set history(ListBuilder<PrecursorHistoryInner>? history) =>
      _$this._history = history;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  PrecursorBuilder() {
    Precursor._defaults(this);
  }

  PrecursorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _kind = $v.kind;
      _antecedent = $v.antecedent.toBuilder();
      _consequent = $v.consequent.toBuilder();
      _spatial = $v.spatial.toBuilder();
      _regionCodes = $v.regionCodes?.toBuilder();
      _lagMin = $v.lagMin;
      _lagMax = $v.lagMax;
      _bestLag = $v.bestLag;
      _lagDistribution = $v.lagDistribution?.toBuilder();
      _hitRate = $v.hitRate;
      _hitRateInterval = $v.hitRateInterval?.toBuilder();
      _baseRate = $v.baseRate;
      _lift = $v.lift;
      _correlation = $v.correlation;
      _correlationSign = $v.correlationSign;
      _nAntecedent = $v.nAntecedent;
      _discovery = $v.discovery.toBuilder();
      _validation = $v.validation?.toBuilder();
      _lastRetest = $v.lastRetest?.toBuilder();
      _batchId = $v.batchId;
      _batchSize = $v.batchSize;
      _status = $v.status;
      _statusReason = $v.statusReason;
      _operatorValidated = $v.operatorValidated;
      _detector = $v.detector.toBuilder();
      _firstValidatedAt = $v.firstValidatedAt;
      _lastTestedAt = $v.lastTestedAt;
      _origin = $v.origin;
      _description = $v.description;
      _associationNote = $v.associationNote;
      _caveats = $v.caveats.toBuilder();
      _history = $v.history?.toBuilder();
      _manifestId = $v.manifestId;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Precursor other) {
    _$v = other as _$Precursor;
  }

  @override
  void update(void Function(PrecursorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Precursor build() => _build();

  _$Precursor _build() {
    _$Precursor _$result;
    try {
      _$result =
          _$v ??
          _$Precursor._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Precursor', 'id'),
            kind: BuiltValueNullFieldError.checkNotNull(
              kind,
              r'Precursor',
              'kind',
            ),
            antecedent: antecedent.build(),
            consequent: consequent.build(),
            spatial: spatial.build(),
            regionCodes: _regionCodes?.build(),
            lagMin: BuiltValueNullFieldError.checkNotNull(
              lagMin,
              r'Precursor',
              'lagMin',
            ),
            lagMax: BuiltValueNullFieldError.checkNotNull(
              lagMax,
              r'Precursor',
              'lagMax',
            ),
            bestLag: bestLag,
            lagDistribution: _lagDistribution?.build(),
            hitRate: hitRate,
            hitRateInterval: _hitRateInterval?.build(),
            baseRate: baseRate,
            lift: lift,
            correlation: correlation,
            correlationSign: correlationSign,
            nAntecedent: BuiltValueNullFieldError.checkNotNull(
              nAntecedent,
              r'Precursor',
              'nAntecedent',
            ),
            discovery: discovery.build(),
            validation: _validation?.build(),
            lastRetest: _lastRetest?.build(),
            batchId: BuiltValueNullFieldError.checkNotNull(
              batchId,
              r'Precursor',
              'batchId',
            ),
            batchSize: BuiltValueNullFieldError.checkNotNull(
              batchSize,
              r'Precursor',
              'batchSize',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'Precursor',
              'status',
            ),
            statusReason: statusReason,
            operatorValidated: operatorValidated,
            detector: detector.build(),
            firstValidatedAt: firstValidatedAt,
            lastTestedAt: lastTestedAt,
            origin: BuiltValueNullFieldError.checkNotNull(
              origin,
              r'Precursor',
              'origin',
            ),
            description: BuiltValueNullFieldError.checkNotNull(
              description,
              r'Precursor',
              'description',
            ),
            associationNote: BuiltValueNullFieldError.checkNotNull(
              associationNote,
              r'Precursor',
              'associationNote',
            ),
            caveats: caveats.build(),
            history: _history?.build(),
            manifestId: BuiltValueNullFieldError.checkNotNull(
              manifestId,
              r'Precursor',
              'manifestId',
            ),
            createdAt: createdAt,
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'antecedent';
        antecedent.build();
        _$failedField = 'consequent';
        consequent.build();
        _$failedField = 'spatial';
        spatial.build();
        _$failedField = 'regionCodes';
        _regionCodes?.build();

        _$failedField = 'lagDistribution';
        _lagDistribution?.build();

        _$failedField = 'hitRateInterval';
        _hitRateInterval?.build();

        _$failedField = 'discovery';
        discovery.build();
        _$failedField = 'validation';
        _validation?.build();
        _$failedField = 'lastRetest';
        _lastRetest?.build();

        _$failedField = 'detector';
        detector.build();

        _$failedField = 'caveats';
        caveats.build();
        _$failedField = 'history';
        _history?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Precursor',
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
