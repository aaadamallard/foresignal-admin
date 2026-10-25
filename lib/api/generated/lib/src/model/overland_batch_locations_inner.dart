//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/overland_batch_locations_inner_properties.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'overland_batch_locations_inner.g.dart';

/// One Overland point (GeoJSON Feature)
///
/// Properties:
/// * [type]
/// * [geometry]
/// * [properties]
@BuiltValue()
abstract class OverlandBatchLocationsInner
    implements
        Built<OverlandBatchLocationsInner, OverlandBatchLocationsInnerBuilder> {
  @BuiltValueField(wireName: r'type')
  OverlandBatchLocationsInnerTypeEnum? get type;
  // enum typeEnum {  Feature,  };

  @BuiltValueField(wireName: r'geometry')
  Geometry get geometry;

  @BuiltValueField(wireName: r'properties')
  OverlandBatchLocationsInnerProperties get properties;

  OverlandBatchLocationsInner._();

  factory OverlandBatchLocationsInner([
    void updates(OverlandBatchLocationsInnerBuilder b),
  ]) = _$OverlandBatchLocationsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OverlandBatchLocationsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OverlandBatchLocationsInner> get serializer =>
      _$OverlandBatchLocationsInnerSerializer();
}

class _$OverlandBatchLocationsInnerSerializer
    implements PrimitiveSerializer<OverlandBatchLocationsInner> {
  @override
  final Iterable<Type> types = const [
    OverlandBatchLocationsInner,
    _$OverlandBatchLocationsInner,
  ];

  @override
  final String wireName = r'OverlandBatchLocationsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OverlandBatchLocationsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(OverlandBatchLocationsInnerTypeEnum),
      );
    }
    yield r'geometry';
    yield serializers.serialize(
      object.geometry,
      specifiedType: const FullType(Geometry),
    );
    yield r'properties';
    yield serializers.serialize(
      object.properties,
      specifiedType: const FullType(OverlandBatchLocationsInnerProperties),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OverlandBatchLocationsInner object, {
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
    required OverlandBatchLocationsInnerBuilder result,
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
                    specifiedType: const FullType.nullable(
                      OverlandBatchLocationsInnerTypeEnum,
                    ),
                  )
                  as OverlandBatchLocationsInnerTypeEnum?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'geometry':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Geometry),
                  )
                  as Geometry;
          result.geometry.replace(valueDes);
          break;
        case r'properties':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      OverlandBatchLocationsInnerProperties,
                    ),
                  )
                  as OverlandBatchLocationsInnerProperties;
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
  OverlandBatchLocationsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OverlandBatchLocationsInnerBuilder();
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

class OverlandBatchLocationsInnerTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Feature')
  static const OverlandBatchLocationsInnerTypeEnum feature =
      _$overlandBatchLocationsInnerTypeEnum_feature;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const OverlandBatchLocationsInnerTypeEnum unknownDefaultOpenApi =
      _$overlandBatchLocationsInnerTypeEnum_unknownDefaultOpenApi;

  static Serializer<OverlandBatchLocationsInnerTypeEnum> get serializer =>
      _$overlandBatchLocationsInnerTypeEnumSerializer;

  const OverlandBatchLocationsInnerTypeEnum._(String name) : super(name);

  static BuiltSet<OverlandBatchLocationsInnerTypeEnum> get values =>
      _$overlandBatchLocationsInnerTypeEnumValues;
  static OverlandBatchLocationsInnerTypeEnum valueOf(String name) =>
      _$overlandBatchLocationsInnerTypeEnumValueOf(name);
}
