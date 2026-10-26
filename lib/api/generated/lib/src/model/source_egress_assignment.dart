//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'source_egress_assignment.g.dart';

/// Per-source egress assignment (C1/181)
///
/// Properties:
/// * [routeId] - Pin the source to this route (with rotation on); null uses the rotation. A pinned route that is unusable fails the pull rather than moving it (R2-018)
/// * [excludeFromRotation] - With rotation on and no pin, keep the source on the default route, or direct when there is none (R2-018)
@BuiltValue()
abstract class SourceEgressAssignment
    implements Built<SourceEgressAssignment, SourceEgressAssignmentBuilder> {
  /// Pin the source to this route (with rotation on); null uses the rotation. A pinned route that is unusable fails the pull rather than moving it (R2-018)
  @BuiltValueField(wireName: r'routeId')
  String? get routeId;

  /// With rotation on and no pin, keep the source on the default route, or direct when there is none (R2-018)
  @BuiltValueField(wireName: r'excludeFromRotation')
  bool? get excludeFromRotation;

  SourceEgressAssignment._();

  factory SourceEgressAssignment([
    void updates(SourceEgressAssignmentBuilder b),
  ]) = _$SourceEgressAssignment;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SourceEgressAssignmentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SourceEgressAssignment> get serializer =>
      _$SourceEgressAssignmentSerializer();
}

class _$SourceEgressAssignmentSerializer
    implements PrimitiveSerializer<SourceEgressAssignment> {
  @override
  final Iterable<Type> types = const [
    SourceEgressAssignment,
    _$SourceEgressAssignment,
  ];

  @override
  final String wireName = r'SourceEgressAssignment';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SourceEgressAssignment object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.routeId != null) {
      yield r'routeId';
      yield serializers.serialize(
        object.routeId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.excludeFromRotation != null) {
      yield r'excludeFromRotation';
      yield serializers.serialize(
        object.excludeFromRotation,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SourceEgressAssignment object, {
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
    required SourceEgressAssignmentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'routeId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.routeId = valueDes;
          break;
        case r'excludeFromRotation':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.excludeFromRotation = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SourceEgressAssignment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SourceEgressAssignmentBuilder();
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
