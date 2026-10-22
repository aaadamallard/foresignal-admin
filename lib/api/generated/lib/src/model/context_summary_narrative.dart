//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'context_summary_narrative.g.dart';

/// Optional LLM text; omitted when no provider
///
/// Properties:
/// * [text]
/// * [textOrigin]
@BuiltValue()
abstract class ContextSummaryNarrative
    implements Built<ContextSummaryNarrative, ContextSummaryNarrativeBuilder> {
  @BuiltValueField(wireName: r'text')
  String get text;

  @BuiltValueField(wireName: r'textOrigin')
  ContextSummaryNarrativeTextOriginEnum get textOrigin;
  // enum textOriginEnum {  llm,  };

  ContextSummaryNarrative._();

  factory ContextSummaryNarrative([
    void updates(ContextSummaryNarrativeBuilder b),
  ]) = _$ContextSummaryNarrative;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ContextSummaryNarrativeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ContextSummaryNarrative> get serializer =>
      _$ContextSummaryNarrativeSerializer();
}

class _$ContextSummaryNarrativeSerializer
    implements PrimitiveSerializer<ContextSummaryNarrative> {
  @override
  final Iterable<Type> types = const [
    ContextSummaryNarrative,
    _$ContextSummaryNarrative,
  ];

  @override
  final String wireName = r'ContextSummaryNarrative';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ContextSummaryNarrative object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
    yield r'textOrigin';
    yield serializers.serialize(
      object.textOrigin,
      specifiedType: const FullType(ContextSummaryNarrativeTextOriginEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ContextSummaryNarrative object, {
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
    required ContextSummaryNarrativeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'text':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.text = valueDes;
          break;
        case r'textOrigin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      ContextSummaryNarrativeTextOriginEnum,
                    ),
                  )
                  as ContextSummaryNarrativeTextOriginEnum;
          result.textOrigin = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ContextSummaryNarrative deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ContextSummaryNarrativeBuilder();
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

class ContextSummaryNarrativeTextOriginEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'llm')
  static const ContextSummaryNarrativeTextOriginEnum llm =
      _$contextSummaryNarrativeTextOriginEnum_llm;

  static Serializer<ContextSummaryNarrativeTextOriginEnum> get serializer =>
      _$contextSummaryNarrativeTextOriginEnumSerializer;

  const ContextSummaryNarrativeTextOriginEnum._(String name) : super(name);

  static BuiltSet<ContextSummaryNarrativeTextOriginEnum> get values =>
      _$contextSummaryNarrativeTextOriginEnumValues;
  static ContextSummaryNarrativeTextOriginEnum valueOf(String name) =>
      _$contextSummaryNarrativeTextOriginEnumValueOf(name);
}
