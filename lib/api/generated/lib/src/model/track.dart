//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:foresignal_api/src/model/track_properties.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'track.g.dart';

/// Simplified trail of one entity as a GeoJSON Feature with MultiLineString geometry (037)
///
/// Properties:
/// * [type]
/// * [geometry] - MultiLineString; segments split at gaps, tombstones, versions outside the caller's restriction and the antimeridian; a lone point is repeated; null when the window holds no position
/// * [properties]
@BuiltValue()
abstract class Track implements Built<Track, TrackBuilder> {
  @BuiltValueField(wireName: r'type')
  TrackTypeEnum get type;
  // enum typeEnum {  Feature,  };

  /// MultiLineString; segments split at gaps, tombstones, versions outside the caller's restriction and the antimeridian; a lone point is repeated; null when the window holds no position
  @BuiltValueField(wireName: r'geometry')
  Geometry? get geometry;

  @BuiltValueField(wireName: r'properties')
  TrackProperties get properties;

  Track._();

  factory Track([void updates(TrackBuilder b)]) = _$Track;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TrackBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Track> get serializer => _$TrackSerializer();
}

class _$TrackSerializer implements PrimitiveSerializer<Track> {
  @override
  final Iterable<Type> types = const [Track, _$Track];

  @override
  final String wireName = r'Track';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Track object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(TrackTypeEnum),
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
      specifiedType: const FullType(TrackProperties),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Track object, {
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
    required TrackBuilder result,
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
                    specifiedType: const FullType(TrackTypeEnum),
                  )
                  as TrackTypeEnum;
          result.type = valueDes;
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
                    specifiedType: const FullType(TrackProperties),
                  )
                  as TrackProperties;
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
  Track deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrackBuilder();
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

class TrackTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Feature')
  static const TrackTypeEnum feature = _$trackTypeEnum_feature;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const TrackTypeEnum unknownDefaultOpenApi =
      _$trackTypeEnum_unknownDefaultOpenApi;

  static Serializer<TrackTypeEnum> get serializer => _$trackTypeEnumSerializer;

  const TrackTypeEnum._(String name) : super(name);

  static BuiltSet<TrackTypeEnum> get values => _$trackTypeEnumValues;
  static TrackTypeEnum valueOf(String name) => _$trackTypeEnumValueOf(name);
}
