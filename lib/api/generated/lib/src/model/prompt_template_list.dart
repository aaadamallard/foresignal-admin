//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/prompt_template_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'prompt_template_list.g.dart';

/// PromptTemplateList
///
/// Properties:
/// * [items]
@BuiltValue()
abstract class PromptTemplateList
    implements Built<PromptTemplateList, PromptTemplateListBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<PromptTemplateSummary> get items;

  PromptTemplateList._();

  factory PromptTemplateList([void updates(PromptTemplateListBuilder b)]) =
      _$PromptTemplateList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PromptTemplateListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PromptTemplateList> get serializer =>
      _$PromptTemplateListSerializer();
}

class _$PromptTemplateListSerializer
    implements PrimitiveSerializer<PromptTemplateList> {
  @override
  final Iterable<Type> types = const [PromptTemplateList, _$PromptTemplateList];

  @override
  final String wireName = r'PromptTemplateList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PromptTemplateList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [
        FullType(PromptTemplateSummary),
      ]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PromptTemplateList object, {
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
    required PromptTemplateListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(PromptTemplateSummary),
                    ]),
                  )
                  as BuiltList<PromptTemplateSummary>;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PromptTemplateList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PromptTemplateListBuilder();
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
