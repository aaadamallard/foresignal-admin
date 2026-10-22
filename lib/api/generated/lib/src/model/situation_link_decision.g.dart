// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_link_decision.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SituationLinkDecisionMemberTypeEnum
_$situationLinkDecisionMemberTypeEnum_intelEvent =
    const SituationLinkDecisionMemberTypeEnum._('intelEvent');
const SituationLinkDecisionMemberTypeEnum
_$situationLinkDecisionMemberTypeEnum_finding =
    const SituationLinkDecisionMemberTypeEnum._('finding');
const SituationLinkDecisionMemberTypeEnum
_$situationLinkDecisionMemberTypeEnum_alert =
    const SituationLinkDecisionMemberTypeEnum._('alert');
const SituationLinkDecisionMemberTypeEnum
_$situationLinkDecisionMemberTypeEnum_anomaly =
    const SituationLinkDecisionMemberTypeEnum._('anomaly');
const SituationLinkDecisionMemberTypeEnum
_$situationLinkDecisionMemberTypeEnum_record =
    const SituationLinkDecisionMemberTypeEnum._('record');
const SituationLinkDecisionMemberTypeEnum
_$situationLinkDecisionMemberTypeEnum_investigation =
    const SituationLinkDecisionMemberTypeEnum._('investigation');

