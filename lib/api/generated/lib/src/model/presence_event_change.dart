//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'presence_event_change.g.dart';

/// What changed
///
/// Properties:
/// * [type]
/// * [clientId]
@BuiltValue()
abstract class PresenceEventChange
    implements Built<PresenceEventChange, PresenceEventChangeBuilder> {
  @BuiltValueField(wireName: r'type')
  PresenceEventChangeTypeEnum get type;
  // enum typeEnum {  joined,  left,  };

  @BuiltValueField(wireName: r'clientId')
  String get clientId;

  PresenceEventChange._();

  factory PresenceEventChange([void updates(PresenceEventChangeBuilder b)]) =
      _$PresenceEventChange;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PresenceEventChangeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PresenceEventChange> get serializer =>
      _$PresenceEventChangeSerializer();
}

class _$PresenceEventChangeSerializer
    implements PrimitiveSerializer<PresenceEventChange> {
  @override
  final Iterable<Type> types = const [
    PresenceEventChange,
    _$PresenceEventChange,
  ];

  @override
  final String wireName = r'PresenceEventChange';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PresenceEventChange object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(PresenceEventChangeTypeEnum),
    );
    yield r'clientId';
    yield serializers.serialize(
      object.clientId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PresenceEventChange object, {
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
    required PresenceEventChangeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PresenceEventChangeTypeEnum),
                  )
                  as PresenceEventChangeTypeEnum;
          result.type = valueDes;
          break;
        case r'clientId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.clientId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PresenceEventChange deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PresenceEventChangeBuilder();
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

class PresenceEventChangeTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'joined')
  static const PresenceEventChangeTypeEnum joined =
      _$presenceEventChangeTypeEnum_joined;
  @BuiltValueEnumConst(wireName: r'left')
  static const PresenceEventChangeTypeEnum left =
      _$presenceEventChangeTypeEnum_left;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PresenceEventChangeTypeEnum unknownDefaultOpenApi =
      _$presenceEventChangeTypeEnum_unknownDefaultOpenApi;

  static Serializer<PresenceEventChangeTypeEnum> get serializer =>
      _$presenceEventChangeTypeEnumSerializer;

  const PresenceEventChangeTypeEnum._(String name) : super(name);

  static BuiltSet<PresenceEventChangeTypeEnum> get values =>
      _$presenceEventChangeTypeEnumValues;
  static PresenceEventChangeTypeEnum valueOf(String name) =>
      _$presenceEventChangeTypeEnumValueOf(name);
}
