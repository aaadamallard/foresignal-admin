//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_post_geo.g.dart';

/// Platform-supplied location only (text-derived places come from 136 claims and never become `geom`)
///
/// Properties:
/// * [geometry]
/// * [placeName]
/// * [placeId] - Platform place id
@BuiltValue()
abstract class SocialPostGeo
    implements Built<SocialPostGeo, SocialPostGeoBuilder> {
  @BuiltValueField(wireName: r'geometry')
  Geometry? get geometry;

  @BuiltValueField(wireName: r'placeName')
  String? get placeName;

  /// Platform place id
  @BuiltValueField(wireName: r'placeId')
  String? get placeId;

  SocialPostGeo._();

  factory SocialPostGeo([void updates(SocialPostGeoBuilder b)]) =
      _$SocialPostGeo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialPostGeoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialPostGeo> get serializer =>
      _$SocialPostGeoSerializer();
}

class _$SocialPostGeoSerializer implements PrimitiveSerializer<SocialPostGeo> {
  @override
  final Iterable<Type> types = const [SocialPostGeo, _$SocialPostGeo];

  @override
  final String wireName = r'SocialPostGeo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialPostGeo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.geometry != null) {
      yield r'geometry';
      yield serializers.serialize(
        object.geometry,
        specifiedType: const FullType.nullable(Geometry),
      );
    }
    if (object.placeName != null) {
      yield r'placeName';
      yield serializers.serialize(
        object.placeName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.placeId != null) {
      yield r'placeId';
      yield serializers.serialize(
        object.placeId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialPostGeo object, {
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
    required SocialPostGeoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'placeName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.placeName = valueDes;
          break;
        case r'placeId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.placeId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialPostGeo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialPostGeoBuilder();
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
