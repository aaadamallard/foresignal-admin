// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_question.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ForecastQuestionTypeEnum _$forecastQuestionTypeEnum_binary =
    const ForecastQuestionTypeEnum._('binary');
const ForecastQuestionTypeEnum _$forecastQuestionTypeEnum_multiple =
    const ForecastQuestionTypeEnum._('multiple');
const ForecastQuestionTypeEnum _$forecastQuestionTypeEnum_ordered =
    const ForecastQuestionTypeEnum._('ordered');
const ForecastQuestionTypeEnum _$forecastQuestionTypeEnum_numeric =
    const ForecastQuestionTypeEnum._('numeric');

ForecastQuestionTypeEnum _$forecastQuestionTypeEnumValueOf(String name) {
  switch (name) {
    case 'binary':
      return _$forecastQuestionTypeEnum_binary;
    case 'multiple':
      return _$forecastQuestionTypeEnum_multiple;
    case 'ordered':
      return _$forecastQuestionTypeEnum_ordered;
    case 'numeric':
      return _$forecastQuestionTypeEnum_numeric;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ForecastQuestionTypeEnum> _$forecastQuestionTypeEnumValues =
    BuiltSet<ForecastQuestionTypeEnum>(const <ForecastQuestionTypeEnum>[
  _$forecastQuestionTypeEnum_binary,
  _$forecastQuestionTypeEnum_multiple,
  _$forecastQuestionTypeEnum_ordered,
  _$forecastQuestionTypeEnum_numeric,
]);

const ForecastQuestionStatusEnum _$forecastQuestionStatusEnum_open =
    const ForecastQuestionStatusEnum._('open');
const ForecastQuestionStatusEnum _$forecastQuestionStatusEnum_closed =
    const ForecastQuestionStatusEnum._('closed');
const ForecastQuestionStatusEnum _$forecastQuestionStatusEnum_resolved =
    const ForecastQuestionStatusEnum._('resolved');
const ForecastQuestionStatusEnum _$forecastQuestionStatusEnum_annulled =
    const ForecastQuestionStatusEnum._('annulled');

ForecastQuestionStatusEnum _$forecastQuestionStatusEnumValueOf(String name) {
  switch (name) {
    case 'open':
      return _$forecastQuestionStatusEnum_open;
    case 'closed':
      return _$forecastQuestionStatusEnum_closed;
    case 'resolved':
      return _$forecastQuestionStatusEnum_resolved;
    case 'annulled':
      return _$forecastQuestionStatusEnum_annulled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ForecastQuestionStatusEnum> _$forecastQuestionStatusEnumValues =
    BuiltSet<ForecastQuestionStatusEnum>(const <ForecastQuestionStatusEnum>[
  _$forecastQuestionStatusEnum_open,
  _$forecastQuestionStatusEnum_closed,
  _$forecastQuestionStatusEnum_resolved,
  _$forecastQuestionStatusEnum_annulled,
]);

const ForecastQuestionResolverTypeEnum
    _$forecastQuestionResolverTypeEnum_eventExists =
    const ForecastQuestionResolverTypeEnum._('eventExists');
const ForecastQuestionResolverTypeEnum
    _$forecastQuestionResolverTypeEnum_countThreshold =
    const ForecastQuestionResolverTypeEnum._('countThreshold');
const ForecastQuestionResolverTypeEnum
    _$forecastQuestionResolverTypeEnum_seriesValue =
    const ForecastQuestionResolverTypeEnum._('seriesValue');
const ForecastQuestionResolverTypeEnum
    _$forecastQuestionResolverTypeEnum_alertFired =
    const ForecastQuestionResolverTypeEnum._('alertFired');
const ForecastQuestionResolverTypeEnum
    _$forecastQuestionResolverTypeEnum_situationStatus =
    const ForecastQuestionResolverTypeEnum._('situationStatus');
const ForecastQuestionResolverTypeEnum
    _$forecastQuestionResolverTypeEnum_hypothesisOutcome =
    const ForecastQuestionResolverTypeEnum._('hypothesisOutcome');
const ForecastQuestionResolverTypeEnum
    _$forecastQuestionResolverTypeEnum_manual =
    const ForecastQuestionResolverTypeEnum._('manual');

ForecastQuestionResolverTypeEnum _$forecastQuestionResolverTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'eventExists':
      return _$forecastQuestionResolverTypeEnum_eventExists;
    case 'countThreshold':
      return _$forecastQuestionResolverTypeEnum_countThreshold;
    case 'seriesValue':
      return _$forecastQuestionResolverTypeEnum_seriesValue;
    case 'alertFired':
      return _$forecastQuestionResolverTypeEnum_alertFired;
    case 'situationStatus':
      return _$forecastQuestionResolverTypeEnum_situationStatus;
    case 'hypothesisOutcome':
      return _$forecastQuestionResolverTypeEnum_hypothesisOutcome;
    case 'manual':
      return _$forecastQuestionResolverTypeEnum_manual;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ForecastQuestionResolverTypeEnum>
    _$forecastQuestionResolverTypeEnumValues = BuiltSet<
        ForecastQuestionResolverTypeEnum>(const <ForecastQuestionResolverTypeEnum>[
  _$forecastQuestionResolverTypeEnum_eventExists,
  _$forecastQuestionResolverTypeEnum_countThreshold,
  _$forecastQuestionResolverTypeEnum_seriesValue,
  _$forecastQuestionResolverTypeEnum_alertFired,
  _$forecastQuestionResolverTypeEnum_situationStatus,
  _$forecastQuestionResolverTypeEnum_hypothesisOutcome,
  _$forecastQuestionResolverTypeEnum_manual,
]);

const ForecastQuestionOriginEnum _$forecastQuestionOriginEnum_operator_ =
    const ForecastQuestionOriginEnum._('operator_');
const ForecastQuestionOriginEnum _$forecastQuestionOriginEnum_agent =
    const ForecastQuestionOriginEnum._('agent');
const ForecastQuestionOriginEnum _$forecastQuestionOriginEnum_system =
    const ForecastQuestionOriginEnum._('system');
const ForecastQuestionOriginEnum _$forecastQuestionOriginEnum_analyst =
    const ForecastQuestionOriginEnum._('analyst');

ForecastQuestionOriginEnum _$forecastQuestionOriginEnumValueOf(String name) {
  switch (name) {
    case 'operator_':
      return _$forecastQuestionOriginEnum_operator_;
    case 'agent':
      return _$forecastQuestionOriginEnum_agent;
    case 'system':
      return _$forecastQuestionOriginEnum_system;
    case 'analyst':
      return _$forecastQuestionOriginEnum_analyst;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ForecastQuestionOriginEnum> _$forecastQuestionOriginEnumValues =
    BuiltSet<ForecastQuestionOriginEnum>(const <ForecastQuestionOriginEnum>[
  _$forecastQuestionOriginEnum_operator_,
  _$forecastQuestionOriginEnum_agent,
  _$forecastQuestionOriginEnum_system,
  _$forecastQuestionOriginEnum_analyst,
]);

Serializer<ForecastQuestionTypeEnum> _$forecastQuestionTypeEnumSerializer =
    _$ForecastQuestionTypeEnumSerializer();
Serializer<ForecastQuestionStatusEnum> _$forecastQuestionStatusEnumSerializer =
    _$ForecastQuestionStatusEnumSerializer();
Serializer<ForecastQuestionResolverTypeEnum>
    _$forecastQuestionResolverTypeEnumSerializer =
    _$ForecastQuestionResolverTypeEnumSerializer();
Serializer<ForecastQuestionOriginEnum> _$forecastQuestionOriginEnumSerializer =
    _$ForecastQuestionOriginEnumSerializer();

class _$ForecastQuestionTypeEnumSerializer
    implements PrimitiveSerializer<ForecastQuestionTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'binary': 'binary',
    'multiple': 'multiple',
    'ordered': 'ordered',
    'numeric': 'numeric',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'binary': 'binary',
    'multiple': 'multiple',
    'ordered': 'ordered',
    'numeric': 'numeric',
  };

  @override
  final Iterable<Type> types = const <Type>[ForecastQuestionTypeEnum];
  @override
  final String wireName = 'ForecastQuestionTypeEnum';

  @override
  Object serialize(Serializers serializers, ForecastQuestionTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ForecastQuestionTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ForecastQuestionTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ForecastQuestionStatusEnumSerializer
    implements PrimitiveSerializer<ForecastQuestionStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'open': 'open',
    'closed': 'closed',
    'resolved': 'resolved',
    'annulled': 'annulled',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'open': 'open',
    'closed': 'closed',
    'resolved': 'resolved',
    'annulled': 'annulled',
  };

  @override
  final Iterable<Type> types = const <Type>[ForecastQuestionStatusEnum];
  @override
  final String wireName = 'ForecastQuestionStatusEnum';

  @override
  Object serialize(Serializers serializers, ForecastQuestionStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ForecastQuestionStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ForecastQuestionStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ForecastQuestionResolverTypeEnumSerializer
    implements PrimitiveSerializer<ForecastQuestionResolverTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'eventExists': 'event-exists',
    'countThreshold': 'count-threshold',
    'seriesValue': 'series-value',
    'alertFired': 'alert-fired',
    'situationStatus': 'situation-status',
    'hypothesisOutcome': 'hypothesis-outcome',
    'manual': 'manual',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'event-exists': 'eventExists',
    'count-threshold': 'countThreshold',
    'series-value': 'seriesValue',
    'alert-fired': 'alertFired',
    'situation-status': 'situationStatus',
    'hypothesis-outcome': 'hypothesisOutcome',
    'manual': 'manual',
  };

  @override
  final Iterable<Type> types = const <Type>[ForecastQuestionResolverTypeEnum];
  @override
  final String wireName = 'ForecastQuestionResolverTypeEnum';

  @override
  Object serialize(
          Serializers serializers, ForecastQuestionResolverTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ForecastQuestionResolverTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ForecastQuestionResolverTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ForecastQuestionOriginEnumSerializer
    implements PrimitiveSerializer<ForecastQuestionOriginEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'operator_': 'operator',
    'agent': 'agent',
    'system': 'system',
    'analyst': 'analyst',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'operator': 'operator_',
    'agent': 'agent',
    'system': 'system',
    'analyst': 'analyst',
  };

  @override
  final Iterable<Type> types = const <Type>[ForecastQuestionOriginEnum];
  @override
  final String wireName = 'ForecastQuestionOriginEnum';

  @override
  Object serialize(Serializers serializers, ForecastQuestionOriginEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ForecastQuestionOriginEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ForecastQuestionOriginEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ForecastQuestion extends ForecastQuestion {
  @override
  final String id;
  @override
  final String title;
  @override
  final ForecastQuestionTypeEnum type;
  @override
  final ForecastQuestionStatusEnum status;
  @override
  final String category;
  @override
  final BuiltList<String>? tags;
  @override
  final ForecastQuestionResolverTypeEnum resolverType;
  @override
  final DateTime opensAt;
  @override
  final DateTime closesAt;
  @override
  final DateTime resolveBy;
  @override
  final ForecastQuestionOriginEnum origin;
  @override
  final QuestionLinks? links;
  @override
  final bool private;
  @override
  final int? forecastCount;
  @override
  final num? ensembleProbability;
  @override
  final IcdTerm? estimativeTerm;
  @override
  final String? resolvedOutcome;
  @override
  final num? resolvedValue;
  @override
  final QuestionOutcomes? outcomes;
  @override
  final String resolutionCriteria;
  @override
  final ForecastResolver resolver;
  @override
  final ForecastResolution? resolution;
  @override
  final QuestionAnnulment? annulment;
  @override
  final String? dedupKey;
  @override
  final BuiltList<Forecast> latestForecasts;
  @override
  final Forecast? ensemble;
  @override
  final BuiltList<ForecastScore>? scores;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final BuiltMap<String, String>? baselineNotes;
  @override
  final String? manifestId;

  factory _$ForecastQuestion(
          [void Function(ForecastQuestionBuilder)? updates]) =>
      (ForecastQuestionBuilder()..update(updates))._build();

  _$ForecastQuestion._(
      {required this.id,
      required this.title,
      required this.type,
      required this.status,
      required this.category,
      this.tags,
      required this.resolverType,
      required this.opensAt,
      required this.closesAt,
      required this.resolveBy,
      required this.origin,
      this.links,
      required this.private,
      this.forecastCount,
      this.ensembleProbability,
      this.estimativeTerm,
      this.resolvedOutcome,
      this.resolvedValue,
      this.outcomes,
      required this.resolutionCriteria,
      required this.resolver,
      this.resolution,
      this.annulment,
      this.dedupKey,
      required this.latestForecasts,
      this.ensemble,
      this.scores,
      this.createdAt,
      this.updatedAt,
      this.baselineNotes,
      this.manifestId})
      : super._();
  @override
  ForecastQuestion rebuild(void Function(ForecastQuestionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastQuestionBuilder toBuilder() =>
      ForecastQuestionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastQuestion &&
        id == other.id &&
        title == other.title &&
        type == other.type &&
        status == other.status &&
        category == other.category &&
        tags == other.tags &&
        resolverType == other.resolverType &&
        opensAt == other.opensAt &&
        closesAt == other.closesAt &&
        resolveBy == other.resolveBy &&
        origin == other.origin &&
        links == other.links &&
        private == other.private &&
        forecastCount == other.forecastCount &&
        ensembleProbability == other.ensembleProbability &&
        estimativeTerm == other.estimativeTerm &&
        resolvedOutcome == other.resolvedOutcome &&
        resolvedValue == other.resolvedValue &&
        outcomes == other.outcomes &&
        resolutionCriteria == other.resolutionCriteria &&
        resolver == other.resolver &&
        resolution == other.resolution &&
        annulment == other.annulment &&
        dedupKey == other.dedupKey &&
        latestForecasts == other.latestForecasts &&
        ensemble == other.ensemble &&
        scores == other.scores &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        baselineNotes == other.baselineNotes &&
        manifestId == other.manifestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, resolverType.hashCode);
    _$hash = $jc(_$hash, opensAt.hashCode);
    _$hash = $jc(_$hash, closesAt.hashCode);
    _$hash = $jc(_$hash, resolveBy.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jc(_$hash, forecastCount.hashCode);
    _$hash = $jc(_$hash, ensembleProbability.hashCode);
    _$hash = $jc(_$hash, estimativeTerm.hashCode);
    _$hash = $jc(_$hash, resolvedOutcome.hashCode);
    _$hash = $jc(_$hash, resolvedValue.hashCode);
    _$hash = $jc(_$hash, outcomes.hashCode);
    _$hash = $jc(_$hash, resolutionCriteria.hashCode);
    _$hash = $jc(_$hash, resolver.hashCode);
    _$hash = $jc(_$hash, resolution.hashCode);
    _$hash = $jc(_$hash, annulment.hashCode);
    _$hash = $jc(_$hash, dedupKey.hashCode);
    _$hash = $jc(_$hash, latestForecasts.hashCode);
    _$hash = $jc(_$hash, ensemble.hashCode);
    _$hash = $jc(_$hash, scores.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, baselineNotes.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecastQuestion')
          ..add('id', id)
          ..add('title', title)
          ..add('type', type)
          ..add('status', status)
          ..add('category', category)
          ..add('tags', tags)
          ..add('resolverType', resolverType)
          ..add('opensAt', opensAt)
          ..add('closesAt', closesAt)
          ..add('resolveBy', resolveBy)
          ..add('origin', origin)
          ..add('links', links)
          ..add('private', private)
          ..add('forecastCount', forecastCount)
          ..add('ensembleProbability', ensembleProbability)
          ..add('estimativeTerm', estimativeTerm)
          ..add('resolvedOutcome', resolvedOutcome)
          ..add('resolvedValue', resolvedValue)
          ..add('outcomes', outcomes)
          ..add('resolutionCriteria', resolutionCriteria)
          ..add('resolver', resolver)
          ..add('resolution', resolution)
          ..add('annulment', annulment)
          ..add('dedupKey', dedupKey)
          ..add('latestForecasts', latestForecasts)
          ..add('ensemble', ensemble)
          ..add('scores', scores)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('baselineNotes', baselineNotes)
          ..add('manifestId', manifestId))
        .toString();
  }
}

class ForecastQuestionBuilder
    implements Builder<ForecastQuestion, ForecastQuestionBuilder> {
  _$ForecastQuestion? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ForecastQuestionTypeEnum? _type;
  ForecastQuestionTypeEnum? get type => _$this._type;
  set type(ForecastQuestionTypeEnum? type) => _$this._type = type;

  ForecastQuestionStatusEnum? _status;
  ForecastQuestionStatusEnum? get status => _$this._status;
  set status(ForecastQuestionStatusEnum? status) => _$this._status = status;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  ForecastQuestionResolverTypeEnum? _resolverType;
  ForecastQuestionResolverTypeEnum? get resolverType => _$this._resolverType;
  set resolverType(ForecastQuestionResolverTypeEnum? resolverType) =>
      _$this._resolverType = resolverType;

  DateTime? _opensAt;
  DateTime? get opensAt => _$this._opensAt;
  set opensAt(DateTime? opensAt) => _$this._opensAt = opensAt;

  DateTime? _closesAt;
  DateTime? get closesAt => _$this._closesAt;
  set closesAt(DateTime? closesAt) => _$this._closesAt = closesAt;

  DateTime? _resolveBy;
  DateTime? get resolveBy => _$this._resolveBy;
  set resolveBy(DateTime? resolveBy) => _$this._resolveBy = resolveBy;

  ForecastQuestionOriginEnum? _origin;
  ForecastQuestionOriginEnum? get origin => _$this._origin;
  set origin(ForecastQuestionOriginEnum? origin) => _$this._origin = origin;

  QuestionLinksBuilder? _links;
  QuestionLinksBuilder get links => _$this._links ??= QuestionLinksBuilder();
  set links(QuestionLinksBuilder? links) => _$this._links = links;

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  int? _forecastCount;
  int? get forecastCount => _$this._forecastCount;
  set forecastCount(int? forecastCount) =>
      _$this._forecastCount = forecastCount;

  num? _ensembleProbability;
  num? get ensembleProbability => _$this._ensembleProbability;
  set ensembleProbability(num? ensembleProbability) =>
      _$this._ensembleProbability = ensembleProbability;

  IcdTerm? _estimativeTerm;
  IcdTerm? get estimativeTerm => _$this._estimativeTerm;
  set estimativeTerm(IcdTerm? estimativeTerm) =>
      _$this._estimativeTerm = estimativeTerm;

  String? _resolvedOutcome;
  String? get resolvedOutcome => _$this._resolvedOutcome;
  set resolvedOutcome(String? resolvedOutcome) =>
      _$this._resolvedOutcome = resolvedOutcome;

  num? _resolvedValue;
  num? get resolvedValue => _$this._resolvedValue;
  set resolvedValue(num? resolvedValue) =>
      _$this._resolvedValue = resolvedValue;

  QuestionOutcomesBuilder? _outcomes;
  QuestionOutcomesBuilder get outcomes =>
      _$this._outcomes ??= QuestionOutcomesBuilder();
  set outcomes(QuestionOutcomesBuilder? outcomes) =>
      _$this._outcomes = outcomes;

  String? _resolutionCriteria;
  String? get resolutionCriteria => _$this._resolutionCriteria;
  set resolutionCriteria(String? resolutionCriteria) =>
      _$this._resolutionCriteria = resolutionCriteria;

  ForecastResolverBuilder? _resolver;
  ForecastResolverBuilder get resolver =>
      _$this._resolver ??= ForecastResolverBuilder();
  set resolver(ForecastResolverBuilder? resolver) =>
      _$this._resolver = resolver;

  ForecastResolutionBuilder? _resolution;
  ForecastResolutionBuilder get resolution =>
      _$this._resolution ??= ForecastResolutionBuilder();
  set resolution(ForecastResolutionBuilder? resolution) =>
      _$this._resolution = resolution;

  QuestionAnnulmentBuilder? _annulment;
  QuestionAnnulmentBuilder get annulment =>
      _$this._annulment ??= QuestionAnnulmentBuilder();
  set annulment(QuestionAnnulmentBuilder? annulment) =>
      _$this._annulment = annulment;

  String? _dedupKey;
  String? get dedupKey => _$this._dedupKey;
  set dedupKey(String? dedupKey) => _$this._dedupKey = dedupKey;

  ListBuilder<Forecast>? _latestForecasts;
  ListBuilder<Forecast> get latestForecasts =>
      _$this._latestForecasts ??= ListBuilder<Forecast>();
  set latestForecasts(ListBuilder<Forecast>? latestForecasts) =>
      _$this._latestForecasts = latestForecasts;

  ForecastBuilder? _ensemble;
  ForecastBuilder get ensemble => _$this._ensemble ??= ForecastBuilder();
  set ensemble(ForecastBuilder? ensemble) => _$this._ensemble = ensemble;

  ListBuilder<ForecastScore>? _scores;
  ListBuilder<ForecastScore> get scores =>
      _$this._scores ??= ListBuilder<ForecastScore>();
  set scores(ListBuilder<ForecastScore>? scores) => _$this._scores = scores;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  MapBuilder<String, String>? _baselineNotes;
  MapBuilder<String, String> get baselineNotes =>
      _$this._baselineNotes ??= MapBuilder<String, String>();
  set baselineNotes(MapBuilder<String, String>? baselineNotes) =>
      _$this._baselineNotes = baselineNotes;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  ForecastQuestionBuilder() {
    ForecastQuestion._defaults(this);
  }

  ForecastQuestionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _type = $v.type;
      _status = $v.status;
      _category = $v.category;
      _tags = $v.tags?.toBuilder();
      _resolverType = $v.resolverType;
      _opensAt = $v.opensAt;
      _closesAt = $v.closesAt;
      _resolveBy = $v.resolveBy;
      _origin = $v.origin;
      _links = $v.links?.toBuilder();
      _private = $v.private;
      _forecastCount = $v.forecastCount;
      _ensembleProbability = $v.ensembleProbability;
      _estimativeTerm = $v.estimativeTerm;
      _resolvedOutcome = $v.resolvedOutcome;
      _resolvedValue = $v.resolvedValue;
      _outcomes = $v.outcomes?.toBuilder();
      _resolutionCriteria = $v.resolutionCriteria;
      _resolver = $v.resolver.toBuilder();
      _resolution = $v.resolution?.toBuilder();
      _annulment = $v.annulment?.toBuilder();
      _dedupKey = $v.dedupKey;
      _latestForecasts = $v.latestForecasts.toBuilder();
      _ensemble = $v.ensemble?.toBuilder();
      _scores = $v.scores?.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _baselineNotes = $v.baselineNotes?.toBuilder();
      _manifestId = $v.manifestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastQuestion other) {
    _$v = other as _$ForecastQuestion;
  }

  @override
  void update(void Function(ForecastQuestionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastQuestion build() => _build();

  _$ForecastQuestion _build() {
    _$ForecastQuestion _$result;
    try {
      _$result = _$v ??
          _$ForecastQuestion._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ForecastQuestion', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'ForecastQuestion', 'title'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'ForecastQuestion', 'type'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'ForecastQuestion', 'status'),
            category: BuiltValueNullFieldError.checkNotNull(
                category, r'ForecastQuestion', 'category'),
            tags: _tags?.build(),
            resolverType: BuiltValueNullFieldError.checkNotNull(
                resolverType, r'ForecastQuestion', 'resolverType'),
            opensAt: BuiltValueNullFieldError.checkNotNull(
                opensAt, r'ForecastQuestion', 'opensAt'),
            closesAt: BuiltValueNullFieldError.checkNotNull(
                closesAt, r'ForecastQuestion', 'closesAt'),
            resolveBy: BuiltValueNullFieldError.checkNotNull(
                resolveBy, r'ForecastQuestion', 'resolveBy'),
            origin: BuiltValueNullFieldError.checkNotNull(
                origin, r'ForecastQuestion', 'origin'),
            links: _links?.build(),
            private: BuiltValueNullFieldError.checkNotNull(
                private, r'ForecastQuestion', 'private'),
            forecastCount: forecastCount,
            ensembleProbability: ensembleProbability,
            estimativeTerm: estimativeTerm,
            resolvedOutcome: resolvedOutcome,
            resolvedValue: resolvedValue,
            outcomes: _outcomes?.build(),
            resolutionCriteria: BuiltValueNullFieldError.checkNotNull(
                resolutionCriteria, r'ForecastQuestion', 'resolutionCriteria'),
            resolver: resolver.build(),
            resolution: _resolution?.build(),
            annulment: _annulment?.build(),
            dedupKey: dedupKey,
            latestForecasts: latestForecasts.build(),
            ensemble: _ensemble?.build(),
            scores: _scores?.build(),
            createdAt: createdAt,
            updatedAt: updatedAt,
            baselineNotes: _baselineNotes?.build(),
            manifestId: manifestId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();

        _$failedField = 'links';
        _links?.build();

        _$failedField = 'outcomes';
        _outcomes?.build();

        _$failedField = 'resolver';
        resolver.build();
        _$failedField = 'resolution';
        _resolution?.build();
        _$failedField = 'annulment';
        _annulment?.build();

        _$failedField = 'latestForecasts';
        latestForecasts.build();
        _$failedField = 'ensemble';
        _ensemble?.build();
        _$failedField = 'scores';
        _scores?.build();

        _$failedField = 'baselineNotes';
        _baselineNotes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ForecastQuestion', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
