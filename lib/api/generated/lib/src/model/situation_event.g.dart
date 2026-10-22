// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SituationEventEventEnum _$situationEventEventEnum_situationPeriodCreated =
    const SituationEventEventEnum._('situationPeriodCreated');
const SituationEventEventEnum _$situationEventEventEnum_situationPeriodUpdated =
    const SituationEventEventEnum._('situationPeriodUpdated');
const SituationEventEventEnum
_$situationEventEventEnum_situationPeriodActivated =
    const SituationEventEventEnum._('situationPeriodActivated');
const SituationEventEventEnum
_$situationEventEventEnum_situationPeriodEscalated =
    const SituationEventEventEnum._('situationPeriodEscalated');
const SituationEventEventEnum _$situationEventEventEnum_situationPeriodDormant =
    const SituationEventEventEnum._('situationPeriodDormant');
const SituationEventEventEnum _$situationEventEventEnum_situationPeriodClosed =
    const SituationEventEventEnum._('situationPeriodClosed');
const SituationEventEventEnum _$situationEventEventEnum_situationPeriodMerged =
    const SituationEventEventEnum._('situationPeriodMerged');

SituationEventEventEnum _$situationEventEventEnumValueOf(String name) {
  switch (name) {
    case 'situationPeriodCreated':
      return _$situationEventEventEnum_situationPeriodCreated;
    case 'situationPeriodUpdated':
      return _$situationEventEventEnum_situationPeriodUpdated;
    case 'situationPeriodActivated':
      return _$situationEventEventEnum_situationPeriodActivated;
    case 'situationPeriodEscalated':
      return _$situationEventEventEnum_situationPeriodEscalated;
    case 'situationPeriodDormant':
      return _$situationEventEventEnum_situationPeriodDormant;
    case 'situationPeriodClosed':
      return _$situationEventEventEnum_situationPeriodClosed;
    case 'situationPeriodMerged':
      return _$situationEventEventEnum_situationPeriodMerged;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SituationEventEventEnum> _$situationEventEventEnumValues =
    BuiltSet<SituationEventEventEnum>(const <SituationEventEventEnum>[
      _$situationEventEventEnum_situationPeriodCreated,
      _$situationEventEventEnum_situationPeriodUpdated,
      _$situationEventEventEnum_situationPeriodActivated,
      _$situationEventEventEnum_situationPeriodEscalated,
      _$situationEventEventEnum_situationPeriodDormant,
      _$situationEventEventEnum_situationPeriodClosed,
      _$situationEventEventEnum_situationPeriodMerged,
    ]);

Serializer<SituationEventEventEnum> _$situationEventEventEnumSerializer =
    _$SituationEventEventEnumSerializer();

class _$SituationEventEventEnumSerializer
    implements PrimitiveSerializer<SituationEventEventEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'situationPeriodCreated': 'situation.created',
    'situationPeriodUpdated': 'situation.updated',
    'situationPeriodActivated': 'situation.activated',
    'situationPeriodEscalated': 'situation.escalated',
    'situationPeriodDormant': 'situation.dormant',
    'situationPeriodClosed': 'situation.closed',
    'situationPeriodMerged': 'situation.merged',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'situation.created': 'situationPeriodCreated',
    'situation.updated': 'situationPeriodUpdated',
    'situation.activated': 'situationPeriodActivated',
    'situation.escalated': 'situationPeriodEscalated',
    'situation.dormant': 'situationPeriodDormant',
    'situation.closed': 'situationPeriodClosed',
    'situation.merged': 'situationPeriodMerged',
  };

  @override
  final Iterable<Type> types = const <Type>[SituationEventEventEnum];
  @override
  final String wireName = 'SituationEventEventEnum';

  @override
  Object serialize(
    Serializers serializers,
    SituationEventEventEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SituationEventEventEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SituationEventEventEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SituationEvent extends SituationEvent {
  @override
  final SituationEventEventEnum event;
  @override
  final SituationSummary situation;
  @override
  final int version;
  @override
  final SituationStatus? previousStatus;
  @override
  final Severity? previousSeverity;
  @override
  final String? mergedInto;
  @override
  final DateTime at;

  factory _$SituationEvent([void Function(SituationEventBuilder)? updates]) =>
      (SituationEventBuilder()..update(updates))._build();

  _$SituationEvent._({
    required this.event,
    required this.situation,
    required this.version,
    this.previousStatus,
    this.previousSeverity,
    this.mergedInto,
    required this.at,
  }) : super._();
  @override
  SituationEvent rebuild(void Function(SituationEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SituationEventBuilder toBuilder() => SituationEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationEvent &&
        event == other.event &&
        situation == other.situation &&
        version == other.version &&
        previousStatus == other.previousStatus &&
        previousSeverity == other.previousSeverity &&
        mergedInto == other.mergedInto &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, situation.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, previousStatus.hashCode);
    _$hash = $jc(_$hash, previousSeverity.hashCode);
    _$hash = $jc(_$hash, mergedInto.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SituationEvent')
          ..add('event', event)
          ..add('situation', situation)
          ..add('version', version)
          ..add('previousStatus', previousStatus)
          ..add('previousSeverity', previousSeverity)
          ..add('mergedInto', mergedInto)
          ..add('at', at))
        .toString();
  }
}

class SituationEventBuilder
    implements Builder<SituationEvent, SituationEventBuilder> {
  _$SituationEvent? _$v;

  SituationEventEventEnum? _event;
  SituationEventEventEnum? get event => _$this._event;
  set event(SituationEventEventEnum? event) => _$this._event = event;

  SituationSummaryBuilder? _situation;
  SituationSummaryBuilder get situation =>
      _$this._situation ??= SituationSummaryBuilder();
  set situation(SituationSummaryBuilder? situation) =>
      _$this._situation = situation;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  SituationStatus? _previousStatus;
  SituationStatus? get previousStatus => _$this._previousStatus;
  set previousStatus(SituationStatus? previousStatus) =>
      _$this._previousStatus = previousStatus;

  Severity? _previousSeverity;
  Severity? get previousSeverity => _$this._previousSeverity;
  set previousSeverity(Severity? previousSeverity) =>
      _$this._previousSeverity = previousSeverity;

  String? _mergedInto;
  String? get mergedInto => _$this._mergedInto;
  set mergedInto(String? mergedInto) => _$this._mergedInto = mergedInto;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  SituationEventBuilder() {
    SituationEvent._defaults(this);
  }

  SituationEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _event = $v.event;
      _situation = $v.situation.toBuilder();
      _version = $v.version;
      _previousStatus = $v.previousStatus;
      _previousSeverity = $v.previousSeverity;
      _mergedInto = $v.mergedInto;
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationEvent other) {
    _$v = other as _$SituationEvent;
  }

  @override
  void update(void Function(SituationEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationEvent build() => _build();

  _$SituationEvent _build() {
    _$SituationEvent _$result;
    try {
      _$result =
          _$v ??
          _$SituationEvent._(
            event: BuiltValueNullFieldError.checkNotNull(
              event,
              r'SituationEvent',
              'event',
            ),
            situation: situation.build(),
            version: BuiltValueNullFieldError.checkNotNull(
              version,
              r'SituationEvent',
              'version',
            ),
            previousStatus: previousStatus,
            previousSeverity: previousSeverity,
            mergedInto: mergedInto,
            at: BuiltValueNullFieldError.checkNotNull(
              at,
              r'SituationEvent',
              'at',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'situation';
        situation.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SituationEvent',
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
