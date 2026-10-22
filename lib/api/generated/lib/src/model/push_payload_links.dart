//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'push_payload_links.g.dart';

/// Deep links (023 clientLinks; absent ones omitted)
///
/// Properties:
/// * [api]
/// * [app]
/// * [web]
@BuiltValue()
abstract class PushPayloadLinks
    implements Built<PushPayloadLinks, PushPayloadLinksBuilder> {
  @BuiltValueField(wireName: r'api')
  String? get api;

  @BuiltValueField(wireName: r'app')
  String? get app;

  @BuiltValueField(wireName: r'web')
  String? get web;

  PushPayloadLinks._();

  factory PushPayloadLinks([void updates(PushPayloadLinksBuilder b)]) =
      _$PushPayloadLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PushPayloadLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PushPayloadLinks> get serializer =>
      _$PushPayloadLinksSerializer();
}

class _$PushPayloadLinksSerializer
    implements PrimitiveSerializer<PushPayloadLinks> {
  @override
  final Iterable<Type> types = const [PushPayloadLinks, _$PushPayloadLinks];

  @override
  final String wireName = r'PushPayloadLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PushPayloadLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.api != null) {
      yield r'api';
      yield serializers.serialize(
        object.api,
        specifiedType: const FullType(String),
      );
    }
    if (object.app != null) {
      yield r'app';
      yield serializers.serialize(
        object.app,
        specifiedType: const FullType(String),
      );
    }
    if (object.web != null) {
      yield r'web';
      yield serializers.serialize(
        object.web,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PushPayloadLinks object, {
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
    required PushPayloadLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'api':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.api = valueDes;
          break;
        case r'app':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.app = valueDes;
          break;
        case r'web':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.web = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PushPayloadLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PushPayloadLinksBuilder();
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
