//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:foresignal_api/src/model/ogc_link.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/ogc_feature_properties.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ogc_feature.g.dart';

/// OGC API feature: current id {sourceId}:{externalId}, history id {sourceId}:{externalId}:{version}; properties are the merged payload plus title, sourceId, observedAt, eventTime, version (112)
///
/// Properties:
/// * [type]
/// * [id]
/// * [geometry]
/// * [properties]
/// * [links]
@BuiltValue()
abstract class OgcFeature implements Built<OgcFeature, OgcFeatureBuilder> {
  @BuiltValueField(wireName: r'type')
  OgcFeatureTypeEnum get type;
  // enum typeEnum {  Feature,  };

  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'geometry')
  Geometry? get geometry;

  @BuiltValueField(wireName: r'properties')
  OgcFeatureProperties get properties;

  @BuiltValueField(wireName: r'links')
  BuiltList<OgcLink>? get links;

  OgcFeature._();

  factory OgcFeature([void updates(OgcFeatureBuilder b)]) = _$OgcFeature;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OgcFeatureBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OgcFeature> get serializer => _$OgcFeatureSerializer();
}

class _$OgcFeatureSerializer implements PrimitiveSerializer<OgcFeature> {
  @override
  final Iterable<Type> types = const [OgcFeature, _$OgcFeature];

  @override
  final String wireName = r'OgcFeature';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OgcFeature object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(OgcFeatureTypeEnum),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
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
      specifiedType: const FullType(OgcFeatureProperties),
    );
    if (object.links != null) {
      yield r'links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(BuiltList, [FullType(OgcLink)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OgcFeature object, {
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
    required OgcFeatureBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OgcFeatureTypeEnum),
          ) as OgcFeatureTypeEnum;
          result.type = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'geometry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Geometry),
          ) as Geometry?;
          if (valueDes == null) continue;
          result.geometry.replace(valueDes);
          break;
        case r'properties':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OgcFeatureProperties),
          ) as OgcFeatureProperties;
          result.properties.replace(valueDes);
          break;
        case r'links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(OgcLink)]),
          ) as BuiltList<OgcLink>?;
          if (valueDes == null) continue;
          result.links.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OgcFeature deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OgcFeatureBuilder();
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

class OgcFeatureTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Feature')
  static const OgcFeatureTypeEnum feature = _$ogcFeatureTypeEnum_feature;

  static Serializer<OgcFeatureTypeEnum> get serializer =>
      _$ogcFeatureTypeEnumSerializer;

  const OgcFeatureTypeEnum._(String name) : super(name);

  static BuiltSet<OgcFeatureTypeEnum> get values => _$ogcFeatureTypeEnumValues;
  static OgcFeatureTypeEnum valueOf(String name) =>
      _$ogcFeatureTypeEnumValueOf(name);
}
