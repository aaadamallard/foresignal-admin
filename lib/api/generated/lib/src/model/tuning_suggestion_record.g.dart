// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tuning_suggestion_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TuningSuggestionRecordKindEnum
_$tuningSuggestionRecordKindEnum_raiseThreshold =
    const TuningSuggestionRecordKindEnum._('raiseThreshold');
const TuningSuggestionRecordKindEnum
_$tuningSuggestionRecordKindEnum_lowerThreshold =
    const TuningSuggestionRecordKindEnum._('lowerThreshold');
const TuningSuggestionRecordKindEnum
_$tuningSuggestionRecordKindEnum_addCooldown =
    const TuningSuggestionRecordKindEnum._('addCooldown');
const TuningSuggestionRecordKindEnum
_$tuningSuggestionRecordKindEnum_switchToEnter =
    const TuningSuggestionRecordKindEnum._('switchToEnter');
const TuningSuggestionRecordKindEnum
_$tuningSuggestionRecordKindEnum_addEdgeMinInterval =
    const TuningSuggestionRecordKindEnum._('addEdgeMinInterval');
const TuningSuggestionRecordKindEnum
_$tuningSuggestionRecordKindEnum_shrinkGeofence =
    const TuningSuggestionRecordKindEnum._('shrinkGeofence');
const TuningSuggestionRecordKindEnum
_$tuningSuggestionRecordKindEnum_lowerAnomalySensitivity =
    const TuningSuggestionRecordKindEnum._('lowerAnomalySensitivity');
const TuningSuggestionRecordKindEnum
_$tuningSuggestionRecordKindEnum_ACTIVE_WINDOW =
    const TuningSuggestionRecordKindEnum._('ACTIVE_WINDOW');
const TuningSuggestionRecordKindEnum
_$tuningSuggestionRecordKindEnum_SEVERITY_UP =
    const TuningSuggestionRecordKindEnum._('SEVERITY_UP');
const TuningSuggestionRecordKindEnum
_$tuningSuggestionRecordKindEnum_SEVERITY_DOWN =
    const TuningSuggestionRecordKindEnum._('SEVERITY_DOWN');

