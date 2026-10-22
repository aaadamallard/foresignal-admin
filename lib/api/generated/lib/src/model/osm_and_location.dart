//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/osm_and_location_location.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'osm_and_location.g.dart';

/// Traccar Client JSON body accepted by the `osmand` format (039)
///
/// Properties:
/// * [deviceId]
/// * [location]
@BuiltValue()
abstract class OsmAndLocation
    implements Built<OsmAndLocation, OsmAndLocationBuilder> {
  @BuiltValueField(wireName: r'device_id')
  String get deviceId;

  @BuiltValueField(wireName: r'location')
  OsmAndLocationLocation get location;

  OsmAndLocation._();

  factory OsmAndLocation([void updates(OsmAndLocationBuilder b)]) =
      _$OsmAndLocation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OsmAndLocationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OsmAndLocation> get serializer =>
      _$OsmAndLocationSerializer();
}

class _$OsmAndLocationSerializer
    implements PrimitiveSerializer<OsmAndLocation> {
  @override
  final Iterable<Type> types = const [OsmAndLocation, _$OsmAndLocation];

  @override
  final String wireName = r'OsmAndLocation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OsmAndLocation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'device_id';
    yield serializers.serialize(
      object.deviceId,
      specifiedType: const FullType(String),
    );
    yield r'location';
    yield serializers.serialize(
      object.location,
      specifiedType: const FullType(OsmAndLocationLocation),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OsmAndLocation object, {
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
    required OsmAndLocationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'device_id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.deviceId = valueDes;
          break;
        case r'location':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(OsmAndLocationLocation),
                  )
                  as OsmAndLocationLocation;
          result.location.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OsmAndLocation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OsmAndLocationBuilder();
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
