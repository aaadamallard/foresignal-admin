//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'principal_input.g.dart';

/// Create a principal (admin)
///
/// Properties:
/// * [handle]
/// * [displayName]
/// * [kind]
/// * [email]
/// * [avatarMediaId]
/// * [timezone]
/// * [organization]
@BuiltValue()
abstract class PrincipalInput
    implements Built<PrincipalInput, PrincipalInputBuilder> {
  @BuiltValueField(wireName: r'handle')
  String get handle;

  @BuiltValueField(wireName: r'displayName')
  String get displayName;

  @BuiltValueField(wireName: r'kind')
  PrincipalInputKindEnum get kind;
  // enum kindEnum {  person,  agent,  service,  };

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'avatarMediaId')
  String? get avatarMediaId;

  @BuiltValueField(wireName: r'timezone')
  String? get timezone;

  @BuiltValueField(wireName: r'organization')
  String? get organization;

  PrincipalInput._();

  factory PrincipalInput([void updates(PrincipalInputBuilder b)]) =
      _$PrincipalInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrincipalInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrincipalInput> get serializer =>
      _$PrincipalInputSerializer();
}

class _$PrincipalInputSerializer
    implements PrimitiveSerializer<PrincipalInput> {
  @override
  final Iterable<Type> types = const [PrincipalInput, _$PrincipalInput];

  @override
  final String wireName = r'PrincipalInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrincipalInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'handle';
    yield serializers.serialize(
      object.handle,
      specifiedType: const FullType(String),
    );
    yield r'displayName';
    yield serializers.serialize(
      object.displayName,
      specifiedType: const FullType(String),
    );
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(PrincipalInputKindEnum),
    );
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.avatarMediaId != null) {
      yield r'avatarMediaId';
      yield serializers.serialize(
        object.avatarMediaId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.timezone != null) {
      yield r'timezone';
      yield serializers.serialize(
        object.timezone,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.organization != null) {
      yield r'organization';
      yield serializers.serialize(
        object.organization,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PrincipalInput object, {
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
    required PrincipalInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'handle':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.handle = valueDes;
          break;
        case r'displayName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.displayName = valueDes;
          break;
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PrincipalInputKindEnum),
                  )
                  as PrincipalInputKindEnum;
          result.kind = valueDes;
          break;
        case r'email':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
          break;
        case r'avatarMediaId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.avatarMediaId = valueDes;
          break;
        case r'timezone':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.timezone = valueDes;
          break;
        case r'organization':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.organization = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PrincipalInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrincipalInputBuilder();
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

class PrincipalInputKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'person')
  static const PrincipalInputKindEnum person = _$principalInputKindEnum_person;
  @BuiltValueEnumConst(wireName: r'agent')
  static const PrincipalInputKindEnum agent = _$principalInputKindEnum_agent;
  @BuiltValueEnumConst(wireName: r'service')
  static const PrincipalInputKindEnum service =
      _$principalInputKindEnum_service;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PrincipalInputKindEnum unknownDefaultOpenApi =
      _$principalInputKindEnum_unknownDefaultOpenApi;

  static Serializer<PrincipalInputKindEnum> get serializer =>
      _$principalInputKindEnumSerializer;

  const PrincipalInputKindEnum._(String name) : super(name);

  static BuiltSet<PrincipalInputKindEnum> get values =>
      _$principalInputKindEnumValues;
  static PrincipalInputKindEnum valueOf(String name) =>
      _$principalInputKindEnumValueOf(name);
}
