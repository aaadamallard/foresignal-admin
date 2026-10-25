// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hypothesis_revision.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const HypothesisRevisionCauseEnum
_$hypothesisRevisionCauseEnum_indicatorObserved =
    const HypothesisRevisionCauseEnum._('indicatorObserved');
const HypothesisRevisionCauseEnum
_$hypothesisRevisionCauseEnum_indicatorAbsent =
    const HypothesisRevisionCauseEnum._('indicatorAbsent');
const HypothesisRevisionCauseEnum _$hypothesisRevisionCauseEnum_evidenceAdded =
    const HypothesisRevisionCauseEnum._('evidenceAdded');
const HypothesisRevisionCauseEnum
_$hypothesisRevisionCauseEnum_evidenceRemoved =
    const HypothesisRevisionCauseEnum._('evidenceRemoved');
const HypothesisRevisionCauseEnum
_$hypothesisRevisionCauseEnum_baseRateRefresh =
    const HypothesisRevisionCauseEnum._('baseRateRefresh');
const HypothesisRevisionCauseEnum _$hypothesisRevisionCauseEnum_review =
    const HypothesisRevisionCauseEnum._('review');
const HypothesisRevisionCauseEnum _$hypothesisRevisionCauseEnum_operator_ =
    const HypothesisRevisionCauseEnum._('operator_');
const HypothesisRevisionCauseEnum _$hypothesisRevisionCauseEnum_created =
    const HypothesisRevisionCauseEnum._('created');
const HypothesisRevisionCauseEnum
_$hypothesisRevisionCauseEnum_unknownDefaultOpenApi =
    const HypothesisRevisionCauseEnum._('unknownDefaultOpenApi');