TuningSuggestionRecordKindEnum _$tuningSuggestionRecordKindEnumValueOf(
  String name,
) {
  switch (name) {
    case 'raiseThreshold':
      return _$tuningSuggestionRecordKindEnum_raiseThreshold;
    case 'lowerThreshold':
      return _$tuningSuggestionRecordKindEnum_lowerThreshold;
    case 'addCooldown':
      return _$tuningSuggestionRecordKindEnum_addCooldown;
    case 'switchToEnter':
      return _$tuningSuggestionRecordKindEnum_switchToEnter;
    case 'addEdgeMinInterval':
      return _$tuningSuggestionRecordKindEnum_addEdgeMinInterval;
    case 'shrinkGeofence':
      return _$tuningSuggestionRecordKindEnum_shrinkGeofence;
    case 'lowerAnomalySensitivity':
      return _$tuningSuggestionRecordKindEnum_lowerAnomalySensitivity;
    case 'ACTIVE_WINDOW':
      return _$tuningSuggestionRecordKindEnum_ACTIVE_WINDOW;
    case 'SEVERITY_UP':
      return _$tuningSuggestionRecordKindEnum_SEVERITY_UP;
    case 'SEVERITY_DOWN':
      return _$tuningSuggestionRecordKindEnum_SEVERITY_DOWN;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TuningSuggestionRecordKindEnum>
_$tuningSuggestionRecordKindEnumValues =
    BuiltSet<TuningSuggestionRecordKindEnum>(
      const <TuningSuggestionRecordKindEnum>[
        _$tuningSuggestionRecordKindEnum_raiseThreshold,
        _$tuningSuggestionRecordKindEnum_lowerThreshold,
        _$tuningSuggestionRecordKindEnum_addCooldown,
        _$tuningSuggestionRecordKindEnum_switchToEnter,
        _$tuningSuggestionRecordKindEnum_addEdgeMinInterval,
        _$tuningSuggestionRecordKindEnum_shrinkGeofence,
        _$tuningSuggestionRecordKindEnum_lowerAnomalySensitivity,
        _$tuningSuggestionRecordKindEnum_ACTIVE_WINDOW,
        _$tuningSuggestionRecordKindEnum_SEVERITY_UP,
        _$tuningSuggestionRecordKindEnum_SEVERITY_DOWN,
      ],
    );

const TuningSuggestionRecordStatusEnum _$tuningSuggestionRecordStatusEnum_OPEN =
    const TuningSuggestionRecordStatusEnum._('OPEN');
const TuningSuggestionRecordStatusEnum
_$tuningSuggestionRecordStatusEnum_APPLIED =
    const TuningSuggestionRecordStatusEnum._('APPLIED');
const TuningSuggestionRecordStatusEnum
_$tuningSuggestionRecordStatusEnum_DISMISSED =
    const TuningSuggestionRecordStatusEnum._('DISMISSED');
const TuningSuggestionRecordStatusEnum
_$tuningSuggestionRecordStatusEnum_STALE =
    const TuningSuggestionRecordStatusEnum._('STALE');

TuningSuggestionRecordStatusEnum _$tuningSuggestionRecordStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'OPEN':
      return _$tuningSuggestionRecordStatusEnum_OPEN;
    case 'APPLIED':
      return _$tuningSuggestionRecordStatusEnum_APPLIED;
    case 'DISMISSED':
      return _$tuningSuggestionRecordStatusEnum_DISMISSED;
    case 'STALE':
      return _$tuningSuggestionRecordStatusEnum_STALE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TuningSuggestionRecordStatusEnum>
_$tuningSuggestionRecordStatusEnumValues =
    BuiltSet<TuningSuggestionRecordStatusEnum>(
      const <TuningSuggestionRecordStatusEnum>[
        _$tuningSuggestionRecordStatusEnum_OPEN,
        _$tuningSuggestionRecordStatusEnum_APPLIED,
        _$tuningSuggestionRecordStatusEnum_DISMISSED,
        _$tuningSuggestionRecordStatusEnum_STALE,
      ],
    );

Serializer<TuningSuggestionRecordKindEnum>
_$tuningSuggestionRecordKindEnumSerializer =
    _$TuningSuggestionRecordKindEnumSerializer();
Serializer<TuningSuggestionRecordStatusEnum>
_$tuningSuggestionRecordStatusEnumSerializer =
    _$TuningSuggestionRecordStatusEnumSerializer();

class _$TuningSuggestionRecordKindEnumSerializer
    implements PrimitiveSerializer<TuningSuggestionRecordKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'raiseThreshold': 'raise-threshold',
    'lowerThreshold': 'lower-threshold',
    'addCooldown': 'add-cooldown',
    'switchToEnter': 'switch-to-enter',
    'addEdgeMinInterval': 'add-edge-min-interval',
    'shrinkGeofence': 'shrink-geofence',
    'lowerAnomalySensitivity': 'lower-anomaly-sensitivity',
    'ACTIVE_WINDOW': 'ACTIVE_WINDOW',
    'SEVERITY_UP': 'SEVERITY_UP',
    'SEVERITY_DOWN': 'SEVERITY_DOWN',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'raise-threshold': 'raiseThreshold',
    'lower-threshold': 'lowerThreshold',
    'add-cooldown': 'addCooldown',
    'switch-to-enter': 'switchToEnter',
    'add-edge-min-interval': 'addEdgeMinInterval',
    'shrink-geofence': 'shrinkGeofence',
    'lower-anomaly-sensitivity': 'lowerAnomalySensitivity',
    'ACTIVE_WINDOW': 'ACTIVE_WINDOW',
    'SEVERITY_UP': 'SEVERITY_UP',
    'SEVERITY_DOWN': 'SEVERITY_DOWN',
  };

  @override
  final Iterable<Type> types = const <Type>[TuningSuggestionRecordKindEnum];
  @override
  final String wireName = 'TuningSuggestionRecordKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    TuningSuggestionRecordKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TuningSuggestionRecordKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TuningSuggestionRecordKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$TuningSuggestionRecordStatusEnumSerializer
    implements PrimitiveSerializer<TuningSuggestionRecordStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'OPEN': 'OPEN',
    'APPLIED': 'APPLIED',
    'DISMISSED': 'DISMISSED',
    'STALE': 'STALE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'OPEN': 'OPEN',
    'APPLIED': 'APPLIED',
    'DISMISSED': 'DISMISSED',
    'STALE': 'STALE',
  };

  @override
  final Iterable<Type> types = const <Type>[TuningSuggestionRecordStatusEnum];
  @override
  final String wireName = 'TuningSuggestionRecordStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    TuningSuggestionRecordStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TuningSuggestionRecordStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TuningSuggestionRecordStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$TuningSuggestionRecord extends TuningSuggestionRecord {
  @override
  final String id;
  @override
  final TuningSuggestionRecordKindEnum kind;
  @override
  final String rationale;
  @override
  final BuiltMap<String, JsonObject?> patch_;
  @override
  final TuningSuggestionExpectedEffect? expectedEffect;
  @override
  final BuiltList<Caveat>? caveats;
  @override
  final String ruleId;
  @override
  final String ruleRev;
  @override
  final TuningSuggestionRecordStatusEnum status;
  @override
  final DateTime createdAt;
  @override
  final String? decidedBy;
  @override
  final DateTime? decidedAt;
  @override
  final String? decisionReason;
  @override
  final String? explanation;

  factory _$TuningSuggestionRecord([
    void Function(TuningSuggestionRecordBuilder)? updates,
  ]) => (TuningSuggestionRecordBuilder()..update(updates))._build();

  _$TuningSuggestionRecord._({
    required this.id,
    required this.kind,
    required this.rationale,
    required this.patch_,
    this.expectedEffect,
    this.caveats,
    required this.ruleId,
    required this.ruleRev,
    required this.status,
    required this.createdAt,
    this.decidedBy,
    this.decidedAt,
    this.decisionReason,
    this.explanation,
  }) : super._();
  @override
  TuningSuggestionRecord rebuild(
    void Function(TuningSuggestionRecordBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TuningSuggestionRecordBuilder toBuilder() =>
      TuningSuggestionRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TuningSuggestionRecord &&
        id == other.id &&
        kind == other.kind &&
        rationale == other.rationale &&
        patch_ == other.patch_ &&
        expectedEffect == other.expectedEffect &&
        caveats == other.caveats &&
        ruleId == other.ruleId &&
        ruleRev == other.ruleRev &&
        status == other.status &&
        createdAt == other.createdAt &&
        decidedBy == other.decidedBy &&
        decidedAt == other.decidedAt &&
        decisionReason == other.decisionReason &&
        explanation == other.explanation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, rationale.hashCode);
    _$hash = $jc(_$hash, patch_.hashCode);
    _$hash = $jc(_$hash, expectedEffect.hashCode);
    _$hash = $jc(_$hash, caveats.hashCode);
    _$hash = $jc(_$hash, ruleId.hashCode);
    _$hash = $jc(_$hash, ruleRev.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, decidedBy.hashCode);
    _$hash = $jc(_$hash, decidedAt.hashCode);
    _$hash = $jc(_$hash, decisionReason.hashCode);
    _$hash = $jc(_$hash, explanation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TuningSuggestionRecord')
          ..add('id', id)
          ..add('kind', kind)
          ..add('rationale', rationale)
          ..add('patch_', patch_)
          ..add('expectedEffect', expectedEffect)
          ..add('caveats', caveats)
          ..add('ruleId', ruleId)
          ..add('ruleRev', ruleRev)
          ..add('status', status)
          ..add('createdAt', createdAt)
          ..add('decidedBy', decidedBy)
          ..add('decidedAt', decidedAt)
          ..add('decisionReason', decisionReason)
          ..add('explanation', explanation))
        .toString();
  }
}

