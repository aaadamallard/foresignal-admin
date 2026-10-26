//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'resource_threshold.g.dart';

/// Warn/critical thresholds for one resource (free space or memory). A level is reached when the free share drops below its percent or the free amount below its bytes; a null level is off. Critical must be below warn.
///
/// Properties:
/// * [warnFreePercent] - Warn when free drops below this percent
/// * [warnFreeBytes] - Warn when free drops below this many bytes
/// * [criticalFreePercent] - Critical when free drops below this percent
/// * [criticalFreeBytes] - Critical when free drops below this many bytes
@BuiltValue()
abstract class ResourceThreshold
    implements Built<ResourceThreshold, ResourceThresholdBuilder> {
  /// Warn when free drops below this percent
  @BuiltValueField(wireName: r'warnFreePercent')
  num? get warnFreePercent;

  /// Warn when free drops below this many bytes
  @BuiltValueField(wireName: r'warnFreeBytes')
  int? get warnFreeBytes;

  /// Critical when free drops below this percent
  @BuiltValueField(wireName: r'criticalFreePercent')
  num? get criticalFreePercent;

  /// Critical when free drops below this many bytes
  @BuiltValueField(wireName: r'criticalFreeBytes')
  int? get criticalFreeBytes;

  ResourceThreshold._();

  factory ResourceThreshold([void updates(ResourceThresholdBuilder b)]) =
      _$ResourceThreshold;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResourceThresholdBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResourceThreshold> get serializer =>
      _$ResourceThresholdSerializer();
}

class _$ResourceThresholdSerializer
    implements PrimitiveSerializer<ResourceThreshold> {
  @override
  final Iterable<Type> types = const [ResourceThreshold, _$ResourceThreshold];

  @override
  final String wireName = r'ResourceThreshold';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResourceThreshold object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.warnFreePercent != null) {
      yield r'warnFreePercent';
      yield serializers.serialize(
        object.warnFreePercent,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.warnFreeBytes != null) {
      yield r'warnFreeBytes';
      yield serializers.serialize(
        object.warnFreeBytes,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.criticalFreePercent != null) {
      yield r'criticalFreePercent';
      yield serializers.serialize(
        object.criticalFreePercent,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.criticalFreeBytes != null) {
      yield r'criticalFreeBytes';
      yield serializers.serialize(
        object.criticalFreeBytes,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ResourceThreshold object, {
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
    required ResourceThresholdBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'warnFreePercent':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.warnFreePercent = valueDes;
          break;
        case r'warnFreeBytes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.warnFreeBytes = valueDes;
          break;
        case r'criticalFreePercent':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.criticalFreePercent = valueDes;
          break;
        case r'criticalFreeBytes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.criticalFreeBytes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResourceThreshold deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceThresholdBuilder();
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
