//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/evidence_group.dart';
import 'package:foresignal_api/src/model/observation_link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'canonical_event.g.dart';

/// A real-world event distinct from the observations that describe it (116)
///
/// Properties:
/// * [id] - ULID identifier
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [family] - Signal family plus subtype, e.g. seismic, fire, conflict, outage, disaster, weather-alert
/// * [eventTime]
/// * [geometry]
/// * [regionCodes]
/// * [firstObservedAt]
/// * [firstObservationRef] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [observationCount]
/// * [evidenceGroupCount]
/// * [qualityFlags]
/// * [status]
/// * [mergedInto] - ULID identifier
/// * [resolverVersion]
/// * [createdAt]
/// * [updatedAt]
/// * [observations] - Detail only
/// * [evidenceGroups] - Detail only
@BuiltValue()
abstract class CanonicalEvent
    implements Built<CanonicalEvent, CanonicalEventBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String get ref;

  /// Signal family plus subtype, e.g. seismic, fire, conflict, outage, disaster, weather-alert
  @BuiltValueField(wireName: r'family')
  String get family;

  @BuiltValueField(wireName: r'eventTime')
  DateTime get eventTime;

  @BuiltValueField(wireName: r'geometry')
  Geometry? get geometry;

  @BuiltValueField(wireName: r'regionCodes')
  BuiltList<String>? get regionCodes;

  @BuiltValueField(wireName: r'firstObservedAt')
  DateTime? get firstObservedAt;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'firstObservationRef')
  String? get firstObservationRef;

  @BuiltValueField(wireName: r'observationCount')
  int get observationCount;

  @BuiltValueField(wireName: r'evidenceGroupCount')
  int get evidenceGroupCount;

  @BuiltValueField(wireName: r'qualityFlags')
  BuiltList<CanonicalEventQualityFlagsEnum> get qualityFlags;
  // enum qualityFlagsEnum {  ECHO,  TIMESTAMP_CONFLICT,  SINGLE_ORIGINATOR,  LATE_REVISION,  };

  @BuiltValueField(wireName: r'status')
  CanonicalEventStatusEnum get status;
  // enum statusEnum {  open,  merged,  closed,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'mergedInto')
  String? get mergedInto;

  @BuiltValueField(wireName: r'resolverVersion')
  String get resolverVersion;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  /// Detail only
  @BuiltValueField(wireName: r'observations')
  BuiltList<ObservationLink>? get observations;

  /// Detail only
  @BuiltValueField(wireName: r'evidenceGroups')
  BuiltList<EvidenceGroup>? get evidenceGroups;

  CanonicalEvent._();

  factory CanonicalEvent([void updates(CanonicalEventBuilder b)]) =
      _$CanonicalEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CanonicalEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CanonicalEvent> get serializer =>
      _$CanonicalEventSerializer();
}

