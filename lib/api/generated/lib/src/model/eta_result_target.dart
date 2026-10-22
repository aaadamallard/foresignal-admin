//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'eta_result_target.g.dart';

/// Target
///
/// Properties:
/// * [placeId]
/// * [point]
@BuiltValue()
abstract class EtaResultTarget
    implements Built<EtaResultTarget, EtaResultTargetBuilder> {
  @BuiltValueField(wireName: r'placeId')
  String? get placeId;

  @BuiltValueField(wireName: r'point')
  Geometry get point;

  EtaResultTarget._();

  factory EtaResultTarget([void updates(EtaResultTargetBuilder b)]) =
      _$EtaResultTarget;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EtaResultTargetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EtaResultTarget> get serializer =>
      _$EtaResultTargetSerializer();
}

class _$EtaResultTargetSerializer
    implements PrimitiveSerializer<EtaResultTarget> {
  @override
  final Iterable<Type> types = const [EtaResultTarget, _$EtaResultTarget];

  @override
  final String wireName = r'EtaResultTarget';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EtaResultTarget object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.placeId != null) {
      yield r'placeId';
      yield serializers.serialize(
        object.placeId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'point';
    yield serializers.serialize(
      object.point,
      specifiedType: const FullType(Geometry),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EtaResultTarget object, {
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
    required EtaResultTargetBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'placeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.placeId = valueDes;
          break;
        case r'point':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Geometry),
          ) as Geometry;
          result.point.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EtaResultTarget deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EtaResultTargetBuilder();
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
