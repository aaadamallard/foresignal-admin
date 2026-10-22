// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_comparison_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SocialComparisonEventEventEnum
_$socialComparisonEventEventEnum_comparisonPeriodUpdated =
    const SocialComparisonEventEventEnum._('comparisonPeriodUpdated');

SocialComparisonEventEventEnum _$socialComparisonEventEventEnumValueOf(
  String name,
) {
  switch (name) {
    case 'comparisonPeriodUpdated':
      return _$socialComparisonEventEventEnum_comparisonPeriodUpdated;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SocialComparisonEventEventEnum>
_$socialComparisonEventEventEnumValues =
    BuiltSet<SocialComparisonEventEventEnum>(
      const <SocialComparisonEventEventEnum>[
        _$socialComparisonEventEventEnum_comparisonPeriodUpdated,
      ],
    );

const SocialComparisonEventStatusEnum
_$socialComparisonEventStatusEnum_pending =
    const SocialComparisonEventStatusEnum._('pending');
const SocialComparisonEventStatusEnum
_$socialComparisonEventStatusEnum_corroborated =
    const SocialComparisonEventStatusEnum._('corroborated');
const SocialComparisonEventStatusEnum
_$socialComparisonEventStatusEnum_unobserved =
    const SocialComparisonEventStatusEnum._('unobserved');
const SocialComparisonEventStatusEnum
_$socialComparisonEventStatusEnum_contradicted =
    const SocialComparisonEventStatusEnum._('contradicted');
const SocialComparisonEventStatusEnum
_$socialComparisonEventStatusEnum_insufficientCoverage =
    const SocialComparisonEventStatusEnum._('insufficientCoverage');

SocialComparisonEventStatusEnum _$socialComparisonEventStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'pending':
      return _$socialComparisonEventStatusEnum_pending;
    case 'corroborated':
      return _$socialComparisonEventStatusEnum_corroborated;
    case 'unobserved':
      return _$socialComparisonEventStatusEnum_unobserved;
    case 'contradicted':
      return _$socialComparisonEventStatusEnum_contradicted;
    case 'insufficientCoverage':
      return _$socialComparisonEventStatusEnum_insufficientCoverage;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SocialComparisonEventStatusEnum>
_$socialComparisonEventStatusEnumValues =
    BuiltSet<SocialComparisonEventStatusEnum>(
      const <SocialComparisonEventStatusEnum>[
        _$socialComparisonEventStatusEnum_pending,
        _$socialComparisonEventStatusEnum_corroborated,
        _$socialComparisonEventStatusEnum_unobserved,
        _$socialComparisonEventStatusEnum_contradicted,
        _$socialComparisonEventStatusEnum_insufficientCoverage,
      ],
    );

const SocialComparisonEventPreviousStatusEnum
_$socialComparisonEventPreviousStatusEnum_pending =
    const SocialComparisonEventPreviousStatusEnum._('pending');
const SocialComparisonEventPreviousStatusEnum
_$socialComparisonEventPreviousStatusEnum_corroborated =
    const SocialComparisonEventPreviousStatusEnum._('corroborated');
const SocialComparisonEventPreviousStatusEnum
_$socialComparisonEventPreviousStatusEnum_unobserved =
    const SocialComparisonEventPreviousStatusEnum._('unobserved');
const SocialComparisonEventPreviousStatusEnum
_$socialComparisonEventPreviousStatusEnum_contradicted =
    const SocialComparisonEventPreviousStatusEnum._('contradicted');
const SocialComparisonEventPreviousStatusEnum
_$socialComparisonEventPreviousStatusEnum_insufficientCoverage =
    const SocialComparisonEventPreviousStatusEnum._('insufficientCoverage');

SocialComparisonEventPreviousStatusEnum
_$socialComparisonEventPreviousStatusEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$socialComparisonEventPreviousStatusEnum_pending;
    case 'corroborated':
      return _$socialComparisonEventPreviousStatusEnum_corroborated;
    case 'unobserved':
      return _$socialComparisonEventPreviousStatusEnum_unobserved;
    case 'contradicted':
      return _$socialComparisonEventPreviousStatusEnum_contradicted;
    case 'insufficientCoverage':
      return _$socialComparisonEventPreviousStatusEnum_insufficientCoverage;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SocialComparisonEventPreviousStatusEnum>
_$socialComparisonEventPreviousStatusEnumValues =
    BuiltSet<SocialComparisonEventPreviousStatusEnum>(
      const <SocialComparisonEventPreviousStatusEnum>[
        _$socialComparisonEventPreviousStatusEnum_pending,
        _$socialComparisonEventPreviousStatusEnum_corroborated,
        _$socialComparisonEventPreviousStatusEnum_unobserved,
        _$socialComparisonEventPreviousStatusEnum_contradicted,
        _$socialComparisonEventPreviousStatusEnum_insufficientCoverage,
      ],
    );

Serializer<SocialComparisonEventEventEnum>
_$socialComparisonEventEventEnumSerializer =
    _$SocialComparisonEventEventEnumSerializer();
Serializer<SocialComparisonEventStatusEnum>
_$socialComparisonEventStatusEnumSerializer =
    _$SocialComparisonEventStatusEnumSerializer();
Serializer<SocialComparisonEventPreviousStatusEnum>
_$socialComparisonEventPreviousStatusEnumSerializer =
    _$SocialComparisonEventPreviousStatusEnumSerializer();

class _$SocialComparisonEventEventEnumSerializer
    implements PrimitiveSerializer<SocialComparisonEventEventEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'comparisonPeriodUpdated': 'comparison.updated',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'comparison.updated': 'comparisonPeriodUpdated',
  };

  @override
  final Iterable<Type> types = const <Type>[SocialComparisonEventEventEnum];
  @override
  final String wireName = 'SocialComparisonEventEventEnum';

  @override
  Object serialize(
    Serializers serializers,
    SocialComparisonEventEventEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SocialComparisonEventEventEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SocialComparisonEventEventEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SocialComparisonEventStatusEnumSerializer
    implements PrimitiveSerializer<SocialComparisonEventStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'corroborated': 'corroborated',
    'unobserved': 'unobserved',
    'contradicted': 'contradicted',
    'insufficientCoverage': 'insufficient-coverage',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'corroborated': 'corroborated',
    'unobserved': 'unobserved',
    'contradicted': 'contradicted',
    'insufficient-coverage': 'insufficientCoverage',
  };

  @override
  final Iterable<Type> types = const <Type>[SocialComparisonEventStatusEnum];
  @override
  final String wireName = 'SocialComparisonEventStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    SocialComparisonEventStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SocialComparisonEventStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SocialComparisonEventStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SocialComparisonEventPreviousStatusEnumSerializer
    implements PrimitiveSerializer<SocialComparisonEventPreviousStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'corroborated': 'corroborated',
    'unobserved': 'unobserved',
    'contradicted': 'contradicted',
    'insufficientCoverage': 'insufficient-coverage',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'corroborated': 'corroborated',
    'unobserved': 'unobserved',
    'contradicted': 'contradicted',
    'insufficient-coverage': 'insufficientCoverage',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SocialComparisonEventPreviousStatusEnum,
  ];
  @override
  final String wireName = 'SocialComparisonEventPreviousStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    SocialComparisonEventPreviousStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SocialComparisonEventPreviousStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SocialComparisonEventPreviousStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SocialComparisonEvent extends SocialComparisonEvent {
  @override
  final SocialComparisonEventEventEnum event;
  @override
  final String comparisonId;
  @override
  final String claimId;
  @override
  final String narrativeId;
  @override
  final SocialComparisonEventStatusEnum status;
  @override
  final SocialComparisonEventPreviousStatusEnum? previousStatus;
  @override
  final int revision;
  @override
  final DateTime evaluatedAt;

  factory _$SocialComparisonEvent([
    void Function(SocialComparisonEventBuilder)? updates,
  ]) => (SocialComparisonEventBuilder()..update(updates))._build();

  _$SocialComparisonEvent._({
    required this.event,
    required this.comparisonId,
    required this.claimId,
    required this.narrativeId,
    required this.status,
    this.previousStatus,
    required this.revision,
    required this.evaluatedAt,
  }) : super._();
  @override
  SocialComparisonEvent rebuild(
    void Function(SocialComparisonEventBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SocialComparisonEventBuilder toBuilder() =>
      SocialComparisonEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialComparisonEvent &&
        event == other.event &&
        comparisonId == other.comparisonId &&
        claimId == other.claimId &&
        narrativeId == other.narrativeId &&
        status == other.status &&
        previousStatus == other.previousStatus &&
        revision == other.revision &&
        evaluatedAt == other.evaluatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, comparisonId.hashCode);
    _$hash = $jc(_$hash, claimId.hashCode);
    _$hash = $jc(_$hash, narrativeId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, previousStatus.hashCode);
    _$hash = $jc(_$hash, revision.hashCode);
    _$hash = $jc(_$hash, evaluatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialComparisonEvent')
          ..add('event', event)
          ..add('comparisonId', comparisonId)
          ..add('claimId', claimId)
          ..add('narrativeId', narrativeId)
          ..add('status', status)
          ..add('previousStatus', previousStatus)
          ..add('revision', revision)
          ..add('evaluatedAt', evaluatedAt))
        .toString();
  }
}