class _$CanonicalEventSerializer
    implements PrimitiveSerializer<CanonicalEvent> {
  @override
  final Iterable<Type> types = const [CanonicalEvent, _$CanonicalEvent];

  @override
  final String wireName = r'CanonicalEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CanonicalEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    yield r'family';
    yield serializers.serialize(
      object.family,
      specifiedType: const FullType(String),
    );
    yield r'eventTime';
    yield serializers.serialize(
      object.eventTime,
      specifiedType: const FullType(DateTime),
    );
    if (object.geometry != null) {
      yield r'geometry';
      yield serializers.serialize(
        object.geometry,
        specifiedType: const FullType.nullable(Geometry),
      );
    }
    if (object.regionCodes != null) {
      yield r'regionCodes';
      yield serializers.serialize(
        object.regionCodes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.firstObservedAt != null) {
      yield r'firstObservedAt';
      yield serializers.serialize(
        object.firstObservedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.firstObservationRef != null) {
      yield r'firstObservationRef';
      yield serializers.serialize(
        object.firstObservationRef,
        specifiedType: const FullType(String),
      );
    }
    yield r'observationCount';
    yield serializers.serialize(
      object.observationCount,
      specifiedType: const FullType(int),
    );
    yield r'evidenceGroupCount';
    yield serializers.serialize(
      object.evidenceGroupCount,
      specifiedType: const FullType(int),
    );
    yield r'qualityFlags';
    yield serializers.serialize(
      object.qualityFlags,
      specifiedType: const FullType(BuiltList, [
        FullType(CanonicalEventQualityFlagsEnum),
      ]),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(CanonicalEventStatusEnum),
    );
    if (object.mergedInto != null) {
      yield r'mergedInto';
      yield serializers.serialize(
        object.mergedInto,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'resolverVersion';
    yield serializers.serialize(
      object.resolverVersion,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.observations != null) {
      yield r'observations';
      yield serializers.serialize(
        object.observations,
        specifiedType: const FullType(BuiltList, [FullType(ObservationLink)]),
      );
    }
    if (object.evidenceGroups != null) {
      yield r'evidenceGroups';
      yield serializers.serialize(
        object.evidenceGroups,
        specifiedType: const FullType(BuiltList, [FullType(EvidenceGroup)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CanonicalEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CanonicalEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ref = valueDes;
          break;
        case r'family':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.family = valueDes;
          break;
        case r'eventTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.eventTime = valueDes;
          break;
        case r'geometry':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Geometry),
                  )
                  as Geometry?;
          if (valueDes == null) continue;
          result.geometry.replace(valueDes);
          break;
        case r'regionCodes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.regionCodes.replace(valueDes);
          break;
        case r'firstObservedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.firstObservedAt = valueDes;
          break;
        case r'firstObservationRef':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.firstObservationRef = valueDes;
          break;
        case r'observationCount':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.observationCount = valueDes;
          break;
        case r'evidenceGroupCount':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.evidenceGroupCount = valueDes;
          break;
        case r'qualityFlags':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(CanonicalEventQualityFlagsEnum),
                    ]),
                  )
                  as BuiltList<CanonicalEventQualityFlagsEnum>;
          result.qualityFlags.replace(valueDes);
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(CanonicalEventStatusEnum),
                  )
                  as CanonicalEventStatusEnum;
          result.status = valueDes;
          break;
        case r'mergedInto':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.mergedInto = valueDes;
          break;
        case r'resolverVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.resolverVersion = valueDes;
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'observations':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ObservationLink),
                    ]),
                  )
                  as BuiltList<ObservationLink>?;
          if (valueDes == null) continue;
          result.observations.replace(valueDes);
          break;
        case r'evidenceGroups':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(EvidenceGroup),
                    ]),
                  )
                  as BuiltList<EvidenceGroup>?;
          if (valueDes == null) continue;
          result.evidenceGroups.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CanonicalEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CanonicalEventBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class CanonicalEventQualityFlagsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ECHO')
  static const CanonicalEventQualityFlagsEnum ECHO =
      _$canonicalEventQualityFlagsEnum_ECHO;
  @BuiltValueEnumConst(wireName: r'TIMESTAMP_CONFLICT')
  static const CanonicalEventQualityFlagsEnum TIMESTAMP_CONFLICT =
      _$canonicalEventQualityFlagsEnum_TIMESTAMP_CONFLICT;
  @BuiltValueEnumConst(wireName: r'SINGLE_ORIGINATOR')
  static const CanonicalEventQualityFlagsEnum SINGLE_ORIGINATOR =
      _$canonicalEventQualityFlagsEnum_SINGLE_ORIGINATOR;
  @BuiltValueEnumConst(wireName: r'LATE_REVISION')
  static const CanonicalEventQualityFlagsEnum LATE_REVISION =
      _$canonicalEventQualityFlagsEnum_LATE_REVISION;

  static Serializer<CanonicalEventQualityFlagsEnum> get serializer =>
      _$canonicalEventQualityFlagsEnumSerializer;

  const CanonicalEventQualityFlagsEnum._(String name) : super(name);

  static BuiltSet<CanonicalEventQualityFlagsEnum> get values =>
      _$canonicalEventQualityFlagsEnumValues;
  static CanonicalEventQualityFlagsEnum valueOf(String name) =>
      _$canonicalEventQualityFlagsEnumValueOf(name);
}

class CanonicalEventStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'open')
  static const CanonicalEventStatusEnum open = _$canonicalEventStatusEnum_open;
  @BuiltValueEnumConst(wireName: r'merged')
  static const CanonicalEventStatusEnum merged =
      _$canonicalEventStatusEnum_merged;
  @BuiltValueEnumConst(wireName: r'closed')
  static const CanonicalEventStatusEnum closed =
      _$canonicalEventStatusEnum_closed;

  static Serializer<CanonicalEventStatusEnum> get serializer =>
      _$canonicalEventStatusEnumSerializer;

  const CanonicalEventStatusEnum._(String name) : super(name);

  static BuiltSet<CanonicalEventStatusEnum> get values =>
      _$canonicalEventStatusEnumValues;
  static CanonicalEventStatusEnum valueOf(String name) =>
      _$canonicalEventStatusEnumValueOf(name);
}
