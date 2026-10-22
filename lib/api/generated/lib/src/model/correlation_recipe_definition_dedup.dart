//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'correlation_recipe_definition_dedup.g.dart';

/// Same-event dedup
///
/// Properties:
/// * [radiusKm]
/// * [window] - Overlap window. ISO-8601 duration or shorthand (30m, 6h, 7d).
@BuiltValue()
abstract class CorrelationRecipeDefinitionDedup
    implements
        Built<
          CorrelationRecipeDefinitionDedup,
          CorrelationRecipeDefinitionDedupBuilder
        > {
  @BuiltValueField(wireName: r'radiusKm')
  num? get radiusKm;

  /// Overlap window. ISO-8601 duration or shorthand (30m, 6h, 7d).
  @BuiltValueField(wireName: r'window')
  String? get window;

  CorrelationRecipeDefinitionDedup._();

  factory CorrelationRecipeDefinitionDedup([
    void updates(CorrelationRecipeDefinitionDedupBuilder b),
  ]) = _$CorrelationRecipeDefinitionDedup;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorrelationRecipeDefinitionDedupBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorrelationRecipeDefinitionDedup> get serializer =>
      _$CorrelationRecipeDefinitionDedupSerializer();
}

class _$CorrelationRecipeDefinitionDedupSerializer
    implements PrimitiveSerializer<CorrelationRecipeDefinitionDedup> {
  @override
  final Iterable<Type> types = const [
    CorrelationRecipeDefinitionDedup,
    _$CorrelationRecipeDefinitionDedup,
  ];

  @override
  final String wireName = r'CorrelationRecipeDefinitionDedup';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorrelationRecipeDefinitionDedup object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.radiusKm != null) {
      yield r'radiusKm';
      yield serializers.serialize(
        object.radiusKm,
        specifiedType: const FullType(num),
      );
    }
    if (object.window != null) {
      yield r'window';
      yield serializers.serialize(
        object.window,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorrelationRecipeDefinitionDedup object, {
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
    required CorrelationRecipeDefinitionDedupBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'radiusKm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.radiusKm = valueDes;
          break;
        case r'window':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.window = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorrelationRecipeDefinitionDedup deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorrelationRecipeDefinitionDedupBuilder();
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
