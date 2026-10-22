//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'osm_and_location_location_battery.g.dart';

/// Battery
///
/// Properties:
/// * [level]
/// * [isCharging]
@BuiltValue()
abstract class OsmAndLocationLocationBattery
    implements
        Built<
          OsmAndLocationLocationBattery,
          OsmAndLocationLocationBatteryBuilder
        > {
  @BuiltValueField(wireName: r'level')
  num? get level;

  @BuiltValueField(wireName: r'is_charging')
  bool? get isCharging;

  OsmAndLocationLocationBattery._();

  factory OsmAndLocationLocationBattery([
    void updates(OsmAndLocationLocationBatteryBuilder b),
  ]) = _$OsmAndLocationLocationBattery;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OsmAndLocationLocationBatteryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OsmAndLocationLocationBattery> get serializer =>
      _$OsmAndLocationLocationBatterySerializer();
}

class _$OsmAndLocationLocationBatterySerializer
    implements PrimitiveSerializer<OsmAndLocationLocationBattery> {
  @override
  final Iterable<Type> types = const [
    OsmAndLocationLocationBattery,
    _$OsmAndLocationLocationBattery,
  ];

  @override
  final String wireName = r'OsmAndLocationLocationBattery';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OsmAndLocationLocationBattery object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.level != null) {
      yield r'level';
      yield serializers.serialize(
        object.level,
        specifiedType: const FullType(num),
      );
    }
    if (object.isCharging != null) {
      yield r'is_charging';
      yield serializers.serialize(
        object.isCharging,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OsmAndLocationLocationBattery object, {
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
    required OsmAndLocationLocationBatteryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'level':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.level = valueDes;
          break;
        case r'is_charging':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.isCharging = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OsmAndLocationLocationBattery deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OsmAndLocationLocationBatteryBuilder();
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
