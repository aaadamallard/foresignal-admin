//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/correlation_recipe_definition.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'correlation_recipe_update.g.dart';

/// Operator changes to a recipe: the enabled flag and parameter overrides, and for an operator-authored recipe a full definition to replace (prompt 157).
///
/// Properties:
/// * [enabled]
/// * [params] - Parameter overrides; null removes them
/// * [definition]
@BuiltValue()
abstract class CorrelationRecipeUpdate
    implements Built<CorrelationRecipeUpdate, CorrelationRecipeUpdateBuilder> {
  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  /// Parameter overrides; null removes them
  @BuiltValueField(wireName: r'params')
  BuiltMap<String, JsonObject?>? get params;

  @BuiltValueField(wireName: r'definition')
  CorrelationRecipeDefinition? get definition;

  CorrelationRecipeUpdate._();

  factory CorrelationRecipeUpdate([
    void updates(CorrelationRecipeUpdateBuilder b),
  ]) = _$CorrelationRecipeUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorrelationRecipeUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorrelationRecipeUpdate> get serializer =>
      _$CorrelationRecipeUpdateSerializer();
}

class _$CorrelationRecipeUpdateSerializer
    implements PrimitiveSerializer<CorrelationRecipeUpdate> {
  @override
  final Iterable<Type> types = const [
    CorrelationRecipeUpdate,
    _$CorrelationRecipeUpdate,
  ];

  @override
  final String wireName = r'CorrelationRecipeUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorrelationRecipeUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.params != null) {
      yield r'params';
      yield serializers.serialize(
        object.params,
        specifiedType: const FullType.nullable(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.definition != null) {
      yield r'definition';
      yield serializers.serialize(
        object.definition,
        specifiedType: const FullType(CorrelationRecipeDefinition),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorrelationRecipeUpdate object, {
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
    required CorrelationRecipeUpdateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'params':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.params.replace(valueDes);
          break;
        case r'definition':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      CorrelationRecipeDefinition,
                    ),
                  )
                  as CorrelationRecipeDefinition?;
          if (valueDes == null) continue;
          result.definition.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorrelationRecipeUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorrelationRecipeUpdateBuilder();
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
