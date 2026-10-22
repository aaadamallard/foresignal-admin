//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ask_scope.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ask_request.g.dart';

/// AskRequest
///
/// Properties:
/// * [question]
/// * [threadId]
/// * [scope]
/// * [allowActions]
@BuiltValue()
abstract class AskRequest implements Built<AskRequest, AskRequestBuilder> {
  @BuiltValueField(wireName: r'question')
  String get question;

  @BuiltValueField(wireName: r'threadId')
  String? get threadId;

  @BuiltValueField(wireName: r'scope')
  AskScope? get scope;

  @BuiltValueField(wireName: r'allowActions')
  bool? get allowActions;

  AskRequest._();

  factory AskRequest([void updates(AskRequestBuilder b)]) = _$AskRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AskRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AskRequest> get serializer => _$AskRequestSerializer();
}

class _$AskRequestSerializer implements PrimitiveSerializer<AskRequest> {
  @override
  final Iterable<Type> types = const [AskRequest, _$AskRequest];

  @override
  final String wireName = r'AskRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AskRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'question';
    yield serializers.serialize(
      object.question,
      specifiedType: const FullType(String),
    );
    if (object.threadId != null) {
      yield r'threadId';
      yield serializers.serialize(
        object.threadId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.scope != null) {
      yield r'scope';
      yield serializers.serialize(
        object.scope,
        specifiedType: const FullType(AskScope),
      );
    }
    if (object.allowActions != null) {
      yield r'allowActions';
      yield serializers.serialize(
        object.allowActions,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AskRequest object, {
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
    required AskRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'question':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.question = valueDes;
          break;
        case r'threadId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.threadId = valueDes;
          break;
        case r'scope':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AskScope),
          ) as AskScope?;
          if (valueDes == null) continue;
          result.scope.replace(valueDes);
          break;
        case r'allowActions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.allowActions = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AskRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AskRequestBuilder();
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
