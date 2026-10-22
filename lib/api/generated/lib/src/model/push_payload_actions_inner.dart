//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'push_payload_actions_inner.g.dart';

/// Action button (033)
///
/// Properties:
/// * [action]
/// * [title]
/// * [url]
@BuiltValue()
abstract class PushPayloadActionsInner
    implements Built<PushPayloadActionsInner, PushPayloadActionsInnerBuilder> {
  @BuiltValueField(wireName: r'action')
  String get action;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'url')
  String get url;

  PushPayloadActionsInner._();

  factory PushPayloadActionsInner(
          [void updates(PushPayloadActionsInnerBuilder b)]) =
      _$PushPayloadActionsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PushPayloadActionsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PushPayloadActionsInner> get serializer =>
      _$PushPayloadActionsInnerSerializer();
}

class _$PushPayloadActionsInnerSerializer
    implements PrimitiveSerializer<PushPayloadActionsInner> {
  @override
  final Iterable<Type> types = const [
    PushPayloadActionsInner,
    _$PushPayloadActionsInner
  ];

  @override
  final String wireName = r'PushPayloadActionsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PushPayloadActionsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'action';
    yield serializers.serialize(
      object.action,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PushPayloadActionsInner object, {
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
    required PushPayloadActionsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.action = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PushPayloadActionsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PushPayloadActionsInnerBuilder();
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
