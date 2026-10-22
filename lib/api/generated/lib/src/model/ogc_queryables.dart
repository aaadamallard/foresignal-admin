//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ogc_queryables.g.dart';

/// Queryables as a JSON Schema: top-level payload keys from the kind's fieldSpecs (008) plus title, sourceId, observedAt, eventTime, version (112)
///
/// Properties:
/// * [dollarSchema]
/// * [dollarId]
/// * [type]
/// * [title]
/// * [properties]
/// * [additionalProperties]
@BuiltValue()
abstract class OgcQueryables
    implements Built<OgcQueryables, OgcQueryablesBuilder> {
  @BuiltValueField(wireName: r'$schema')
  String? get dollarSchema;

  @BuiltValueField(wireName: r'$id')
  String? get dollarId;

  @BuiltValueField(wireName: r'type')
  OgcQueryablesTypeEnum get type;
  // enum typeEnum {  object,  };

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'properties')
  BuiltMap<String, BuiltMap<String, JsonObject?>> get properties;

  @BuiltValueField(wireName: r'additionalProperties')
  bool? get additionalProperties;

  OgcQueryables._();

  factory OgcQueryables([void updates(OgcQueryablesBuilder b)]) =
      _$OgcQueryables;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OgcQueryablesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OgcQueryables> get serializer =>
      _$OgcQueryablesSerializer();
}

class _$OgcQueryablesSerializer implements PrimitiveSerializer<OgcQueryables> {
  @override
  final Iterable<Type> types = const [OgcQueryables, _$OgcQueryables];

  @override
  final String wireName = r'OgcQueryables';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OgcQueryables object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.dollarSchema != null) {
      yield r'$schema';
      yield serializers.serialize(
        object.dollarSchema,
        specifiedType: const FullType(String),
      );
    }
    if (object.dollarId != null) {
      yield r'$id';
      yield serializers.serialize(
        object.dollarId,
        specifiedType: const FullType(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(OgcQueryablesTypeEnum),
    );
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    yield r'properties';
    yield serializers.serialize(
      object.properties,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      ]),
    );
    if (object.additionalProperties != null) {
      yield r'additionalProperties';
      yield serializers.serialize(
        object.additionalProperties,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OgcQueryables object, {
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
    required OgcQueryablesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'$schema':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.dollarSchema = valueDes;
          break;
        case r'$id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.dollarId = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(OgcQueryablesTypeEnum),
                  )
                  as OgcQueryablesTypeEnum;
          result.type = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'properties':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType(BuiltMap, [
                        FullType(String),
                        FullType.nullable(JsonObject),
                      ]),
                    ]),
                  )
                  as BuiltMap<String, BuiltMap<String, JsonObject?>>;
          result.properties.replace(valueDes);
          break;
        case r'additionalProperties':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.additionalProperties = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OgcQueryables deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OgcQueryablesBuilder();
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

class OgcQueryablesTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'object')
  static const OgcQueryablesTypeEnum object = _$ogcQueryablesTypeEnum_object;

  static Serializer<OgcQueryablesTypeEnum> get serializer =>
      _$ogcQueryablesTypeEnumSerializer;

  const OgcQueryablesTypeEnum._(String name) : super(name);

  static BuiltSet<OgcQueryablesTypeEnum> get values =>
      _$ogcQueryablesTypeEnumValues;
  static OgcQueryablesTypeEnum valueOf(String name) =>
      _$ogcQueryablesTypeEnumValueOf(name);
}
