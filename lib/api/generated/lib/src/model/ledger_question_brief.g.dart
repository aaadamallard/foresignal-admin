// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ledger_question_brief.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LedgerQuestionBriefTypeEnum _$ledgerQuestionBriefTypeEnum_binary =
    const LedgerQuestionBriefTypeEnum._('binary');
const LedgerQuestionBriefTypeEnum _$ledgerQuestionBriefTypeEnum_multiple =
    const LedgerQuestionBriefTypeEnum._('multiple');
const LedgerQuestionBriefTypeEnum _$ledgerQuestionBriefTypeEnum_ordered =
    const LedgerQuestionBriefTypeEnum._('ordered');
const LedgerQuestionBriefTypeEnum _$ledgerQuestionBriefTypeEnum_numeric =
    const LedgerQuestionBriefTypeEnum._('numeric');
const LedgerQuestionBriefTypeEnum
_$ledgerQuestionBriefTypeEnum_unknownDefaultOpenApi =
    const LedgerQuestionBriefTypeEnum._('unknownDefaultOpenApi');

LedgerQuestionBriefTypeEnum _$ledgerQuestionBriefTypeEnumValueOf(String name) {
  switch (name) {
    case 'binary':
      return _$ledgerQuestionBriefTypeEnum_binary;
    case 'multiple':
      return _$ledgerQuestionBriefTypeEnum_multiple;
    case 'ordered':
      return _$ledgerQuestionBriefTypeEnum_ordered;
    case 'numeric':
      return _$ledgerQuestionBriefTypeEnum_numeric;
    case 'unknownDefaultOpenApi':
      return _$ledgerQuestionBriefTypeEnum_unknownDefaultOpenApi;
    default:
      return _$ledgerQuestionBriefTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<LedgerQuestionBriefTypeEnum>
_$ledgerQuestionBriefTypeEnumValues =
    BuiltSet<LedgerQuestionBriefTypeEnum>(const <LedgerQuestionBriefTypeEnum>[
      _$ledgerQuestionBriefTypeEnum_binary,
      _$ledgerQuestionBriefTypeEnum_multiple,
      _$ledgerQuestionBriefTypeEnum_ordered,
      _$ledgerQuestionBriefTypeEnum_numeric,
      _$ledgerQuestionBriefTypeEnum_unknownDefaultOpenApi,
    ]);

const LedgerQuestionBriefStatusEnum _$ledgerQuestionBriefStatusEnum_open =
    const LedgerQuestionBriefStatusEnum._('open');
const LedgerQuestionBriefStatusEnum _$ledgerQuestionBriefStatusEnum_closed =
    const LedgerQuestionBriefStatusEnum._('closed');
const LedgerQuestionBriefStatusEnum _$ledgerQuestionBriefStatusEnum_resolved =
    const LedgerQuestionBriefStatusEnum._('resolved');
const LedgerQuestionBriefStatusEnum _$ledgerQuestionBriefStatusEnum_annulled =
    const LedgerQuestionBriefStatusEnum._('annulled');
const LedgerQuestionBriefStatusEnum
_$ledgerQuestionBriefStatusEnum_unknownDefaultOpenApi =
    const LedgerQuestionBriefStatusEnum._('unknownDefaultOpenApi');

LedgerQuestionBriefStatusEnum _$ledgerQuestionBriefStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'open':
      return _$ledgerQuestionBriefStatusEnum_open;
    case 'closed':
      return _$ledgerQuestionBriefStatusEnum_closed;
    case 'resolved':
      return _$ledgerQuestionBriefStatusEnum_resolved;
    case 'annulled':
      return _$ledgerQuestionBriefStatusEnum_annulled;
    case 'unknownDefaultOpenApi':
      return _$ledgerQuestionBriefStatusEnum_unknownDefaultOpenApi;
    default:
      return _$ledgerQuestionBriefStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<LedgerQuestionBriefStatusEnum>
_$ledgerQuestionBriefStatusEnumValues = BuiltSet<LedgerQuestionBriefStatusEnum>(
  const <LedgerQuestionBriefStatusEnum>[
    _$ledgerQuestionBriefStatusEnum_open,
    _$ledgerQuestionBriefStatusEnum_closed,
    _$ledgerQuestionBriefStatusEnum_resolved,
    _$ledgerQuestionBriefStatusEnum_annulled,
    _$ledgerQuestionBriefStatusEnum_unknownDefaultOpenApi,
  ],
);

Serializer<LedgerQuestionBriefTypeEnum>
_$ledgerQuestionBriefTypeEnumSerializer =
    _$LedgerQuestionBriefTypeEnumSerializer();
Serializer<LedgerQuestionBriefStatusEnum>
_$ledgerQuestionBriefStatusEnumSerializer =
    _$LedgerQuestionBriefStatusEnumSerializer();

class _$LedgerQuestionBriefTypeEnumSerializer
    implements PrimitiveSerializer<LedgerQuestionBriefTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'binary': 'binary',
    'multiple': 'multiple',
    'ordered': 'ordered',
    'numeric': 'numeric',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'binary': 'binary',
    'multiple': 'multiple',
    'ordered': 'ordered',
    'numeric': 'numeric',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[LedgerQuestionBriefTypeEnum];
  @override
  final String wireName = 'LedgerQuestionBriefTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    LedgerQuestionBriefTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  LedgerQuestionBriefTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => LedgerQuestionBriefTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$LedgerQuestionBriefStatusEnumSerializer
    implements PrimitiveSerializer<LedgerQuestionBriefStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'open': 'open',
    'closed': 'closed',
    'resolved': 'resolved',
    'annulled': 'annulled',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'open': 'open',
    'closed': 'closed',
    'resolved': 'resolved',
    'annulled': 'annulled',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[LedgerQuestionBriefStatusEnum];
  @override
  final String wireName = 'LedgerQuestionBriefStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    LedgerQuestionBriefStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  LedgerQuestionBriefStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => LedgerQuestionBriefStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$LedgerQuestionBrief extends LedgerQuestionBrief {
  @override
  final String id;
  @override
  final String? ref;
  @override
  final String title;
  @override
  final LedgerQuestionBriefTypeEnum type;
  @override
  final LedgerQuestionBriefStatusEnum status;
  @override
  final DateTime? closesAt;
  @override
  final DateTime? resolveBy;
  @override
  final String? resolutionCriteria;
  @override
  final num? probability;
  @override
  final IcdTerm? estimativeTerm;
  @override
  final JsonObject? distribution;
  @override
  final Quantiles? quantiles;
  @override
  final String issuer;
  @override
  final BuiltList<LedgerQuestionBriefForecastersInner>? forecasters;
  @override
  final Date? knowledgeCutoff;
  @override
  final num? baseRate;
  @override
  final DateTime? updatedAt;

  factory _$LedgerQuestionBrief([
    void Function(LedgerQuestionBriefBuilder)? updates,
  ]) => (LedgerQuestionBriefBuilder()..update(updates))._build();

  _$LedgerQuestionBrief._({
    required this.id,
    this.ref,
    required this.title,
    required this.type,
    required this.status,
    this.closesAt,
    this.resolveBy,
    this.resolutionCriteria,
    this.probability,
    this.estimativeTerm,
    this.distribution,
    this.quantiles,
    required this.issuer,
    this.forecasters,
    this.knowledgeCutoff,
    this.baseRate,
    this.updatedAt,
  }) : super._();
  @override
  LedgerQuestionBrief rebuild(
    void Function(LedgerQuestionBriefBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  LedgerQuestionBriefBuilder toBuilder() =>
      LedgerQuestionBriefBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LedgerQuestionBrief &&
        id == other.id &&
        ref == other.ref &&
        title == other.title &&
        type == other.type &&
        status == other.status &&
        closesAt == other.closesAt &&
        resolveBy == other.resolveBy &&
        resolutionCriteria == other.resolutionCriteria &&
        probability == other.probability &&
        estimativeTerm == other.estimativeTerm &&
        distribution == other.distribution &&
        quantiles == other.quantiles &&
        issuer == other.issuer &&
        forecasters == other.forecasters &&
        knowledgeCutoff == other.knowledgeCutoff &&
        baseRate == other.baseRate &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, closesAt.hashCode);
    _$hash = $jc(_$hash, resolveBy.hashCode);
    _$hash = $jc(_$hash, resolutionCriteria.hashCode);
    _$hash = $jc(_$hash, probability.hashCode);
    _$hash = $jc(_$hash, estimativeTerm.hashCode);
    _$hash = $jc(_$hash, distribution.hashCode);
    _$hash = $jc(_$hash, quantiles.hashCode);
    _$hash = $jc(_$hash, issuer.hashCode);
    _$hash = $jc(_$hash, forecasters.hashCode);
    _$hash = $jc(_$hash, knowledgeCutoff.hashCode);
    _$hash = $jc(_$hash, baseRate.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LedgerQuestionBrief')
          ..add('id', id)
          ..add('ref', ref)
          ..add('title', title)
          ..add('type', type)
          ..add('status', status)
          ..add('closesAt', closesAt)
          ..add('resolveBy', resolveBy)
          ..add('resolutionCriteria', resolutionCriteria)
          ..add('probability', probability)
          ..add('estimativeTerm', estimativeTerm)
          ..add('distribution', distribution)
          ..add('quantiles', quantiles)
          ..add('issuer', issuer)
          ..add('forecasters', forecasters)
          ..add('knowledgeCutoff', knowledgeCutoff)
          ..add('baseRate', baseRate)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class LedgerQuestionBriefBuilder
    implements Builder<LedgerQuestionBrief, LedgerQuestionBriefBuilder> {
  _$LedgerQuestionBrief? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  LedgerQuestionBriefTypeEnum? _type;
  LedgerQuestionBriefTypeEnum? get type => _$this._type;
  set type(LedgerQuestionBriefTypeEnum? type) => _$this._type = type;

  LedgerQuestionBriefStatusEnum? _status;
  LedgerQuestionBriefStatusEnum? get status => _$this._status;
  set status(LedgerQuestionBriefStatusEnum? status) => _$this._status = status;

  DateTime? _closesAt;
  DateTime? get closesAt => _$this._closesAt;
  set closesAt(DateTime? closesAt) => _$this._closesAt = closesAt;

  DateTime? _resolveBy;
  DateTime? get resolveBy => _$this._resolveBy;
  set resolveBy(DateTime? resolveBy) => _$this._resolveBy = resolveBy;

  String? _resolutionCriteria;
  String? get resolutionCriteria => _$this._resolutionCriteria;
  set resolutionCriteria(String? resolutionCriteria) =>
      _$this._resolutionCriteria = resolutionCriteria;

  num? _probability;
  num? get probability => _$this._probability;
  set probability(num? probability) => _$this._probability = probability;

  IcdTerm? _estimativeTerm;
  IcdTerm? get estimativeTerm => _$this._estimativeTerm;
  set estimativeTerm(IcdTerm? estimativeTerm) =>
      _$this._estimativeTerm = estimativeTerm;

  JsonObject? _distribution;
  JsonObject? get distribution => _$this._distribution;
  set distribution(JsonObject? distribution) =>
      _$this._distribution = distribution;

  QuantilesBuilder? _quantiles;
  QuantilesBuilder get quantiles => _$this._quantiles ??= QuantilesBuilder();
  set quantiles(QuantilesBuilder? quantiles) => _$this._quantiles = quantiles;

  String? _issuer;
  String? get issuer => _$this._issuer;
  set issuer(String? issuer) => _$this._issuer = issuer;

  ListBuilder<LedgerQuestionBriefForecastersInner>? _forecasters;
  ListBuilder<LedgerQuestionBriefForecastersInner> get forecasters =>
      _$this._forecasters ??=
          ListBuilder<LedgerQuestionBriefForecastersInner>();
  set forecasters(
    ListBuilder<LedgerQuestionBriefForecastersInner>? forecasters,
  ) => _$this._forecasters = forecasters;

  Date? _knowledgeCutoff;
  Date? get knowledgeCutoff => _$this._knowledgeCutoff;
  set knowledgeCutoff(Date? knowledgeCutoff) =>
      _$this._knowledgeCutoff = knowledgeCutoff;

  num? _baseRate;
  num? get baseRate => _$this._baseRate;
  set baseRate(num? baseRate) => _$this._baseRate = baseRate;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  LedgerQuestionBriefBuilder() {
    LedgerQuestionBrief._defaults(this);
  }

  LedgerQuestionBriefBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _ref = $v.ref;
      _title = $v.title;
      _type = $v.type;
      _status = $v.status;
      _closesAt = $v.closesAt;
      _resolveBy = $v.resolveBy;
      _resolutionCriteria = $v.resolutionCriteria;
      _probability = $v.probability;
      _estimativeTerm = $v.estimativeTerm;
      _distribution = $v.distribution;
      _quantiles = $v.quantiles?.toBuilder();
      _issuer = $v.issuer;
      _forecasters = $v.forecasters?.toBuilder();
      _knowledgeCutoff = $v.knowledgeCutoff;
      _baseRate = $v.baseRate;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LedgerQuestionBrief other) {
    _$v = other as _$LedgerQuestionBrief;
  }

  @override
  void update(void Function(LedgerQuestionBriefBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LedgerQuestionBrief build() => _build();

  _$LedgerQuestionBrief _build() {
    _$LedgerQuestionBrief _$result;
    try {
      _$result =
          _$v ??
          _$LedgerQuestionBrief._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'LedgerQuestionBrief',
              'id',
            ),
            ref: ref,
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'LedgerQuestionBrief',
              'title',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'LedgerQuestionBrief',
              'type',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'LedgerQuestionBrief',
              'status',
            ),
            closesAt: closesAt,
            resolveBy: resolveBy,
            resolutionCriteria: resolutionCriteria,
            probability: probability,
            estimativeTerm: estimativeTerm,
            distribution: distribution,
            quantiles: _quantiles?.build(),
            issuer: BuiltValueNullFieldError.checkNotNull(
              issuer,
              r'LedgerQuestionBrief',
              'issuer',
            ),
            forecasters: _forecasters?.build(),
            knowledgeCutoff: knowledgeCutoff,
            baseRate: baseRate,
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'quantiles';
        _quantiles?.build();

        _$failedField = 'forecasters';
        _forecasters?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'LedgerQuestionBrief',
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
