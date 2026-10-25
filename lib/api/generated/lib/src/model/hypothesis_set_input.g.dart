// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hypothesis_set_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const HypothesisSetInputKindEnum _$hypothesisSetInputKindEnum_exclusive =
    const HypothesisSetInputKindEnum._('exclusive');
const HypothesisSetInputKindEnum _$hypothesisSetInputKindEnum_independent =
    const HypothesisSetInputKindEnum._('independent');
const HypothesisSetInputKindEnum
_$hypothesisSetInputKindEnum_unknownDefaultOpenApi =
    const HypothesisSetInputKindEnum._('unknownDefaultOpenApi');

HypothesisSetInputKindEnum _$hypothesisSetInputKindEnumValueOf(String name) {
  switch (name) {
    case 'exclusive':
      return _$hypothesisSetInputKindEnum_exclusive;
    case 'independent':
      return _$hypothesisSetInputKindEnum_independent;
    case 'unknownDefaultOpenApi':
      return _$hypothesisSetInputKindEnum_unknownDefaultOpenApi;
    default:
      return _$hypothesisSetInputKindEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<HypothesisSetInputKindEnum> _$hypothesisSetInputKindEnumValues =
    BuiltSet<HypothesisSetInputKindEnum>(const <HypothesisSetInputKindEnum>[
      _$hypothesisSetInputKindEnum_exclusive,
      _$hypothesisSetInputKindEnum_independent,
      _$hypothesisSetInputKindEnum_unknownDefaultOpenApi,
    ]);

const HypothesisSetInputCadenceEnum _$hypothesisSetInputCadenceEnum_daily =
    const HypothesisSetInputCadenceEnum._('daily');
const HypothesisSetInputCadenceEnum _$hypothesisSetInputCadenceEnum_weekly =
    const HypothesisSetInputCadenceEnum._('weekly');
const HypothesisSetInputCadenceEnum _$hypothesisSetInputCadenceEnum_monthly =
    const HypothesisSetInputCadenceEnum._('monthly');
const HypothesisSetInputCadenceEnum
_$hypothesisSetInputCadenceEnum_unknownDefaultOpenApi =
    const HypothesisSetInputCadenceEnum._('unknownDefaultOpenApi');

HypothesisSetInputCadenceEnum _$hypothesisSetInputCadenceEnumValueOf(
  String name,
) {
  switch (name) {
    case 'daily':
      return _$hypothesisSetInputCadenceEnum_daily;
    case 'weekly':
      return _$hypothesisSetInputCadenceEnum_weekly;
    case 'monthly':
      return _$hypothesisSetInputCadenceEnum_monthly;
    case 'unknownDefaultOpenApi':
      return _$hypothesisSetInputCadenceEnum_unknownDefaultOpenApi;
    default:
      return _$hypothesisSetInputCadenceEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<HypothesisSetInputCadenceEnum>
_$hypothesisSetInputCadenceEnumValues = BuiltSet<HypothesisSetInputCadenceEnum>(
  const <HypothesisSetInputCadenceEnum>[
    _$hypothesisSetInputCadenceEnum_daily,
    _$hypothesisSetInputCadenceEnum_weekly,
    _$hypothesisSetInputCadenceEnum_monthly,
    _$hypothesisSetInputCadenceEnum_unknownDefaultOpenApi,
  ],
);

Serializer<HypothesisSetInputKindEnum> _$hypothesisSetInputKindEnumSerializer =
    _$HypothesisSetInputKindEnumSerializer();
Serializer<HypothesisSetInputCadenceEnum>
_$hypothesisSetInputCadenceEnumSerializer =
    _$HypothesisSetInputCadenceEnumSerializer();

class _$HypothesisSetInputKindEnumSerializer
    implements PrimitiveSerializer<HypothesisSetInputKindEnum> {
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
  final Iterable<Type> types = const <Type>[HypothesisSetInputKindEnum];
  @override
  final String wireName = 'HypothesisSetInputKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    HypothesisSetInputKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  HypothesisSetInputKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => HypothesisSetInputKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$HypothesisSetInputCadenceEnumSerializer
    implements PrimitiveSerializer<HypothesisSetInputCadenceEnum> {
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
  final Iterable<Type> types = const <Type>[HypothesisSetInputCadenceEnum];
  @override
  final String wireName = 'HypothesisSetInputCadenceEnum';

  @override
  Object serialize(
    Serializers serializers,
    HypothesisSetInputCadenceEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  HypothesisSetInputCadenceEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => HypothesisSetInputCadenceEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$HypothesisSetInput extends HypothesisSetInput {
  @override
  final String question;
  @override
  final String? description;
  @override
  final HypothesisSetInputKindEnum kind;
  @override
  final HypothesisSetInputCadenceEnum cadence;
  @override
  final Date? horizon;
  @override
  final String? situationId;
  @override
  final String? questionId;
  @override
  final BuiltList<String>? regionCodes;
  @override
  final BuiltList<String>? themes;
  @override
  final bool? private;
  @override
  final BuiltList<HypothesisInput> hypotheses;
  @override
  final BuiltList<IndicatorInput>? indicators;
  @override
  final BuiltList<KeyAssumptionInput>? assumptions;
  @override
  final HypothesisSetInputLedgerQuestion? ledgerQuestion;
  @override
  final String? proposalId;

  factory _$HypothesisSetInput([
    void Function(HypothesisSetInputBuilder)? updates,
  ]) => (HypothesisSetInputBuilder()..update(updates))._build();

  _$HypothesisSetInput._({
    required this.question,
    this.description,
    required this.kind,
    required this.cadence,
    this.horizon,
    this.situationId,
    this.questionId,
    this.regionCodes,
    this.themes,
    this.private,
    required this.hypotheses,
    this.indicators,
    this.assumptions,
    this.ledgerQuestion,
    this.proposalId,
  }) : super._();
  @override
  HypothesisSetInput rebuild(
    void Function(HypothesisSetInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  HypothesisSetInputBuilder toBuilder() =>
      HypothesisSetInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HypothesisSetInput &&
        question == other.question &&
        description == other.description &&
        kind == other.kind &&
        cadence == other.cadence &&
        horizon == other.horizon &&
        situationId == other.situationId &&
        questionId == other.questionId &&
        regionCodes == other.regionCodes &&
        themes == other.themes &&
        private == other.private &&
        hypotheses == other.hypotheses &&
        indicators == other.indicators &&
        assumptions == other.assumptions &&
        ledgerQuestion == other.ledgerQuestion &&
        proposalId == other.proposalId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, question.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, cadence.hashCode);
    _$hash = $jc(_$hash, horizon.hashCode);
    _$hash = $jc(_$hash, situationId.hashCode);
    _$hash = $jc(_$hash, questionId.hashCode);
    _$hash = $jc(_$hash, regionCodes.hashCode);
    _$hash = $jc(_$hash, themes.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jc(_$hash, hypotheses.hashCode);
    _$hash = $jc(_$hash, indicators.hashCode);
    _$hash = $jc(_$hash, assumptions.hashCode);
    _$hash = $jc(_$hash, ledgerQuestion.hashCode);
    _$hash = $jc(_$hash, proposalId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HypothesisSetInput')
          ..add('question', question)
          ..add('description', description)
          ..add('kind', kind)
          ..add('cadence', cadence)
          ..add('horizon', horizon)
          ..add('situationId', situationId)
          ..add('questionId', questionId)
          ..add('regionCodes', regionCodes)
          ..add('themes', themes)
          ..add('private', private)
          ..add('hypotheses', hypotheses)
          ..add('indicators', indicators)
          ..add('assumptions', assumptions)
          ..add('ledgerQuestion', ledgerQuestion)
          ..add('proposalId', proposalId))
        .toString();
  }
}

class HypothesisSetInputBuilder
    implements Builder<HypothesisSetInput, HypothesisSetInputBuilder> {
  _$HypothesisSetInput? _$v;

  String? _question;
  String? get question => _$this._question;
  set question(String? question) => _$this._question = question;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  HypothesisSetInputKindEnum? _kind;
  HypothesisSetInputKindEnum? get kind => _$this._kind;
  set kind(HypothesisSetInputKindEnum? kind) => _$this._kind = kind;

  HypothesisSetInputCadenceEnum? _cadence;
  HypothesisSetInputCadenceEnum? get cadence => _$this._cadence;
  set cadence(HypothesisSetInputCadenceEnum? cadence) =>
      _$this._cadence = cadence;

  Date? _horizon;
  Date? get horizon => _$this._horizon;
  set horizon(Date? horizon) => _$this._horizon = horizon;

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

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  ListBuilder<HypothesisInput>? _hypotheses;
  ListBuilder<HypothesisInput> get hypotheses =>
      _$this._hypotheses ??= ListBuilder<HypothesisInput>();
  set hypotheses(ListBuilder<HypothesisInput>? hypotheses) =>
      _$this._hypotheses = hypotheses;

  ListBuilder<IndicatorInput>? _indicators;
  ListBuilder<IndicatorInput> get indicators =>
      _$this._indicators ??= ListBuilder<IndicatorInput>();
  set indicators(ListBuilder<IndicatorInput>? indicators) =>
      _$this._indicators = indicators;

  ListBuilder<KeyAssumptionInput>? _assumptions;
  ListBuilder<KeyAssumptionInput> get assumptions =>
      _$this._assumptions ??= ListBuilder<KeyAssumptionInput>();
  set assumptions(ListBuilder<KeyAssumptionInput>? assumptions) =>
      _$this._assumptions = assumptions;

  HypothesisSetInputLedgerQuestionBuilder? _ledgerQuestion;
  HypothesisSetInputLedgerQuestionBuilder get ledgerQuestion =>
      _$this._ledgerQuestion ??= HypothesisSetInputLedgerQuestionBuilder();
  set ledgerQuestion(HypothesisSetInputLedgerQuestionBuilder? ledgerQuestion) =>
      _$this._ledgerQuestion = ledgerQuestion;

  String? _proposalId;
  String? get proposalId => _$this._proposalId;
  set proposalId(String? proposalId) => _$this._proposalId = proposalId;

  HypothesisSetInputBuilder() {
    HypothesisSetInput._defaults(this);
  }

  HypothesisSetInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _question = $v.question;
      _description = $v.description;
      _kind = $v.kind;
      _cadence = $v.cadence;
      _horizon = $v.horizon;
      _situationId = $v.situationId;
      _questionId = $v.questionId;
      _regionCodes = $v.regionCodes?.toBuilder();
      _themes = $v.themes?.toBuilder();
      _private = $v.private;
      _hypotheses = $v.hypotheses.toBuilder();
      _indicators = $v.indicators?.toBuilder();
      _assumptions = $v.assumptions?.toBuilder();
      _ledgerQuestion = $v.ledgerQuestion?.toBuilder();
      _proposalId = $v.proposalId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HypothesisSetInput other) {
    _$v = other as _$HypothesisSetInput;
  }

  @override
  void update(void Function(HypothesisSetInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HypothesisSetInput build() => _build();

  _$HypothesisSetInput _build() {
    _$HypothesisSetInput _$result;
    try {
      _$result =
          _$v ??
          _$HypothesisSetInput._(
            question: BuiltValueNullFieldError.checkNotNull(
              question,
              r'HypothesisSetInput',
              'question',
            ),
            description: description,
            kind: BuiltValueNullFieldError.checkNotNull(
              kind,
              r'HypothesisSetInput',
              'kind',
            ),
            cadence: BuiltValueNullFieldError.checkNotNull(
              cadence,
              r'HypothesisSetInput',
              'cadence',
            ),
            horizon: horizon,
            situationId: situationId,
            questionId: questionId,
            regionCodes: _regionCodes?.build(),
            themes: _themes?.build(),
            private: private,
            hypotheses: hypotheses.build(),
            indicators: _indicators?.build(),
            assumptions: _assumptions?.build(),
            ledgerQuestion: _ledgerQuestion?.build(),
            proposalId: proposalId,
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
        _$failedField = 'ledgerQuestion';
        _ledgerQuestion?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'HypothesisSetInput',
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
