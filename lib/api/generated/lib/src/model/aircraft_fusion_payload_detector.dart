//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'aircraft_fusion_payload_detector.g.dart';

/// Generator id and version
///
/// Properties:
/// * [id]
/// * [version]
@BuiltValue()
abstract class AircraftFusionPayloadDetector
    implements
        Built<
          AircraftFusionPayloadDetector,
          AircraftFusionPayloadDetectorBuilder
        > {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'version')
  String get version;

  AircraftFusionPayloadDetector._();

  factory AircraftFusionPayloadDetector([
    void updates(AircraftFusionPayloadDetectorBuilder b),
  ]) = _$AircraftFusionPayloadDetector;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AircraftFusionPayloadDetectorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AircraftFusionPayloadDetector> get serializer =>
      _$AircraftFusionPayloadDetectorSerializer();
}

class _$AircraftFusionPayloadDetectorSerializer
    implements PrimitiveSerializer<AircraftFusionPayloadDetector> {
  @override
  final Iterable<Type> types = const [
    AircraftFusionPayloadDetector,
    _$AircraftFusionPayloadDetector,
  ];

  @override
  final String wireName = r'AircraftFusionPayloadDetector';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AircraftFusionPayloadDetector object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AircraftFusionPayloadDetector object, {
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
    required AircraftFusionPayloadDetectorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.version = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AircraftFusionPayloadDetector deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AircraftFusionPayloadDetectorBuilder();
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
