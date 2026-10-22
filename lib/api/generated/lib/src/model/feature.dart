//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/feature_properties.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'feature.g.dart';

/// Feature
///
/// Properties:
/// * [type]
/// * [id]
/// * [geometry]
/// * [properties]
@BuiltValue()
abstract class Feature implements Built<Feature, FeatureBuilder> {
  @BuiltValueField(wireName: r'type')
  FeatureTypeEnum get type;
  // enum typeEnum {  Feature,  };

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'geometry')
  Geometry? get geometry;

  @BuiltValueField(wireName: r'properties')
  FeatureProperties get properties;

  Feature._();

  factory Feature([void updates(FeatureBuilder b)]) = _$Feature;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FeatureBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Feature> get serializer => _$FeatureSerializer();
}

class _$FeatureSerializer implements PrimitiveSerializer<Feature> {
  @override
  final Iterable<Type> types = const [Feature, _$Feature];

  @override
  final String wireName = r'Feature';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Feature object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(FeatureTypeEnum),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    yield r'geometry';
    yield object.geometry == null
        ? null
        : serializers.serialize(
            object.geometry,
            specifiedType: const FullType.nullable(Geometry),
          );
    yield r'properties';
    yield serializers.serialize(
      object.properties,
      specifiedType: const FullType(FeatureProperties),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Feature object, {
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
    required FeatureBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(FeatureTypeEnum),
                  )
                  as FeatureTypeEnum;
          result.type = valueDes;
          break;
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'geometry':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Geometry),
                  )
                  as Geometry?;
          if (valueDes == null) continue;
          result.geometry.replace(valueDes);
          break;
        case r'properties':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(FeatureProperties),
                  )
                  as FeatureProperties;
          result.properties.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Feature deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FeatureBuilder();
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

class FeatureTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Feature')
  static const FeatureTypeEnum feature = _$featureTypeEnum_feature;

  static Serializer<FeatureTypeEnum> get serializer =>
      _$featureTypeEnumSerializer;

  const FeatureTypeEnum._(String name) : super(name);

  static BuiltSet<FeatureTypeEnum> get values => _$featureTypeEnumValues;
  static FeatureTypeEnum valueOf(String name) => _$featureTypeEnumValueOf(name);
}
