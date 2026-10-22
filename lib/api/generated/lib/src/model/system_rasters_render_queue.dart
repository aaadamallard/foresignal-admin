//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_rasters_render_queue.g.dart';

/// Render queue gauges (045)
///
/// Properties:
/// * [depth]
/// * [active]
/// * [poolSize]
@BuiltValue()
abstract class SystemRastersRenderQueue
    implements
        Built<SystemRastersRenderQueue, SystemRastersRenderQueueBuilder> {
  @BuiltValueField(wireName: r'depth')
  int? get depth;

  @BuiltValueField(wireName: r'active')
  int? get active;

  @BuiltValueField(wireName: r'poolSize')
  int? get poolSize;

  SystemRastersRenderQueue._();

  factory SystemRastersRenderQueue(
          [void updates(SystemRastersRenderQueueBuilder b)]) =
      _$SystemRastersRenderQueue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemRastersRenderQueueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemRastersRenderQueue> get serializer =>
      _$SystemRastersRenderQueueSerializer();
}

class _$SystemRastersRenderQueueSerializer
    implements PrimitiveSerializer<SystemRastersRenderQueue> {
  @override
  final Iterable<Type> types = const [
    SystemRastersRenderQueue,
    _$SystemRastersRenderQueue
  ];

  @override
  final String wireName = r'SystemRastersRenderQueue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemRastersRenderQueue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.depth != null) {
      yield r'depth';
      yield serializers.serialize(
        object.depth,
        specifiedType: const FullType(int),
      );
    }
    if (object.active != null) {
      yield r'active';
      yield serializers.serialize(
        object.active,
        specifiedType: const FullType(int),
      );
    }
    if (object.poolSize != null) {
      yield r'poolSize';
      yield serializers.serialize(
        object.poolSize,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemRastersRenderQueue object, {
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
    required SystemRastersRenderQueueBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'depth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.depth = valueDes;
          break;
        case r'active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.active = valueDes;
          break;
        case r'poolSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.poolSize = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemRastersRenderQueue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemRastersRenderQueueBuilder();
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
