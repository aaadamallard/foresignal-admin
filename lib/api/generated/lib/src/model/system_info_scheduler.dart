//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_info_scheduler.g.dart';

/// SystemInfoScheduler
///
/// Properties:
/// * [running]
/// * [scheduledSources]
/// * [activeFetches]
/// * [activeStreams]
/// * [ingestQueueDepth]
@BuiltValue()
abstract class SystemInfoScheduler
    implements Built<SystemInfoScheduler, SystemInfoSchedulerBuilder> {
  @BuiltValueField(wireName: r'running')
  bool? get running;

  @BuiltValueField(wireName: r'scheduledSources')
  int? get scheduledSources;

  @BuiltValueField(wireName: r'activeFetches')
  int? get activeFetches;

  @BuiltValueField(wireName: r'activeStreams')
  int? get activeStreams;

  @BuiltValueField(wireName: r'ingestQueueDepth')
  int? get ingestQueueDepth;

  SystemInfoScheduler._();

  factory SystemInfoScheduler([void updates(SystemInfoSchedulerBuilder b)]) =
      _$SystemInfoScheduler;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemInfoSchedulerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemInfoScheduler> get serializer =>
      _$SystemInfoSchedulerSerializer();
}

class _$SystemInfoSchedulerSerializer
    implements PrimitiveSerializer<SystemInfoScheduler> {
  @override
  final Iterable<Type> types = const [
    SystemInfoScheduler,
    _$SystemInfoScheduler
  ];

  @override
  final String wireName = r'SystemInfoScheduler';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemInfoScheduler object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.running != null) {
      yield r'running';
      yield serializers.serialize(
        object.running,
        specifiedType: const FullType(bool),
      );
    }
    if (object.scheduledSources != null) {
      yield r'scheduledSources';
      yield serializers.serialize(
        object.scheduledSources,
        specifiedType: const FullType(int),
      );
    }
    if (object.activeFetches != null) {
      yield r'activeFetches';
      yield serializers.serialize(
        object.activeFetches,
        specifiedType: const FullType(int),
      );
    }
    if (object.activeStreams != null) {
      yield r'activeStreams';
      yield serializers.serialize(
        object.activeStreams,
        specifiedType: const FullType(int),
      );
    }
    if (object.ingestQueueDepth != null) {
      yield r'ingestQueueDepth';
      yield serializers.serialize(
        object.ingestQueueDepth,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemInfoScheduler object, {
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
    required SystemInfoSchedulerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'running':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.running = valueDes;
          break;
        case r'scheduledSources':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.scheduledSources = valueDes;
          break;
        case r'activeFetches':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.activeFetches = valueDes;
          break;
        case r'activeStreams':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.activeStreams = valueDes;
          break;
        case r'ingestQueueDepth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.ingestQueueDepth = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemInfoScheduler deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemInfoSchedulerBuilder();
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
