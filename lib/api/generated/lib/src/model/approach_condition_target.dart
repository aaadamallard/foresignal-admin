//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'approach_condition_target.g.dart';

/// Exactly one of placeId, point or record
///
/// Properties:
/// * [placeId]
/// * [point]
/// * [record] - `{sourceId}/{externalId}`
@BuiltValue()
abstract class ApproachConditionTarget
    implements Built<ApproachConditionTarget, ApproachConditionTargetBuilder> {
  @BuiltValueField(wireName: r'placeId')
  String? get placeId;

  @BuiltValueField(wireName: r'point')
  Geometry? get point;

  /// `{sourceId}/{externalId}`
  @BuiltValueField(wireName: r'record')
  String? get record;

  ApproachConditionTarget._();

  factory ApproachConditionTarget([
    void updates(ApproachConditionTargetBuilder b),
  ]) = _$ApproachConditionTarget;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApproachConditionTargetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApproachConditionTarget> get serializer =>
      _$ApproachConditionTargetSerializer();
}

class _$ApproachConditionTargetSerializer
    implements PrimitiveSerializer<ApproachConditionTarget> {
  @override
  final Iterable<Type> types = const [
    ApproachConditionTarget,
    _$ApproachConditionTarget,
  ];

  @override
  final String wireName = r'ApproachConditionTarget';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApproachConditionTarget object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.placeId != null) {
      yield r'placeId';
      yield serializers.serialize(
        object.placeId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.point != null) {
      yield r'point';
      yield serializers.serialize(
        object.point,
        specifiedType: const FullType.nullable(Geometry),
      );
    }
    if (object.record != null) {
      yield r'record';
      yield serializers.serialize(
        object.record,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApproachConditionTarget object, {
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
    required ApproachConditionTargetBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'placeId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.placeId = valueDes;
          break;
        case r'point':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Geometry),
                  )
                  as Geometry?;
          if (valueDes == null) continue;
          result.point.replace(valueDes);
          break;
        case r'record':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.record = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApproachConditionTarget deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApproachConditionTargetBuilder();
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
