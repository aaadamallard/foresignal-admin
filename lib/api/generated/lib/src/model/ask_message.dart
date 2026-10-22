//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/ask_citation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ask_message.g.dart';

/// AskMessage
///
/// Properties:
/// * [role]
/// * [content]
/// * [citations]
/// * [createdAt]
/// * [warnings] - Dropped citations and uncited-claim warnings, persisted with the message
@BuiltValue()
abstract class AskMessage implements Built<AskMessage, AskMessageBuilder> {
  @BuiltValueField(wireName: r'role')
  AskMessageRoleEnum get role;
  // enum roleEnum {  user,  assistant,  };

  @BuiltValueField(wireName: r'content')
  String get content;

  @BuiltValueField(wireName: r'citations')
  BuiltList<AskCitation>? get citations;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  /// Dropped citations and uncited-claim warnings, persisted with the message
  @BuiltValueField(wireName: r'warnings')
  BuiltList<String>? get warnings;

  AskMessage._();

  factory AskMessage([void updates(AskMessageBuilder b)]) = _$AskMessage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AskMessageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AskMessage> get serializer => _$AskMessageSerializer();
}

class _$AskMessageSerializer implements PrimitiveSerializer<AskMessage> {
  @override
  final Iterable<Type> types = const [AskMessage, _$AskMessage];

  @override
  final String wireName = r'AskMessage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AskMessage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(AskMessageRoleEnum),
    );
    yield r'content';
    yield serializers.serialize(
      object.content,
      specifiedType: const FullType(String),
    );
    if (object.citations != null) {
      yield r'citations';
      yield serializers.serialize(
        object.citations,
        specifiedType: const FullType(BuiltList, [FullType(AskCitation)]),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AskMessage object, {
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
    required AskMessageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'role':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AskMessageRoleEnum),
                  )
                  as AskMessageRoleEnum;
          result.role = valueDes;
          break;
        case r'content':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.content = valueDes;
          break;
        case r'citations':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(AskCitation),
                    ]),
                  )
                  as BuiltList<AskCitation>?;
          if (valueDes == null) continue;
          result.citations.replace(valueDes);
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.createdAt = valueDes;
          break;
        case r'warnings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.warnings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AskMessage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AskMessageBuilder();
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

class AskMessageRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'user')
  static const AskMessageRoleEnum user = _$askMessageRoleEnum_user;
  @BuiltValueEnumConst(wireName: r'assistant')
  static const AskMessageRoleEnum assistant = _$askMessageRoleEnum_assistant;

  static Serializer<AskMessageRoleEnum> get serializer =>
      _$askMessageRoleEnumSerializer;

  const AskMessageRoleEnum._(String name) : super(name);

  static BuiltSet<AskMessageRoleEnum> get values => _$askMessageRoleEnumValues;
  static AskMessageRoleEnum valueOf(String name) =>
      _$askMessageRoleEnumValueOf(name);
}
