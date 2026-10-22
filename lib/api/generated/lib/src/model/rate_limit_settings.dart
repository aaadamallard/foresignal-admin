//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/rate_limit_settings_stream.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rate_limit_settings.g.dart';

/// Per-client rate limits per class, requests per minute (035). Key = token id, else feed-key id, else client IP (trusted proxies only).
///
/// Properties:
/// * [read]
/// * [tiles]
/// * [stream]
/// * [expensive] - search, Ask, LLM-backed MCP tools, /v1/sample
/// * [write]
/// * [anonymous] - Per IP
/// * [metricsPerMinute] - Optional limit for /actuator/prometheus by IP
@BuiltValue()
abstract class RateLimitSettings
    implements Built<RateLimitSettings, RateLimitSettingsBuilder> {
  @BuiltValueField(wireName: r'read')
  int? get read;

  @BuiltValueField(wireName: r'tiles')
  int? get tiles;

  @BuiltValueField(wireName: r'stream')
  RateLimitSettingsStream? get stream;

  /// search, Ask, LLM-backed MCP tools, /v1/sample
  @BuiltValueField(wireName: r'expensive')
  int? get expensive;

  @BuiltValueField(wireName: r'write')
  int? get write;

  /// Per IP
  @BuiltValueField(wireName: r'anonymous')
  int? get anonymous;

  /// Optional limit for /actuator/prometheus by IP
  @BuiltValueField(wireName: r'metricsPerMinute')
  int? get metricsPerMinute;

  RateLimitSettings._();

  factory RateLimitSettings([void updates(RateLimitSettingsBuilder b)]) =
      _$RateLimitSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RateLimitSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RateLimitSettings> get serializer =>
      _$RateLimitSettingsSerializer();
}

class _$RateLimitSettingsSerializer
    implements PrimitiveSerializer<RateLimitSettings> {
  @override
  final Iterable<Type> types = const [RateLimitSettings, _$RateLimitSettings];

  @override
  final String wireName = r'RateLimitSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RateLimitSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.read != null) {
      yield r'read';
      yield serializers.serialize(
        object.read,
        specifiedType: const FullType(int),
      );
    }
    if (object.tiles != null) {
      yield r'tiles';
      yield serializers.serialize(
        object.tiles,
        specifiedType: const FullType(int),
      );
    }
    if (object.stream != null) {
      yield r'stream';
      yield serializers.serialize(
        object.stream,
        specifiedType: const FullType(RateLimitSettingsStream),
      );
    }
    if (object.expensive != null) {
      yield r'expensive';
      yield serializers.serialize(
        object.expensive,
        specifiedType: const FullType(int),
      );
    }
    if (object.write != null) {
      yield r'write';
      yield serializers.serialize(
        object.write,
        specifiedType: const FullType(int),
      );
    }
    if (object.anonymous != null) {
      yield r'anonymous';
      yield serializers.serialize(
        object.anonymous,
        specifiedType: const FullType(int),
      );
    }
    if (object.metricsPerMinute != null) {
      yield r'metricsPerMinute';
      yield serializers.serialize(
        object.metricsPerMinute,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RateLimitSettings object, {
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
    required RateLimitSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'read':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.read = valueDes;
          break;
        case r'tiles':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.tiles = valueDes;
          break;
        case r'stream':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      RateLimitSettingsStream,
                    ),
                  )
                  as RateLimitSettingsStream?;
          if (valueDes == null) continue;
          result.stream.replace(valueDes);
          break;
        case r'expensive':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.expensive = valueDes;
          break;
        case r'write':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.write = valueDes;
          break;
        case r'anonymous':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.anonymous = valueDes;
          break;
        case r'metricsPerMinute':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.metricsPerMinute = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RateLimitSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RateLimitSettingsBuilder();
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
