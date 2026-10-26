//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'resource_thresholds_source_storm.g.dart';

/// Raises `system.source_storm` when at least this many sources are failing at once (R2-014)
///
/// Properties:
/// * [failedSources] - null turns the storm alert off
@BuiltValue()
abstract class ResourceThresholdsSourceStorm
    implements
        Built<
          ResourceThresholdsSourceStorm,
          ResourceThresholdsSourceStormBuilder
        > {
  /// null turns the storm alert off
  @BuiltValueField(wireName: r'failedSources')
  int? get failedSources;

  ResourceThresholdsSourceStorm._();

  factory ResourceThresholdsSourceStorm([
    void updates(ResourceThresholdsSourceStormBuilder b),
  ]) = _$ResourceThresholdsSourceStorm;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResourceThresholdsSourceStormBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResourceThresholdsSourceStorm> get serializer =>
      _$ResourceThresholdsSourceStormSerializer();
}

class _$ResourceThresholdsSourceStormSerializer
    implements PrimitiveSerializer<ResourceThresholdsSourceStorm> {
  @override
  final Iterable<Type> types = const [
    ResourceThresholdsSourceStorm,
    _$ResourceThresholdsSourceStorm,
  ];

  @override
  final String wireName = r'ResourceThresholdsSourceStorm';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResourceThresholdsSourceStorm object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.failedSources != null) {
      yield r'failedSources';
      yield serializers.serialize(
        object.failedSources,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ResourceThresholdsSourceStorm object, {
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
    required ResourceThresholdsSourceStormBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'failedSources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.failedSources = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResourceThresholdsSourceStorm deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceThresholdsSourceStormBuilder();
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
