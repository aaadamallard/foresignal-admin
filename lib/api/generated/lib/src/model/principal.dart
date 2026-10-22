//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'principal.g.dart';

/// A person, agent or service that holds scoped tokens; no passwords are stored
///
/// Properties:
/// * [id] - ULID identifier
/// * [handle]
/// * [displayName]
/// * [kind]
/// * [email] - Used only for this principal's email notifications; returned only to the principal itself and admins
/// * [avatarMediaId] - 043 media id
/// * [timezone]
/// * [organization] - Free text; defines TLP AMBER and AMBER+STRICT boundaries
/// * [disabled]
/// * [tokenCount] - Active tokens (admin view)
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class Principal implements Built<Principal, PrincipalBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'handle')
  String get handle;

  @BuiltValueField(wireName: r'displayName')
  String get displayName;

  @BuiltValueField(wireName: r'kind')
  PrincipalKindEnum get kind;
  // enum kindEnum {  person,  agent,  service,  };

  /// Used only for this principal's email notifications; returned only to the principal itself and admins
  @BuiltValueField(wireName: r'email')
  String? get email;

  /// 043 media id
  @BuiltValueField(wireName: r'avatarMediaId')
  String? get avatarMediaId;

  @BuiltValueField(wireName: r'timezone')
  String? get timezone;

  /// Free text; defines TLP AMBER and AMBER+STRICT boundaries
  @BuiltValueField(wireName: r'organization')
  String? get organization;

  @BuiltValueField(wireName: r'disabled')
  bool get disabled;

  /// Active tokens (admin view)
  @BuiltValueField(wireName: r'tokenCount')
  int? get tokenCount;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  Principal._();

  factory Principal([void updates(PrincipalBuilder b)]) = _$Principal;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrincipalBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Principal> get serializer => _$PrincipalSerializer();
}

class _$PrincipalSerializer implements PrimitiveSerializer<Principal> {
  @override
  final Iterable<Type> types = const [Principal, _$Principal];

  @override
  final String wireName = r'Principal';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Principal object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
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
      specifiedType: const FullType(PrincipalKindEnum),
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
    yield r'disabled';
    yield serializers.serialize(
      object.disabled,
      specifiedType: const FullType(bool),
    );
    if (object.tokenCount != null) {
      yield r'tokenCount';
      yield serializers.serialize(
        object.tokenCount,
        specifiedType: const FullType(int),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
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
    Principal object, {
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
    required PrincipalBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
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
                    specifiedType: const FullType(PrincipalKindEnum),
                  )
                  as PrincipalKindEnum;
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
        case r'disabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.disabled = valueDes;
          break;
        case r'tokenCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.tokenCount = valueDes;
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
        case r'updatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
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
  Principal deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrincipalBuilder();
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

class PrincipalKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'person')
  static const PrincipalKindEnum person = _$principalKindEnum_person;
  @BuiltValueEnumConst(wireName: r'agent')
  static const PrincipalKindEnum agent = _$principalKindEnum_agent;
  @BuiltValueEnumConst(wireName: r'service')
  static const PrincipalKindEnum service = _$principalKindEnum_service;

  static Serializer<PrincipalKindEnum> get serializer =>
      _$principalKindEnumSerializer;

  const PrincipalKindEnum._(String name) : super(name);

  static BuiltSet<PrincipalKindEnum> get values => _$principalKindEnumValues;
  static PrincipalKindEnum valueOf(String name) =>
      _$principalKindEnumValueOf(name);
}
