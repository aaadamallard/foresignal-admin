// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hypothesis_set.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const HypothesisSetKindEnum _$hypothesisSetKindEnum_exclusive =
    const HypothesisSetKindEnum._('exclusive');
const HypothesisSetKindEnum _$hypothesisSetKindEnum_independent =
    const HypothesisSetKindEnum._('independent');
const HypothesisSetKindEnum _$hypothesisSetKindEnum_unknownDefaultOpenApi =
    const HypothesisSetKindEnum._('unknownDefaultOpenApi');

HypothesisSetKindEnum _$hypothesisSetKindEnumValueOf(String name) {
  switch (name) {
    case 'exclusive':
      return _$hypothesisSetKindEnum_exclusive;
    case 'independent':
      return _$hypothesisSetKindEnum_independent;
    case 'unknownDefaultOpenApi':
      return _$hypothesisSetKindEnum_unknownDefaultOpenApi;
    default:
      return _$hypothesisSetKindEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<HypothesisSetKindEnum> _$hypothesisSetKindEnumValues =
    BuiltSet<HypothesisSetKindEnum>(const <HypothesisSetKindEnum>[
      _$hypothesisSetKindEnum_exclusive,
      _$hypothesisSetKindEnum_independent,
      _$hypothesisSetKindEnum_unknownDefaultOpenApi,
    ]);

const HypothesisSetCadenceEnum _$hypothesisSetCadenceEnum_daily =
    const HypothesisSetCadenceEnum._('daily');
const HypothesisSetCadenceEnum _$hypothesisSetCadenceEnum_weekly =
    const HypothesisSetCadenceEnum._('weekly');
const HypothesisSetCadenceEnum _$hypothesisSetCadenceEnum_monthly =
    const HypothesisSetCadenceEnum._('monthly');
const HypothesisSetCadenceEnum
_$hypothesisSetCadenceEnum_unknownDefaultOpenApi =
    const HypothesisSetCadenceEnum._('unknownDefaultOpenApi');

HypothesisSetCadenceEnum _$hypothesisSetCadenceEnumValueOf(String name) {
  switch (name) {
    case 'daily':
      return _$hypothesisSetCadenceEnum_daily;
    case 'weekly':
      return _$hypothesisSetCadenceEnum_weekly;
    case 'monthly':
      return _$hypothesisSetCadenceEnum_monthly;
    case 'unknownDefaultOpenApi':
      return _$hypothesisSetCadenceEnum_unknownDefaultOpenApi;
    default:
      return _$hypothesisSetCadenceEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<HypothesisSetCadenceEnum> _$hypothesisSetCadenceEnumValues =
    BuiltSet<HypothesisSetCadenceEnum>(const <HypothesisSetCadenceEnum>[
      _$hypothesisSetCadenceEnum_daily,
      _$hypothesisSetCadenceEnum_weekly,
      _$hypothesisSetCadenceEnum_monthly,
      _$hypothesisSetCadenceEnum_unknownDefaultOpenApi,
    ]);

const HypothesisSetStatusEnum _$hypothesisSetStatusEnum_active =
    const HypothesisSetStatusEnum._('active');
const HypothesisSetStatusEnum _$hypothesisSetStatusEnum_resolved =
    const HypothesisSetStatusEnum._('resolved');
const HypothesisSetStatusEnum _$hypothesisSetStatusEnum_archived =
    const HypothesisSetStatusEnum._('archived');
const HypothesisSetStatusEnum _$hypothesisSetStatusEnum_unknownDefaultOpenApi =
    const HypothesisSetStatusEnum._('unknownDefaultOpenApi');

HypothesisSetStatusEnum _$hypothesisSetStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$hypothesisSetStatusEnum_active;
    case 'resolved':
      return _$hypothesisSetStatusEnum_resolved;
    case 'archived':
      return _$hypothesisSetStatusEnum_archived;
    case 'unknownDefaultOpenApi':
      return _$hypothesisSetStatusEnum_unknownDefaultOpenApi;
    default:
      return _$hypothesisSetStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<HypothesisSetStatusEnum> _$hypothesisSetStatusEnumValues =
    BuiltSet<HypothesisSetStatusEnum>(const <HypothesisSetStatusEnum>[
      _$hypothesisSetStatusEnum_active,
      _$hypothesisSetStatusEnum_resolved,
      _$hypothesisSetStatusEnum_archived,
      _$hypothesisSetStatusEnum_unknownDefaultOpenApi,
    ]);

const HypothesisSetOriginEnum _$hypothesisSetOriginEnum_operator_ =
    const HypothesisSetOriginEnum._('operator_');
const HypothesisSetOriginEnum _$hypothesisSetOriginEnum_agent =
    const HypothesisSetOriginEnum._('agent');
const HypothesisSetOriginEnum _$hypothesisSetOriginEnum_analyst =
    const HypothesisSetOriginEnum._('analyst');
const HypothesisSetOriginEnum _$hypothesisSetOriginEnum_unknownDefaultOpenApi =
    const HypothesisSetOriginEnum._('unknownDefaultOpenApi');

HypothesisSetOriginEnum _$hypothesisSetOriginEnumValueOf(String name) {
  switch (name) {
    case 'operator_':
      return _$hypothesisSetOriginEnum_operator_;
    case 'agent':
      return _$hypothesisSetOriginEnum_agent;
    case 'analyst':
      return _$hypothesisSetOriginEnum_analyst;
    case 'unknownDefaultOpenApi':
      return _$hypothesisSetOriginEnum_unknownDefaultOpenApi;
    default:
      return _$hypothesisSetOriginEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<HypothesisSetOriginEnum> _$hypothesisSetOriginEnumValues =
    BuiltSet<HypothesisSetOriginEnum>(const <HypothesisSetOriginEnum>[
      _$hypothesisSetOriginEnum_operator_,
      _$hypothesisSetOriginEnum_agent,
      _$hypothesisSetOriginEnum_analyst,
      _$hypothesisSetOriginEnum_unknownDefaultOpenApi,
    ]);

Serializer<HypothesisSetKindEnum> _$hypothesisSetKindEnumSerializer =
    _$HypothesisSetKindEnumSerializer();
Serializer<HypothesisSetCadenceEnum> _$hypothesisSetCadenceEnumSerializer =
    _$HypothesisSetCadenceEnumSerializer();
Serializer<HypothesisSetStatusEnum> _$hypothesisSetStatusEnumSerializer =
    _$HypothesisSetStatusEnumSerializer();
Serializer<HypothesisSetOriginEnum> _$hypothesisSetOriginEnumSerializer =
    _$HypothesisSetOriginEnumSerializer();

class _$HypothesisSetKindEnumSerializer
    implements PrimitiveSerializer<HypothesisSetKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'exclusive': 'exclusive',
    'independent': 'independent',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'exclusive': 'exclusive',
    'independent': 'independent',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[HypothesisSetKindEnum];
  @override
  final String wireName = 'HypothesisSetKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    HypothesisSetKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  HypothesisSetKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => HypothesisSetKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$HypothesisSetCadenceEnumSerializer
    implements PrimitiveSerializer<HypothesisSetCadenceEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'daily': 'daily',
    'weekly': 'weekly',
    'monthly': 'monthly',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'daily': 'daily',
    'weekly': 'weekly',
    'monthly': 'monthly',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[HypothesisSetCadenceEnum];
  @override
  final String wireName = 'HypothesisSetCadenceEnum';

  @override
  Object serialize(
    Serializers serializers,
    HypothesisSetCadenceEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  HypothesisSetCadenceEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => HypothesisSetCadenceEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$HypothesisSetStatusEnumSerializer
    implements PrimitiveSerializer<HypothesisSetStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'resolved': 'resolved',
    'archived': 'archived',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'resolved': 'resolved',
    'archived': 'archived',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[HypothesisSetStatusEnum];
  @override
  final String wireName = 'HypothesisSetStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    HypothesisSetStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  HypothesisSetStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => HypothesisSetStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$HypothesisSetOriginEnumSerializer
    implements PrimitiveSerializer<HypothesisSetOriginEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'operator_': 'operator',
    'agent': 'agent',
    'analyst': 'analyst',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'operator': 'operator_',
    'agent': 'agent',
    'analyst': 'analyst',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[HypothesisSetOriginEnum];
  @override
  final String wireName = 'HypothesisSetOriginEnum';

  @override
  Object serialize(
    Serializers serializers,
    HypothesisSetOriginEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  HypothesisSetOriginEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => HypothesisSetOriginEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$HypothesisSet extends HypothesisSet {
  @override
  final String id;
  @override
  final String question;
  @override
  final String? description;
  @override
  final HypothesisSetKindEnum kind;
  @override
  final HypothesisSetCadenceEnum cadence;
  @override
  final Date? horizon;
  @override
  final HypothesisSetStatusEnum status;
  @override
  final String? situationId;
  @override
  final String? questionId;
  @override
  final BuiltList<String>? regionCodes;
  @override
  final BuiltList<String>? themes;
  @override
  final HypothesisSetOriginEnum origin;
  @override
  final ConfidenceLevel confidence;
  @override
  final DateTime? lastReviewedAt;
  @override
  final DateTime? nextReviewAt;
  @override
  final String? lastRevisionId;
  @override
  final DateTime? lastRevisionAt;
  @override
  final bool private;
  @override
  final int version;
  @override
  final BuiltList<Hypothesis> hypotheses;
  @override
  final BuiltList<Indicator>? indicators;
  @override
  final BuiltList<KeyAssumption>? assumptions;
  @override
  final LedgerQuestionBrief? linkedQuestion;
  @override
  final String? recordRef;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final bool? reviewFlagged;

  factory _$HypothesisSet([void Function(HypothesisSetBuilder)? updates]) =>
      (HypothesisSetBuilder()..update(updates))._build();

  _$HypothesisSet._({
    required this.id,
    required this.question,
    this.description,
    required this.kind,
    required this.cadence,
    this.horizon,
    required this.status,
    this.situationId,
    this.questionId,
    this.regionCodes,
    this.themes,
    required this.origin,
    required this.confidence,
    this.lastReviewedAt,
    this.nextReviewAt,
    this.lastRevisionId,
    this.lastRevisionAt,
    required this.private,
    required this.version,
    required this.hypotheses,
    this.indicators,
    this.assumptions,
    this.linkedQuestion,
    this.recordRef,
    required this.createdAt,
    required this.updatedAt,
    this.reviewFlagged,
  }) : super._();
  @override
  HypothesisSet rebuild(void Function(HypothesisSetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HypothesisSetBuilder toBuilder() => HypothesisSetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HypothesisSet &&
        id == other.id &&
        question == other.question &&
        description == other.description &&
        kind == other.kind &&
        cadence == other.cadence &&
        horizon == other.horizon &&
        status == other.status &&
        situationId == other.situationId &&
        questionId == other.questionId &&
        regionCodes == other.regionCodes &&
        themes == other.themes &&
        origin == other.origin &&
        confidence == other.confidence &&
        lastReviewedAt == other.lastReviewedAt &&
        nextReviewAt == other.nextReviewAt &&
        lastRevisionId == other.lastRevisionId &&
        lastRevisionAt == other.lastRevisionAt &&
        private == other.private &&
        version == other.version &&
        hypotheses == other.hypotheses &&
        indicators == other.indicators &&
        assumptions == other.assumptions &&
        linkedQuestion == other.linkedQuestion &&
        recordRef == other.recordRef &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        reviewFlagged == other.reviewFlagged;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, question.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, cadence.hashCode);
    _$hash = $jc(_$hash, horizon.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, situationId.hashCode);
    _$hash = $jc(_$hash, questionId.hashCode);
    _$hash = $jc(_$hash, regionCodes.hashCode);
    _$hash = $jc(_$hash, themes.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jc(_$hash, confidence.hashCode);
    _$hash = $jc(_$hash, lastReviewedAt.hashCode);
    _$hash = $jc(_$hash, nextReviewAt.hashCode);
    _$hash = $jc(_$hash, lastRevisionId.hashCode);
    _$hash = $jc(_$hash, lastRevisionAt.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, hypotheses.hashCode);
    _$hash = $jc(_$hash, indicators.hashCode);
    _$hash = $jc(_$hash, assumptions.hashCode);
    _$hash = $jc(_$hash, linkedQuestion.hashCode);
    _$hash = $jc(_$hash, recordRef.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, reviewFlagged.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HypothesisSet')
          ..add('id', id)
          ..add('question', question)
          ..add('description', description)
          ..add('kind', kind)
          ..add('cadence', cadence)
          ..add('horizon', horizon)
          ..add('status', status)
          ..add('situationId', situationId)
          ..add('questionId', questionId)
          ..add('regionCodes', regionCodes)
          ..add('themes', themes)
          ..add('origin', origin)
          ..add('confidence', confidence)
          ..add('lastReviewedAt', lastReviewedAt)
          ..add('nextReviewAt', nextReviewAt)
          ..add('lastRevisionId', lastRevisionId)
          ..add('lastRevisionAt', lastRevisionAt)
          ..add('private', private)
          ..add('version', version)
          ..add('hypotheses', hypotheses)
          ..add('indicators', indicators)
          ..add('assumptions', assumptions)
          ..add('linkedQuestion', linkedQuestion)
          ..add('recordRef', recordRef)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('reviewFlagged', reviewFlagged))
        .toString();
  }
}

class HypothesisSetBuilder
    implements Builder<HypothesisSet, HypothesisSetBuilder> {
  _$HypothesisSet? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _question;
  String? get question => _$this._question;
  set question(String? question) => _$this._question = question;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  HypothesisSetKindEnum? _kind;
  HypothesisSetKindEnum? get kind => _$this._kind;
  set kind(HypothesisSetKindEnum? kind) => _$this._kind = kind;

  HypothesisSetCadenceEnum? _cadence;
  HypothesisSetCadenceEnum? get cadence => _$this._cadence;
  set cadence(HypothesisSetCadenceEnum? cadence) => _$this._cadence = cadence;

  Date? _horizon;
  Date? get horizon => _$this._horizon;
  set horizon(Date? horizon) => _$this._horizon = horizon;

  HypothesisSetStatusEnum? _status;
  HypothesisSetStatusEnum? get status => _$this._status;
  set status(HypothesisSetStatusEnum? status) => _$this._status = status;

  String? _situationId;
  String? get situationId => _$this._situationId;
  set situationId(String? situationId) => _$this._situationId = situationId;

  String? _questionId;
  String? get questionId => _$this._questionId;
  set questionId(String? questionId) => _$this._questionId = questionId;

  ListBuilder<String>? _regionCodes;
  ListBuilder<String> get regionCodes =>
      _$this._regionCodes ??= ListBuilder<String>();
  set regionCodes(ListBuilder<String>? regionCodes) =>
      _$this._regionCodes = regionCodes;

  ListBuilder<String>? _themes;
  ListBuilder<String> get themes => _$this._themes ??= ListBuilder<String>();
  set themes(ListBuilder<String>? themes) => _$this._themes = themes;

  HypothesisSetOriginEnum? _origin;
  HypothesisSetOriginEnum? get origin => _$this._origin;
  set origin(HypothesisSetOriginEnum? origin) => _$this._origin = origin;

  ConfidenceLevel? _confidence;
  ConfidenceLevel? get confidence => _$this._confidence;
  set confidence(ConfidenceLevel? confidence) =>
      _$this._confidence = confidence;

  DateTime? _lastReviewedAt;
  DateTime? get lastReviewedAt => _$this._lastReviewedAt;
  set lastReviewedAt(DateTime? lastReviewedAt) =>
      _$this._lastReviewedAt = lastReviewedAt;

  DateTime? _nextReviewAt;
  DateTime? get nextReviewAt => _$this._nextReviewAt;
  set nextReviewAt(DateTime? nextReviewAt) =>
      _$this._nextReviewAt = nextReviewAt;

  String? _lastRevisionId;
  String? get lastRevisionId => _$this._lastRevisionId;
  set lastRevisionId(String? lastRevisionId) =>
      _$this._lastRevisionId = lastRevisionId;

  DateTime? _lastRevisionAt;
  DateTime? get lastRevisionAt => _$this._lastRevisionAt;
  set lastRevisionAt(DateTime? lastRevisionAt) =>
      _$this._lastRevisionAt = lastRevisionAt;

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  ListBuilder<Hypothesis>? _hypotheses;
  ListBuilder<Hypothesis> get hypotheses =>
      _$this._hypotheses ??= ListBuilder<Hypothesis>();
  set hypotheses(ListBuilder<Hypothesis>? hypotheses) =>
      _$this._hypotheses = hypotheses;

  ListBuilder<Indicator>? _indicators;
  ListBuilder<Indicator> get indicators =>
      _$this._indicators ??= ListBuilder<Indicator>();
  set indicators(ListBuilder<Indicator>? indicators) =>
      _$this._indicators = indicators;

  ListBuilder<KeyAssumption>? _assumptions;
  ListBuilder<KeyAssumption> get assumptions =>
      _$this._assumptions ??= ListBuilder<KeyAssumption>();
  set assumptions(ListBuilder<KeyAssumption>? assumptions) =>
      _$this._assumptions = assumptions;

  LedgerQuestionBriefBuilder? _linkedQuestion;
  LedgerQuestionBriefBuilder get linkedQuestion =>
      _$this._linkedQuestion ??= LedgerQuestionBriefBuilder();
  set linkedQuestion(LedgerQuestionBriefBuilder? linkedQuestion) =>
      _$this._linkedQuestion = linkedQuestion;

  String? _recordRef;
  String? get recordRef => _$this._recordRef;
  set recordRef(String? recordRef) => _$this._recordRef = recordRef;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  bool? _reviewFlagged;
  bool? get reviewFlagged => _$this._reviewFlagged;
  set reviewFlagged(bool? reviewFlagged) =>
      _$this._reviewFlagged = reviewFlagged;

  HypothesisSetBuilder() {
    HypothesisSet._defaults(this);
  }

  HypothesisSetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _question = $v.question;
      _description = $v.description;
      _kind = $v.kind;
      _cadence = $v.cadence;
      _horizon = $v.horizon;
      _status = $v.status;
      _situationId = $v.situationId;
      _questionId = $v.questionId;
      _regionCodes = $v.regionCodes?.toBuilder();
      _themes = $v.themes?.toBuilder();
      _origin = $v.origin;
      _confidence = $v.confidence;
      _lastReviewedAt = $v.lastReviewedAt;
      _nextReviewAt = $v.nextReviewAt;
      _lastRevisionId = $v.lastRevisionId;
      _lastRevisionAt = $v.lastRevisionAt;
      _private = $v.private;
      _version = $v.version;
      _hypotheses = $v.hypotheses.toBuilder();
      _indicators = $v.indicators?.toBuilder();
      _assumptions = $v.assumptions?.toBuilder();
      _linkedQuestion = $v.linkedQuestion?.toBuilder();
      _recordRef = $v.recordRef;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _reviewFlagged = $v.reviewFlagged;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HypothesisSet other) {
    _$v = other as _$HypothesisSet;
  }

  @override
  void update(void Function(HypothesisSetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HypothesisSet build() => _build();

  _$HypothesisSet _build() {
    _$HypothesisSet _$result;
    try {
      _$result =
          _$v ??
          _$HypothesisSet._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'HypothesisSet',
              'id',
            ),
            question: BuiltValueNullFieldError.checkNotNull(
              question,
              r'HypothesisSet',
              'question',
            ),
            description: description,
            kind: BuiltValueNullFieldError.checkNotNull(
              kind,
              r'HypothesisSet',
              'kind',
            ),
            cadence: BuiltValueNullFieldError.checkNotNull(
              cadence,
              r'HypothesisSet',
              'cadence',
            ),
            horizon: horizon,
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'HypothesisSet',
              'status',
            ),
            situationId: situationId,
            questionId: questionId,
            regionCodes: _regionCodes?.build(),
            themes: _themes?.build(),
            origin: BuiltValueNullFieldError.checkNotNull(
              origin,
              r'HypothesisSet',
              'origin',
            ),
            confidence: BuiltValueNullFieldError.checkNotNull(
              confidence,
              r'HypothesisSet',
              'confidence',
            ),
            lastReviewedAt: lastReviewedAt,
            nextReviewAt: nextReviewAt,
            lastRevisionId: lastRevisionId,
            lastRevisionAt: lastRevisionAt,
            private: BuiltValueNullFieldError.checkNotNull(
              private,
              r'HypothesisSet',
              'private',
            ),
            version: BuiltValueNullFieldError.checkNotNull(
              version,
              r'HypothesisSet',
              'version',
            ),
            hypotheses: hypotheses.build(),
            indicators: _indicators?.build(),
            assumptions: _assumptions?.build(),
            linkedQuestion: _linkedQuestion?.build(),
            recordRef: recordRef,
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'HypothesisSet',
              'createdAt',
            ),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt,
              r'HypothesisSet',
              'updatedAt',
            ),
            reviewFlagged: reviewFlagged,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'regionCodes';
        _regionCodes?.build();
        _$failedField = 'themes';
        _themes?.build();

        _$failedField = 'hypotheses';
        hypotheses.build();
        _$failedField = 'indicators';
        _indicators?.build();
        _$failedField = 'assumptions';
        _assumptions?.build();
        _$failedField = 'linkedQuestion';
        _linkedQuestion?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'HypothesisSet',
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