HypothesisRevisionCauseEnum _$hypothesisRevisionCauseEnumValueOf(String name) {
  switch (name) {
    case 'indicatorObserved':
      return _$hypothesisRevisionCauseEnum_indicatorObserved;
    case 'indicatorAbsent':
      return _$hypothesisRevisionCauseEnum_indicatorAbsent;
    case 'evidenceAdded':
      return _$hypothesisRevisionCauseEnum_evidenceAdded;
    case 'evidenceRemoved':
      return _$hypothesisRevisionCauseEnum_evidenceRemoved;
    case 'baseRateRefresh':
      return _$hypothesisRevisionCauseEnum_baseRateRefresh;
    case 'review':
      return _$hypothesisRevisionCauseEnum_review;
    case 'operator_':
      return _$hypothesisRevisionCauseEnum_operator_;
    case 'created':
      return _$hypothesisRevisionCauseEnum_created;
    case 'unknownDefaultOpenApi':
      return _$hypothesisRevisionCauseEnum_unknownDefaultOpenApi;
    default:
      return _$hypothesisRevisionCauseEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<HypothesisRevisionCauseEnum>
_$hypothesisRevisionCauseEnumValues =
    BuiltSet<HypothesisRevisionCauseEnum>(const <HypothesisRevisionCauseEnum>[
      _$hypothesisRevisionCauseEnum_indicatorObserved,
      _$hypothesisRevisionCauseEnum_indicatorAbsent,
      _$hypothesisRevisionCauseEnum_evidenceAdded,
      _$hypothesisRevisionCauseEnum_evidenceRemoved,
      _$hypothesisRevisionCauseEnum_baseRateRefresh,
      _$hypothesisRevisionCauseEnum_review,
      _$hypothesisRevisionCauseEnum_operator_,
      _$hypothesisRevisionCauseEnum_created,
      _$hypothesisRevisionCauseEnum_unknownDefaultOpenApi,
    ]);

const HypothesisRevisionRationaleOriginEnum
_$hypothesisRevisionRationaleOriginEnum_deterministic =
    const HypothesisRevisionRationaleOriginEnum._('deterministic');
const HypothesisRevisionRationaleOriginEnum
_$hypothesisRevisionRationaleOriginEnum_operator_ =
    const HypothesisRevisionRationaleOriginEnum._('operator_');
const HypothesisRevisionRationaleOriginEnum
_$hypothesisRevisionRationaleOriginEnum_analyst =
    const HypothesisRevisionRationaleOriginEnum._('analyst');
const HypothesisRevisionRationaleOriginEnum
_$hypothesisRevisionRationaleOriginEnum_unknownDefaultOpenApi =
    const HypothesisRevisionRationaleOriginEnum._('unknownDefaultOpenApi');

HypothesisRevisionRationaleOriginEnum
_$hypothesisRevisionRationaleOriginEnumValueOf(String name) {
  switch (name) {
    case 'deterministic':
      return _$hypothesisRevisionRationaleOriginEnum_deterministic;
    case 'operator_':
      return _$hypothesisRevisionRationaleOriginEnum_operator_;
    case 'analyst':
      return _$hypothesisRevisionRationaleOriginEnum_analyst;
    case 'unknownDefaultOpenApi':
      return _$hypothesisRevisionRationaleOriginEnum_unknownDefaultOpenApi;
    default:
      return _$hypothesisRevisionRationaleOriginEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<HypothesisRevisionRationaleOriginEnum>
_$hypothesisRevisionRationaleOriginEnumValues =
    BuiltSet<HypothesisRevisionRationaleOriginEnum>(
      const <HypothesisRevisionRationaleOriginEnum>[
        _$hypothesisRevisionRationaleOriginEnum_deterministic,
        _$hypothesisRevisionRationaleOriginEnum_operator_,
        _$hypothesisRevisionRationaleOriginEnum_analyst,
        _$hypothesisRevisionRationaleOriginEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<HypothesisRevisionCauseEnum>
_$hypothesisRevisionCauseEnumSerializer =
    _$HypothesisRevisionCauseEnumSerializer();
Serializer<HypothesisRevisionRationaleOriginEnum>
_$hypothesisRevisionRationaleOriginEnumSerializer =
    _$HypothesisRevisionRationaleOriginEnumSerializer();

class _$HypothesisRevisionCauseEnumSerializer
    implements PrimitiveSerializer<HypothesisRevisionCauseEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'indicatorObserved': 'indicator-observed',
    'indicatorAbsent': 'indicator-absent',
    'evidenceAdded': 'evidence-added',
    'evidenceRemoved': 'evidence-removed',
    'baseRateRefresh': 'base-rate-refresh',
    'review': 'review',
    'operator_': 'operator',
    'created': 'created',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'indicator-observed': 'indicatorObserved',
    'indicator-absent': 'indicatorAbsent',
    'evidence-added': 'evidenceAdded',
    'evidence-removed': 'evidenceRemoved',
    'base-rate-refresh': 'baseRateRefresh',
    'review': 'review',
    'operator': 'operator_',
    'created': 'created',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[HypothesisRevisionCauseEnum];
  @override
  final String wireName = 'HypothesisRevisionCauseEnum';

  @override
  Object serialize(
    Serializers serializers,
    HypothesisRevisionCauseEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  HypothesisRevisionCauseEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => HypothesisRevisionCauseEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$HypothesisRevisionRationaleOriginEnumSerializer
    implements PrimitiveSerializer<HypothesisRevisionRationaleOriginEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'deterministic': 'deterministic',
    'operator_': 'operator',
    'analyst': 'analyst',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'deterministic': 'deterministic',
    'operator': 'operator_',
    'analyst': 'analyst',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    HypothesisRevisionRationaleOriginEnum,
  ];
  @override
  final String wireName = 'HypothesisRevisionRationaleOriginEnum';

  @override
  Object serialize(
    Serializers serializers,
    HypothesisRevisionRationaleOriginEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  HypothesisRevisionRationaleOriginEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => HypothesisRevisionRationaleOriginEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$HypothesisRevision extends HypothesisRevision {
  @override
  final String id;
  @override
  final String setId;
  @override
  final DateTime at;
  @override
  final HypothesisRevisionCauseEnum cause;
  @override
  final String actor;
  @override
  final int asOfSeq;
  @override
  final BuiltList<HypothesisProbabilityState> before;
  @override
  final BuiltList<HypothesisProbabilityState> after;
  @override
  final BuiltList<RevisionDriver> drivers;
  @override
  final BuiltList<String>? citations;
  @override
  final String rationale;
  @override
  final HypothesisRevisionRationaleOriginEnum? rationaleOrigin;
  @override
  final bool? bandChanged;
  @override
  final bool? override_;
  @override
  final String? ledgerForecastId;
  @override
  final String updaterVersion;

  factory _$HypothesisRevision([
    void Function(HypothesisRevisionBuilder)? updates,
  ]) => (HypothesisRevisionBuilder()..update(updates))._build();

  _$HypothesisRevision._({
    required this.id,
    required this.setId,
    required this.at,
    required this.cause,
    required this.actor,
    required this.asOfSeq,
    required this.before,
    required this.after,
    required this.drivers,
    this.citations,
    required this.rationale,
    this.rationaleOrigin,
    this.bandChanged,
    this.override_,
    this.ledgerForecastId,
    required this.updaterVersion,
  }) : super._();
  @override
  HypothesisRevision rebuild(
    void Function(HypothesisRevisionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  HypothesisRevisionBuilder toBuilder() =>
      HypothesisRevisionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HypothesisRevision &&
        id == other.id &&
        setId == other.setId &&
        at == other.at &&
        cause == other.cause &&
        actor == other.actor &&
        asOfSeq == other.asOfSeq &&
        before == other.before &&
        after == other.after &&
        drivers == other.drivers &&
        citations == other.citations &&
        rationale == other.rationale &&
        rationaleOrigin == other.rationaleOrigin &&
        bandChanged == other.bandChanged &&
        override_ == other.override_ &&
        ledgerForecastId == other.ledgerForecastId &&
        updaterVersion == other.updaterVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, setId.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jc(_$hash, cause.hashCode);
    _$hash = $jc(_$hash, actor.hashCode);
    _$hash = $jc(_$hash, asOfSeq.hashCode);
    _$hash = $jc(_$hash, before.hashCode);
    _$hash = $jc(_$hash, after.hashCode);
    _$hash = $jc(_$hash, drivers.hashCode);
    _$hash = $jc(_$hash, citations.hashCode);
    _$hash = $jc(_$hash, rationale.hashCode);
    _$hash = $jc(_$hash, rationaleOrigin.hashCode);
    _$hash = $jc(_$hash, bandChanged.hashCode);
    _$hash = $jc(_$hash, override_.hashCode);
    _$hash = $jc(_$hash, ledgerForecastId.hashCode);
    _$hash = $jc(_$hash, updaterVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HypothesisRevision')
          ..add('id', id)
          ..add('setId', setId)
          ..add('at', at)
          ..add('cause', cause)
          ..add('actor', actor)
          ..add('asOfSeq', asOfSeq)
          ..add('before', before)
          ..add('after', after)
          ..add('drivers', drivers)
          ..add('citations', citations)
          ..add('rationale', rationale)
          ..add('rationaleOrigin', rationaleOrigin)
          ..add('bandChanged', bandChanged)
          ..add('override_', override_)
          ..add('ledgerForecastId', ledgerForecastId)
          ..add('updaterVersion', updaterVersion))
        .toString();
  }
}

class HypothesisRevisionBuilder
    implements Builder<HypothesisRevision, HypothesisRevisionBuilder> {
  _$HypothesisRevision? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _setId;
  String? get setId => _$this._setId;
  set setId(String? setId) => _$this._setId = setId;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  HypothesisRevisionCauseEnum? _cause;
  HypothesisRevisionCauseEnum? get cause => _$this._cause;
  set cause(HypothesisRevisionCauseEnum? cause) => _$this._cause = cause;

  String? _actor;
  String? get actor => _$this._actor;
  set actor(String? actor) => _$this._actor = actor;

  int? _asOfSeq;
  int? get asOfSeq => _$this._asOfSeq;
  set asOfSeq(int? asOfSeq) => _$this._asOfSeq = asOfSeq;

  ListBuilder<HypothesisProbabilityState>? _before;
  ListBuilder<HypothesisProbabilityState> get before =>
      _$this._before ??= ListBuilder<HypothesisProbabilityState>();
  set before(ListBuilder<HypothesisProbabilityState>? before) =>
      _$this._before = before;

  ListBuilder<HypothesisProbabilityState>? _after;
  ListBuilder<HypothesisProbabilityState> get after =>
      _$this._after ??= ListBuilder<HypothesisProbabilityState>();
  set after(ListBuilder<HypothesisProbabilityState>? after) =>
      _$this._after = after;

  ListBuilder<RevisionDriver>? _drivers;
  ListBuilder<RevisionDriver> get drivers =>
      _$this._drivers ??= ListBuilder<RevisionDriver>();
  set drivers(ListBuilder<RevisionDriver>? drivers) =>
      _$this._drivers = drivers;

  ListBuilder<String>? _citations;
  ListBuilder<String> get citations =>
      _$this._citations ??= ListBuilder<String>();
  set citations(ListBuilder<String>? citations) =>
      _$this._citations = citations;

  String? _rationale;
  String? get rationale => _$this._rationale;
  set rationale(String? rationale) => _$this._rationale = rationale;

  HypothesisRevisionRationaleOriginEnum? _rationaleOrigin;
  HypothesisRevisionRationaleOriginEnum? get rationaleOrigin =>
      _$this._rationaleOrigin;
  set rationaleOrigin(HypothesisRevisionRationaleOriginEnum? rationaleOrigin) =>
      _$this._rationaleOrigin = rationaleOrigin;

  bool? _bandChanged;
  bool? get bandChanged => _$this._bandChanged;
  set bandChanged(bool? bandChanged) => _$this._bandChanged = bandChanged;

  bool? _override_;
  bool? get override_ => _$this._override_;
  set override_(bool? override_) => _$this._override_ = override_;

  String? _ledgerForecastId;
  String? get ledgerForecastId => _$this._ledgerForecastId;
  set ledgerForecastId(String? ledgerForecastId) =>
      _$this._ledgerForecastId = ledgerForecastId;

  String? _updaterVersion;
  String? get updaterVersion => _$this._updaterVersion;
  set updaterVersion(String? updaterVersion) =>
      _$this._updaterVersion = updaterVersion;

  HypothesisRevisionBuilder() {
    HypothesisRevision._defaults(this);
  }

  HypothesisRevisionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _setId = $v.setId;
      _at = $v.at;
      _cause = $v.cause;
      _actor = $v.actor;
      _asOfSeq = $v.asOfSeq;
      _before = $v.before.toBuilder();
      _after = $v.after.toBuilder();
      _drivers = $v.drivers.toBuilder();
      _citations = $v.citations?.toBuilder();
      _rationale = $v.rationale;
      _rationaleOrigin = $v.rationaleOrigin;
      _bandChanged = $v.bandChanged;
      _override_ = $v.override_;
      _ledgerForecastId = $v.ledgerForecastId;
      _updaterVersion = $v.updaterVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HypothesisRevision other) {
    _$v = other as _$HypothesisRevision;
  }

  @override
  void update(void Function(HypothesisRevisionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HypothesisRevision build() => _build();

  _$HypothesisRevision _build() {
    _$HypothesisRevision _$result;
    try {
      _$result =
          _$v ??
          _$HypothesisRevision._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'HypothesisRevision',
              'id',
            ),
            setId: BuiltValueNullFieldError.checkNotNull(
              setId,
              r'HypothesisRevision',
              'setId',
            ),
            at: BuiltValueNullFieldError.checkNotNull(
              at,
              r'HypothesisRevision',
              'at',
            ),
            cause: BuiltValueNullFieldError.checkNotNull(
              cause,
              r'HypothesisRevision',
              'cause',
            ),
            actor: BuiltValueNullFieldError.checkNotNull(
              actor,
              r'HypothesisRevision',
              'actor',
            ),
            asOfSeq: BuiltValueNullFieldError.checkNotNull(
              asOfSeq,
              r'HypothesisRevision',
              'asOfSeq',
            ),
            before: before.build(),
            after: after.build(),
            drivers: drivers.build(),
            citations: _citations?.build(),
            rationale: BuiltValueNullFieldError.checkNotNull(
              rationale,
              r'HypothesisRevision',
              'rationale',
            ),
            rationaleOrigin: rationaleOrigin,
            bandChanged: bandChanged,
            override_: override_,
            ledgerForecastId: ledgerForecastId,
            updaterVersion: BuiltValueNullFieldError.checkNotNull(
              updaterVersion,
              r'HypothesisRevision',
              'updaterVersion',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'before';
        before.build();
        _$failedField = 'after';
        after.build();
        _$failedField = 'drivers';
        drivers.build();
        _$failedField = 'citations';
        _citations?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'HypothesisRevision',
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