class TuningSuggestionRecordBuilder
    implements Builder<TuningSuggestionRecord, TuningSuggestionRecordBuilder> {
  _$TuningSuggestionRecord? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  TuningSuggestionRecordKindEnum? _kind;
  TuningSuggestionRecordKindEnum? get kind => _$this._kind;
  set kind(TuningSuggestionRecordKindEnum? kind) => _$this._kind = kind;

  String? _rationale;
  String? get rationale => _$this._rationale;
  set rationale(String? rationale) => _$this._rationale = rationale;

  MapBuilder<String, JsonObject?>? _patch_;
  MapBuilder<String, JsonObject?> get patch_ =>
      _$this._patch_ ??= MapBuilder<String, JsonObject?>();
  set patch_(MapBuilder<String, JsonObject?>? patch_) =>
      _$this._patch_ = patch_;

  TuningSuggestionExpectedEffectBuilder? _expectedEffect;
  TuningSuggestionExpectedEffectBuilder get expectedEffect =>
      _$this._expectedEffect ??= TuningSuggestionExpectedEffectBuilder();
  set expectedEffect(TuningSuggestionExpectedEffectBuilder? expectedEffect) =>
      _$this._expectedEffect = expectedEffect;

  ListBuilder<Caveat>? _caveats;
  ListBuilder<Caveat> get caveats => _$this._caveats ??= ListBuilder<Caveat>();
  set caveats(ListBuilder<Caveat>? caveats) => _$this._caveats = caveats;

  String? _ruleId;
  String? get ruleId => _$this._ruleId;
  set ruleId(String? ruleId) => _$this._ruleId = ruleId;

  String? _ruleRev;
  String? get ruleRev => _$this._ruleRev;
  set ruleRev(String? ruleRev) => _$this._ruleRev = ruleRev;

  TuningSuggestionRecordStatusEnum? _status;
  TuningSuggestionRecordStatusEnum? get status => _$this._status;
  set status(TuningSuggestionRecordStatusEnum? status) =>
      _$this._status = status;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _decidedBy;
  String? get decidedBy => _$this._decidedBy;
  set decidedBy(String? decidedBy) => _$this._decidedBy = decidedBy;

  DateTime? _decidedAt;
  DateTime? get decidedAt => _$this._decidedAt;
  set decidedAt(DateTime? decidedAt) => _$this._decidedAt = decidedAt;

  String? _decisionReason;
  String? get decisionReason => _$this._decisionReason;
  set decisionReason(String? decisionReason) =>
      _$this._decisionReason = decisionReason;

  String? _explanation;
  String? get explanation => _$this._explanation;
  set explanation(String? explanation) => _$this._explanation = explanation;

  TuningSuggestionRecordBuilder() {
    TuningSuggestionRecord._defaults(this);
  }

  TuningSuggestionRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _kind = $v.kind;
      _rationale = $v.rationale;
      _patch_ = $v.patch_.toBuilder();
      _expectedEffect = $v.expectedEffect?.toBuilder();
      _caveats = $v.caveats?.toBuilder();
      _ruleId = $v.ruleId;
      _ruleRev = $v.ruleRev;
      _status = $v.status;
      _createdAt = $v.createdAt;
      _decidedBy = $v.decidedBy;
      _decidedAt = $v.decidedAt;
      _decisionReason = $v.decisionReason;
      _explanation = $v.explanation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TuningSuggestionRecord other) {
    _$v = other as _$TuningSuggestionRecord;
  }

  @override
  void update(void Function(TuningSuggestionRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TuningSuggestionRecord build() => _build();

  _$TuningSuggestionRecord _build() {
    _$TuningSuggestionRecord _$result;
    try {
      _$result =
          _$v ??
          _$TuningSuggestionRecord._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'TuningSuggestionRecord',
              'id',
            ),
            kind: BuiltValueNullFieldError.checkNotNull(
              kind,
              r'TuningSuggestionRecord',
              'kind',
            ),
            rationale: BuiltValueNullFieldError.checkNotNull(
              rationale,
              r'TuningSuggestionRecord',
              'rationale',
            ),
            patch_: patch_.build(),
            expectedEffect: _expectedEffect?.build(),
            caveats: _caveats?.build(),
            ruleId: BuiltValueNullFieldError.checkNotNull(
              ruleId,
              r'TuningSuggestionRecord',
              'ruleId',
            ),
            ruleRev: BuiltValueNullFieldError.checkNotNull(
              ruleRev,
              r'TuningSuggestionRecord',
              'ruleRev',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'TuningSuggestionRecord',
              'status',
            ),
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'TuningSuggestionRecord',
              'createdAt',
            ),
            decidedBy: decidedBy,
            decidedAt: decidedAt,
            decisionReason: decisionReason,
            explanation: explanation,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patch_';
        patch_.build();
        _$failedField = 'expectedEffect';
        _expectedEffect?.build();
        _$failedField = 'caveats';
        _caveats?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TuningSuggestionRecord',
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
