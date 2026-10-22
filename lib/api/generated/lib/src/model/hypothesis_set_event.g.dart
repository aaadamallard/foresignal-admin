// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hypothesis_set_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const HypothesisSetEventStatusEnum _$hypothesisSetEventStatusEnum_active =
    const HypothesisSetEventStatusEnum._('active');
const HypothesisSetEventStatusEnum _$hypothesisSetEventStatusEnum_resolved =
    const HypothesisSetEventStatusEnum._('resolved');
const HypothesisSetEventStatusEnum _$hypothesisSetEventStatusEnum_archived =
    const HypothesisSetEventStatusEnum._('archived');

HypothesisSetEventStatusEnum _$hypothesisSetEventStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'active':
      return _$hypothesisSetEventStatusEnum_active;
    case 'resolved':
      return _$hypothesisSetEventStatusEnum_resolved;
    case 'archived':
      return _$hypothesisSetEventStatusEnum_archived;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<HypothesisSetEventStatusEnum>
_$hypothesisSetEventStatusEnumValues =
    BuiltSet<HypothesisSetEventStatusEnum>(const <HypothesisSetEventStatusEnum>[
      _$hypothesisSetEventStatusEnum_active,
      _$hypothesisSetEventStatusEnum_resolved,
      _$hypothesisSetEventStatusEnum_archived,
    ]);

const HypothesisSetEventCauseEnum
_$hypothesisSetEventCauseEnum_indicatorObserved =
    const HypothesisSetEventCauseEnum._('indicatorObserved');
const HypothesisSetEventCauseEnum
_$hypothesisSetEventCauseEnum_indicatorAbsent =
    const HypothesisSetEventCauseEnum._('indicatorAbsent');
const HypothesisSetEventCauseEnum _$hypothesisSetEventCauseEnum_evidenceAdded =
    const HypothesisSetEventCauseEnum._('evidenceAdded');
const HypothesisSetEventCauseEnum
_$hypothesisSetEventCauseEnum_evidenceRemoved =
    const HypothesisSetEventCauseEnum._('evidenceRemoved');
const HypothesisSetEventCauseEnum
_$hypothesisSetEventCauseEnum_baseRateRefresh =
    const HypothesisSetEventCauseEnum._('baseRateRefresh');
const HypothesisSetEventCauseEnum _$hypothesisSetEventCauseEnum_review =
    const HypothesisSetEventCauseEnum._('review');
const HypothesisSetEventCauseEnum _$hypothesisSetEventCauseEnum_operator_ =
    const HypothesisSetEventCauseEnum._('operator_');
const HypothesisSetEventCauseEnum _$hypothesisSetEventCauseEnum_created =
    const HypothesisSetEventCauseEnum._('created');

