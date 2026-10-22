// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revision_driver.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RevisionDriverKindEnum _$revisionDriverKindEnum_indicator =
    const RevisionDriverKindEnum._('indicator');
const RevisionDriverKindEnum _$revisionDriverKindEnum_evidence =
    const RevisionDriverKindEnum._('evidence');
const RevisionDriverKindEnum _$revisionDriverKindEnum_baseRate =
    const RevisionDriverKindEnum._('baseRate');
const RevisionDriverKindEnum _$revisionDriverKindEnum_review =
    const RevisionDriverKindEnum._('review');
const RevisionDriverKindEnum _$revisionDriverKindEnum_operator_ =
    const RevisionDriverKindEnum._('operator_');

RevisionDriverKindEnum _$revisionDriverKindEnumValueOf(String name) {
  switch (name) {
    case 'indicator':
      return _$revisionDriverKindEnum_indicator;
    case 'evidence':
      return _$revisionDriverKindEnum_evidence;
    case 'baseRate':
      return _$revisionDriverKindEnum_baseRate;
    case 'review':
      return _$revisionDriverKindEnum_review;
    case 'operator_':
      return _$revisionDriverKindEnum_operator_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RevisionDriverKindEnum> _$revisionDriverKindEnumValues =
    BuiltSet<RevisionDriverKindEnum>(const <RevisionDriverKindEnum>[
      _$revisionDriverKindEnum_indicator,
      _$revisionDriverKindEnum_evidence,
      _$revisionDriverKindEnum_baseRate,
      _$revisionDriverKindEnum_review,
      _$revisionDriverKindEnum_operator_,
    ]);

const RevisionDriverSuppressionReasonEnum
_$revisionDriverSuppressionReasonEnum_sameEvidenceGroup =
    const RevisionDriverSuppressionReasonEnum._('sameEvidenceGroup');
const RevisionDriverSuppressionReasonEnum
_$revisionDriverSuppressionReasonEnum_sameFamilyDay =
    const RevisionDriverSuppressionReasonEnum._('sameFamilyDay');
const RevisionDriverSuppressionReasonEnum
_$revisionDriverSuppressionReasonEnum_damped =
    const RevisionDriverSuppressionReasonEnum._('damped');
const RevisionDriverSuppressionReasonEnum
_$revisionDriverSuppressionReasonEnum_capped =
    const RevisionDriverSuppressionReasonEnum._('capped');

RevisionDriverSuppressionReasonEnum
_$revisionDriverSuppressionReasonEnumValueOf(String name) {
  switch (name) {
    case 'sameEvidenceGroup':
      return _$revisionDriverSuppressionReasonEnum_sameEvidenceGroup;
    case 'sameFamilyDay':
      return _$revisionDriverSuppressionReasonEnum_sameFamilyDay;
    case 'damped':
      return _$revisionDriverSuppressionReasonEnum_damped;
    case 'capped':
      return _$revisionDriverSuppressionReasonEnum_capped;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RevisionDriverSuppressionReasonEnum>
_$revisionDriverSuppressionReasonEnumValues =
    BuiltSet<RevisionDriverSuppressionReasonEnum>(
      const <RevisionDriverSuppressionReasonEnum>[
        _$revisionDriverSuppressionReasonEnum_sameEvidenceGroup,
        _$revisionDriverSuppressionReasonEnum_sameFamilyDay,
        _$revisionDriverSuppressionReasonEnum_damped,
        _$revisionDriverSuppressionReasonEnum_capped,
      ],
    );

Serializer<RevisionDriverKindEnum> _$revisionDriverKindEnumSerializer =
    _$RevisionDriverKindEnumSerializer();
Serializer<RevisionDriverSuppressionReasonEnum>
_$revisionDriverSuppressionReasonEnumSerializer =
    _$RevisionDriverSuppressionReasonEnumSerializer();

class _$RevisionDriverKindEnumSerializer
    implements PrimitiveSerializer<RevisionDriverKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'indicator': 'indicator',
    'evidence': 'evidence',
    'baseRate': 'base-rate',
    'review': 'review',
    'operator_': 'operator',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'indicator': 'indicator',
    'evidence': 'evidence',
    'base-rate': 'baseRate',
    'review': 'review',
    'operator': 'operator_',
  };

  @override
  final Iterable<Type> types = const <Type>[RevisionDriverKindEnum];
  @override
  final String wireName = 'RevisionDriverKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    RevisionDriverKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RevisionDriverKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RevisionDriverKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RevisionDriverSuppressionReasonEnumSerializer
    implements PrimitiveSerializer<RevisionDriverSuppressionReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'sameEvidenceGroup': 'same-evidence-group',
    'sameFamilyDay': 'same-family-day',
    'damped': 'damped',
    'capped': 'capped',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'same-evidence-group': 'sameEvidenceGroup',
    'same-family-day': 'sameFamilyDay',
    'damped': 'damped',
    'capped': 'capped',
  };

  @override
  final Iterable<Type> types = const <Type>[
    RevisionDriverSuppressionReasonEnum,
  ];
  @override
  final String wireName = 'RevisionDriverSuppressionReasonEnum';

  @override
  Object serialize(
    Serializers serializers,
    RevisionDriverSuppressionReasonEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RevisionDriverSuppressionReasonEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RevisionDriverSuppressionReasonEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RevisionDriver extends RevisionDriver {
  @override
  final RevisionDriverKindEnum kind;
  @override
  final String? id;
  @override
  final String? ref;
  @override
  final String hypothesisId;
  @override
  final String? signalFamily;
  @override
  final num? lr;
  @override
  final num? lnLr;
  @override
  final num? pDetect;
  @override
  final num applied;
  @override
  final bool suppressed;
  @override
  final RevisionDriverSuppressionReasonEnum? suppressionReason;

  factory _$RevisionDriver([void Function(RevisionDriverBuilder)? updates]) =>
      (RevisionDriverBuilder()..update(updates))._build();

  _$RevisionDriver._({
    required this.kind,
    this.id,
    this.ref,
    required this.hypothesisId,
    this.signalFamily,
    this.lr,
    this.lnLr,
    this.pDetect,
    required this.applied,
    required this.suppressed,
    this.suppressionReason,
  }) : super._();
  @override
  RevisionDriver rebuild(void Function(RevisionDriverBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RevisionDriverBuilder toBuilder() => RevisionDriverBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RevisionDriver &&
        kind == other.kind &&
        id == other.id &&
        ref == other.ref &&
        hypothesisId == other.hypothesisId &&
        signalFamily == other.signalFamily &&
        lr == other.lr &&
        lnLr == other.lnLr &&
        pDetect == other.pDetect &&
        applied == other.applied &&
        suppressed == other.suppressed &&
        suppressionReason == other.suppressionReason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, hypothesisId.hashCode);
    _$hash = $jc(_$hash, signalFamily.hashCode);
    _$hash = $jc(_$hash, lr.hashCode);
    _$hash = $jc(_$hash, lnLr.hashCode);
    _$hash = $jc(_$hash, pDetect.hashCode);
    _$hash = $jc(_$hash, applied.hashCode);
    _$hash = $jc(_$hash, suppressed.hashCode);
    _$hash = $jc(_$hash, suppressionReason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RevisionDriver')
          ..add('kind', kind)
          ..add('id', id)
          ..add('ref', ref)
          ..add('hypothesisId', hypothesisId)
          ..add('signalFamily', signalFamily)
          ..add('lr', lr)
          ..add('lnLr', lnLr)
          ..add('pDetect', pDetect)
          ..add('applied', applied)
          ..add('suppressed', suppressed)
          ..add('suppressionReason', suppressionReason))
        .toString();
  }
}

class RevisionDriverBuilder
    implements Builder<RevisionDriver, RevisionDriverBuilder> {
  _$RevisionDriver? _$v;

  RevisionDriverKindEnum? _kind;
  RevisionDriverKindEnum? get kind => _$this._kind;
  set kind(RevisionDriverKindEnum? kind) => _$this._kind = kind;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _hypothesisId;
  String? get hypothesisId => _$this._hypothesisId;
  set hypothesisId(String? hypothesisId) => _$this._hypothesisId = hypothesisId;

  String? _signalFamily;
  String? get signalFamily => _$this._signalFamily;
  set signalFamily(String? signalFamily) => _$this._signalFamily = signalFamily;

  num? _lr;
  num? get lr => _$this._lr;
  set lr(num? lr) => _$this._lr = lr;

  num? _lnLr;
  num? get lnLr => _$this._lnLr;
  set lnLr(num? lnLr) => _$this._lnLr = lnLr;

  num? _pDetect;
  num? get pDetect => _$this._pDetect;
  set pDetect(num? pDetect) => _$this._pDetect = pDetect;

  num? _applied;
  num? get applied => _$this._applied;
  set applied(num? applied) => _$this._applied = applied;

  bool? _suppressed;
  bool? get suppressed => _$this._suppressed;
  set suppressed(bool? suppressed) => _$this._suppressed = suppressed;

  RevisionDriverSuppressionReasonEnum? _suppressionReason;
  RevisionDriverSuppressionReasonEnum? get suppressionReason =>
      _$this._suppressionReason;
  set suppressionReason(
    RevisionDriverSuppressionReasonEnum? suppressionReason,
  ) => _$this._suppressionReason = suppressionReason;

  RevisionDriverBuilder() {
    RevisionDriver._defaults(this);
  }

  RevisionDriverBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _id = $v.id;
      _ref = $v.ref;
      _hypothesisId = $v.hypothesisId;
      _signalFamily = $v.signalFamily;
      _lr = $v.lr;
      _lnLr = $v.lnLr;
      _pDetect = $v.pDetect;
      _applied = $v.applied;
      _suppressed = $v.suppressed;
      _suppressionReason = $v.suppressionReason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RevisionDriver other) {
    _$v = other as _$RevisionDriver;
  }

  @override
  void update(void Function(RevisionDriverBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RevisionDriver build() => _build();

  _$RevisionDriver _build() {
    final _$result =
        _$v ??
        _$RevisionDriver._(
          kind: BuiltValueNullFieldError.checkNotNull(
            kind,
            r'RevisionDriver',
            'kind',
          ),
          id: id,
          ref: ref,
          hypothesisId: BuiltValueNullFieldError.checkNotNull(
            hypothesisId,
            r'RevisionDriver',
            'hypothesisId',
          ),
          signalFamily: signalFamily,
          lr: lr,
          lnLr: lnLr,
          pDetect: pDetect,
          applied: BuiltValueNullFieldError.checkNotNull(
            applied,
            r'RevisionDriver',
            'applied',
          ),
          suppressed: BuiltValueNullFieldError.checkNotNull(
            suppressed,
            r'RevisionDriver',
            'suppressed',
          ),
          suppressionReason: suppressionReason,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
