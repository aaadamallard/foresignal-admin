//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/condition.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'correlation_recipe_definition_seed.g.dart';

/// Seed records
///
/// Properties:
/// * [kinds]
/// * [sources]
/// * [conditions]
@BuiltValue()
abstract class CorrelationRecipeDefinitionSeed
    implements
        Built<
          CorrelationRecipeDefinitionSeed,
          CorrelationRecipeDefinitionSeedBuilder
        > {
  @BuiltValueField(wireName: r'kinds')
  BuiltList<String>? get kinds;

  @BuiltValueField(wireName: r'sources')
  BuiltList<String>? get sources;

  @BuiltValueField(wireName: r'conditions')
  BuiltList<Condition>? get conditions;

  CorrelationRecipeDefinitionSeed._();

  factory CorrelationRecipeDefinitionSeed([
    void updates(CorrelationRecipeDefinitionSeedBuilder b),
  ]) = _$CorrelationRecipeDefinitionSeed;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorrelationRecipeDefinitionSeedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorrelationRecipeDefinitionSeed> get serializer =>
      _$CorrelationRecipeDefinitionSeedSerializer();
}

class _$CorrelationRecipeDefinitionSeedSerializer
    implements PrimitiveSerializer<CorrelationRecipeDefinitionSeed> {
  @override
  final Iterable<Type> types = const [
    CorrelationRecipeDefinitionSeed,
    _$CorrelationRecipeDefinitionSeed,
  ];

  @override
  final String wireName = r'CorrelationRecipeDefinitionSeed';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorrelationRecipeDefinitionSeed object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.kinds != null) {
      yield r'kinds';
      yield serializers.serialize(
        object.kinds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.sources != null) {
      yield r'sources';
      yield serializers.serialize(
        object.sources,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.conditions != null) {
      yield r'conditions';
      yield serializers.serialize(
        object.conditions,
        specifiedType: const FullType(BuiltList, [FullType(Condition)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorrelationRecipeDefinitionSeed object, {
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
    required CorrelationRecipeDefinitionSeedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kinds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.kinds.replace(valueDes);
          break;
        case r'sources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.sources.replace(valueDes);
          break;
        case r'conditions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(Condition),
                    ]),
                  )
                  as BuiltList<Condition>?;
          if (valueDes == null) continue;
          result.conditions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorrelationRecipeDefinitionSeed deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorrelationRecipeDefinitionSeedBuilder();
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
