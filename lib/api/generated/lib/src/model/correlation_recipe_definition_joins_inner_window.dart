//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'correlation_recipe_definition_joins_inner_window.g.dart';

/// Time window around the seed
///
/// Properties:
/// * [before] - Before the seed. ISO-8601 duration or shorthand (30m, 6h, 7d).
/// * [after] - After the seed. ISO-8601 duration or shorthand (30m, 6h, 7d).
@BuiltValue()
abstract class CorrelationRecipeDefinitionJoinsInnerWindow
    implements
        Built<CorrelationRecipeDefinitionJoinsInnerWindow,
            CorrelationRecipeDefinitionJoinsInnerWindowBuilder> {
  /// Before the seed. ISO-8601 duration or shorthand (30m, 6h, 7d).
  @BuiltValueField(wireName: r'before')
  String? get before;

  /// After the seed. ISO-8601 duration or shorthand (30m, 6h, 7d).
  @BuiltValueField(wireName: r'after')
  String? get after;

  CorrelationRecipeDefinitionJoinsInnerWindow._();

  factory CorrelationRecipeDefinitionJoinsInnerWindow(
          [void updates(
              CorrelationRecipeDefinitionJoinsInnerWindowBuilder b)]) =
      _$CorrelationRecipeDefinitionJoinsInnerWindow;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorrelationRecipeDefinitionJoinsInnerWindowBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorrelationRecipeDefinitionJoinsInnerWindow>
      get serializer =>
          _$CorrelationRecipeDefinitionJoinsInnerWindowSerializer();
}

class _$CorrelationRecipeDefinitionJoinsInnerWindowSerializer
    implements
        PrimitiveSerializer<CorrelationRecipeDefinitionJoinsInnerWindow> {
  @override
  final Iterable<Type> types = const [
    CorrelationRecipeDefinitionJoinsInnerWindow,
    _$CorrelationRecipeDefinitionJoinsInnerWindow
  ];

  @override
  final String wireName = r'CorrelationRecipeDefinitionJoinsInnerWindow';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorrelationRecipeDefinitionJoinsInnerWindow object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.before != null) {
      yield r'before';
      yield serializers.serialize(
        object.before,
        specifiedType: const FullType(String),
      );
    }
    if (object.after != null) {
      yield r'after';
      yield serializers.serialize(
        object.after,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorrelationRecipeDefinitionJoinsInnerWindow object, {
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
    required CorrelationRecipeDefinitionJoinsInnerWindowBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'before':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.before = valueDes;
          break;
        case r'after':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.after = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorrelationRecipeDefinitionJoinsInnerWindow deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorrelationRecipeDefinitionJoinsInnerWindowBuilder();
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
