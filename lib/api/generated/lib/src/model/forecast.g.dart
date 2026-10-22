// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ForecastForecasterTypeEnum _$forecastForecasterTypeEnum_baseRate =
    const ForecastForecasterTypeEnum._('baseRate');
const ForecastForecasterTypeEnum _$forecastForecasterTypeEnum_climatology =
    const ForecastForecasterTypeEnum._('climatology');
const ForecastForecasterTypeEnum _$forecastForecasterTypeEnum_persistence =
    const ForecastForecasterTypeEnum._('persistence');
const ForecastForecasterTypeEnum _$forecastForecasterTypeEnum_statistical =
    const ForecastForecasterTypeEnum._('statistical');
const ForecastForecasterTypeEnum _$forecastForecasterTypeEnum_precursor =
    const ForecastForecasterTypeEnum._('precursor');
const ForecastForecasterTypeEnum _$forecastForecasterTypeEnum_analog =
    const ForecastForecasterTypeEnum._('analog');
const ForecastForecasterTypeEnum _$forecastForecasterTypeEnum_threshold =
    const ForecastForecasterTypeEnum._('threshold');
const ForecastForecasterTypeEnum _$forecastForecasterTypeEnum_impact =
    const ForecastForecasterTypeEnum._('impact');
const ForecastForecasterTypeEnum _$forecastForecasterTypeEnum_indicatorBayes =
    const ForecastForecasterTypeEnum._('indicatorBayes');
const ForecastForecasterTypeEnum _$forecastForecasterTypeEnum_llm =
    const ForecastForecasterTypeEnum._('llm');
const ForecastForecasterTypeEnum _$forecastForecasterTypeEnum_operator_ =
    const ForecastForecasterTypeEnum._('operator_');
const ForecastForecasterTypeEnum _$forecastForecasterTypeEnum_external_ =
    const ForecastForecasterTypeEnum._('external_');
const ForecastForecasterTypeEnum _$forecastForecasterTypeEnum_ensemble =
    const ForecastForecasterTypeEnum._('ensemble');

