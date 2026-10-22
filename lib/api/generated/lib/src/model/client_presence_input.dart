//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'client_presence_input.g.dart';

/// Presence heartbeat from a client (033)
///
/// Properties:
/// * [kind]
/// * [state]
/// * [ttlSeconds]
@BuiltValue()
abstract class ClientPresenceInput
    implements Built<ClientPresenceInput, ClientPresenceInputBuilder> {
  @BuiltValueField(wireName: r'kind')
  ClientPresenceInputKindEnum get kind;
  // enum kindEnum {  desktop,  mobile,  web,  };

  @BuiltValueField(wireName: r'state')
  ClientPresenceInputStateEnum get state;
  // enum stateEnum {  active,  idle,  background,  };

  @BuiltValueField(wireName: r'ttlSeconds')
  int? get ttlSeconds;

  ClientPresenceInput._();

  factory ClientPresenceInput([void updates(ClientPresenceInputBuilder b)]) =
      _$ClientPresenceInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ClientPresenceInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ClientPresenceInput> get serializer =>
      _$ClientPresenceInputSerializer();
}

class _$ClientPresenceInputSerializer
    implements PrimitiveSerializer<ClientPresenceInput> {
  @override
  final Iterable<Type> types = const [
    ClientPresenceInput,
    _$ClientPresenceInput,
  ];

  @override
  final String wireName = r'ClientPresenceInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ClientPresenceInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(ClientPresenceInputKindEnum),
    );
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(ClientPresenceInputStateEnum),
    );
    if (object.ttlSeconds != null) {
      yield r'ttlSeconds';
      yield serializers.serialize(
        object.ttlSeconds,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ClientPresenceInput object, {
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
    required ClientPresenceInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ClientPresenceInputKindEnum),
                  )
                  as ClientPresenceInputKindEnum;
          result.kind = valueDes;
          break;
        case r'state':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ClientPresenceInputStateEnum),
                  )
                  as ClientPresenceInputStateEnum;
          result.state = valueDes;
          break;
        case r'ttlSeconds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.ttlSeconds = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ClientPresenceInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientPresenceInputBuilder();
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

class ClientPresenceInputKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'desktop')
  static const ClientPresenceInputKindEnum desktop =
      _$clientPresenceInputKindEnum_desktop;
  @BuiltValueEnumConst(wireName: r'mobile')
  static const ClientPresenceInputKindEnum mobile =
      _$clientPresenceInputKindEnum_mobile;
  @BuiltValueEnumConst(wireName: r'web')
  static const ClientPresenceInputKindEnum web =
      _$clientPresenceInputKindEnum_web;

  static Serializer<ClientPresenceInputKindEnum> get serializer =>
      _$clientPresenceInputKindEnumSerializer;

  const ClientPresenceInputKindEnum._(String name) : super(name);

  static BuiltSet<ClientPresenceInputKindEnum> get values =>
      _$clientPresenceInputKindEnumValues;
  static ClientPresenceInputKindEnum valueOf(String name) =>
      _$clientPresenceInputKindEnumValueOf(name);
}

class ClientPresenceInputStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'active')
  static const ClientPresenceInputStateEnum active =
      _$clientPresenceInputStateEnum_active;
  @BuiltValueEnumConst(wireName: r'idle')
  static const ClientPresenceInputStateEnum idle =
      _$clientPresenceInputStateEnum_idle;
  @BuiltValueEnumConst(wireName: r'background')
  static const ClientPresenceInputStateEnum background =
      _$clientPresenceInputStateEnum_background;

  static Serializer<ClientPresenceInputStateEnum> get serializer =>
      _$clientPresenceInputStateEnumSerializer;

  const ClientPresenceInputStateEnum._(String name) : super(name);

  static BuiltSet<ClientPresenceInputStateEnum> get values =>
      _$clientPresenceInputStateEnumValues;
  static ClientPresenceInputStateEnum valueOf(String name) =>
      _$clientPresenceInputStateEnumValueOf(name);
}
