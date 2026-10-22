//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/osm_and_location_location_battery.dart';
import 'package:foresignal_api/src/model/osm_and_location_location_coords.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'osm_and_location_location.g.dart';

/// Fix
///
/// Properties:
/// * [timestamp] - ISO-8601
/// * [coords]
/// * [battery]
/// * [isMoving]
/// * [event]
@BuiltValue()
abstract class OsmAndLocationLocation
    implements Built<OsmAndLocationLocation, OsmAndLocationLocationBuilder> {
  /// ISO-8601
  @BuiltValueField(wireName: r'timestamp')
  String? get timestamp;

  @BuiltValueField(wireName: r'coords')
  OsmAndLocationLocationCoords get coords;

  @BuiltValueField(wireName: r'battery')
  OsmAndLocationLocationBattery? get battery;

  @BuiltValueField(wireName: r'is_moving')
  bool? get isMoving;

  @BuiltValueField(wireName: r'event')
  String? get event;

  OsmAndLocationLocation._();

  factory OsmAndLocationLocation(
          [void updates(OsmAndLocationLocationBuilder b)]) =
      _$OsmAndLocationLocation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OsmAndLocationLocationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OsmAndLocationLocation> get serializer =>
      _$OsmAndLocationLocationSerializer();
}

class _$OsmAndLocationLocationSerializer
    implements PrimitiveSerializer<OsmAndLocationLocation> {
  @override
  final Iterable<Type> types = const [
    OsmAndLocationLocation,
    _$OsmAndLocationLocation
  ];

  @override
  final String wireName = r'OsmAndLocationLocation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OsmAndLocationLocation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType(String),
      );
    }
    yield r'coords';
    yield serializers.serialize(
      object.coords,
      specifiedType: const FullType(OsmAndLocationLocationCoords),
    );
    if (object.battery != null) {
      yield r'battery';
      yield serializers.serialize(
        object.battery,
        specifiedType: const FullType(OsmAndLocationLocationBattery),
      );
    }
    if (object.isMoving != null) {
      yield r'is_moving';
      yield serializers.serialize(
        object.isMoving,
        specifiedType: const FullType(bool),
      );
    }
    if (object.event != null) {
      yield r'event';
      yield serializers.serialize(
        object.event,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OsmAndLocationLocation object, {
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
    required OsmAndLocationLocationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.timestamp = valueDes;
          break;
        case r'coords':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OsmAndLocationLocationCoords),
          ) as OsmAndLocationLocationCoords;
          result.coords.replace(valueDes);
          break;
        case r'battery':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(OsmAndLocationLocationBattery),
          ) as OsmAndLocationLocationBattery?;
          if (valueDes == null) continue;
          result.battery.replace(valueDes);
          break;
        case r'is_moving':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isMoving = valueDes;
          break;
        case r'event':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.event = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OsmAndLocationLocation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OsmAndLocationLocationBuilder();
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
