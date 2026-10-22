//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sensor_capabilities.g.dart';

/// Curated public capabilities
///
/// Properties:
/// * [operator_]
/// * [sensorTypes]
/// * [resolutionM]
/// * [swathKm]
@BuiltValue()
abstract class SensorCapabilities
    implements Built<SensorCapabilities, SensorCapabilitiesBuilder> {
  @BuiltValueField(wireName: r'operator')
  String? get operator_;

  @BuiltValueField(wireName: r'sensorTypes')
  BuiltList<String>? get sensorTypes;

  @BuiltValueField(wireName: r'resolutionM')
  num? get resolutionM;

  @BuiltValueField(wireName: r'swathKm')
  num? get swathKm;

  SensorCapabilities._();

  factory SensorCapabilities([void updates(SensorCapabilitiesBuilder b)]) =
      _$SensorCapabilities;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SensorCapabilitiesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SensorCapabilities> get serializer =>
      _$SensorCapabilitiesSerializer();
}

class _$SensorCapabilitiesSerializer
    implements PrimitiveSerializer<SensorCapabilities> {
  @override
  final Iterable<Type> types = const [SensorCapabilities, _$SensorCapabilities];

  @override
  final String wireName = r'SensorCapabilities';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SensorCapabilities object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.operator_ != null) {
      yield r'operator';
      yield serializers.serialize(
        object.operator_,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sensorTypes != null) {
      yield r'sensorTypes';
      yield serializers.serialize(
        object.sensorTypes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.resolutionM != null) {
      yield r'resolutionM';
      yield serializers.serialize(
        object.resolutionM,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.swathKm != null) {
      yield r'swathKm';
      yield serializers.serialize(
        object.swathKm,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SensorCapabilities object, {
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
    required SensorCapabilitiesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'operator':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.operator_ = valueDes;
          break;
        case r'sensorTypes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.sensorTypes.replace(valueDes);
          break;
        case r'resolutionM':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.resolutionM = valueDes;
          break;
        case r'swathKm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.swathKm = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SensorCapabilities deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SensorCapabilitiesBuilder();
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
