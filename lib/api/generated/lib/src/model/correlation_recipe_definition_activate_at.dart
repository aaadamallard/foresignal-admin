//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'correlation_recipe_definition_activate_at.g.dart';

/// Threshold for emerging → active
///
/// Properties:
/// * [members]
/// * [confidence]
/// * [modalities] - The distinct sensing modalities activation also requires (154), or absent to not require any
@BuiltValue()
abstract class CorrelationRecipeDefinitionActivateAt
    implements
        Built<CorrelationRecipeDefinitionActivateAt,
            CorrelationRecipeDefinitionActivateAtBuilder> {
  @BuiltValueField(wireName: r'members')
  int? get members;

  @BuiltValueField(wireName: r'confidence')
  num? get confidence;

  /// The distinct sensing modalities activation also requires (154), or absent to not require any
  @BuiltValueField(wireName: r'modalities')
  int? get modalities;

  CorrelationRecipeDefinitionActivateAt._();

  factory CorrelationRecipeDefinitionActivateAt(
          [void updates(CorrelationRecipeDefinitionActivateAtBuilder b)]) =
      _$CorrelationRecipeDefinitionActivateAt;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorrelationRecipeDefinitionActivateAtBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorrelationRecipeDefinitionActivateAt> get serializer =>
      _$CorrelationRecipeDefinitionActivateAtSerializer();
}

class _$CorrelationRecipeDefinitionActivateAtSerializer
    implements PrimitiveSerializer<CorrelationRecipeDefinitionActivateAt> {
  @override
  final Iterable<Type> types = const [
    CorrelationRecipeDefinitionActivateAt,
    _$CorrelationRecipeDefinitionActivateAt
  ];

  @override
  final String wireName = r'CorrelationRecipeDefinitionActivateAt';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorrelationRecipeDefinitionActivateAt object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.members != null) {
      yield r'members';
      yield serializers.serialize(
        object.members,
        specifiedType: const FullType(int),
      );
    }
    if (object.confidence != null) {
      yield r'confidence';
      yield serializers.serialize(
        object.confidence,
        specifiedType: const FullType(num),
      );
    }
    if (object.modalities != null) {
      yield r'modalities';
      yield serializers.serialize(
        object.modalities,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorrelationRecipeDefinitionActivateAt object, {
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
    required CorrelationRecipeDefinitionActivateAtBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'members':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.members = valueDes;
          break;
        case r'confidence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.confidence = valueDes;
          break;
        case r'modalities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.modalities = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorrelationRecipeDefinitionActivateAt deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorrelationRecipeDefinitionActivateAtBuilder();
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
