//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/push_payload.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'declarative_push_payload_notification.g.dart';

/// Declarative notification
///
/// Properties:
/// * [title]
/// * [body]
/// * [navigate] - links.web ?? links.api (033: the confirm page for actions)
/// * [lang]
/// * [tag]
/// * [silent]
/// * [data] - Foresignal payload minus title/body
@BuiltValue()
abstract class DeclarativePushPayloadNotification
    implements
        Built<
          DeclarativePushPayloadNotification,
          DeclarativePushPayloadNotificationBuilder
        > {
  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'body')
  String? get body;

  /// links.web ?? links.api (033: the confirm page for actions)
  @BuiltValueField(wireName: r'navigate')
  String get navigate;

  @BuiltValueField(wireName: r'lang')
  String? get lang;

  @BuiltValueField(wireName: r'tag')
  String? get tag;

  @BuiltValueField(wireName: r'silent')
  bool? get silent;

  /// Foresignal payload minus title/body
  @BuiltValueField(wireName: r'data')
  PushPayload? get data;

  DeclarativePushPayloadNotification._();

  factory DeclarativePushPayloadNotification([
    void updates(DeclarativePushPayloadNotificationBuilder b),
  ]) = _$DeclarativePushPayloadNotification;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeclarativePushPayloadNotificationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeclarativePushPayloadNotification> get serializer =>
      _$DeclarativePushPayloadNotificationSerializer();
}

class _$DeclarativePushPayloadNotificationSerializer
    implements PrimitiveSerializer<DeclarativePushPayloadNotification> {
  @override
  final Iterable<Type> types = const [
    DeclarativePushPayloadNotification,
    _$DeclarativePushPayloadNotification,
  ];

  @override
  final String wireName = r'DeclarativePushPayloadNotification';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeclarativePushPayloadNotification object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.body != null) {
      yield r'body';
      yield serializers.serialize(
        object.body,
        specifiedType: const FullType(String),
      );
    }
    yield r'navigate';
    yield serializers.serialize(
      object.navigate,
      specifiedType: const FullType(String),
    );
    if (object.lang != null) {
      yield r'lang';
      yield serializers.serialize(
        object.lang,
        specifiedType: const FullType(String),
      );
    }
    if (object.tag != null) {
      yield r'tag';
      yield serializers.serialize(
        object.tag,
        specifiedType: const FullType(String),
      );
    }
    if (object.silent != null) {
      yield r'silent';
      yield serializers.serialize(
        object.silent,
        specifiedType: const FullType(bool),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(PushPayload),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeclarativePushPayloadNotification object, {
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
    required DeclarativePushPayloadNotificationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.title = valueDes;
          break;
        case r'body':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.body = valueDes;
          break;
        case r'navigate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.navigate = valueDes;
          break;
        case r'lang':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.lang = valueDes;
          break;
        case r'tag':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.tag = valueDes;
          break;
        case r'silent':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.silent = valueDes;
          break;
        case r'data':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(PushPayload),
                  )
                  as PushPayload?;
          if (valueDes == null) continue;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeclarativePushPayloadNotification deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeclarativePushPayloadNotificationBuilder();
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
