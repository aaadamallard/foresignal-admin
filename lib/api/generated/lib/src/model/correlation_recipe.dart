//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/correlation_recipe_definition.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'correlation_recipe.g.dart';

/// A versioned correlation recipe; built-ins load from resources and keep operator param overrides
///
/// Properties:
/// * [id]
/// * [version]
/// * [builtIn]
/// * [origin] - Whether the recipe is a bundled classpath recipe or operator-authored (prompt 157)
/// * [enabled]
/// * [definition]
/// * [params] - Operator overrides
/// * [disabledReason] - e.g. seed kinds missing (recipe loaded disabled with a warning)
/// * [lastRunAt]
/// * [lastError]
@BuiltValue()
abstract class CorrelationRecipe
    implements Built<CorrelationRecipe, CorrelationRecipeBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'version')
  int get version;

  @BuiltValueField(wireName: r'builtIn')
  bool? get builtIn;

  /// Whether the recipe is a bundled classpath recipe or operator-authored (prompt 157)
  @BuiltValueField(wireName: r'origin')
  CorrelationRecipeOriginEnum? get origin;
  // enum originEnum {  bundled,  operator,  };

  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  @BuiltValueField(wireName: r'definition')
  CorrelationRecipeDefinition get definition;

  /// Operator overrides
  @BuiltValueField(wireName: r'params')
  BuiltMap<String, JsonObject?>? get params;

  /// e.g. seed kinds missing (recipe loaded disabled with a warning)
  @BuiltValueField(wireName: r'disabledReason')
  String? get disabledReason;

  @BuiltValueField(wireName: r'lastRunAt')
  DateTime? get lastRunAt;

  @BuiltValueField(wireName: r'lastError')
  String? get lastError;

  CorrelationRecipe._();

  factory CorrelationRecipe([void updates(CorrelationRecipeBuilder b)]) =
      _$CorrelationRecipe;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorrelationRecipeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorrelationRecipe> get serializer =>
      _$CorrelationRecipeSerializer();
}

class _$CorrelationRecipeSerializer
    implements PrimitiveSerializer<CorrelationRecipe> {
  @override
  final Iterable<Type> types = const [CorrelationRecipe, _$CorrelationRecipe];

  @override
  final String wireName = r'CorrelationRecipe';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorrelationRecipe object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(int),
    );
    if (object.builtIn != null) {
      yield r'builtIn';
      yield serializers.serialize(
        object.builtIn,
        specifiedType: const FullType(bool),
      );
    }
    if (object.origin != null) {
      yield r'origin';
      yield serializers.serialize(
        object.origin,
        specifiedType: const FullType(CorrelationRecipeOriginEnum),
      );
    }
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    yield r'definition';
    yield serializers.serialize(
      object.definition,
      specifiedType: const FullType(CorrelationRecipeDefinition),
    );
    if (object.params != null) {
      yield r'params';
      yield serializers.serialize(
        object.params,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.disabledReason != null) {
      yield r'disabledReason';
      yield serializers.serialize(
        object.disabledReason,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lastRunAt != null) {
      yield r'lastRunAt';
      yield serializers.serialize(
        object.lastRunAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastError != null) {
      yield r'lastError';
      yield serializers.serialize(
        object.lastError,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorrelationRecipe object, {
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
    required CorrelationRecipeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.version = valueDes;
          break;
        case r'builtIn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.builtIn = valueDes;
          break;
        case r'origin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CorrelationRecipeOriginEnum),
          ) as CorrelationRecipeOriginEnum?;
          if (valueDes == null) continue;
          result.origin = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        case r'definition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CorrelationRecipeDefinition),
          ) as CorrelationRecipeDefinition;
          result.definition.replace(valueDes);
          break;
        case r'params':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.params.replace(valueDes);
          break;
        case r'disabledReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.disabledReason = valueDes;
          break;
        case r'lastRunAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastRunAt = valueDes;
          break;
        case r'lastError':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastError = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorrelationRecipe deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorrelationRecipeBuilder();
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

/// Whether the recipe is a bundled classpath recipe or operator-authored (prompt 157)
class CorrelationRecipeOriginEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'bundled')
  static const CorrelationRecipeOriginEnum bundled =
      _$correlationRecipeOriginEnum_bundled;
  @BuiltValueEnumConst(wireName: r'operator')
  static const CorrelationRecipeOriginEnum operator_ =
      _$correlationRecipeOriginEnum_operator_;

  static Serializer<CorrelationRecipeOriginEnum> get serializer =>
      _$correlationRecipeOriginEnumSerializer;

  const CorrelationRecipeOriginEnum._(String name) : super(name);

  static BuiltSet<CorrelationRecipeOriginEnum> get values =>
      _$correlationRecipeOriginEnumValues;
  static CorrelationRecipeOriginEnum valueOf(String name) =>
      _$correlationRecipeOriginEnumValueOf(name);
}
