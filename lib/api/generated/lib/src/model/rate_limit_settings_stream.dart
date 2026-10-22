//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rate_limit_settings_stream.g.dart';

/// SSE limits
///
/// Properties:
/// * [opensPerMinute]
/// * [concurrent]
@BuiltValue()
abstract class RateLimitSettingsStream
    implements Built<RateLimitSettingsStream, RateLimitSettingsStreamBuilder> {
  @BuiltValueField(wireName: r'opensPerMinute')
  int? get opensPerMinute;

  @BuiltValueField(wireName: r'concurrent')
  int? get concurrent;

  RateLimitSettingsStream._();

  factory RateLimitSettingsStream(
          [void updates(RateLimitSettingsStreamBuilder b)]) =
      _$RateLimitSettingsStream;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RateLimitSettingsStreamBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RateLimitSettingsStream> get serializer =>
      _$RateLimitSettingsStreamSerializer();
}

class _$RateLimitSettingsStreamSerializer
    implements PrimitiveSerializer<RateLimitSettingsStream> {
  @override
  final Iterable<Type> types = const [
    RateLimitSettingsStream,
    _$RateLimitSettingsStream
  ];

  @override
  final String wireName = r'RateLimitSettingsStream';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RateLimitSettingsStream object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.opensPerMinute != null) {
      yield r'opensPerMinute';
      yield serializers.serialize(
        object.opensPerMinute,
        specifiedType: const FullType(int),
      );
    }
    if (object.concurrent != null) {
      yield r'concurrent';
      yield serializers.serialize(
        object.concurrent,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RateLimitSettingsStream object, {
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
    required RateLimitSettingsStreamBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'opensPerMinute':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.opensPerMinute = valueDes;
          break;
        case r'concurrent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.concurrent = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RateLimitSettingsStream deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RateLimitSettingsStreamBuilder();
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
