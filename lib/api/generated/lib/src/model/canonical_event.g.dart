// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'canonical_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CanonicalEventQualityFlagsEnum _$canonicalEventQualityFlagsEnum_ECHO =
    const CanonicalEventQualityFlagsEnum._('ECHO');
const CanonicalEventQualityFlagsEnum
_$canonicalEventQualityFlagsEnum_TIMESTAMP_CONFLICT =
    const CanonicalEventQualityFlagsEnum._('TIMESTAMP_CONFLICT');
const CanonicalEventQualityFlagsEnum
_$canonicalEventQualityFlagsEnum_SINGLE_ORIGINATOR =
    const CanonicalEventQualityFlagsEnum._('SINGLE_ORIGINATOR');
const CanonicalEventQualityFlagsEnum
_$canonicalEventQualityFlagsEnum_LATE_REVISION =
    const CanonicalEventQualityFlagsEnum._('LATE_REVISION');

CanonicalEventQualityFlagsEnum _$canonicalEventQualityFlagsEnumValueOf(
  String name,
) {
  switch (name) {
    case 'ECHO':
      return _$canonicalEventQualityFlagsEnum_ECHO;
    case 'TIMESTAMP_CONFLICT':
      return _$canonicalEventQualityFlagsEnum_TIMESTAMP_CONFLICT;
    case 'SINGLE_ORIGINATOR':
      return _$canonicalEventQualityFlagsEnum_SINGLE_ORIGINATOR;
    case 'LATE_REVISION':
      return _$canonicalEventQualityFlagsEnum_LATE_REVISION;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CanonicalEventQualityFlagsEnum>
_$canonicalEventQualityFlagsEnumValues =
    BuiltSet<CanonicalEventQualityFlagsEnum>(
      const <CanonicalEventQualityFlagsEnum>[
        _$canonicalEventQualityFlagsEnum_ECHO,
        _$canonicalEventQualityFlagsEnum_TIMESTAMP_CONFLICT,
        _$canonicalEventQualityFlagsEnum_SINGLE_ORIGINATOR,
        _$canonicalEventQualityFlagsEnum_LATE_REVISION,
      ],
    );

const CanonicalEventStatusEnum _$canonicalEventStatusEnum_open =
    const CanonicalEventStatusEnum._('open');
const CanonicalEventStatusEnum _$canonicalEventStatusEnum_merged =
    const CanonicalEventStatusEnum._('merged');
const CanonicalEventStatusEnum _$canonicalEventStatusEnum_closed =
    const CanonicalEventStatusEnum._('closed');

CanonicalEventStatusEnum _$canonicalEventStatusEnumValueOf(String name) {
  switch (name) {
    case 'open':
      return _$canonicalEventStatusEnum_open;
    case 'merged':
      return _$canonicalEventStatusEnum_merged;
    case 'closed':
      return _$canonicalEventStatusEnum_closed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CanonicalEventStatusEnum> _$canonicalEventStatusEnumValues =
    BuiltSet<CanonicalEventStatusEnum>(const <CanonicalEventStatusEnum>[
      _$canonicalEventStatusEnum_open,
      _$canonicalEventStatusEnum_merged,
      _$canonicalEventStatusEnum_closed,
    ]);

Serializer<CanonicalEventQualityFlagsEnum>
_$canonicalEventQualityFlagsEnumSerializer =
    _$CanonicalEventQualityFlagsEnumSerializer();
Serializer<CanonicalEventStatusEnum> _$canonicalEventStatusEnumSerializer =
    _$CanonicalEventStatusEnumSerializer();

class _$CanonicalEventQualityFlagsEnumSerializer
    implements PrimitiveSerializer<CanonicalEventQualityFlagsEnum> {
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
  final Iterable<Type> types = const <Type>[CanonicalEventQualityFlagsEnum];
  @override
  final String wireName = 'CanonicalEventQualityFlagsEnum';

  @override
  Object serialize(
    Serializers serializers,
    CanonicalEventQualityFlagsEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CanonicalEventQualityFlagsEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CanonicalEventQualityFlagsEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$CanonicalEventStatusEnumSerializer
    implements PrimitiveSerializer<CanonicalEventStatusEnum> {
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
  final Iterable<Type> types = const <Type>[CanonicalEventStatusEnum];
  @override
  final String wireName = 'CanonicalEventStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    CanonicalEventStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CanonicalEventStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CanonicalEventStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$CanonicalEvent extends CanonicalEvent {
  @override
  final String id;
  @override
  final String ref;
  @override
  final String family;
  @override
  final DateTime eventTime;
  @override
  final Geometry? geometry;
  @override
  final BuiltList<String>? regionCodes;
  @override
  final DateTime? firstObservedAt;
  @override
  final String? firstObservationRef;
  @override
  final int observationCount;
  @override
  final int evidenceGroupCount;
  @override
  final BuiltList<CanonicalEventQualityFlagsEnum> qualityFlags;
  @override
  final CanonicalEventStatusEnum status;
  @override
  final String? mergedInto;
  @override
  final String resolverVersion;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final BuiltList<ObservationLink>? observations;
  @override
  final BuiltList<EvidenceGroup>? evidenceGroups;

  factory _$CanonicalEvent([void Function(CanonicalEventBuilder)? updates]) =>
      (CanonicalEventBuilder()..update(updates))._build();

  _$CanonicalEvent._({
    required this.id,
    required this.ref,
    required this.family,
    required this.eventTime,
    this.geometry,
    this.regionCodes,
    this.firstObservedAt,
    this.firstObservationRef,
    required this.observationCount,
    required this.evidenceGroupCount,
    required this.qualityFlags,
    required this.status,
    this.mergedInto,
    required this.resolverVersion,
    required this.createdAt,
    required this.updatedAt,
    this.observations,
    this.evidenceGroups,
  }) : super._();
  @override
  CanonicalEvent rebuild(void Function(CanonicalEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CanonicalEventBuilder toBuilder() => CanonicalEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CanonicalEvent &&
        id == other.id &&
        ref == other.ref &&
        family == other.family &&
        eventTime == other.eventTime &&
        geometry == other.geometry &&
        regionCodes == other.regionCodes &&
        firstObservedAt == other.firstObservedAt &&
        firstObservationRef == other.firstObservationRef &&
        observationCount == other.observationCount &&
        evidenceGroupCount == other.evidenceGroupCount &&
        qualityFlags == other.qualityFlags &&
        status == other.status &&
        mergedInto == other.mergedInto &&
        resolverVersion == other.resolverVersion &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        observations == other.observations &&
        evidenceGroups == other.evidenceGroups;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, family.hashCode);
    _$hash = $jc(_$hash, eventTime.hashCode);
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, regionCodes.hashCode);
    _$hash = $jc(_$hash, firstObservedAt.hashCode);
    _$hash = $jc(_$hash, firstObservationRef.hashCode);
    _$hash = $jc(_$hash, observationCount.hashCode);
    _$hash = $jc(_$hash, evidenceGroupCount.hashCode);
    _$hash = $jc(_$hash, qualityFlags.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, mergedInto.hashCode);
    _$hash = $jc(_$hash, resolverVersion.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, observations.hashCode);
    _$hash = $jc(_$hash, evidenceGroups.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CanonicalEvent')
          ..add('id', id)
          ..add('ref', ref)
          ..add('family', family)
          ..add('eventTime', eventTime)
          ..add('geometry', geometry)
          ..add('regionCodes', regionCodes)
          ..add('firstObservedAt', firstObservedAt)
          ..add('firstObservationRef', firstObservationRef)
          ..add('observationCount', observationCount)
          ..add('evidenceGroupCount', evidenceGroupCount)
          ..add('qualityFlags', qualityFlags)
          ..add('status', status)
          ..add('mergedInto', mergedInto)
          ..add('resolverVersion', resolverVersion)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('observations', observations)
          ..add('evidenceGroups', evidenceGroups))
        .toString();
  }
}

class CanonicalEventBuilder
    implements Builder<CanonicalEvent, CanonicalEventBuilder> {
  _$CanonicalEvent? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _family;
  String? get family => _$this._family;
  set family(String? family) => _$this._family = family;

  DateTime? _eventTime;
  DateTime? get eventTime => _$this._eventTime;
  set eventTime(DateTime? eventTime) => _$this._eventTime = eventTime;

  GeometryBuilder? _geometry;
  GeometryBuilder get geometry => _$this._geometry ??= GeometryBuilder();
  set geometry(GeometryBuilder? geometry) => _$this._geometry = geometry;

  ListBuilder<String>? _regionCodes;
  ListBuilder<String> get regionCodes =>
      _$this._regionCodes ??= ListBuilder<String>();
  set regionCodes(ListBuilder<String>? regionCodes) =>
      _$this._regionCodes = regionCodes;

  DateTime? _firstObservedAt;
  DateTime? get firstObservedAt => _$this._firstObservedAt;
  set firstObservedAt(DateTime? firstObservedAt) =>
      _$this._firstObservedAt = firstObservedAt;

  String? _firstObservationRef;
  String? get firstObservationRef => _$this._firstObservationRef;
  set firstObservationRef(String? firstObservationRef) =>
      _$this._firstObservationRef = firstObservationRef;

  int? _observationCount;
  int? get observationCount => _$this._observationCount;
  set observationCount(int? observationCount) =>
      _$this._observationCount = observationCount;

  int? _evidenceGroupCount;
  int? get evidenceGroupCount => _$this._evidenceGroupCount;
  set evidenceGroupCount(int? evidenceGroupCount) =>
      _$this._evidenceGroupCount = evidenceGroupCount;

  ListBuilder<CanonicalEventQualityFlagsEnum>? _qualityFlags;
  ListBuilder<CanonicalEventQualityFlagsEnum> get qualityFlags =>
      _$this._qualityFlags ??= ListBuilder<CanonicalEventQualityFlagsEnum>();
  set qualityFlags(ListBuilder<CanonicalEventQualityFlagsEnum>? qualityFlags) =>
      _$this._qualityFlags = qualityFlags;

  CanonicalEventStatusEnum? _status;
  CanonicalEventStatusEnum? get status => _$this._status;
  set status(CanonicalEventStatusEnum? status) => _$this._status = status;

  String? _mergedInto;
  String? get mergedInto => _$this._mergedInto;
  set mergedInto(String? mergedInto) => _$this._mergedInto = mergedInto;

  String? _resolverVersion;
  String? get resolverVersion => _$this._resolverVersion;
  set resolverVersion(String? resolverVersion) =>
      _$this._resolverVersion = resolverVersion;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  ListBuilder<ObservationLink>? _observations;
  ListBuilder<ObservationLink> get observations =>
      _$this._observations ??= ListBuilder<ObservationLink>();
  set observations(ListBuilder<ObservationLink>? observations) =>
      _$this._observations = observations;

  ListBuilder<EvidenceGroup>? _evidenceGroups;
  ListBuilder<EvidenceGroup> get evidenceGroups =>
      _$this._evidenceGroups ??= ListBuilder<EvidenceGroup>();
  set evidenceGroups(ListBuilder<EvidenceGroup>? evidenceGroups) =>
      _$this._evidenceGroups = evidenceGroups;

  CanonicalEventBuilder() {
    CanonicalEvent._defaults(this);
  }

  CanonicalEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _ref = $v.ref;
      _family = $v.family;
      _eventTime = $v.eventTime;
      _geometry = $v.geometry?.toBuilder();
      _regionCodes = $v.regionCodes?.toBuilder();
      _firstObservedAt = $v.firstObservedAt;
      _firstObservationRef = $v.firstObservationRef;
      _observationCount = $v.observationCount;
      _evidenceGroupCount = $v.evidenceGroupCount;
      _qualityFlags = $v.qualityFlags.toBuilder();
      _status = $v.status;
      _mergedInto = $v.mergedInto;
      _resolverVersion = $v.resolverVersion;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _observations = $v.observations?.toBuilder();
      _evidenceGroups = $v.evidenceGroups?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CanonicalEvent other) {
    _$v = other as _$CanonicalEvent;
  }

  @override
  void update(void Function(CanonicalEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CanonicalEvent build() => _build();

  _$CanonicalEvent _build() {
    _$CanonicalEvent _$result;
    try {
      _$result =
          _$v ??
          _$CanonicalEvent._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'CanonicalEvent',
              'id',
            ),
            ref: BuiltValueNullFieldError.checkNotNull(
              ref,
              r'CanonicalEvent',
              'ref',
            ),
            family: BuiltValueNullFieldError.checkNotNull(
              family,
              r'CanonicalEvent',
              'family',
            ),
            eventTime: BuiltValueNullFieldError.checkNotNull(
              eventTime,
              r'CanonicalEvent',
              'eventTime',
            ),
            geometry: _geometry?.build(),
            regionCodes: _regionCodes?.build(),
            firstObservedAt: firstObservedAt,
            firstObservationRef: firstObservationRef,
            observationCount: BuiltValueNullFieldError.checkNotNull(
              observationCount,
              r'CanonicalEvent',
              'observationCount',
            ),
            evidenceGroupCount: BuiltValueNullFieldError.checkNotNull(
              evidenceGroupCount,
              r'CanonicalEvent',
              'evidenceGroupCount',
            ),
            qualityFlags: qualityFlags.build(),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'CanonicalEvent',
              'status',
            ),
            mergedInto: mergedInto,
            resolverVersion: BuiltValueNullFieldError.checkNotNull(
              resolverVersion,
              r'CanonicalEvent',
              'resolverVersion',
            ),
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'CanonicalEvent',
              'createdAt',
            ),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt,
              r'CanonicalEvent',
              'updatedAt',
            ),
            observations: _observations?.build(),
            evidenceGroups: _evidenceGroups?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'geometry';
        _geometry?.build();
        _$failedField = 'regionCodes';
        _regionCodes?.build();

        _$failedField = 'qualityFlags';
        qualityFlags.build();

        _$failedField = 'observations';
        _observations?.build();
        _$failedField = 'evidenceGroups';
        _evidenceGroups?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CanonicalEvent',
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
