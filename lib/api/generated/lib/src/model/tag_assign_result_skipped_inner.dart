//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tag_assign_result_skipped_inner.g.dart';

/// A reference that was not processed
///
/// Properties:
/// * [ref]
/// * [reason]
@BuiltValue()
abstract class TagAssignResultSkippedInner
    implements
        Built<TagAssignResultSkippedInner, TagAssignResultSkippedInnerBuilder> {
  @BuiltValueField(wireName: r'ref')
  String get ref;

  @BuiltValueField(wireName: r'reason')
  TagAssignResultSkippedInnerReasonEnum get reason;
  // enum reasonEnum {  not-visible,  invalid-ref,  };

  TagAssignResultSkippedInner._();

  factory TagAssignResultSkippedInner(
          [void updates(TagAssignResultSkippedInnerBuilder b)]) =
      _$TagAssignResultSkippedInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TagAssignResultSkippedInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TagAssignResultSkippedInner> get serializer =>
      _$TagAssignResultSkippedInnerSerializer();
}

class _$TagAssignResultSkippedInnerSerializer
    implements PrimitiveSerializer<TagAssignResultSkippedInner> {
  @override
  final Iterable<Type> types = const [
    TagAssignResultSkippedInner,
    _$TagAssignResultSkippedInner
  ];

  @override
  final String wireName = r'TagAssignResultSkippedInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TagAssignResultSkippedInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(TagAssignResultSkippedInnerReasonEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TagAssignResultSkippedInner object, {
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
    required TagAssignResultSkippedInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ref':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ref = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(TagAssignResultSkippedInnerReasonEnum),
          ) as TagAssignResultSkippedInnerReasonEnum;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TagAssignResultSkippedInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TagAssignResultSkippedInnerBuilder();
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

class TagAssignResultSkippedInnerReasonEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'not-visible')
  static const TagAssignResultSkippedInnerReasonEnum notVisible =
      _$tagAssignResultSkippedInnerReasonEnum_notVisible;
  @BuiltValueEnumConst(wireName: r'invalid-ref')
  static const TagAssignResultSkippedInnerReasonEnum invalidRef =
      _$tagAssignResultSkippedInnerReasonEnum_invalidRef;

  static Serializer<TagAssignResultSkippedInnerReasonEnum> get serializer =>
      _$tagAssignResultSkippedInnerReasonEnumSerializer;

  const TagAssignResultSkippedInnerReasonEnum._(String name) : super(name);

  static BuiltSet<TagAssignResultSkippedInnerReasonEnum> get values =>
      _$tagAssignResultSkippedInnerReasonEnumValues;
  static TagAssignResultSkippedInnerReasonEnum valueOf(String name) =>
      _$tagAssignResultSkippedInnerReasonEnumValueOf(name);
}
