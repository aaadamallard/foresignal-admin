//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'client_presence.g.dart';

/// A client's presence, used to defer phone notifications while a desktop is active (033)
///
/// Properties:
/// * [deviceKey]
/// * [kind]
/// * [state]
/// * [expiresAt]
/// * [updatedAt]
@BuiltValue()
abstract class ClientPresence
    implements Built<ClientPresence, ClientPresenceBuilder> {
  @BuiltValueField(wireName: r'deviceKey')
  String get deviceKey;

  @BuiltValueField(wireName: r'kind')
  ClientPresenceKindEnum get kind;
  // enum kindEnum {  desktop,  mobile,  web,  };

  @BuiltValueField(wireName: r'state')
  ClientPresenceStateEnum get state;
  // enum stateEnum {  active,  idle,  background,  };

  @BuiltValueField(wireName: r'expiresAt')
  DateTime get expiresAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  ClientPresence._();

  factory ClientPresence([void updates(ClientPresenceBuilder b)]) =
      _$ClientPresence;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ClientPresenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ClientPresence> get serializer =>
      _$ClientPresenceSerializer();
}

class _$ClientPresenceSerializer
    implements PrimitiveSerializer<ClientPresence> {
  @override
  final Iterable<Type> types = const [ClientPresence, _$ClientPresence];

  @override
  final String wireName = r'ClientPresence';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ClientPresence object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'deviceKey';
    yield serializers.serialize(
      object.deviceKey,
      specifiedType: const FullType(String),
    );
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(ClientPresenceKindEnum),
    );
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(ClientPresenceStateEnum),
    );
    yield r'expiresAt';
    yield serializers.serialize(
      object.expiresAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ClientPresence object, {
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
    required ClientPresenceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'deviceKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.deviceKey = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ClientPresenceKindEnum),
          ) as ClientPresenceKindEnum;
          result.kind = valueDes;
          break;
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ClientPresenceStateEnum),
          ) as ClientPresenceStateEnum;
          result.state = valueDes;
          break;
        case r'expiresAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expiresAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ClientPresence deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientPresenceBuilder();
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

class ClientPresenceKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'desktop')
  static const ClientPresenceKindEnum desktop =
      _$clientPresenceKindEnum_desktop;
  @BuiltValueEnumConst(wireName: r'mobile')
  static const ClientPresenceKindEnum mobile = _$clientPresenceKindEnum_mobile;
  @BuiltValueEnumConst(wireName: r'web')
  static const ClientPresenceKindEnum web = _$clientPresenceKindEnum_web;

  static Serializer<ClientPresenceKindEnum> get serializer =>
      _$clientPresenceKindEnumSerializer;

  const ClientPresenceKindEnum._(String name) : super(name);

  static BuiltSet<ClientPresenceKindEnum> get values =>
      _$clientPresenceKindEnumValues;
  static ClientPresenceKindEnum valueOf(String name) =>
      _$clientPresenceKindEnumValueOf(name);
}

class ClientPresenceStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'active')
  static const ClientPresenceStateEnum active =
      _$clientPresenceStateEnum_active;
  @BuiltValueEnumConst(wireName: r'idle')
  static const ClientPresenceStateEnum idle = _$clientPresenceStateEnum_idle;
  @BuiltValueEnumConst(wireName: r'background')
  static const ClientPresenceStateEnum background =
      _$clientPresenceStateEnum_background;

  static Serializer<ClientPresenceStateEnum> get serializer =>
      _$clientPresenceStateEnumSerializer;

  const ClientPresenceStateEnum._(String name) : super(name);

  static BuiltSet<ClientPresenceStateEnum> get values =>
      _$clientPresenceStateEnumValues;
  static ClientPresenceStateEnum valueOf(String name) =>
      _$clientPresenceStateEnumValueOf(name);
}
