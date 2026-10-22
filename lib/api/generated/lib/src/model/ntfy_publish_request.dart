//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ntfy_publish_request.g.dart';

/// ntfy JSON publish body (`POST /compat/ntfy`, used by Uptime Kuma) (024)
///
/// Properties:
/// * [topic] - The custom source id
/// * [message]
/// * [title]
/// * [priority]
/// * [tags]
/// * [click]
@BuiltValue()
abstract class NtfyPublishRequest
    implements Built<NtfyPublishRequest, NtfyPublishRequestBuilder> {
  /// The custom source id
  @BuiltValueField(wireName: r'topic')
  String get topic;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'priority')
  int? get priority;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'click')
  String? get click;

  NtfyPublishRequest._();

  factory NtfyPublishRequest([void updates(NtfyPublishRequestBuilder b)]) =
      _$NtfyPublishRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NtfyPublishRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NtfyPublishRequest> get serializer =>
      _$NtfyPublishRequestSerializer();
}

class _$NtfyPublishRequestSerializer
    implements PrimitiveSerializer<NtfyPublishRequest> {
  @override
  final Iterable<Type> types = const [NtfyPublishRequest, _$NtfyPublishRequest];

  @override
  final String wireName = r'NtfyPublishRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NtfyPublishRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'topic';
    yield serializers.serialize(
      object.topic,
      specifiedType: const FullType(String),
    );
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.priority != null) {
      yield r'priority';
      yield serializers.serialize(
        object.priority,
        specifiedType: const FullType(int),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.click != null) {
      yield r'click';
      yield serializers.serialize(
        object.click,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NtfyPublishRequest object, {
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
    required NtfyPublishRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'topic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.topic = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'priority':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.priority = valueDes;
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        case r'click':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.click = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NtfyPublishRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NtfyPublishRequestBuilder();
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
