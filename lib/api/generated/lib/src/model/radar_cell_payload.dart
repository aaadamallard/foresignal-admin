//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/radar_cell_payload_motion.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'radar_cell_payload.g.dart';

/// Payload of `radar-cell` records (wx-cells, externalId `c-{ulid}`)
///
/// Properties:
/// * [maxDbz]
/// * [areaKm2]
/// * [meshMax]
/// * [glmFlashes5m]
/// * [motion]
/// * [automated]
/// * [notAWarning]
@BuiltValue()
abstract class RadarCellPayload
    implements Built<RadarCellPayload, RadarCellPayloadBuilder> {
  @BuiltValueField(wireName: r'maxDbz')
  num get maxDbz;

  @BuiltValueField(wireName: r'areaKm2')
  num get areaKm2;

  @BuiltValueField(wireName: r'meshMax')
  num? get meshMax;

  @BuiltValueField(wireName: r'glmFlashes5m')
  int? get glmFlashes5m;

  @BuiltValueField(wireName: r'motion')
  RadarCellPayloadMotion? get motion;

  @BuiltValueField(wireName: r'automated')
  bool? get automated;

  @BuiltValueField(wireName: r'notAWarning')
  bool? get notAWarning;

  RadarCellPayload._();

  factory RadarCellPayload([void updates(RadarCellPayloadBuilder b)]) =
      _$RadarCellPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RadarCellPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RadarCellPayload> get serializer =>
      _$RadarCellPayloadSerializer();
}

class _$RadarCellPayloadSerializer
    implements PrimitiveSerializer<RadarCellPayload> {
  @override
  final Iterable<Type> types = const [RadarCellPayload, _$RadarCellPayload];

  @override
  final String wireName = r'RadarCellPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RadarCellPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'maxDbz';
    yield serializers.serialize(
      object.maxDbz,
      specifiedType: const FullType(num),
    );
    yield r'areaKm2';
    yield serializers.serialize(
      object.areaKm2,
      specifiedType: const FullType(num),
    );
    if (object.meshMax != null) {
      yield r'meshMax';
      yield serializers.serialize(
        object.meshMax,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.glmFlashes5m != null) {
      yield r'glmFlashes5m';
      yield serializers.serialize(
        object.glmFlashes5m,
        specifiedType: const FullType(int),
      );
    }
    if (object.motion != null) {
      yield r'motion';
      yield serializers.serialize(
        object.motion,
        specifiedType: const FullType(RadarCellPayloadMotion),
      );
    }
    if (object.automated != null) {
      yield r'automated';
      yield serializers.serialize(
        object.automated,
        specifiedType: const FullType(bool),
      );
    }
    if (object.notAWarning != null) {
      yield r'notAWarning';
      yield serializers.serialize(
        object.notAWarning,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RadarCellPayload object, {
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
    required RadarCellPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'maxDbz':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.maxDbz = valueDes;
          break;
        case r'areaKm2':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.areaKm2 = valueDes;
          break;
        case r'meshMax':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.meshMax = valueDes;
          break;
        case r'glmFlashes5m':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.glmFlashes5m = valueDes;
          break;
        case r'motion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      RadarCellPayloadMotion,
                    ),
                  )
                  as RadarCellPayloadMotion?;
          if (valueDes == null) continue;
          result.motion.replace(valueDes);
          break;
        case r'automated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.automated = valueDes;
          break;
        case r'notAWarning':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.notAWarning = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RadarCellPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RadarCellPayloadBuilder();
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
