//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/correlation_recipe_definition.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'correlation_recipe_create.g.dart';

/// Authors a new operator correlation recipe (prompt 157).
///
/// Properties:
/// * [id] - A slug not already in use and not a bundled recipe id
/// * [definition]
/// * [enabled] - Defaults to true
@BuiltValue()
abstract class CorrelationRecipeCreate
    implements Built<CorrelationRecipeCreate, CorrelationRecipeCreateBuilder> {
  /// A slug not already in use and not a bundled recipe id
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'definition')
  CorrelationRecipeDefinition get definition;

  /// Defaults to true
  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  CorrelationRecipeCreate._();

  factory CorrelationRecipeCreate([
    void updates(CorrelationRecipeCreateBuilder b),
  ]) = _$CorrelationRecipeCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorrelationRecipeCreateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorrelationRecipeCreate> get serializer =>
      _$CorrelationRecipeCreateSerializer();
}

class _$CorrelationRecipeCreateSerializer
    implements PrimitiveSerializer<CorrelationRecipeCreate> {
  @override
  final Iterable<Type> types = const [
    CorrelationRecipeCreate,
    _$CorrelationRecipeCreate,
  ];

  @override
  final String wireName = r'CorrelationRecipeCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorrelationRecipeCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'definition';
    yield serializers.serialize(
      object.definition,
      specifiedType: const FullType(CorrelationRecipeDefinition),
    );
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorrelationRecipeCreate object, {
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
    required CorrelationRecipeCreateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'definition':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(CorrelationRecipeDefinition),
                  )
                  as CorrelationRecipeDefinition;
          result.definition.replace(valueDes);
          break;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorrelationRecipeCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorrelationRecipeCreateBuilder();
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
