// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evidence_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EvidenceEventStatusEnum _$evidenceEventStatusEnum_open =
    const EvidenceEventStatusEnum._('open');
const EvidenceEventStatusEnum _$evidenceEventStatusEnum_merged =
    const EvidenceEventStatusEnum._('merged');
const EvidenceEventStatusEnum _$evidenceEventStatusEnum_closed =
    const EvidenceEventStatusEnum._('closed');

EvidenceEventStatusEnum _$evidenceEventStatusEnumValueOf(String name) {
  switch (name) {
    case 'open':
      return _$evidenceEventStatusEnum_open;
    case 'merged':
      return _$evidenceEventStatusEnum_merged;
    case 'closed':
      return _$evidenceEventStatusEnum_closed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EvidenceEventStatusEnum> _$evidenceEventStatusEnumValues =
    BuiltSet<EvidenceEventStatusEnum>(const <EvidenceEventStatusEnum>[
      _$evidenceEventStatusEnum_open,
      _$evidenceEventStatusEnum_merged,
      _$evidenceEventStatusEnum_closed,
    ]);

const EvidenceEventQualityFlagsEnum _$evidenceEventQualityFlagsEnum_ECHO =
    const EvidenceEventQualityFlagsEnum._('ECHO');
const EvidenceEventQualityFlagsEnum
_$evidenceEventQualityFlagsEnum_TIMESTAMP_CONFLICT =
    const EvidenceEventQualityFlagsEnum._('TIMESTAMP_CONFLICT');
const EvidenceEventQualityFlagsEnum
_$evidenceEventQualityFlagsEnum_SINGLE_ORIGINATOR =
    const EvidenceEventQualityFlagsEnum._('SINGLE_ORIGINATOR');
const EvidenceEventQualityFlagsEnum
_$evidenceEventQualityFlagsEnum_LATE_REVISION =
    const EvidenceEventQualityFlagsEnum._('LATE_REVISION');

EvidenceEventQualityFlagsEnum _$evidenceEventQualityFlagsEnumValueOf(
  String name,
) {
  switch (name) {
    case 'ECHO':
      return _$evidenceEventQualityFlagsEnum_ECHO;
    case 'TIMESTAMP_CONFLICT':
      return _$evidenceEventQualityFlagsEnum_TIMESTAMP_CONFLICT;
    case 'SINGLE_ORIGINATOR':
      return _$evidenceEventQualityFlagsEnum_SINGLE_ORIGINATOR;
    case 'LATE_REVISION':
      return _$evidenceEventQualityFlagsEnum_LATE_REVISION;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EvidenceEventQualityFlagsEnum>
_$evidenceEventQualityFlagsEnumValues = BuiltSet<EvidenceEventQualityFlagsEnum>(
  const <EvidenceEventQualityFlagsEnum>[
    _$evidenceEventQualityFlagsEnum_ECHO,
    _$evidenceEventQualityFlagsEnum_TIMESTAMP_CONFLICT,
    _$evidenceEventQualityFlagsEnum_SINGLE_ORIGINATOR,
    _$evidenceEventQualityFlagsEnum_LATE_REVISION,
  ],
);

const EvidenceEventFlagsAddedEnum _$evidenceEventFlagsAddedEnum_ECHO =
    const EvidenceEventFlagsAddedEnum._('ECHO');
const EvidenceEventFlagsAddedEnum
_$evidenceEventFlagsAddedEnum_TIMESTAMP_CONFLICT =
    const EvidenceEventFlagsAddedEnum._('TIMESTAMP_CONFLICT');
const EvidenceEventFlagsAddedEnum
_$evidenceEventFlagsAddedEnum_SINGLE_ORIGINATOR =
    const EvidenceEventFlagsAddedEnum._('SINGLE_ORIGINATOR');
const EvidenceEventFlagsAddedEnum _$evidenceEventFlagsAddedEnum_LATE_REVISION =
    const EvidenceEventFlagsAddedEnum._('LATE_REVISION');

EvidenceEventFlagsAddedEnum _$evidenceEventFlagsAddedEnumValueOf(String name) {
  switch (name) {
    case 'ECHO':
      return _$evidenceEventFlagsAddedEnum_ECHO;
    case 'TIMESTAMP_CONFLICT':
      return _$evidenceEventFlagsAddedEnum_TIMESTAMP_CONFLICT;
    case 'SINGLE_ORIGINATOR':
      return _$evidenceEventFlagsAddedEnum_SINGLE_ORIGINATOR;
    case 'LATE_REVISION':
      return _$evidenceEventFlagsAddedEnum_LATE_REVISION;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EvidenceEventFlagsAddedEnum>
_$evidenceEventFlagsAddedEnumValues =
    BuiltSet<EvidenceEventFlagsAddedEnum>(const <EvidenceEventFlagsAddedEnum>[
      _$evidenceEventFlagsAddedEnum_ECHO,
      _$evidenceEventFlagsAddedEnum_TIMESTAMP_CONFLICT,
      _$evidenceEventFlagsAddedEnum_SINGLE_ORIGINATOR,
      _$evidenceEventFlagsAddedEnum_LATE_REVISION,
    ]);

Serializer<EvidenceEventStatusEnum> _$evidenceEventStatusEnumSerializer =
    _$EvidenceEventStatusEnumSerializer();
Serializer<EvidenceEventQualityFlagsEnum>
_$evidenceEventQualityFlagsEnumSerializer =
    _$EvidenceEventQualityFlagsEnumSerializer();
Serializer<EvidenceEventFlagsAddedEnum>
_$evidenceEventFlagsAddedEnumSerializer =
    _$EvidenceEventFlagsAddedEnumSerializer();

class _$EvidenceEventStatusEnumSerializer
    implements PrimitiveSerializer<EvidenceEventStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'open': 'open',
    'merged': 'merged',
    'closed': 'closed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'open': 'open',
    'merged': 'merged',
    'closed': 'closed',
  };

  @override
  final Iterable<Type> types = const <Type>[EvidenceEventStatusEnum];
  @override
  final String wireName = 'EvidenceEventStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    EvidenceEventStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EvidenceEventStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EvidenceEventStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EvidenceEventQualityFlagsEnumSerializer
    implements PrimitiveSerializer<EvidenceEventQualityFlagsEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ECHO': 'ECHO',
    'TIMESTAMP_CONFLICT': 'TIMESTAMP_CONFLICT',
    'SINGLE_ORIGINATOR': 'SINGLE_ORIGINATOR',
    'LATE_REVISION': 'LATE_REVISION',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ECHO': 'ECHO',
    'TIMESTAMP_CONFLICT': 'TIMESTAMP_CONFLICT',
    'SINGLE_ORIGINATOR': 'SINGLE_ORIGINATOR',
    'LATE_REVISION': 'LATE_REVISION',
  };

  @override
  final Iterable<Type> types = const <Type>[EvidenceEventQualityFlagsEnum];
  @override
  final String wireName = 'EvidenceEventQualityFlagsEnum';

  @override
  Object serialize(
    Serializers serializers,
    EvidenceEventQualityFlagsEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EvidenceEventQualityFlagsEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EvidenceEventQualityFlagsEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EvidenceEventFlagsAddedEnumSerializer
    implements PrimitiveSerializer<EvidenceEventFlagsAddedEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ECHO': 'ECHO',
    'TIMESTAMP_CONFLICT': 'TIMESTAMP_CONFLICT',
    'SINGLE_ORIGINATOR': 'SINGLE_ORIGINATOR',
    'LATE_REVISION': 'LATE_REVISION',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ECHO': 'ECHO',
    'TIMESTAMP_CONFLICT': 'TIMESTAMP_CONFLICT',
    'SINGLE_ORIGINATOR': 'SINGLE_ORIGINATOR',
    'LATE_REVISION': 'LATE_REVISION',
  };

  @override
  final Iterable<Type> types = const <Type>[EvidenceEventFlagsAddedEnum];
  @override
  final String wireName = 'EvidenceEventFlagsAddedEnum';

  @override
  Object serialize(
    Serializers serializers,
    EvidenceEventFlagsAddedEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EvidenceEventFlagsAddedEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EvidenceEventFlagsAddedEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$EvidenceEvent extends EvidenceEvent {
  @override
  final String canonicalEventId;
  @override
  final String ref;
  @override
  final String family;
  @override
  final EvidenceEventStatusEnum status;
  @override
  final DateTime eventTime;
  @override
  final BuiltList<String>? regionCodes;
  @override
  final int observationCount;
  @override
  final int evidenceGroupCount;
  @override
  final BuiltList<EvidenceEventQualityFlagsEnum> qualityFlags;
  @override
  final BuiltList<EvidenceEventFlagsAddedEnum>? flagsAdded;
  @override
  final String? mergedInto;
  @override
  final BuiltList<String>? mergedFrom;

  factory _$EvidenceEvent([void Function(EvidenceEventBuilder)? updates]) =>
      (EvidenceEventBuilder()..update(updates))._build();

  _$EvidenceEvent._({
    required this.canonicalEventId,
    required this.ref,
    required this.family,
    required this.status,
    required this.eventTime,
    this.regionCodes,
    required this.observationCount,
    required this.evidenceGroupCount,
    required this.qualityFlags,
    this.flagsAdded,
    this.mergedInto,
    this.mergedFrom,
  }) : super._();
  @override
  EvidenceEvent rebuild(void Function(EvidenceEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EvidenceEventBuilder toBuilder() => EvidenceEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EvidenceEvent &&
        canonicalEventId == other.canonicalEventId &&
        ref == other.ref &&
        family == other.family &&
        status == other.status &&
        eventTime == other.eventTime &&
        regionCodes == other.regionCodes &&
        observationCount == other.observationCount &&
        evidenceGroupCount == other.evidenceGroupCount &&
        qualityFlags == other.qualityFlags &&
        flagsAdded == other.flagsAdded &&
        mergedInto == other.mergedInto &&
        mergedFrom == other.mergedFrom;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, canonicalEventId.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, family.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, eventTime.hashCode);
    _$hash = $jc(_$hash, regionCodes.hashCode);
    _$hash = $jc(_$hash, observationCount.hashCode);
    _$hash = $jc(_$hash, evidenceGroupCount.hashCode);
    _$hash = $jc(_$hash, qualityFlags.hashCode);
    _$hash = $jc(_$hash, flagsAdded.hashCode);
    _$hash = $jc(_$hash, mergedInto.hashCode);
    _$hash = $jc(_$hash, mergedFrom.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EvidenceEvent')
          ..add('canonicalEventId', canonicalEventId)
          ..add('ref', ref)
          ..add('family', family)
          ..add('status', status)
          ..add('eventTime', eventTime)
          ..add('regionCodes', regionCodes)
          ..add('observationCount', observationCount)
          ..add('evidenceGroupCount', evidenceGroupCount)
          ..add('qualityFlags', qualityFlags)
          ..add('flagsAdded', flagsAdded)
          ..add('mergedInto', mergedInto)
          ..add('mergedFrom', mergedFrom))
        .toString();
  }
}

class EvidenceEventBuilder
    implements Builder<EvidenceEvent, EvidenceEventBuilder> {
  _$EvidenceEvent? _$v;

  String? _canonicalEventId;
  String? get canonicalEventId => _$this._canonicalEventId;
  set canonicalEventId(String? canonicalEventId) =>
      _$this._canonicalEventId = canonicalEventId;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _family;
  String? get family => _$this._family;
  set family(String? family) => _$this._family = family;

  EvidenceEventStatusEnum? _status;
  EvidenceEventStatusEnum? get status => _$this._status;
  set status(EvidenceEventStatusEnum? status) => _$this._status = status;

  DateTime? _eventTime;
  DateTime? get eventTime => _$this._eventTime;
  set eventTime(DateTime? eventTime) => _$this._eventTime = eventTime;

  ListBuilder<String>? _regionCodes;
  ListBuilder<String> get regionCodes =>
      _$this._regionCodes ??= ListBuilder<String>();
  set regionCodes(ListBuilder<String>? regionCodes) =>
      _$this._regionCodes = regionCodes;

  int? _observationCount;
  int? get observationCount => _$this._observationCount;
  set observationCount(int? observationCount) =>
      _$this._observationCount = observationCount;

  int? _evidenceGroupCount;
  int? get evidenceGroupCount => _$this._evidenceGroupCount;
  set evidenceGroupCount(int? evidenceGroupCount) =>
      _$this._evidenceGroupCount = evidenceGroupCount;

  ListBuilder<EvidenceEventQualityFlagsEnum>? _qualityFlags;
  ListBuilder<EvidenceEventQualityFlagsEnum> get qualityFlags =>
      _$this._qualityFlags ??= ListBuilder<EvidenceEventQualityFlagsEnum>();
  set qualityFlags(ListBuilder<EvidenceEventQualityFlagsEnum>? qualityFlags) =>
      _$this._qualityFlags = qualityFlags;

  ListBuilder<EvidenceEventFlagsAddedEnum>? _flagsAdded;
  ListBuilder<EvidenceEventFlagsAddedEnum> get flagsAdded =>
      _$this._flagsAdded ??= ListBuilder<EvidenceEventFlagsAddedEnum>();
  set flagsAdded(ListBuilder<EvidenceEventFlagsAddedEnum>? flagsAdded) =>
      _$this._flagsAdded = flagsAdded;

  String? _mergedInto;
  String? get mergedInto => _$this._mergedInto;
  set mergedInto(String? mergedInto) => _$this._mergedInto = mergedInto;

  ListBuilder<String>? _mergedFrom;
  ListBuilder<String> get mergedFrom =>
      _$this._mergedFrom ??= ListBuilder<String>();
  set mergedFrom(ListBuilder<String>? mergedFrom) =>
      _$this._mergedFrom = mergedFrom;

  EvidenceEventBuilder() {
    EvidenceEvent._defaults(this);
  }

  EvidenceEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _canonicalEventId = $v.canonicalEventId;
      _ref = $v.ref;
      _family = $v.family;
      _status = $v.status;
      _eventTime = $v.eventTime;
      _regionCodes = $v.regionCodes?.toBuilder();
      _observationCount = $v.observationCount;
      _evidenceGroupCount = $v.evidenceGroupCount;
      _qualityFlags = $v.qualityFlags.toBuilder();
      _flagsAdded = $v.flagsAdded?.toBuilder();
      _mergedInto = $v.mergedInto;
      _mergedFrom = $v.mergedFrom?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EvidenceEvent other) {
    _$v = other as _$EvidenceEvent;
  }

  @override
  void update(void Function(EvidenceEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EvidenceEvent build() => _build();

  _$EvidenceEvent _build() {
    _$EvidenceEvent _$result;
    try {
      _$result =
          _$v ??
          _$EvidenceEvent._(
            canonicalEventId: BuiltValueNullFieldError.checkNotNull(
              canonicalEventId,
              r'EvidenceEvent',
              'canonicalEventId',
            ),
            ref: BuiltValueNullFieldError.checkNotNull(
              ref,
              r'EvidenceEvent',
              'ref',
            ),
            family: BuiltValueNullFieldError.checkNotNull(
              family,
              r'EvidenceEvent',
              'family',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'EvidenceEvent',
              'status',
            ),
            eventTime: BuiltValueNullFieldError.checkNotNull(
              eventTime,
              r'EvidenceEvent',
              'eventTime',
            ),
            regionCodes: _regionCodes?.build(),
            observationCount: BuiltValueNullFieldError.checkNotNull(
              observationCount,
              r'EvidenceEvent',
              'observationCount',
            ),
            evidenceGroupCount: BuiltValueNullFieldError.checkNotNull(
              evidenceGroupCount,
              r'EvidenceEvent',
              'evidenceGroupCount',
            ),
            qualityFlags: qualityFlags.build(),
            flagsAdded: _flagsAdded?.build(),
            mergedInto: mergedInto,
            mergedFrom: _mergedFrom?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'regionCodes';
        _regionCodes?.build();

        _$failedField = 'qualityFlags';
        qualityFlags.build();
        _$failedField = 'flagsAdded';
        _flagsAdded?.build();

        _$failedField = 'mergedFrom';
        _mergedFrom?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EvidenceEvent',
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
