//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'storm_track_payload_cell.g.dart';

/// Current cell summary
///
/// Properties:
/// * [maxDbz]
/// * [areaKm2]
/// * [meshMaxMm]
/// * [flashRate]
@BuiltValue()
abstract class StormTrackPayloadCell
    implements Built<StormTrackPayloadCell, StormTrackPayloadCellBuilder> {
  @BuiltValueField(wireName: r'maxDbz')
  num? get maxDbz;

  @BuiltValueField(wireName: r'areaKm2')
  num? get areaKm2;

  @BuiltValueField(wireName: r'meshMaxMm')
  num? get meshMaxMm;

  @BuiltValueField(wireName: r'flashRate')
  num? get flashRate;

  StormTrackPayloadCell._();

  factory StormTrackPayloadCell(
      [void updates(StormTrackPayloadCellBuilder b)]) = _$StormTrackPayloadCell;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StormTrackPayloadCellBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StormTrackPayloadCell> get serializer =>
      _$StormTrackPayloadCellSerializer();
}

class _$StormTrackPayloadCellSerializer
    implements PrimitiveSerializer<StormTrackPayloadCell> {
  @override
  final Iterable<Type> types = const [
    StormTrackPayloadCell,
    _$StormTrackPayloadCell
  ];

  @override
  final String wireName = r'StormTrackPayloadCell';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StormTrackPayloadCell object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.maxDbz != null) {
      yield r'maxDbz';
      yield serializers.serialize(
        object.maxDbz,
        specifiedType: const FullType(num),
      );
    }
    if (object.areaKm2 != null) {
      yield r'areaKm2';
      yield serializers.serialize(
        object.areaKm2,
        specifiedType: const FullType(num),
      );
    }
    if (object.meshMaxMm != null) {
      yield r'meshMaxMm';
      yield serializers.serialize(
        object.meshMaxMm,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.flashRate != null) {
      yield r'flashRate';
      yield serializers.serialize(
        object.flashRate,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StormTrackPayloadCell object, {
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
    required StormTrackPayloadCellBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'maxDbz':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.maxDbz = valueDes;
          break;
        case r'areaKm2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.areaKm2 = valueDes;
          break;
        case r'meshMaxMm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.meshMaxMm = valueDes;
          break;
        case r'flashRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.flashRate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StormTrackPayloadCell deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StormTrackPayloadCellBuilder();
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
