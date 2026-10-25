//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ask_progress_event.g.dart';

/// Ask stream `progress` event: tool activity (028)
///
/// Properties:
/// * [tool]
/// * [status]
/// * [summary]
@BuiltValue()
abstract class AskProgressEvent
    implements Built<AskProgressEvent, AskProgressEventBuilder> {
  @BuiltValueField(wireName: r'tool')
  String get tool;

  @BuiltValueField(wireName: r'status')
  AskProgressEventStatusEnum get status;
  // enum statusEnum {  calling,  done,  };

  @BuiltValueField(wireName: r'summary')
  String? get summary;

  AskProgressEvent._();

  factory AskProgressEvent([void updates(AskProgressEventBuilder b)]) =
      _$AskProgressEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AskProgressEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AskProgressEvent> get serializer =>
      _$AskProgressEventSerializer();
}

class _$AskProgressEventSerializer
    implements PrimitiveSerializer<AskProgressEvent> {
  @override
  final Iterable<Type> types = const [AskProgressEvent, _$AskProgressEvent];

  @override
  final String wireName = r'AskProgressEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AskProgressEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'tool';
    yield serializers.serialize(
      object.tool,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(AskProgressEventStatusEnum),
    );
    if (object.summary != null) {
      yield r'summary';
      yield serializers.serialize(
        object.summary,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AskProgressEvent object, {
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
    required AskProgressEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tool':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.tool = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AskProgressEventStatusEnum),
                  )
                  as AskProgressEventStatusEnum;
          result.status = valueDes;
          break;
        case r'summary':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.summary = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AskProgressEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AskProgressEventBuilder();
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

class AskProgressEventStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'calling')
  static const AskProgressEventStatusEnum calling =
      _$askProgressEventStatusEnum_calling;
  @BuiltValueEnumConst(wireName: r'done')
  static const AskProgressEventStatusEnum done =
      _$askProgressEventStatusEnum_done;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AskProgressEventStatusEnum unknownDefaultOpenApi =
      _$askProgressEventStatusEnum_unknownDefaultOpenApi;

  static Serializer<AskProgressEventStatusEnum> get serializer =>
      _$askProgressEventStatusEnumSerializer;

  const AskProgressEventStatusEnum._(String name) : super(name);

  static BuiltSet<AskProgressEventStatusEnum> get values =>
      _$askProgressEventStatusEnumValues;
  static AskProgressEventStatusEnum valueOf(String name) =>
      _$askProgressEventStatusEnumValueOf(name);
}
