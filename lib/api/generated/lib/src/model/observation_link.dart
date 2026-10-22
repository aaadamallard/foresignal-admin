//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/observation_link_link_reason.dart';
import 'package:foresignal_api/src/model/originator.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'observation_link.g.dart';

/// Link from an observation (record version) to a canonical event (116)
///
/// Properties:
/// * [canonicalEventId] - ULID identifier
/// * [recordRef] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [sourceId]
/// * [externalId]
/// * [seq]
/// * [version]
/// * [originatorId]
/// * [originator] - Included on event detail
/// * [upstreamEventId]
/// * [evidenceGroupId] - ULID identifier
/// * [linkConfidence]
/// * [linkReason]
/// * [linkedAt]
@BuiltValue()
abstract class ObservationLink
    implements Built<ObservationLink, ObservationLinkBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'canonicalEventId')
  String get canonicalEventId;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'recordRef')
  String? get recordRef;

  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'externalId')
  String get externalId;

  @BuiltValueField(wireName: r'seq')
  int get seq;

  @BuiltValueField(wireName: r'version')
  int? get version;

  @BuiltValueField(wireName: r'originatorId')
  String get originatorId;

  /// Included on event detail
  @BuiltValueField(wireName: r'originator')
  Originator? get originator;

  @BuiltValueField(wireName: r'upstreamEventId')
  String? get upstreamEventId;

  /// ULID identifier
  @BuiltValueField(wireName: r'evidenceGroupId')
  String get evidenceGroupId;

  @BuiltValueField(wireName: r'linkConfidence')
  num get linkConfidence;

  @BuiltValueField(wireName: r'linkReason')
  ObservationLinkLinkReason get linkReason;

  @BuiltValueField(wireName: r'linkedAt')
  DateTime get linkedAt;

  ObservationLink._();

  factory ObservationLink([void updates(ObservationLinkBuilder b)]) =
      _$ObservationLink;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ObservationLinkBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ObservationLink> get serializer =>
      _$ObservationLinkSerializer();
}

class _$ObservationLinkSerializer
    implements PrimitiveSerializer<ObservationLink> {
  @override
  final Iterable<Type> types = const [ObservationLink, _$ObservationLink];

  @override
  final String wireName = r'ObservationLink';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ObservationLink object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'canonicalEventId';
    yield serializers.serialize(
      object.canonicalEventId,
      specifiedType: const FullType(String),
    );
    if (object.recordRef != null) {
      yield r'recordRef';
      yield serializers.serialize(
        object.recordRef,
        specifiedType: const FullType(String),
      );
    }
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'externalId';
    yield serializers.serialize(
      object.externalId,
      specifiedType: const FullType(String),
    );
    yield r'seq';
    yield serializers.serialize(object.seq, specifiedType: const FullType(int));
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
    yield r'originatorId';
    yield serializers.serialize(
      object.originatorId,
      specifiedType: const FullType(String),
    );
    if (object.originator != null) {
      yield r'originator';
      yield serializers.serialize(
        object.originator,
        specifiedType: const FullType.nullable(Originator),
      );
    }
    if (object.upstreamEventId != null) {
      yield r'upstreamEventId';
      yield serializers.serialize(
        object.upstreamEventId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'evidenceGroupId';
    yield serializers.serialize(
      object.evidenceGroupId,
      specifiedType: const FullType(String),
    );
    yield r'linkConfidence';
    yield serializers.serialize(
      object.linkConfidence,
      specifiedType: const FullType(num),
    );
    yield r'linkReason';
    yield serializers.serialize(
      object.linkReason,
      specifiedType: const FullType(ObservationLinkLinkReason),
    );
    yield r'linkedAt';
    yield serializers.serialize(
      object.linkedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ObservationLink object, {
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
    required ObservationLinkBuilder result,
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
        case r'recordRef':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.recordRef = valueDes;
          break;
        case r'sourceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.sourceId = valueDes;
          break;
        case r'externalId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.externalId = valueDes;
          break;
        case r'seq':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.seq = valueDes;
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'originatorId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.originatorId = valueDes;
          break;
        case r'originator':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Originator),
                  )
                  as Originator?;
          if (valueDes == null) continue;
          result.originator.replace(valueDes);
          break;
        case r'upstreamEventId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.upstreamEventId = valueDes;
          break;
        case r'evidenceGroupId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.evidenceGroupId = valueDes;
          break;
        case r'linkConfidence':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.linkConfidence = valueDes;
          break;
        case r'linkReason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ObservationLinkLinkReason),
                  )
                  as ObservationLinkLinkReason;
          result.linkReason.replace(valueDes);
          break;
        case r'linkedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.linkedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ObservationLink deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ObservationLinkBuilder();
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
