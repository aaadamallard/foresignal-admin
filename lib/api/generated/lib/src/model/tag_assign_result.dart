//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/tag_assign_result_skipped_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tag_assign_result.g.dart';

/// Outcome of a bulk tag assignment or removal
///
/// Properties:
/// * [tagId] - ULID identifier
/// * [changed] - Assignments created (assign) or removed (unassign)
/// * [unchanged] - Already assigned (assign) or not assigned (unassign)
/// * [skipped]
@BuiltValue()
abstract class TagAssignResult
    implements Built<TagAssignResult, TagAssignResultBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'tagId')
  String get tagId;

  /// Assignments created (assign) or removed (unassign)
  @BuiltValueField(wireName: r'changed')
  int get changed;

  /// Already assigned (assign) or not assigned (unassign)
  @BuiltValueField(wireName: r'unchanged')
  int get unchanged;

  @BuiltValueField(wireName: r'skipped')
  BuiltList<TagAssignResultSkippedInner> get skipped;

  TagAssignResult._();

  factory TagAssignResult([void updates(TagAssignResultBuilder b)]) =
      _$TagAssignResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TagAssignResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TagAssignResult> get serializer =>
      _$TagAssignResultSerializer();
}

class _$TagAssignResultSerializer
    implements PrimitiveSerializer<TagAssignResult> {
  @override
  final Iterable<Type> types = const [TagAssignResult, _$TagAssignResult];

  @override
  final String wireName = r'TagAssignResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TagAssignResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'tagId';
    yield serializers.serialize(
      object.tagId,
      specifiedType: const FullType(String),
    );
    yield r'changed';
    yield serializers.serialize(
      object.changed,
      specifiedType: const FullType(int),
    );
    yield r'unchanged';
    yield serializers.serialize(
      object.unchanged,
      specifiedType: const FullType(int),
    );
    yield r'skipped';
    yield serializers.serialize(
      object.skipped,
      specifiedType: const FullType(BuiltList, [
        FullType(TagAssignResultSkippedInner),
      ]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TagAssignResult object, {
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
    required TagAssignResultBuilder result,
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
        case r'changed':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.changed = valueDes;
          break;
        case r'unchanged':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.unchanged = valueDes;
          break;
        case r'skipped':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(TagAssignResultSkippedInner),
                    ]),
                  )
                  as BuiltList<TagAssignResultSkippedInner>;
          result.skipped.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TagAssignResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TagAssignResultBuilder();
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
