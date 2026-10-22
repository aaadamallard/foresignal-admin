//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'satellite_pass_payload_rf_snr_by_elevation_inner.g.dart';

/// SNR sample
///
/// Properties:
/// * [elevationDeg]
/// * [snrDb]
@BuiltValue()
abstract class SatellitePassPayloadRfSnrByElevationInner
    implements
        Built<SatellitePassPayloadRfSnrByElevationInner,
            SatellitePassPayloadRfSnrByElevationInnerBuilder> {
  @BuiltValueField(wireName: r'elevationDeg')
  num get elevationDeg;

  @BuiltValueField(wireName: r'snrDb')
  num get snrDb;

  SatellitePassPayloadRfSnrByElevationInner._();

  factory SatellitePassPayloadRfSnrByElevationInner(
          [void updates(SatellitePassPayloadRfSnrByElevationInnerBuilder b)]) =
      _$SatellitePassPayloadRfSnrByElevationInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SatellitePassPayloadRfSnrByElevationInnerBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SatellitePassPayloadRfSnrByElevationInner> get serializer =>
      _$SatellitePassPayloadRfSnrByElevationInnerSerializer();
}

class _$SatellitePassPayloadRfSnrByElevationInnerSerializer
    implements PrimitiveSerializer<SatellitePassPayloadRfSnrByElevationInner> {
  @override
  final Iterable<Type> types = const [
    SatellitePassPayloadRfSnrByElevationInner,
    _$SatellitePassPayloadRfSnrByElevationInner
  ];

  @override
  final String wireName = r'SatellitePassPayloadRfSnrByElevationInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SatellitePassPayloadRfSnrByElevationInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'elevationDeg';
    yield serializers.serialize(
      object.elevationDeg,
      specifiedType: const FullType(num),
    );
    yield r'snrDb';
    yield serializers.serialize(
      object.snrDb,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SatellitePassPayloadRfSnrByElevationInner object, {
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
    required SatellitePassPayloadRfSnrByElevationInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'elevationDeg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.elevationDeg = valueDes;
          break;
        case r'snrDb':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.snrDb = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SatellitePassPayloadRfSnrByElevationInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SatellitePassPayloadRfSnrByElevationInnerBuilder();
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
