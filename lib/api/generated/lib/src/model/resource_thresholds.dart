//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/resource_thresholds_source_storm.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/resource_thresholds_collector_backlog.dart';
import 'package:foresignal_api/src/model/resource_threshold.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'resource_thresholds.g.dart';

/// Admin thresholds that raise /v1/system warnings and fire channel alerts when breached (B1/177). A PUT replaces the whole value: a missing member takes its default (disk 15 % warn / 5 % critical free, memory off, a storm at 5 failing sources, a backlog of 10,000 seq for 300 s) and an explicit null turns it off.
///
/// Properties:
/// * [disk]
/// * [memory]
/// * [alertChannels] - Channel ids notified on a breach, personal channels included, whatever their event filters. Empty uses every channel subscribed to `system` plus the personal channels of every active user with `audit.read`. An unknown id is a 400 that lists it.
/// * [sourceStorm]
/// * [collectorBacklog]
@BuiltValue()
abstract class ResourceThresholds
    implements Built<ResourceThresholds, ResourceThresholdsBuilder> {
  @BuiltValueField(wireName: r'disk')
  ResourceThreshold? get disk;

  @BuiltValueField(wireName: r'memory')
  ResourceThreshold? get memory;

  /// Channel ids notified on a breach, personal channels included, whatever their event filters. Empty uses every channel subscribed to `system` plus the personal channels of every active user with `audit.read`. An unknown id is a 400 that lists it.
  @BuiltValueField(wireName: r'alertChannels')
  BuiltList<String>? get alertChannels;

  @BuiltValueField(wireName: r'sourceStorm')
  ResourceThresholdsSourceStorm? get sourceStorm;

  @BuiltValueField(wireName: r'collectorBacklog')
  ResourceThresholdsCollectorBacklog? get collectorBacklog;

  ResourceThresholds._();

  factory ResourceThresholds([void updates(ResourceThresholdsBuilder b)]) =
      _$ResourceThresholds;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResourceThresholdsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResourceThresholds> get serializer =>
      _$ResourceThresholdsSerializer();
}

class _$ResourceThresholdsSerializer
    implements PrimitiveSerializer<ResourceThresholds> {
  @override
  final Iterable<Type> types = const [ResourceThresholds, _$ResourceThresholds];

  @override
  final String wireName = r'ResourceThresholds';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResourceThresholds object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.disk != null) {
      yield r'disk';
      yield serializers.serialize(
        object.disk,
        specifiedType: const FullType(ResourceThreshold),
      );
    }
    if (object.memory != null) {
      yield r'memory';
      yield serializers.serialize(
        object.memory,
        specifiedType: const FullType(ResourceThreshold),
      );
    }
    if (object.alertChannels != null) {
      yield r'alertChannels';
      yield serializers.serialize(
        object.alertChannels,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.sourceStorm != null) {
      yield r'sourceStorm';
      yield serializers.serialize(
        object.sourceStorm,
        specifiedType: const FullType.nullable(ResourceThresholdsSourceStorm),
      );
    }
    if (object.collectorBacklog != null) {
      yield r'collectorBacklog';
      yield serializers.serialize(
        object.collectorBacklog,
        specifiedType: const FullType.nullable(
          ResourceThresholdsCollectorBacklog,
        ),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ResourceThresholds object, {
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
    required ResourceThresholdsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'disk':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ResourceThreshold),
                  )
                  as ResourceThreshold?;
          if (valueDes == null) continue;
          result.disk.replace(valueDes);
          break;
        case r'memory':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ResourceThreshold),
                  )
                  as ResourceThreshold?;
          if (valueDes == null) continue;
          result.memory.replace(valueDes);
          break;
        case r'alertChannels':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.alertChannels.replace(valueDes);
          break;
        case r'sourceStorm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ResourceThresholdsSourceStorm,
                    ),
                  )
                  as ResourceThresholdsSourceStorm?;
          if (valueDes == null) continue;
          result.sourceStorm.replace(valueDes);
          break;
        case r'collectorBacklog':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ResourceThresholdsCollectorBacklog,
                    ),
                  )
                  as ResourceThresholdsCollectorBacklog?;
          if (valueDes == null) continue;
          result.collectorBacklog.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResourceThresholds deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceThresholdsBuilder();
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
