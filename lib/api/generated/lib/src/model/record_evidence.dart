//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/canonical_event.dart';
import 'package:foresignal_api/src/model/observation_link.dart';
import 'package:foresignal_api/src/model/originator.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'record_evidence.g.dart';

/// Evidence identity of one record: its originator, links and canonical events (116)
///
/// Properties:
/// * [sourceId]
/// * [externalId]
/// * [originator]
/// * [links]
/// * [canonicalEvents] - Summaries
@BuiltValue()
abstract class RecordEvidence
    implements Built<RecordEvidence, RecordEvidenceBuilder> {
  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'externalId')
  String get externalId;

  @BuiltValueField(wireName: r'originator')
  Originator get originator;

  @BuiltValueField(wireName: r'links')
  BuiltList<ObservationLink> get links;

  /// Summaries
  @BuiltValueField(wireName: r'canonicalEvents')
  BuiltList<CanonicalEvent> get canonicalEvents;

  RecordEvidence._();

  factory RecordEvidence([void updates(RecordEvidenceBuilder b)]) =
      _$RecordEvidence;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecordEvidenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecordEvidence> get serializer =>
      _$RecordEvidenceSerializer();
}

class _$RecordEvidenceSerializer
    implements PrimitiveSerializer<RecordEvidence> {
  @override
  final Iterable<Type> types = const [RecordEvidence, _$RecordEvidence];

  @override
  final String wireName = r'RecordEvidence';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecordEvidence object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    yield r'originator';
    yield serializers.serialize(
      object.originator,
      specifiedType: const FullType(Originator),
    );
    yield r'links';
    yield serializers.serialize(
      object.links,
      specifiedType: const FullType(BuiltList, [FullType(ObservationLink)]),
    );
    yield r'canonicalEvents';
    yield serializers.serialize(
      object.canonicalEvents,
      specifiedType: const FullType(BuiltList, [FullType(CanonicalEvent)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RecordEvidence object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RecordEvidenceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sourceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceId = valueDes;
          break;
        case r'externalId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.externalId = valueDes;
          break;
        case r'originator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Originator),
          ) as Originator;
          result.originator.replace(valueDes);
          break;
        case r'links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(ObservationLink)]),
          ) as BuiltList<ObservationLink>;
          result.links.replace(valueDes);
          break;
        case r'canonicalEvents':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(CanonicalEvent)]),
          ) as BuiltList<CanonicalEvent>;
          result.canonicalEvents.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RecordEvidence deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecordEvidenceBuilder();
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