ForecastForecasterTypeEnum _$forecastForecasterTypeEnumValueOf(String name) {
  switch (name) {
    case 'baseRate':
      return _$forecastForecasterTypeEnum_baseRate;
    case 'climatology':
      return _$forecastForecasterTypeEnum_climatology;
    case 'persistence':
      return _$forecastForecasterTypeEnum_persistence;
    case 'statistical':
      return _$forecastForecasterTypeEnum_statistical;
    case 'precursor':
      return _$forecastForecasterTypeEnum_precursor;
    case 'analog':
      return _$forecastForecasterTypeEnum_analog;
    case 'threshold':
      return _$forecastForecasterTypeEnum_threshold;
    case 'impact':
      return _$forecastForecasterTypeEnum_impact;
    case 'indicatorBayes':
      return _$forecastForecasterTypeEnum_indicatorBayes;
    case 'llm':
      return _$forecastForecasterTypeEnum_llm;
    case 'operator_':
      return _$forecastForecasterTypeEnum_operator_;
    case 'external_':
      return _$forecastForecasterTypeEnum_external_;
    case 'ensemble':
      return _$forecastForecasterTypeEnum_ensemble;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ForecastForecasterTypeEnum> _$forecastForecasterTypeEnumValues =
    BuiltSet<ForecastForecasterTypeEnum>(const <ForecastForecasterTypeEnum>[
  _$forecastForecasterTypeEnum_baseRate,
  _$forecastForecasterTypeEnum_climatology,
  _$forecastForecasterTypeEnum_persistence,
  _$forecastForecasterTypeEnum_statistical,
  _$forecastForecasterTypeEnum_precursor,
  _$forecastForecasterTypeEnum_analog,
  _$forecastForecasterTypeEnum_threshold,
  _$forecastForecasterTypeEnum_impact,
  _$forecastForecasterTypeEnum_indicatorBayes,
  _$forecastForecasterTypeEnum_llm,
  _$forecastForecasterTypeEnum_operator_,
  _$forecastForecasterTypeEnum_external_,
  _$forecastForecasterTypeEnum_ensemble,
]);

Serializer<ForecastForecasterTypeEnum> _$forecastForecasterTypeEnumSerializer =
    _$ForecastForecasterTypeEnumSerializer();

class _$ForecastForecasterTypeEnumSerializer
    implements PrimitiveSerializer<ForecastForecasterTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'baseRate': 'base-rate',
    'climatology': 'climatology',
    'persistence': 'persistence',
    'statistical': 'statistical',
    'precursor': 'precursor',
    'analog': 'analog',
    'threshold': 'threshold',
    'impact': 'impact',
    'indicatorBayes': 'indicator-bayes',
    'llm': 'llm',
    'operator_': 'operator',
    'external_': 'external',
    'ensemble': 'ensemble',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'base-rate': 'baseRate',
    'climatology': 'climatology',
    'persistence': 'persistence',
    'statistical': 'statistical',
    'precursor': 'precursor',
    'analog': 'analog',
    'threshold': 'threshold',
    'impact': 'impact',
    'indicator-bayes': 'indicatorBayes',
    'llm': 'llm',
    'operator': 'operator_',
    'external': 'external_',
    'ensemble': 'ensemble',
  };

  @override
  final Iterable<Type> types = const <Type>[ForecastForecasterTypeEnum];
  @override
  final String wireName = 'ForecastForecasterTypeEnum';

  @override
  Object serialize(Serializers serializers, ForecastForecasterTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ForecastForecasterTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ForecastForecasterTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Forecast extends Forecast {
  @override
  final String id;
  @override
  final String questionId;
  @override
  final String forecasterId;
  @override
  final ForecastForecasterTypeEnum forecasterType;
  @override
  final DateTime madeAt;
  @override
  final int asOfSeq;
  @override
  final Date? knowledgeCutoff;
  @override
  final num? probability;
  @override
  final BuiltMap<String, num>? distribution;
  @override
  final Quantiles? quantiles;
  @override
  final IcdTerm? estimativeTerm;
  @override
  final String? rationale;
  @override
  final BuiltList<BuiltMap<String, JsonObject?>>? claims;
  @override
  final BuiltList<ForecastCitationsInner>? citations;
  @override
  final BuiltMap<String, JsonObject?>? inputs;
  @override
  final String? supersedesId;
  @override
  final bool recalibrated;
  @override
  final String manifestId;

  factory _$Forecast([void Function(ForecastBuilder)? updates]) =>
      (ForecastBuilder()..update(updates))._build();

  _$Forecast._(
      {required this.id,
      required this.questionId,
      required this.forecasterId,
      required this.forecasterType,
      required this.madeAt,
      required this.asOfSeq,
      this.knowledgeCutoff,
      this.probability,
      this.distribution,
      this.quantiles,
      this.estimativeTerm,
      this.rationale,
      this.claims,
      this.citations,
      this.inputs,
      this.supersedesId,
      required this.recalibrated,
      required this.manifestId})
      : super._();
  @override
  Forecast rebuild(void Function(ForecastBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastBuilder toBuilder() => ForecastBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Forecast &&
        id == other.id &&
        questionId == other.questionId &&
        forecasterId == other.forecasterId &&
        forecasterType == other.forecasterType &&
        madeAt == other.madeAt &&
        asOfSeq == other.asOfSeq &&
        knowledgeCutoff == other.knowledgeCutoff &&
        probability == other.probability &&
        distribution == other.distribution &&
        quantiles == other.quantiles &&
        estimativeTerm == other.estimativeTerm &&
        rationale == other.rationale &&
        claims == other.claims &&
        citations == other.citations &&
        inputs == other.inputs &&
        supersedesId == other.supersedesId &&
        recalibrated == other.recalibrated &&
        manifestId == other.manifestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, questionId.hashCode);
    _$hash = $jc(_$hash, forecasterId.hashCode);
    _$hash = $jc(_$hash, forecasterType.hashCode);
    _$hash = $jc(_$hash, madeAt.hashCode);
    _$hash = $jc(_$hash, asOfSeq.hashCode);
    _$hash = $jc(_$hash, knowledgeCutoff.hashCode);
    _$hash = $jc(_$hash, probability.hashCode);
    _$hash = $jc(_$hash, distribution.hashCode);
    _$hash = $jc(_$hash, quantiles.hashCode);
    _$hash = $jc(_$hash, estimativeTerm.hashCode);
    _$hash = $jc(_$hash, rationale.hashCode);
    _$hash = $jc(_$hash, claims.hashCode);
    _$hash = $jc(_$hash, citations.hashCode);
    _$hash = $jc(_$hash, inputs.hashCode);
    _$hash = $jc(_$hash, supersedesId.hashCode);
    _$hash = $jc(_$hash, recalibrated.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Forecast')
          ..add('id', id)
          ..add('questionId', questionId)
          ..add('forecasterId', forecasterId)
          ..add('forecasterType', forecasterType)
          ..add('madeAt', madeAt)
          ..add('asOfSeq', asOfSeq)
          ..add('knowledgeCutoff', knowledgeCutoff)
          ..add('probability', probability)
          ..add('distribution', distribution)
          ..add('quantiles', quantiles)
          ..add('estimativeTerm', estimativeTerm)
          ..add('rationale', rationale)
          ..add('claims', claims)
          ..add('citations', citations)
          ..add('inputs', inputs)
          ..add('supersedesId', supersedesId)
          ..add('recalibrated', recalibrated)
          ..add('manifestId', manifestId))
        .toString();
  }
}

class ForecastBuilder implements Builder<Forecast, ForecastBuilder> {
  _$Forecast? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _questionId;
  String? get questionId => _$this._questionId;
  set questionId(String? questionId) => _$this._questionId = questionId;

  String? _forecasterId;
  String? get forecasterId => _$this._forecasterId;
  set forecasterId(String? forecasterId) => _$this._forecasterId = forecasterId;

  ForecastForecasterTypeEnum? _forecasterType;
  ForecastForecasterTypeEnum? get forecasterType => _$this._forecasterType;
  set forecasterType(ForecastForecasterTypeEnum? forecasterType) =>
      _$this._forecasterType = forecasterType;

  DateTime? _madeAt;
  DateTime? get madeAt => _$this._madeAt;
  set madeAt(DateTime? madeAt) => _$this._madeAt = madeAt;

  int? _asOfSeq;
  int? get asOfSeq => _$this._asOfSeq;
  set asOfSeq(int? asOfSeq) => _$this._asOfSeq = asOfSeq;

  Date? _knowledgeCutoff;
  Date? get knowledgeCutoff => _$this._knowledgeCutoff;
  set knowledgeCutoff(Date? knowledgeCutoff) =>
      _$this._knowledgeCutoff = knowledgeCutoff;

  num? _probability;
  num? get probability => _$this._probability;
  set probability(num? probability) => _$this._probability = probability;

  MapBuilder<String, num>? _distribution;
  MapBuilder<String, num> get distribution =>
      _$this._distribution ??= MapBuilder<String, num>();
  set distribution(MapBuilder<String, num>? distribution) =>
      _$this._distribution = distribution;

  QuantilesBuilder? _quantiles;
  QuantilesBuilder get quantiles => _$this._quantiles ??= QuantilesBuilder();
  set quantiles(QuantilesBuilder? quantiles) => _$this._quantiles = quantiles;

  IcdTerm? _estimativeTerm;
  IcdTerm? get estimativeTerm => _$this._estimativeTerm;
  set estimativeTerm(IcdTerm? estimativeTerm) =>
      _$this._estimativeTerm = estimativeTerm;

  String? _rationale;
  String? get rationale => _$this._rationale;
  set rationale(String? rationale) => _$this._rationale = rationale;

  ListBuilder<BuiltMap<String, JsonObject?>>? _claims;
  ListBuilder<BuiltMap<String, JsonObject?>> get claims =>
      _$this._claims ??= ListBuilder<BuiltMap<String, JsonObject?>>();
  set claims(ListBuilder<BuiltMap<String, JsonObject?>>? claims) =>
      _$this._claims = claims;

  ListBuilder<ForecastCitationsInner>? _citations;
  ListBuilder<ForecastCitationsInner> get citations =>
      _$this._citations ??= ListBuilder<ForecastCitationsInner>();
  set citations(ListBuilder<ForecastCitationsInner>? citations) =>
      _$this._citations = citations;

  MapBuilder<String, JsonObject?>? _inputs;
  MapBuilder<String, JsonObject?> get inputs =>
      _$this._inputs ??= MapBuilder<String, JsonObject?>();
  set inputs(MapBuilder<String, JsonObject?>? inputs) =>
      _$this._inputs = inputs;

  String? _supersedesId;
  String? get supersedesId => _$this._supersedesId;
  set supersedesId(String? supersedesId) => _$this._supersedesId = supersedesId;

  bool? _recalibrated;
  bool? get recalibrated => _$this._recalibrated;
  set recalibrated(bool? recalibrated) => _$this._recalibrated = recalibrated;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  ForecastBuilder() {
    Forecast._defaults(this);
  }

  ForecastBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _questionId = $v.questionId;
      _forecasterId = $v.forecasterId;
      _forecasterType = $v.forecasterType;
      _madeAt = $v.madeAt;
      _asOfSeq = $v.asOfSeq;
      _knowledgeCutoff = $v.knowledgeCutoff;
      _probability = $v.probability;
      _distribution = $v.distribution?.toBuilder();
      _quantiles = $v.quantiles?.toBuilder();
      _estimativeTerm = $v.estimativeTerm;
      _rationale = $v.rationale;
      _claims = $v.claims?.toBuilder();
      _citations = $v.citations?.toBuilder();
      _inputs = $v.inputs?.toBuilder();
      _supersedesId = $v.supersedesId;
      _recalibrated = $v.recalibrated;
      _manifestId = $v.manifestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Forecast other) {
    _$v = other as _$Forecast;
  }

  @override
  void update(void Function(ForecastBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Forecast build() => _build();

  _$Forecast _build() {
    _$Forecast _$result;
    try {
      _$result = _$v ??
          _$Forecast._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Forecast', 'id'),
            questionId: BuiltValueNullFieldError.checkNotNull(
                questionId, r'Forecast', 'questionId'),
            forecasterId: BuiltValueNullFieldError.checkNotNull(
                forecasterId, r'Forecast', 'forecasterId'),
            forecasterType: BuiltValueNullFieldError.checkNotNull(
                forecasterType, r'Forecast', 'forecasterType'),
            madeAt: BuiltValueNullFieldError.checkNotNull(
                madeAt, r'Forecast', 'madeAt'),
            asOfSeq: BuiltValueNullFieldError.checkNotNull(
                asOfSeq, r'Forecast', 'asOfSeq'),
            knowledgeCutoff: knowledgeCutoff,
            probability: probability,
            distribution: _distribution?.build(),
            quantiles: _quantiles?.build(),
            estimativeTerm: estimativeTerm,
            rationale: rationale,
            claims: _claims?.build(),
            citations: _citations?.build(),
            inputs: _inputs?.build(),
            supersedesId: supersedesId,
            recalibrated: BuiltValueNullFieldError.checkNotNull(
                recalibrated, r'Forecast', 'recalibrated'),
            manifestId: BuiltValueNullFieldError.checkNotNull(
                manifestId, r'Forecast', 'manifestId'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'distribution';
        _distribution?.build();
        _$failedField = 'quantiles';
        _quantiles?.build();

        _$failedField = 'claims';
        _claims?.build();
        _$failedField = 'citations';
        _citations?.build();
        _$failedField = 'inputs';
        _inputs?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Forecast', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
