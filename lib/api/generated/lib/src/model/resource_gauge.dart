//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'resource_gauge.g.dart';

/// A single resource reading
///
/// Properties:
/// * [totalBytes]
/// * [usedBytes]
/// * [freeBytes]
/// * [usedPercent]
/// * [status]
@BuiltValue()
abstract class ResourceGauge
    implements Built<ResourceGauge, ResourceGaugeBuilder> {
  @BuiltValueField(wireName: r'totalBytes')
  int? get totalBytes;

  @BuiltValueField(wireName: r'usedBytes')
  int? get usedBytes;

  @BuiltValueField(wireName: r'freeBytes')
  int? get freeBytes;

  @BuiltValueField(wireName: r'usedPercent')
  num? get usedPercent;

  @BuiltValueField(wireName: r'status')
  String get status;

  ResourceGauge._();

  factory ResourceGauge([void updates(ResourceGaugeBuilder b)]) =
      _$ResourceGauge;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResourceGaugeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResourceGauge> get serializer =>
      _$ResourceGaugeSerializer();
}

class _$ResourceGaugeSerializer implements PrimitiveSerializer<ResourceGauge> {
  @override
  final Iterable<Type> types = const [ResourceGauge, _$ResourceGauge];

  @override
  final String wireName = r'ResourceGauge';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResourceGauge object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.totalBytes != null) {
      yield r'totalBytes';
      yield serializers.serialize(
        object.totalBytes,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.usedBytes != null) {
      yield r'usedBytes';
      yield serializers.serialize(
        object.usedBytes,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.freeBytes != null) {
      yield r'freeBytes';
      yield serializers.serialize(
        object.freeBytes,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.usedPercent != null) {
      yield r'usedPercent';
      yield serializers.serialize(
        object.usedPercent,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ResourceGauge object, {
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
    required ResourceGaugeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'totalBytes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.totalBytes = valueDes;
          break;
        case r'usedBytes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.usedBytes = valueDes;
          break;
        case r'freeBytes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.freeBytes = valueDes;
          break;
        case r'usedPercent':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.usedPercent = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResourceGauge deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceGaugeBuilder();
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
