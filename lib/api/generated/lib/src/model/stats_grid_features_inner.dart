//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/stats_grid_features_inner_properties.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'stats_grid_features_inner.g.dart';

/// One cell
///
/// Properties:
/// * [type]
/// * [id]
/// * [geometry]
/// * [properties]
@BuiltValue()
abstract class StatsGridFeaturesInner
    implements Built<StatsGridFeaturesInner, StatsGridFeaturesInnerBuilder> {
  @BuiltValueField(wireName: r'type')
  StatsGridFeaturesInnerTypeEnum get type;
  // enum typeEnum {  Feature,  };

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'geometry')
  Geometry get geometry;

  @BuiltValueField(wireName: r'properties')
  StatsGridFeaturesInnerProperties get properties;

  StatsGridFeaturesInner._();

  factory StatsGridFeaturesInner([
    void updates(StatsGridFeaturesInnerBuilder b),
  ]) = _$StatsGridFeaturesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StatsGridFeaturesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StatsGridFeaturesInner> get serializer =>
      _$StatsGridFeaturesInnerSerializer();
}

class _$StatsGridFeaturesInnerSerializer
    implements PrimitiveSerializer<StatsGridFeaturesInner> {
  @override
  final Iterable<Type> types = const [
    StatsGridFeaturesInner,
    _$StatsGridFeaturesInner,
  ];

  @override
  final String wireName = r'StatsGridFeaturesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StatsGridFeaturesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(StatsGridFeaturesInnerTypeEnum),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
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
      specifiedType: const FullType(StatsGridFeaturesInnerProperties),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StatsGridFeaturesInner object, {
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
    required StatsGridFeaturesInnerBuilder result,
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
                    specifiedType: const FullType(
                      StatsGridFeaturesInnerTypeEnum,
                    ),
                  )
                  as StatsGridFeaturesInnerTypeEnum;
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
                      StatsGridFeaturesInnerProperties,
                    ),
                  )
                  as StatsGridFeaturesInnerProperties;
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
  StatsGridFeaturesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatsGridFeaturesInnerBuilder();
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

class StatsGridFeaturesInnerTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Feature')
  static const StatsGridFeaturesInnerTypeEnum feature =
      _$statsGridFeaturesInnerTypeEnum_feature;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const StatsGridFeaturesInnerTypeEnum unknownDefaultOpenApi =
      _$statsGridFeaturesInnerTypeEnum_unknownDefaultOpenApi;

  static Serializer<StatsGridFeaturesInnerTypeEnum> get serializer =>
      _$statsGridFeaturesInnerTypeEnumSerializer;

  const StatsGridFeaturesInnerTypeEnum._(String name) : super(name);

  static BuiltSet<StatsGridFeaturesInnerTypeEnum> get values =>
      _$statsGridFeaturesInnerTypeEnumValues;
  static StatsGridFeaturesInnerTypeEnum valueOf(String name) =>
      _$statsGridFeaturesInnerTypeEnumValueOf(name);
}