HypothesisSetEventCauseEnum _$hypothesisSetEventCauseEnumValueOf(String name) {
  switch (name) {
    case 'indicatorObserved':
      return _$hypothesisSetEventCauseEnum_indicatorObserved;
    case 'indicatorAbsent':
      return _$hypothesisSetEventCauseEnum_indicatorAbsent;
    case 'evidenceAdded':
      return _$hypothesisSetEventCauseEnum_evidenceAdded;
    case 'evidenceRemoved':
      return _$hypothesisSetEventCauseEnum_evidenceRemoved;
    case 'baseRateRefresh':
      return _$hypothesisSetEventCauseEnum_baseRateRefresh;
    case 'review':
      return _$hypothesisSetEventCauseEnum_review;
    case 'operator_':
      return _$hypothesisSetEventCauseEnum_operator_;
    case 'created':
      return _$hypothesisSetEventCauseEnum_created;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<HypothesisSetEventCauseEnum>
_$hypothesisSetEventCauseEnumValues =
    BuiltSet<HypothesisSetEventCauseEnum>(const <HypothesisSetEventCauseEnum>[
      _$hypothesisSetEventCauseEnum_indicatorObserved,
      _$hypothesisSetEventCauseEnum_indicatorAbsent,
      _$hypothesisSetEventCauseEnum_evidenceAdded,
      _$hypothesisSetEventCauseEnum_evidenceRemoved,
      _$hypothesisSetEventCauseEnum_baseRateRefresh,
      _$hypothesisSetEventCauseEnum_review,
      _$hypothesisSetEventCauseEnum_operator_,
      _$hypothesisSetEventCauseEnum_created,
    ]);

Serializer<HypothesisSetEventStatusEnum>
_$hypothesisSetEventStatusEnumSerializer =
    _$HypothesisSetEventStatusEnumSerializer();
Serializer<HypothesisSetEventCauseEnum>
_$hypothesisSetEventCauseEnumSerializer =
    _$HypothesisSetEventCauseEnumSerializer();

class _$HypothesisSetEventStatusEnumSerializer
    implements PrimitiveSerializer<HypothesisSetEventStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'resolved': 'resolved',
    'archived': 'archived',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'resolved': 'resolved',
    'archived': 'archived',
  };

  @override
  final Iterable<Type> types = const <Type>[HypothesisSetEventStatusEnum];
  @override
  final String wireName = 'HypothesisSetEventStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    HypothesisSetEventStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  HypothesisSetEventStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => HypothesisSetEventStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$HypothesisSetEventCauseEnumSerializer
    implements PrimitiveSerializer<HypothesisSetEventCauseEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'indicatorObserved': 'indicator-observed',
    'indicatorAbsent': 'indicator-absent',
    'evidenceAdded': 'evidence-added',
    'evidenceRemoved': 'evidence-removed',
    'baseRateRefresh': 'base-rate-refresh',
    'review': 'review',
    'operator_': 'operator',
    'created': 'created',
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
  };

  @override
  final Iterable<Type> types = const <Type>[HypothesisSetEventCauseEnum];
  @override
  final String wireName = 'HypothesisSetEventCauseEnum';

  @override
  Object serialize(
    Serializers serializers,
    HypothesisSetEventCauseEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  HypothesisSetEventCauseEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => HypothesisSetEventCauseEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$HypothesisSetEvent extends HypothesisSetEvent {
  @override
  final String setId;
  @override
  final int version;
  @override
  final String? question;
  @override
  final HypothesisSetEventStatusEnum status;
  @override
  final String? revisionId;
  @override
  final HypothesisSetEventCauseEnum? cause;
  @override
  final BuiltList<HypothesisProbabilityState>? hypotheses;
  @override
  final BuiltList<HypothesisSetEventBandChangesInner>? bandChanges;
  @override
  final bool? private;
  @override
  final DateTime at;

  factory _$HypothesisSetEvent([
    void Function(HypothesisSetEventBuilder)? updates,
  ]) => (HypothesisSetEventBuilder()..update(updates))._build();

  _$HypothesisSetEvent._({
    required this.setId,
    required this.version,
    this.question,
    required this.status,
    this.revisionId,
    this.cause,
    this.hypotheses,
    this.bandChanges,
    this.private,
    required this.at,
  }) : super._();
  @override
  HypothesisSetEvent rebuild(
    void Function(HypothesisSetEventBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  HypothesisSetEventBuilder toBuilder() =>
      HypothesisSetEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HypothesisSetEvent &&
        setId == other.setId &&
        version == other.version &&
        question == other.question &&
        status == other.status &&
        revisionId == other.revisionId &&
        cause == other.cause &&
        hypotheses == other.hypotheses &&
        bandChanges == other.bandChanges &&
        private == other.private &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, setId.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, question.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, revisionId.hashCode);
    _$hash = $jc(_$hash, cause.hashCode);
    _$hash = $jc(_$hash, hypotheses.hashCode);
    _$hash = $jc(_$hash, bandChanges.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HypothesisSetEvent')
          ..add('setId', setId)
          ..add('version', version)
          ..add('question', question)
          ..add('status', status)
          ..add('revisionId', revisionId)
          ..add('cause', cause)
          ..add('hypotheses', hypotheses)
          ..add('bandChanges', bandChanges)
          ..add('private', private)
          ..add('at', at))
        .toString();
  }
}

class HypothesisSetEventBuilder
    implements Builder<HypothesisSetEvent, HypothesisSetEventBuilder> {
  _$HypothesisSetEvent? _$v;

  String? _setId;
  String? get setId => _$this._setId;
  set setId(String? setId) => _$this._setId = setId;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  String? _question;
  String? get question => _$this._question;
  set question(String? question) => _$this._question = question;

  HypothesisSetEventStatusEnum? _status;
  HypothesisSetEventStatusEnum? get status => _$this._status;
  set status(HypothesisSetEventStatusEnum? status) => _$this._status = status;

  String? _revisionId;
  String? get revisionId => _$this._revisionId;
  set revisionId(String? revisionId) => _$this._revisionId = revisionId;

  HypothesisSetEventCauseEnum? _cause;
  HypothesisSetEventCauseEnum? get cause => _$this._cause;
  set cause(HypothesisSetEventCauseEnum? cause) => _$this._cause = cause;

  ListBuilder<HypothesisProbabilityState>? _hypotheses;
  ListBuilder<HypothesisProbabilityState> get hypotheses =>
      _$this._hypotheses ??= ListBuilder<HypothesisProbabilityState>();
  set hypotheses(ListBuilder<HypothesisProbabilityState>? hypotheses) =>
      _$this._hypotheses = hypotheses;

  ListBuilder<HypothesisSetEventBandChangesInner>? _bandChanges;
  ListBuilder<HypothesisSetEventBandChangesInner> get bandChanges =>
      _$this._bandChanges ??= ListBuilder<HypothesisSetEventBandChangesInner>();
  set bandChanges(
    ListBuilder<HypothesisSetEventBandChangesInner>? bandChanges,
  ) => _$this._bandChanges = bandChanges;

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  HypothesisSetEventBuilder() {
    HypothesisSetEvent._defaults(this);
  }

  HypothesisSetEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _setId = $v.setId;
      _version = $v.version;
      _question = $v.question;
      _status = $v.status;
      _revisionId = $v.revisionId;
      _cause = $v.cause;
      _hypotheses = $v.hypotheses?.toBuilder();
      _bandChanges = $v.bandChanges?.toBuilder();
      _private = $v.private;
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HypothesisSetEvent other) {
    _$v = other as _$HypothesisSetEvent;
  }

  @override
  void update(void Function(HypothesisSetEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HypothesisSetEvent build() => _build();

  _$HypothesisSetEvent _build() {
    _$HypothesisSetEvent _$result;
    try {
      _$result =
          _$v ??
          _$HypothesisSetEvent._(
            setId: BuiltValueNullFieldError.checkNotNull(
              setId,
              r'HypothesisSetEvent',
              'setId',
            ),
            version: BuiltValueNullFieldError.checkNotNull(
              version,
              r'HypothesisSetEvent',
              'version',
            ),
            question: question,
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'HypothesisSetEvent',
              'status',
            ),
            revisionId: revisionId,
            cause: cause,
            hypotheses: _hypotheses?.build(),
            bandChanges: _bandChanges?.build(),
            private: private,
            at: BuiltValueNullFieldError.checkNotNull(
              at,
              r'HypothesisSetEvent',
              'at',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hypotheses';
        _hypotheses?.build();
        _$failedField = 'bandChanges';
        _bandChanges?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'HypothesisSetEvent',
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
