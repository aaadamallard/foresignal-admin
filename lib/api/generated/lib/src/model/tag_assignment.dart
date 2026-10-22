//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/principal_summary.dart';
import 'package:foresignal_api/src/model/tag.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tag_assignment.g.dart';

/// A tag assigned to an object
///
/// Properties:
/// * [tagId] - ULID identifier
/// * [tag]
/// * [objectRef] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [assignedBy]
/// * [assignedAt]
@BuiltValue()
abstract class TagAssignment
    implements Built<TagAssignment, TagAssignmentBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'tagId')
  String get tagId;

  @BuiltValueField(wireName: r'tag')
  Tag? get tag;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'objectRef')
  String get objectRef;

  @BuiltValueField(wireName: r'assignedBy')
  PrincipalSummary? get assignedBy;

  @BuiltValueField(wireName: r'assignedAt')
  DateTime get assignedAt;

  TagAssignment._();

  factory TagAssignment([void updates(TagAssignmentBuilder b)]) =
      _$TagAssignment;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TagAssignmentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TagAssignment> get serializer =>
      _$TagAssignmentSerializer();
}

class _$TagAssignmentSerializer implements PrimitiveSerializer<TagAssignment> {
  @override
  final Iterable<Type> types = const [TagAssignment, _$TagAssignment];

  @override
  final String wireName = r'TagAssignment';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TagAssignment object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'tagId';
    yield serializers.serialize(
      object.tagId,
      specifiedType: const FullType(String),
    );
    if (object.tag != null) {
      yield r'tag';
      yield serializers.serialize(
        object.tag,
        specifiedType: const FullType(Tag),
      );
    }
    yield r'objectRef';
    yield serializers.serialize(
      object.objectRef,
      specifiedType: const FullType(String),
    );
    if (object.assignedBy != null) {
      yield r'assignedBy';
      yield serializers.serialize(
        object.assignedBy,
        specifiedType: const FullType(PrincipalSummary),
      );
    }
    yield r'assignedAt';
    yield serializers.serialize(
      object.assignedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TagAssignment object, {
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
    required TagAssignmentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tagId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.tagId = valueDes;
          break;
        case r'tag':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Tag),
                  )
                  as Tag?;
          if (valueDes == null) continue;
          result.tag.replace(valueDes);
          break;
        case r'objectRef':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.objectRef = valueDes;
          break;
        case r'assignedBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(PrincipalSummary),
                  )
                  as PrincipalSummary?;
          if (valueDes == null) continue;
          result.assignedBy.replace(valueDes);
          break;
        case r'assignedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.assignedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TagAssignment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TagAssignmentBuilder();
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
