//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/social_platform_stream_last_gap.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_platform_stream.g.dart';

/// Streaming state
///
/// Properties:
/// * [lagSeconds]
/// * [cursor] - Jetstream `time_us` or platform stream cursor
/// * [connectedSince]
/// * [lastGap]
@BuiltValue()
abstract class SocialPlatformStream
    implements Built<SocialPlatformStream, SocialPlatformStreamBuilder> {
  @BuiltValueField(wireName: r'lagSeconds')
  num? get lagSeconds;

  /// Jetstream `time_us` or platform stream cursor
  @BuiltValueField(wireName: r'cursor')
  String? get cursor;

  @BuiltValueField(wireName: r'connectedSince')
  DateTime? get connectedSince;

  @BuiltValueField(wireName: r'lastGap')
  SocialPlatformStreamLastGap? get lastGap;

  SocialPlatformStream._();

  factory SocialPlatformStream([void updates(SocialPlatformStreamBuilder b)]) =
      _$SocialPlatformStream;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialPlatformStreamBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialPlatformStream> get serializer =>
      _$SocialPlatformStreamSerializer();
}

class _$SocialPlatformStreamSerializer
    implements PrimitiveSerializer<SocialPlatformStream> {
  @override
  final Iterable<Type> types = const [
    SocialPlatformStream,
    _$SocialPlatformStream
  ];

  @override
  final String wireName = r'SocialPlatformStream';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialPlatformStream object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.lagSeconds != null) {
      yield r'lagSeconds';
      yield serializers.serialize(
        object.lagSeconds,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.cursor != null) {
      yield r'cursor';
      yield serializers.serialize(
        object.cursor,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.connectedSince != null) {
      yield r'connectedSince';
      yield serializers.serialize(
        object.connectedSince,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastGap != null) {
      yield r'lastGap';
      yield serializers.serialize(
        object.lastGap,
        specifiedType: const FullType.nullable(SocialPlatformStreamLastGap),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialPlatformStream object, {
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
    required SocialPlatformStreamBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'lagSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.lagSeconds = valueDes;
          break;
        case r'cursor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cursor = valueDes;
          break;
        case r'connectedSince':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.connectedSince = valueDes;
          break;
        case r'lastGap':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SocialPlatformStreamLastGap),
          ) as SocialPlatformStreamLastGap?;
          if (valueDes == null) continue;
          result.lastGap.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialPlatformStream deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialPlatformStreamBuilder();
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