class SocialComparisonEventBuilder
    implements Builder<SocialComparisonEvent, SocialComparisonEventBuilder> {
  _$SocialComparisonEvent? _$v;

  SocialComparisonEventEventEnum? _event;
  SocialComparisonEventEventEnum? get event => _$this._event;
  set event(SocialComparisonEventEventEnum? event) => _$this._event = event;

  String? _comparisonId;
  String? get comparisonId => _$this._comparisonId;
  set comparisonId(String? comparisonId) => _$this._comparisonId = comparisonId;

  String? _claimId;
  String? get claimId => _$this._claimId;
  set claimId(String? claimId) => _$this._claimId = claimId;

  String? _narrativeId;
  String? get narrativeId => _$this._narrativeId;
  set narrativeId(String? narrativeId) => _$this._narrativeId = narrativeId;

  SocialComparisonEventStatusEnum? _status;
  SocialComparisonEventStatusEnum? get status => _$this._status;
  set status(SocialComparisonEventStatusEnum? status) =>
      _$this._status = status;

  SocialComparisonEventPreviousStatusEnum? _previousStatus;
  SocialComparisonEventPreviousStatusEnum? get previousStatus =>
      _$this._previousStatus;
  set previousStatus(SocialComparisonEventPreviousStatusEnum? previousStatus) =>
      _$this._previousStatus = previousStatus;

  int? _revision;
  int? get revision => _$this._revision;
  set revision(int? revision) => _$this._revision = revision;

  DateTime? _evaluatedAt;
  DateTime? get evaluatedAt => _$this._evaluatedAt;
  set evaluatedAt(DateTime? evaluatedAt) => _$this._evaluatedAt = evaluatedAt;

  SocialComparisonEventBuilder() {
    SocialComparisonEvent._defaults(this);
  }

  SocialComparisonEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _event = $v.event;
      _comparisonId = $v.comparisonId;
      _claimId = $v.claimId;
      _narrativeId = $v.narrativeId;
      _status = $v.status;
      _previousStatus = $v.previousStatus;
      _revision = $v.revision;
      _evaluatedAt = $v.evaluatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialComparisonEvent other) {
    _$v = other as _$SocialComparisonEvent;
  }

  @override
  void update(void Function(SocialComparisonEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialComparisonEvent build() => _build();

  _$SocialComparisonEvent _build() {
    final _$result =
        _$v ??
        _$SocialComparisonEvent._(
          event: BuiltValueNullFieldError.checkNotNull(
            event,
            r'SocialComparisonEvent',
            'event',
          ),
          comparisonId: BuiltValueNullFieldError.checkNotNull(
            comparisonId,
            r'SocialComparisonEvent',
            'comparisonId',
          ),
          claimId: BuiltValueNullFieldError.checkNotNull(
            claimId,
            r'SocialComparisonEvent',
            'claimId',
          ),
          narrativeId: BuiltValueNullFieldError.checkNotNull(
            narrativeId,
            r'SocialComparisonEvent',
            'narrativeId',
          ),
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'SocialComparisonEvent',
            'status',
          ),
          previousStatus: previousStatus,
          revision: BuiltValueNullFieldError.checkNotNull(
            revision,
            r'SocialComparisonEvent',
            'revision',
          ),
          evaluatedAt: BuiltValueNullFieldError.checkNotNull(
            evaluatedAt,
            r'SocialComparisonEvent',
            'evaluatedAt',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
