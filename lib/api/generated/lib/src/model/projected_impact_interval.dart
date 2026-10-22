//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'projected_impact_interval.g.dart';

/// Interval bounds
///
/// Properties:
/// * [lo]
/// * [hi]
@BuiltValue()
abstract class ProjectedImpactInterval
    implements Built<ProjectedImpactInterval, ProjectedImpactIntervalBuilder> {
  @BuiltValueField(wireName: r'lo')
  num get lo;

  @BuiltValueField(wireName: r'hi')
  num get hi;

  ProjectedImpactInterval._();

  factory ProjectedImpactInterval(
          [void updates(ProjectedImpactIntervalBuilder b)]) =
      _$ProjectedImpactInterval;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectedImpactIntervalBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectedImpactInterval> get serializer =>
      _$ProjectedImpactIntervalSerializer();
}

class _$ProjectedImpactIntervalSerializer
    implements PrimitiveSerializer<ProjectedImpactInterval> {
  @override
  final Iterable<Type> types = const [
    ProjectedImpactInterval,
    _$ProjectedImpactInterval
  ];

  @override
  final String wireName = r'ProjectedImpactInterval';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectedImpactInterval object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'lo';
    yield serializers.serialize(
      object.lo,
      specifiedType: const FullType(num),
    );
    yield r'hi';
    yield serializers.serialize(
      object.hi,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectedImpactInterval object, {
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
    required ProjectedImpactIntervalBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'lo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.lo = valueDes;
          break;
        case r'hi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.hi = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProjectedImpactInterval deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectedImpactIntervalBuilder();
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