SituationLinkDecisionMemberTypeEnum
_$situationLinkDecisionMemberTypeEnumValueOf(String name) {
  switch (name) {
    case 'intelEvent':
      return _$situationLinkDecisionMemberTypeEnum_intelEvent;
    case 'finding':
      return _$situationLinkDecisionMemberTypeEnum_finding;
    case 'alert':
      return _$situationLinkDecisionMemberTypeEnum_alert;
    case 'anomaly':
      return _$situationLinkDecisionMemberTypeEnum_anomaly;
    case 'record':
      return _$situationLinkDecisionMemberTypeEnum_record;
    case 'investigation':
      return _$situationLinkDecisionMemberTypeEnum_investigation;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SituationLinkDecisionMemberTypeEnum>
_$situationLinkDecisionMemberTypeEnumValues =
    BuiltSet<SituationLinkDecisionMemberTypeEnum>(
      const <SituationLinkDecisionMemberTypeEnum>[
        _$situationLinkDecisionMemberTypeEnum_intelEvent,
        _$situationLinkDecisionMemberTypeEnum_finding,
        _$situationLinkDecisionMemberTypeEnum_alert,
        _$situationLinkDecisionMemberTypeEnum_anomaly,
        _$situationLinkDecisionMemberTypeEnum_record,
        _$situationLinkDecisionMemberTypeEnum_investigation,
      ],
    );

const SituationLinkDecisionActionEnum _$situationLinkDecisionActionEnum_join =
    const SituationLinkDecisionActionEnum._('join');
const SituationLinkDecisionActionEnum _$situationLinkDecisionActionEnum_seed =
    const SituationLinkDecisionActionEnum._('seed');
const SituationLinkDecisionActionEnum _$situationLinkDecisionActionEnum_skip =
    const SituationLinkDecisionActionEnum._('skip');
const SituationLinkDecisionActionEnum
_$situationLinkDecisionActionEnum_alreadyMember =
    const SituationLinkDecisionActionEnum._('alreadyMember');

SituationLinkDecisionActionEnum _$situationLinkDecisionActionEnumValueOf(
  String name,
) {
  switch (name) {
    case 'join':
      return _$situationLinkDecisionActionEnum_join;
    case 'seed':
      return _$situationLinkDecisionActionEnum_seed;
    case 'skip':
      return _$situationLinkDecisionActionEnum_skip;
    case 'alreadyMember':
      return _$situationLinkDecisionActionEnum_alreadyMember;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SituationLinkDecisionActionEnum>
_$situationLinkDecisionActionEnumValues =
    BuiltSet<SituationLinkDecisionActionEnum>(
      const <SituationLinkDecisionActionEnum>[
        _$situationLinkDecisionActionEnum_join,
        _$situationLinkDecisionActionEnum_seed,
        _$situationLinkDecisionActionEnum_skip,
        _$situationLinkDecisionActionEnum_alreadyMember,
      ],
    );

Serializer<SituationLinkDecisionMemberTypeEnum>
_$situationLinkDecisionMemberTypeEnumSerializer =
    _$SituationLinkDecisionMemberTypeEnumSerializer();
Serializer<SituationLinkDecisionActionEnum>
_$situationLinkDecisionActionEnumSerializer =
    _$SituationLinkDecisionActionEnumSerializer();

class _$SituationLinkDecisionMemberTypeEnumSerializer
    implements PrimitiveSerializer<SituationLinkDecisionMemberTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'intelEvent': 'intel_event',
    'finding': 'finding',
    'alert': 'alert',
    'anomaly': 'anomaly',
    'record': 'record',
    'investigation': 'investigation',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'intel_event': 'intelEvent',
    'finding': 'finding',
    'alert': 'alert',
    'anomaly': 'anomaly',
    'record': 'record',
    'investigation': 'investigation',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SituationLinkDecisionMemberTypeEnum,
  ];
  @override
  final String wireName = 'SituationLinkDecisionMemberTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    SituationLinkDecisionMemberTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SituationLinkDecisionMemberTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SituationLinkDecisionMemberTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SituationLinkDecisionActionEnumSerializer
    implements PrimitiveSerializer<SituationLinkDecisionActionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'join': 'join',
    'seed': 'seed',
    'skip': 'skip',
    'alreadyMember': 'already-member',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'join': 'join',
    'seed': 'seed',
    'skip': 'skip',
    'already-member': 'alreadyMember',
  };

  @override
  final Iterable<Type> types = const <Type>[SituationLinkDecisionActionEnum];
  @override
  final String wireName = 'SituationLinkDecisionActionEnum';

  @override
  Object serialize(
    Serializers serializers,
    SituationLinkDecisionActionEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SituationLinkDecisionActionEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SituationLinkDecisionActionEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SituationLinkDecision extends SituationLinkDecision {
  @override
  final int seq;
  @override
  final String inputRef;
  @override
  final SituationLinkDecisionMemberTypeEnum? memberType;
  @override
  final String? signalFamily;
  @override
  final SituationLinkDecisionActionEnum action;
  @override
  final String? situationId;
  @override
  final String? seedTitle;
  @override
  final num? score;
  @override
  final SituationJoinReason? joinReason;
  @override
  final BuiltList<SituationLinkDecisionCandidatesInner>? candidates;

  factory _$SituationLinkDecision([
    void Function(SituationLinkDecisionBuilder)? updates,
  ]) => (SituationLinkDecisionBuilder()..update(updates))._build();

  _$SituationLinkDecision._({
    required this.seq,
    required this.inputRef,
    this.memberType,
    this.signalFamily,
    required this.action,
    this.situationId,
    this.seedTitle,
    this.score,
    this.joinReason,
    this.candidates,
  }) : super._();
  @override
  SituationLinkDecision rebuild(
    void Function(SituationLinkDecisionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SituationLinkDecisionBuilder toBuilder() =>
      SituationLinkDecisionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationLinkDecision &&
        seq == other.seq &&
        inputRef == other.inputRef &&
        memberType == other.memberType &&
        signalFamily == other.signalFamily &&
        action == other.action &&
        situationId == other.situationId &&
        seedTitle == other.seedTitle &&
        score == other.score &&
        joinReason == other.joinReason &&
        candidates == other.candidates;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, inputRef.hashCode);
    _$hash = $jc(_$hash, memberType.hashCode);
    _$hash = $jc(_$hash, signalFamily.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, situationId.hashCode);
    _$hash = $jc(_$hash, seedTitle.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, joinReason.hashCode);
    _$hash = $jc(_$hash, candidates.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SituationLinkDecision')
          ..add('seq', seq)
          ..add('inputRef', inputRef)
          ..add('memberType', memberType)
          ..add('signalFamily', signalFamily)
          ..add('action', action)
          ..add('situationId', situationId)
          ..add('seedTitle', seedTitle)
          ..add('score', score)
          ..add('joinReason', joinReason)
          ..add('candidates', candidates))
        .toString();
  }
}

class SituationLinkDecisionBuilder
    implements Builder<SituationLinkDecision, SituationLinkDecisionBuilder> {
  _$SituationLinkDecision? _$v;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

  String? _inputRef;
  String? get inputRef => _$this._inputRef;
  set inputRef(String? inputRef) => _$this._inputRef = inputRef;

  SituationLinkDecisionMemberTypeEnum? _memberType;
  SituationLinkDecisionMemberTypeEnum? get memberType => _$this._memberType;
  set memberType(SituationLinkDecisionMemberTypeEnum? memberType) =>
      _$this._memberType = memberType;

  String? _signalFamily;
  String? get signalFamily => _$this._signalFamily;
  set signalFamily(String? signalFamily) => _$this._signalFamily = signalFamily;

  SituationLinkDecisionActionEnum? _action;
  SituationLinkDecisionActionEnum? get action => _$this._action;
  set action(SituationLinkDecisionActionEnum? action) =>
      _$this._action = action;

  String? _situationId;
  String? get situationId => _$this._situationId;
  set situationId(String? situationId) => _$this._situationId = situationId;

  String? _seedTitle;
  String? get seedTitle => _$this._seedTitle;
  set seedTitle(String? seedTitle) => _$this._seedTitle = seedTitle;

  num? _score;
  num? get score => _$this._score;
  set score(num? score) => _$this._score = score;

  SituationJoinReasonBuilder? _joinReason;
  SituationJoinReasonBuilder get joinReason =>
      _$this._joinReason ??= SituationJoinReasonBuilder();
  set joinReason(SituationJoinReasonBuilder? joinReason) =>
      _$this._joinReason = joinReason;

  ListBuilder<SituationLinkDecisionCandidatesInner>? _candidates;
  ListBuilder<SituationLinkDecisionCandidatesInner> get candidates =>
      _$this._candidates ??=
          ListBuilder<SituationLinkDecisionCandidatesInner>();
  set candidates(
    ListBuilder<SituationLinkDecisionCandidatesInner>? candidates,
  ) => _$this._candidates = candidates;

  SituationLinkDecisionBuilder() {
    SituationLinkDecision._defaults(this);
  }

  SituationLinkDecisionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _seq = $v.seq;
      _inputRef = $v.inputRef;
      _memberType = $v.memberType;
      _signalFamily = $v.signalFamily;
      _action = $v.action;
      _situationId = $v.situationId;
      _seedTitle = $v.seedTitle;
      _score = $v.score;
      _joinReason = $v.joinReason?.toBuilder();
      _candidates = $v.candidates?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationLinkDecision other) {
    _$v = other as _$SituationLinkDecision;
  }

  @override
  void update(void Function(SituationLinkDecisionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationLinkDecision build() => _build();

  _$SituationLinkDecision _build() {
    _$SituationLinkDecision _$result;
    try {
      _$result =
          _$v ??
          _$SituationLinkDecision._(
            seq: BuiltValueNullFieldError.checkNotNull(
              seq,
              r'SituationLinkDecision',
              'seq',
            ),
            inputRef: BuiltValueNullFieldError.checkNotNull(
              inputRef,
              r'SituationLinkDecision',
              'inputRef',
            ),
            memberType: memberType,
            signalFamily: signalFamily,
            action: BuiltValueNullFieldError.checkNotNull(
              action,
              r'SituationLinkDecision',
              'action',
            ),
            situationId: situationId,
            seedTitle: seedTitle,
            score: score,
            joinReason: _joinReason?.build(),
            candidates: _candidates?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'joinReason';
        _joinReason?.build();
        _$failedField = 'candidates';
        _candidates?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SituationLinkDecision',
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
