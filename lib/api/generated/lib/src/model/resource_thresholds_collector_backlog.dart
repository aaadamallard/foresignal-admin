//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'resource_thresholds_collector_backlog.g.dart';

/// Raises `system.collector_backlog` when the trigger lag or the fetches waiting for a pull permit stay above their bound for `sustainedSeconds` (R2-014)
///
/// Properties:
/// * [triggerLagSeq] - Trigger lag bound in sequence numbers; null is off
/// * [waitingPulls] - Waiting-fetch bound; null is off
/// * [sustainedSeconds] - How long a bound must be exceeded (default 300)
@BuiltValue()
abstract class ResourceThresholdsCollectorBacklog
    implements
        Built<
          ResourceThresholdsCollectorBacklog,
          ResourceThresholdsCollectorBacklogBuilder
        > {
  /// Trigger lag bound in sequence numbers; null is off
  @BuiltValueField(wireName: r'triggerLagSeq')
  int? get triggerLagSeq;

  /// Waiting-fetch bound; null is off
  @BuiltValueField(wireName: r'waitingPulls')
  int? get waitingPulls;

  /// How long a bound must be exceeded (default 300)
  @BuiltValueField(wireName: r'sustainedSeconds')
  int? get sustainedSeconds;

  ResourceThresholdsCollectorBacklog._();

  factory ResourceThresholdsCollectorBacklog([
    void updates(ResourceThresholdsCollectorBacklogBuilder b),
  ]) = _$ResourceThresholdsCollectorBacklog;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResourceThresholdsCollectorBacklogBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResourceThresholdsCollectorBacklog> get serializer =>
      _$ResourceThresholdsCollectorBacklogSerializer();
}

class _$ResourceThresholdsCollectorBacklogSerializer
    implements PrimitiveSerializer<ResourceThresholdsCollectorBacklog> {
  @override
  final Iterable<Type> types = const [
    ResourceThresholdsCollectorBacklog,
    _$ResourceThresholdsCollectorBacklog,
  ];

  @override
  final String wireName = r'ResourceThresholdsCollectorBacklog';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResourceThresholdsCollectorBacklog object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.triggerLagSeq != null) {
      yield r'triggerLagSeq';
      yield serializers.serialize(
        object.triggerLagSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.waitingPulls != null) {
      yield r'waitingPulls';
      yield serializers.serialize(
        object.waitingPulls,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.sustainedSeconds != null) {
      yield r'sustainedSeconds';
      yield serializers.serialize(
        object.sustainedSeconds,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ResourceThresholdsCollectorBacklog object, {
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
    required ResourceThresholdsCollectorBacklogBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'triggerLagSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.triggerLagSeq = valueDes;
          break;
        case r'waitingPulls':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.waitingPulls = valueDes;
          break;
        case r'sustainedSeconds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.sustainedSeconds = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResourceThresholdsCollectorBacklog deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceThresholdsCollectorBacklogBuilder();
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
