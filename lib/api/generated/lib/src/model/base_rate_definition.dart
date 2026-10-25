//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/base_rate_definition_condition.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'base_rate_definition.g.dart';

/// Reference class of a base rate: family, regions or region class, window and optional condition
///
/// Properties:
/// * [family] - Signal family plus subtype, e.g. `conflict:battles`, `seismic:m5`, `disaster:gdacs-orange+`
/// * [regionCodes] - Regions (exclusive with `regionClass`)
/// * [regionClass] - 040 region class, e.g. a continent or income group (exclusive with `regionCodes`)
/// * [window]
/// * [condition]
@BuiltValue()
abstract class BaseRateDefinition
    implements Built<BaseRateDefinition, BaseRateDefinitionBuilder> {
  /// Signal family plus subtype, e.g. `conflict:battles`, `seismic:m5`, `disaster:gdacs-orange+`
  @BuiltValueField(wireName: r'family')
  String get family;

  /// Regions (exclusive with `regionClass`)
  @BuiltValueField(wireName: r'regionCodes')
  BuiltList<String>? get regionCodes;

  /// 040 region class, e.g. a continent or income group (exclusive with `regionCodes`)
  @BuiltValueField(wireName: r'regionClass')
  String? get regionClass;

  @BuiltValueField(wireName: r'window')
  BaseRateDefinitionWindowEnum get window;
  // enum windowEnum {  P7D,  P28D,  P90D,  };

  @BuiltValueField(wireName: r'condition')
  BaseRateDefinitionCondition? get condition;

  BaseRateDefinition._();

  factory BaseRateDefinition([void updates(BaseRateDefinitionBuilder b)]) =
      _$BaseRateDefinition;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BaseRateDefinitionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BaseRateDefinition> get serializer =>
      _$BaseRateDefinitionSerializer();
}

class _$BaseRateDefinitionSerializer
    implements PrimitiveSerializer<BaseRateDefinition> {
  @override
  final Iterable<Type> types = const [BaseRateDefinition, _$BaseRateDefinition];

  @override
  final String wireName = r'BaseRateDefinition';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BaseRateDefinition object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'family';
    yield serializers.serialize(
      object.family,
      specifiedType: const FullType(String),
    );
    if (object.regionCodes != null) {
      yield r'regionCodes';
      yield serializers.serialize(
        object.regionCodes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.regionClass != null) {
      yield r'regionClass';
      yield serializers.serialize(
        object.regionClass,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'window';
    yield serializers.serialize(
      object.window,
      specifiedType: const FullType(BaseRateDefinitionWindowEnum),
    );
    if (object.condition != null) {
      yield r'condition';
      yield serializers.serialize(
        object.condition,
        specifiedType: const FullType.nullable(BaseRateDefinitionCondition),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BaseRateDefinition object, {
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
    required BaseRateDefinitionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'family':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.family = valueDes;
          break;
        case r'regionCodes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.regionCodes.replace(valueDes);
          break;
        case r'regionClass':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.regionClass = valueDes;
          break;
        case r'window':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BaseRateDefinitionWindowEnum),
                  )
                  as BaseRateDefinitionWindowEnum;
          result.window = valueDes;
          break;
        case r'condition':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      BaseRateDefinitionCondition,
                    ),
                  )
                  as BaseRateDefinitionCondition?;
          if (valueDes == null) continue;
          result.condition.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BaseRateDefinition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BaseRateDefinitionBuilder();
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

class BaseRateDefinitionWindowEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'P7D')
  static const BaseRateDefinitionWindowEnum P7D =
      _$baseRateDefinitionWindowEnum_P7D;
  @BuiltValueEnumConst(wireName: r'P28D')
  static const BaseRateDefinitionWindowEnum P28D =
      _$baseRateDefinitionWindowEnum_P28D;
  @BuiltValueEnumConst(wireName: r'P90D')
  static const BaseRateDefinitionWindowEnum P90D =
      _$baseRateDefinitionWindowEnum_P90D;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BaseRateDefinitionWindowEnum unknownDefaultOpenApi =
      _$baseRateDefinitionWindowEnum_unknownDefaultOpenApi;

  static Serializer<BaseRateDefinitionWindowEnum> get serializer =>
      _$baseRateDefinitionWindowEnumSerializer;

  const BaseRateDefinitionWindowEnum._(String name) : super(name);

  static BuiltSet<BaseRateDefinitionWindowEnum> get values =>
      _$baseRateDefinitionWindowEnumValues;
  static BaseRateDefinitionWindowEnum valueOf(String name) =>
      _$baseRateDefinitionWindowEnumValueOf(name);
}
