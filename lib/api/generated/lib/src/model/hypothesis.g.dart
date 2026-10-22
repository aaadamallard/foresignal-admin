// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hypothesis.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const HypothesisTypeEnum _$hypothesisTypeEnum_outcome =
    const HypothesisTypeEnum._('outcome');
const HypothesisTypeEnum _$hypothesisTypeEnum_explanation =
    const HypothesisTypeEnum._('explanation');
const HypothesisTypeEnum _$hypothesisTypeEnum_speculativeLink =
    const HypothesisTypeEnum._('speculativeLink');
const HypothesisTypeEnum _$hypothesisTypeEnum_other =
    const HypothesisTypeEnum._('other');

HypothesisTypeEnum _$hypothesisTypeEnumValueOf(String name) {
  switch (name) {
    case 'outcome':
      return _$hypothesisTypeEnum_outcome;
    case 'explanation':
      return _$hypothesisTypeEnum_explanation;
    case 'speculativeLink':
      return _$hypothesisTypeEnum_speculativeLink;
    case 'other':
      return _$hypothesisTypeEnum_other;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<HypothesisTypeEnum> _$hypothesisTypeEnumValues =
    BuiltSet<HypothesisTypeEnum>(const <HypothesisTypeEnum>[
  _$hypothesisTypeEnum_outcome,
  _$hypothesisTypeEnum_explanation,
  _$hypothesisTypeEnum_speculativeLink,
  _$hypothesisTypeEnum_other,
]);

const HypothesisStatusEnum _$hypothesisStatusEnum_open =
    const HypothesisStatusEnum._('open');
const HypothesisStatusEnum _$hypothesisStatusEnum_confirmed =
    const HypothesisStatusEnum._('confirmed');
const HypothesisStatusEnum _$hypothesisStatusEnum_refuted =
    const HypothesisStatusEnum._('refuted');
const HypothesisStatusEnum _$hypothesisStatusEnum_expired =
    const HypothesisStatusEnum._('expired');

HypothesisStatusEnum _$hypothesisStatusEnumValueOf(String name) {
  switch (name) {
    case 'open':
      return _$hypothesisStatusEnum_open;
    case 'confirmed':
      return _$hypothesisStatusEnum_confirmed;
    case 'refuted':
      return _$hypothesisStatusEnum_refuted;
    case 'expired':
      return _$hypothesisStatusEnum_expired;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<HypothesisStatusEnum> _$hypothesisStatusEnumValues =
    BuiltSet<HypothesisStatusEnum>(const <HypothesisStatusEnum>[
  _$hypothesisStatusEnum_open,
  _$hypothesisStatusEnum_confirmed,
  _$hypothesisStatusEnum_refuted,
  _$hypothesisStatusEnum_expired,
]);

Serializer<HypothesisTypeEnum> _$hypothesisTypeEnumSerializer =
    _$HypothesisTypeEnumSerializer();
Serializer<HypothesisStatusEnum> _$hypothesisStatusEnumSerializer =
    _$HypothesisStatusEnumSerializer();

class _$HypothesisTypeEnumSerializer
    implements PrimitiveSerializer<HypothesisTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'outcome': 'outcome',
    'explanation': 'explanation',
    'speculativeLink': 'speculative-link',
    'other': 'other',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'outcome': 'outcome',
    'explanation': 'explanation',
    'speculative-link': 'speculativeLink',
    'other': 'other',
  };

  @override
  final Iterable<Type> types = const <Type>[HypothesisTypeEnum];
  @override
  final String wireName = 'HypothesisTypeEnum';

  @override
  Object serialize(Serializers serializers, HypothesisTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  HypothesisTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      HypothesisTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$HypothesisStatusEnumSerializer
    implements PrimitiveSerializer<HypothesisStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'open': 'open',
    'confirmed': 'confirmed',
    'refuted': 'refuted',
    'expired': 'expired',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'open': 'open',
    'confirmed': 'confirmed',
    'refuted': 'refuted',
    'expired': 'expired',
  };

  @override
  final Iterable<Type> types = const <Type>[HypothesisStatusEnum];
  @override
  final String wireName = 'HypothesisStatusEnum';

  @override
  Object serialize(Serializers serializers, HypothesisStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  HypothesisStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      HypothesisStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Hypothesis extends Hypothesis {
  @override
  final String id;
  @override
  final String setId;
  @override
  final String label;
  @override
  final String statement;
  @override
  final HypothesisTypeEnum type;
  @override
  final num prior;
  @override
  final HypothesisPriorBasis priorBasis;
  @override
  final num probability;
  @override
  final IcdTerm estimativeTerm;
  @override
  final ConfidenceLevel confidence;
  @override
  final HypothesisConfidenceBasis? confidenceBasis;
  @override
  final String? ledgerOutcome;
  @override
  final HypothesisStatusEnum status;
  @override
  final HypothesisChange? change;
  @override
  final BuiltList<String>? linkedFindingIds;
  @override
  final HypothesisCoincidenceBaseline? coincidenceBaseline;
  @override
  final BuiltList<String>? alternatives;
  @override
  final num? probabilityCap;
  @override
  final HypothesisCapOverride? capOverride;
  @override
  final int? version;
  @override
  final CoverageStats? newsCoverage;

  factory _$Hypothesis([void Function(HypothesisBuilder)? updates]) =>
      (HypothesisBuilder()..update(updates))._build();

  _$Hypothesis._(
      {required this.id,
      required this.setId,
      required this.label,
      required this.statement,
      required this.type,
      required this.prior,
      required this.priorBasis,
      required this.probability,
      required this.estimativeTerm,
      required this.confidence,
      this.confidenceBasis,
      this.ledgerOutcome,
      required this.status,
      this.change,
      this.linkedFindingIds,
      this.coincidenceBaseline,
      this.alternatives,
      this.probabilityCap,
      this.capOverride,
      this.version,
      this.newsCoverage})
      : super._();
  @override
  Hypothesis rebuild(void Function(HypothesisBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HypothesisBuilder toBuilder() => HypothesisBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Hypothesis &&
        id == other.id &&
        setId == other.setId &&
        label == other.label &&
        statement == other.statement &&
        type == other.type &&
        prior == other.prior &&
        priorBasis == other.priorBasis &&
        probability == other.probability &&
        estimativeTerm == other.estimativeTerm &&
        confidence == other.confidence &&
        confidenceBasis == other.confidenceBasis &&
        ledgerOutcome == other.ledgerOutcome &&
        status == other.status &&
        change == other.change &&
        linkedFindingIds == other.linkedFindingIds &&
        coincidenceBaseline == other.coincidenceBaseline &&
        alternatives == other.alternatives &&
        probabilityCap == other.probabilityCap &&
        capOverride == other.capOverride &&
        version == other.version &&
        newsCoverage == other.newsCoverage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, setId.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, statement.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, prior.hashCode);
    _$hash = $jc(_$hash, priorBasis.hashCode);
    _$hash = $jc(_$hash, probability.hashCode);
    _$hash = $jc(_$hash, estimativeTerm.hashCode);
    _$hash = $jc(_$hash, confidence.hashCode);
    _$hash = $jc(_$hash, confidenceBasis.hashCode);
    _$hash = $jc(_$hash, ledgerOutcome.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, change.hashCode);
    _$hash = $jc(_$hash, linkedFindingIds.hashCode);
    _$hash = $jc(_$hash, coincidenceBaseline.hashCode);
    _$hash = $jc(_$hash, alternatives.hashCode);
    _$hash = $jc(_$hash, probabilityCap.hashCode);
    _$hash = $jc(_$hash, capOverride.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, newsCoverage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Hypothesis')
          ..add('id', id)
          ..add('setId', setId)
          ..add('label', label)
          ..add('statement', statement)
          ..add('type', type)
          ..add('prior', prior)
          ..add('priorBasis', priorBasis)
          ..add('probability', probability)
          ..add('estimativeTerm', estimativeTerm)
          ..add('confidence', confidence)
          ..add('confidenceBasis', confidenceBasis)
          ..add('ledgerOutcome', ledgerOutcome)
          ..add('status', status)
          ..add('change', change)
          ..add('linkedFindingIds', linkedFindingIds)
          ..add('coincidenceBaseline', coincidenceBaseline)
          ..add('alternatives', alternatives)
          ..add('probabilityCap', probabilityCap)
          ..add('capOverride', capOverride)
          ..add('version', version)
          ..add('newsCoverage', newsCoverage))
        .toString();
  }
}

class HypothesisBuilder implements Builder<Hypothesis, HypothesisBuilder> {
  _$Hypothesis? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _setId;
  String? get setId => _$this._setId;
  set setId(String? setId) => _$this._setId = setId;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _statement;
  String? get statement => _$this._statement;
  set statement(String? statement) => _$this._statement = statement;

  HypothesisTypeEnum? _type;
  HypothesisTypeEnum? get type => _$this._type;
  set type(HypothesisTypeEnum? type) => _$this._type = type;

  num? _prior;
  num? get prior => _$this._prior;
  set prior(num? prior) => _$this._prior = prior;

  HypothesisPriorBasisBuilder? _priorBasis;
  HypothesisPriorBasisBuilder get priorBasis =>
      _$this._priorBasis ??= HypothesisPriorBasisBuilder();
  set priorBasis(HypothesisPriorBasisBuilder? priorBasis) =>
      _$this._priorBasis = priorBasis;

  num? _probability;
  num? get probability => _$this._probability;
  set probability(num? probability) => _$this._probability = probability;

  IcdTerm? _estimativeTerm;
  IcdTerm? get estimativeTerm => _$this._estimativeTerm;
  set estimativeTerm(IcdTerm? estimativeTerm) =>
      _$this._estimativeTerm = estimativeTerm;

  ConfidenceLevel? _confidence;
  ConfidenceLevel? get confidence => _$this._confidence;
  set confidence(ConfidenceLevel? confidence) =>
      _$this._confidence = confidence;

  HypothesisConfidenceBasisBuilder? _confidenceBasis;
  HypothesisConfidenceBasisBuilder get confidenceBasis =>
      _$this._confidenceBasis ??= HypothesisConfidenceBasisBuilder();
  set confidenceBasis(HypothesisConfidenceBasisBuilder? confidenceBasis) =>
      _$this._confidenceBasis = confidenceBasis;

  String? _ledgerOutcome;
  String? get ledgerOutcome => _$this._ledgerOutcome;
  set ledgerOutcome(String? ledgerOutcome) =>
      _$this._ledgerOutcome = ledgerOutcome;

  HypothesisStatusEnum? _status;
  HypothesisStatusEnum? get status => _$this._status;
  set status(HypothesisStatusEnum? status) => _$this._status = status;

  HypothesisChangeBuilder? _change;
  HypothesisChangeBuilder get change =>
      _$this._change ??= HypothesisChangeBuilder();
  set change(HypothesisChangeBuilder? change) => _$this._change = change;

  ListBuilder<String>? _linkedFindingIds;
  ListBuilder<String> get linkedFindingIds =>
      _$this._linkedFindingIds ??= ListBuilder<String>();
  set linkedFindingIds(ListBuilder<String>? linkedFindingIds) =>
      _$this._linkedFindingIds = linkedFindingIds;

  HypothesisCoincidenceBaselineBuilder? _coincidenceBaseline;
  HypothesisCoincidenceBaselineBuilder get coincidenceBaseline =>
      _$this._coincidenceBaseline ??= HypothesisCoincidenceBaselineBuilder();
  set coincidenceBaseline(
          HypothesisCoincidenceBaselineBuilder? coincidenceBaseline) =>
      _$this._coincidenceBaseline = coincidenceBaseline;

  ListBuilder<String>? _alternatives;
  ListBuilder<String> get alternatives =>
      _$this._alternatives ??= ListBuilder<String>();
  set alternatives(ListBuilder<String>? alternatives) =>
      _$this._alternatives = alternatives;

  num? _probabilityCap;
  num? get probabilityCap => _$this._probabilityCap;
  set probabilityCap(num? probabilityCap) =>
      _$this._probabilityCap = probabilityCap;

  HypothesisCapOverrideBuilder? _capOverride;
  HypothesisCapOverrideBuilder get capOverride =>
      _$this._capOverride ??= HypothesisCapOverrideBuilder();
  set capOverride(HypothesisCapOverrideBuilder? capOverride) =>
      _$this._capOverride = capOverride;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  CoverageStatsBuilder? _newsCoverage;
  CoverageStatsBuilder get newsCoverage =>
      _$this._newsCoverage ??= CoverageStatsBuilder();
  set newsCoverage(CoverageStatsBuilder? newsCoverage) =>
      _$this._newsCoverage = newsCoverage;

  HypothesisBuilder() {
    Hypothesis._defaults(this);
  }

  HypothesisBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _setId = $v.setId;
      _label = $v.label;
      _statement = $v.statement;
      _type = $v.type;
      _prior = $v.prior;
      _priorBasis = $v.priorBasis.toBuilder();
      _probability = $v.probability;
      _estimativeTerm = $v.estimativeTerm;
      _confidence = $v.confidence;
      _confidenceBasis = $v.confidenceBasis?.toBuilder();
      _ledgerOutcome = $v.ledgerOutcome;
      _status = $v.status;
      _change = $v.change?.toBuilder();
      _linkedFindingIds = $v.linkedFindingIds?.toBuilder();
      _coincidenceBaseline = $v.coincidenceBaseline?.toBuilder();
      _alternatives = $v.alternatives?.toBuilder();
      _probabilityCap = $v.probabilityCap;
      _capOverride = $v.capOverride?.toBuilder();
      _version = $v.version;
      _newsCoverage = $v.newsCoverage?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Hypothesis other) {
    _$v = other as _$Hypothesis;
  }

  @override
  void update(void Function(HypothesisBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Hypothesis build() => _build();

  _$Hypothesis _build() {
    _$Hypothesis _$result;
    try {
      _$result = _$v ??
          _$Hypothesis._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Hypothesis', 'id'),
            setId: BuiltValueNullFieldError.checkNotNull(
                setId, r'Hypothesis', 'setId'),
            label: BuiltValueNullFieldError.checkNotNull(
                label, r'Hypothesis', 'label'),
            statement: BuiltValueNullFieldError.checkNotNull(
                statement, r'Hypothesis', 'statement'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'Hypothesis', 'type'),
            prior: BuiltValueNullFieldError.checkNotNull(
                prior, r'Hypothesis', 'prior'),
            priorBasis: priorBasis.build(),
            probability: BuiltValueNullFieldError.checkNotNull(
                probability, r'Hypothesis', 'probability'),
            estimativeTerm: BuiltValueNullFieldError.checkNotNull(
                estimativeTerm, r'Hypothesis', 'estimativeTerm'),
            confidence: BuiltValueNullFieldError.checkNotNull(
                confidence, r'Hypothesis', 'confidence'),
            confidenceBasis: _confidenceBasis?.build(),
            ledgerOutcome: ledgerOutcome,
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'Hypothesis', 'status'),
            change: _change?.build(),
            linkedFindingIds: _linkedFindingIds?.build(),
            coincidenceBaseline: _coincidenceBaseline?.build(),
            alternatives: _alternatives?.build(),
            probabilityCap: probabilityCap,
            capOverride: _capOverride?.build(),
            version: version,
            newsCoverage: _newsCoverage?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'priorBasis';
        priorBasis.build();

        _$failedField = 'confidenceBasis';
        _confidenceBasis?.build();

        _$failedField = 'change';
        _change?.build();
        _$failedField = 'linkedFindingIds';
        _linkedFindingIds?.build();
        _$failedField = 'coincidenceBaseline';
        _coincidenceBaseline?.build();
        _$failedField = 'alternatives';
        _alternatives?.build();

        _$failedField = 'capOverride';
        _capOverride?.build();

        _$failedField = 'newsCoverage';
        _newsCoverage?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Hypothesis', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
