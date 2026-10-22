//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'evidence_event.g.dart';

/// SSE payload on topic `evidence`: canonical.created, canonical.merged, canonical.flagged (summary only) (116)
///
/// Properties:
/// * [canonicalEventId] - ULID identifier
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [family]
/// * [status]
/// * [eventTime]
/// * [regionCodes]
/// * [observationCount]
/// * [evidenceGroupCount]
/// * [qualityFlags]
/// * [flagsAdded] - canonical.flagged
/// * [mergedInto] - ULID identifier
/// * [mergedFrom] - canonical.merged
@BuiltValue()
abstract class EvidenceEvent
    implements Built<EvidenceEvent, EvidenceEventBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'canonicalEventId')
  String get canonicalEventId;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String get ref;

  @BuiltValueField(wireName: r'family')
  String get family;

  @BuiltValueField(wireName: r'status')
  EvidenceEventStatusEnum get status;
  // enum statusEnum {  open,  merged,  closed,  };

  @BuiltValueField(wireName: r'eventTime')
  DateTime get eventTime;

  @BuiltValueField(wireName: r'regionCodes')
  BuiltList<String>? get regionCodes;

  @BuiltValueField(wireName: r'observationCount')
  int get observationCount;

  @BuiltValueField(wireName: r'evidenceGroupCount')
  int get evidenceGroupCount;

  @BuiltValueField(wireName: r'qualityFlags')
  BuiltList<EvidenceEventQualityFlagsEnum> get qualityFlags;
  // enum qualityFlagsEnum {  ECHO,  TIMESTAMP_CONFLICT,  SINGLE_ORIGINATOR,  LATE_REVISION,  };

  /// canonical.flagged
  @BuiltValueField(wireName: r'flagsAdded')
  BuiltList<EvidenceEventFlagsAddedEnum>? get flagsAdded;
  // enum flagsAddedEnum {  ECHO,  TIMESTAMP_CONFLICT,  SINGLE_ORIGINATOR,  LATE_REVISION,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'mergedInto')
  String? get mergedInto;

  /// canonical.merged
  @BuiltValueField(wireName: r'mergedFrom')
  BuiltList<String>? get mergedFrom;

  EvidenceEvent._();

  factory EvidenceEvent([void updates(EvidenceEventBuilder b)]) =
      _$EvidenceEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EvidenceEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EvidenceEvent> get serializer =>
      _$EvidenceEventSerializer();
}

class _$EvidenceEventSerializer implements PrimitiveSerializer<EvidenceEvent> {
  @override
  final Iterable<Type> types = const [EvidenceEvent, _$EvidenceEvent];

  @override
  final String wireName = r'EvidenceEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EvidenceEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'canonicalEventId';
    yield serializers.serialize(
      object.canonicalEventId,
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
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(EvidenceEventStatusEnum),
    );
    yield r'eventTime';
    yield serializers.serialize(
      object.eventTime,
      specifiedType: const FullType(DateTime),
    );
    if (object.regionCodes != null) {
      yield r'regionCodes';
      yield serializers.serialize(
        object.regionCodes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
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
        FullType(EvidenceEventQualityFlagsEnum),
      ]),
    );
    if (object.flagsAdded != null) {
      yield r'flagsAdded';
      yield serializers.serialize(
        object.flagsAdded,
        specifiedType: const FullType(BuiltList, [
          FullType(EvidenceEventFlagsAddedEnum),
        ]),
      );
    }
    if (object.mergedInto != null) {
      yield r'mergedInto';
      yield serializers.serialize(
        object.mergedInto,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.mergedFrom != null) {
      yield r'mergedFrom';
      yield serializers.serialize(
        object.mergedFrom,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EvidenceEvent object, {
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
    required EvidenceEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'canonicalEventId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.canonicalEventId = valueDes;
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
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EvidenceEventStatusEnum),
                  )
                  as EvidenceEventStatusEnum;
          result.status = valueDes;
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
                      FullType(EvidenceEventQualityFlagsEnum),
                    ]),
                  )
                  as BuiltList<EvidenceEventQualityFlagsEnum>;
          result.qualityFlags.replace(valueDes);
          break;
        case r'flagsAdded':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(EvidenceEventFlagsAddedEnum),
                    ]),
                  )
                  as BuiltList<EvidenceEventFlagsAddedEnum>?;
          if (valueDes == null) continue;
          result.flagsAdded.replace(valueDes);
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
        case r'mergedFrom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.mergedFrom.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EvidenceEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EvidenceEventBuilder();
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

class EvidenceEventStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'open')
  static const EvidenceEventStatusEnum open = _$evidenceEventStatusEnum_open;
  @BuiltValueEnumConst(wireName: r'merged')
  static const EvidenceEventStatusEnum merged =
      _$evidenceEventStatusEnum_merged;
  @BuiltValueEnumConst(wireName: r'closed')
  static const EvidenceEventStatusEnum closed =
      _$evidenceEventStatusEnum_closed;

  static Serializer<EvidenceEventStatusEnum> get serializer =>
      _$evidenceEventStatusEnumSerializer;

  const EvidenceEventStatusEnum._(String name) : super(name);

  static BuiltSet<EvidenceEventStatusEnum> get values =>
      _$evidenceEventStatusEnumValues;
  static EvidenceEventStatusEnum valueOf(String name) =>
      _$evidenceEventStatusEnumValueOf(name);
}

class EvidenceEventQualityFlagsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ECHO')
  static const EvidenceEventQualityFlagsEnum ECHO =
      _$evidenceEventQualityFlagsEnum_ECHO;
  @BuiltValueEnumConst(wireName: r'TIMESTAMP_CONFLICT')
  static const EvidenceEventQualityFlagsEnum TIMESTAMP_CONFLICT =
      _$evidenceEventQualityFlagsEnum_TIMESTAMP_CONFLICT;
  @BuiltValueEnumConst(wireName: r'SINGLE_ORIGINATOR')
  static const EvidenceEventQualityFlagsEnum SINGLE_ORIGINATOR =
      _$evidenceEventQualityFlagsEnum_SINGLE_ORIGINATOR;
  @BuiltValueEnumConst(wireName: r'LATE_REVISION')
  static const EvidenceEventQualityFlagsEnum LATE_REVISION =
      _$evidenceEventQualityFlagsEnum_LATE_REVISION;

  static Serializer<EvidenceEventQualityFlagsEnum> get serializer =>
      _$evidenceEventQualityFlagsEnumSerializer;

  const EvidenceEventQualityFlagsEnum._(String name) : super(name);

  static BuiltSet<EvidenceEventQualityFlagsEnum> get values =>
      _$evidenceEventQualityFlagsEnumValues;
  static EvidenceEventQualityFlagsEnum valueOf(String name) =>
      _$evidenceEventQualityFlagsEnumValueOf(name);
}

class EvidenceEventFlagsAddedEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ECHO')
  static const EvidenceEventFlagsAddedEnum ECHO =
      _$evidenceEventFlagsAddedEnum_ECHO;
  @BuiltValueEnumConst(wireName: r'TIMESTAMP_CONFLICT')
  static const EvidenceEventFlagsAddedEnum TIMESTAMP_CONFLICT =
      _$evidenceEventFlagsAddedEnum_TIMESTAMP_CONFLICT;
  @BuiltValueEnumConst(wireName: r'SINGLE_ORIGINATOR')
  static const EvidenceEventFlagsAddedEnum SINGLE_ORIGINATOR =
      _$evidenceEventFlagsAddedEnum_SINGLE_ORIGINATOR;
  @BuiltValueEnumConst(wireName: r'LATE_REVISION')
  static const EvidenceEventFlagsAddedEnum LATE_REVISION =
      _$evidenceEventFlagsAddedEnum_LATE_REVISION;

  static Serializer<EvidenceEventFlagsAddedEnum> get serializer =>
      _$evidenceEventFlagsAddedEnumSerializer;

  const EvidenceEventFlagsAddedEnum._(String name) : super(name);

  static BuiltSet<EvidenceEventFlagsAddedEnum> get values =>
      _$evidenceEventFlagsAddedEnumValues;
  static EvidenceEventFlagsAddedEnum valueOf(String name) =>
      _$evidenceEventFlagsAddedEnumValueOf(name);
}
