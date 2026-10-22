//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'overland_batch_locations_inner_properties.g.dart';

/// Overland point properties
///
/// Properties:
/// * [timestamp]
/// * [horizontalAccuracy]
/// * [altitude]
/// * [speed] - m/s
/// * [course]
/// * [motion]
/// * [batteryLevel]
/// * [batteryState]
/// * [wifi]
/// * [deviceId] - → externalId (a device key forces its bound id)
@BuiltValue()
abstract class OverlandBatchLocationsInnerProperties
    implements
        Built<
          OverlandBatchLocationsInnerProperties,
          OverlandBatchLocationsInnerPropertiesBuilder
        > {
  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  @BuiltValueField(wireName: r'horizontal_accuracy')
  num? get horizontalAccuracy;

  @BuiltValueField(wireName: r'altitude')
  num? get altitude;

  /// m/s
  @BuiltValueField(wireName: r'speed')
  num? get speed;

  @BuiltValueField(wireName: r'course')
  num? get course;

  @BuiltValueField(wireName: r'motion')
  BuiltList<String>? get motion;

  @BuiltValueField(wireName: r'battery_level')
  num? get batteryLevel;

  @BuiltValueField(wireName: r'battery_state')
  String? get batteryState;

  @BuiltValueField(wireName: r'wifi')
  String? get wifi;

  /// → externalId (a device key forces its bound id)
  @BuiltValueField(wireName: r'device_id')
  String? get deviceId;

  OverlandBatchLocationsInnerProperties._();

  factory OverlandBatchLocationsInnerProperties([
    void updates(OverlandBatchLocationsInnerPropertiesBuilder b),
  ]) = _$OverlandBatchLocationsInnerProperties;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OverlandBatchLocationsInnerPropertiesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OverlandBatchLocationsInnerProperties> get serializer =>
      _$OverlandBatchLocationsInnerPropertiesSerializer();
}

class _$OverlandBatchLocationsInnerPropertiesSerializer
    implements PrimitiveSerializer<OverlandBatchLocationsInnerProperties> {
  @override
  final Iterable<Type> types = const [
    OverlandBatchLocationsInnerProperties,
    _$OverlandBatchLocationsInnerProperties,
  ];

  @override
  final String wireName = r'OverlandBatchLocationsInnerProperties';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OverlandBatchLocationsInnerProperties object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.horizontalAccuracy != null) {
      yield r'horizontal_accuracy';
      yield serializers.serialize(
        object.horizontalAccuracy,
        specifiedType: const FullType(num),
      );
    }
    if (object.altitude != null) {
      yield r'altitude';
      yield serializers.serialize(
        object.altitude,
        specifiedType: const FullType(num),
      );
    }
    if (object.speed != null) {
      yield r'speed';
      yield serializers.serialize(
        object.speed,
        specifiedType: const FullType(num),
      );
    }
    if (object.course != null) {
      yield r'course';
      yield serializers.serialize(
        object.course,
        specifiedType: const FullType(num),
      );
    }
    if (object.motion != null) {
      yield r'motion';
      yield serializers.serialize(
        object.motion,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.batteryLevel != null) {
      yield r'battery_level';
      yield serializers.serialize(
        object.batteryLevel,
        specifiedType: const FullType(num),
      );
    }
    if (object.batteryState != null) {
      yield r'battery_state';
      yield serializers.serialize(
        object.batteryState,
        specifiedType: const FullType(String),
      );
    }
    if (object.wifi != null) {
      yield r'wifi';
      yield serializers.serialize(
        object.wifi,
        specifiedType: const FullType(String),
      );
    }
    if (object.deviceId != null) {
      yield r'device_id';
      yield serializers.serialize(
        object.deviceId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OverlandBatchLocationsInnerProperties object, {
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
    required OverlandBatchLocationsInnerPropertiesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'timestamp':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.timestamp = valueDes;
          break;
        case r'horizontal_accuracy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.horizontalAccuracy = valueDes;
          break;
        case r'altitude':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.altitude = valueDes;
          break;
        case r'speed':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.speed = valueDes;
          break;
        case r'course':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.course = valueDes;
          break;
        case r'motion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.motion.replace(valueDes);
          break;
        case r'battery_level':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.batteryLevel = valueDes;
          break;
        case r'battery_state':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.batteryState = valueDes;
          break;
        case r'wifi':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.wifi = valueDes;
          break;
        case r'device_id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.deviceId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OverlandBatchLocationsInnerProperties deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OverlandBatchLocationsInnerPropertiesBuilder();
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
