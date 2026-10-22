//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_rasters_caches_value.g.dart';

/// Cache metrics
///
/// Properties:
/// * [sizeBytes]
/// * [maxBytes]
/// * [hitRate]
/// * [evictionRate] - Evictions per minute
@BuiltValue()
abstract class SystemRastersCachesValue
    implements
        Built<SystemRastersCachesValue, SystemRastersCachesValueBuilder> {
  @BuiltValueField(wireName: r'sizeBytes')
  int? get sizeBytes;

  @BuiltValueField(wireName: r'maxBytes')
  int? get maxBytes;

  @BuiltValueField(wireName: r'hitRate')
  num? get hitRate;

  /// Evictions per minute
  @BuiltValueField(wireName: r'evictionRate')
  num? get evictionRate;

  SystemRastersCachesValue._();

  factory SystemRastersCachesValue([
    void updates(SystemRastersCachesValueBuilder b),
  ]) = _$SystemRastersCachesValue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemRastersCachesValueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemRastersCachesValue> get serializer =>
      _$SystemRastersCachesValueSerializer();
}

class _$SystemRastersCachesValueSerializer
    implements PrimitiveSerializer<SystemRastersCachesValue> {
  @override
  final Iterable<Type> types = const [
    SystemRastersCachesValue,
    _$SystemRastersCachesValue,
  ];

  @override
  final String wireName = r'SystemRastersCachesValue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemRastersCachesValue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.sizeBytes != null) {
      yield r'sizeBytes';
      yield serializers.serialize(
        object.sizeBytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxBytes != null) {
      yield r'maxBytes';
      yield serializers.serialize(
        object.maxBytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.hitRate != null) {
      yield r'hitRate';
      yield serializers.serialize(
        object.hitRate,
        specifiedType: const FullType(num),
      );
    }
    if (object.evictionRate != null) {
      yield r'evictionRate';
      yield serializers.serialize(
        object.evictionRate,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemRastersCachesValue object, {
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
    required SystemRastersCachesValueBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sizeBytes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.sizeBytes = valueDes;
          break;
        case r'maxBytes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxBytes = valueDes;
          break;
        case r'hitRate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.hitRate = valueDes;
          break;
        case r'evictionRate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.evictionRate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemRastersCachesValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemRastersCachesValueBuilder();
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
