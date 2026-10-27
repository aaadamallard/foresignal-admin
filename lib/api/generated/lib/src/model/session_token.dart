//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'session_token.g.dart';

/// A newly issued session; the token is a bearer carried in the Authorization header on later requests (Argon2id-verified login, 166)
///
/// Properties:
/// * [token] - The session bearer; shown once, stored hashed server-side. Empty while mfaRequired: no session was issued (R2-024)
/// * [tokenPrefix] - First characters, for display in a session list
/// * [userId]
/// * [issuedAt]
/// * [expiresAt] - Absolute expiry; null while mfaRequired (no session was issued, R2-024)
/// * [idleExpiresAt] - Idle expiry; refreshed on use
/// * [mfaRequired] - True when MFA is enrolled and a code must still be supplied to complete login: no session was issued, and the client signs in again with mfaCode (R2-024)
/// * [scopes] - Effective coarse scopes the session carries
/// * [permissions] - Effective permission keys (union of the user's roles)
@BuiltValue()
abstract class SessionToken
    implements Built<SessionToken, SessionTokenBuilder> {
  /// The session bearer; shown once, stored hashed server-side. Empty while mfaRequired: no session was issued (R2-024)
  @BuiltValueField(wireName: r'token')
  String get token;

  /// First characters, for display in a session list
  @BuiltValueField(wireName: r'tokenPrefix')
  String? get tokenPrefix;

  @BuiltValueField(wireName: r'userId')
  String get userId;

  @BuiltValueField(wireName: r'issuedAt')
  DateTime? get issuedAt;

  /// Absolute expiry; null while mfaRequired (no session was issued, R2-024)
  @BuiltValueField(wireName: r'expiresAt')
  DateTime? get expiresAt;

  /// Idle expiry; refreshed on use
  @BuiltValueField(wireName: r'idleExpiresAt')
  DateTime? get idleExpiresAt;

  /// True when MFA is enrolled and a code must still be supplied to complete login: no session was issued, and the client signs in again with mfaCode (R2-024)
  @BuiltValueField(wireName: r'mfaRequired')
  bool? get mfaRequired;

  /// Effective coarse scopes the session carries
  @BuiltValueField(wireName: r'scopes')
  BuiltList<String>? get scopes;

  /// Effective permission keys (union of the user's roles)
  @BuiltValueField(wireName: r'permissions')
  BuiltList<String>? get permissions;

  SessionToken._();

  factory SessionToken([void updates(SessionTokenBuilder b)]) = _$SessionToken;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SessionTokenBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SessionToken> get serializer => _$SessionTokenSerializer();
}

class _$SessionTokenSerializer implements PrimitiveSerializer<SessionToken> {
  @override
  final Iterable<Type> types = const [SessionToken, _$SessionToken];

  @override
  final String wireName = r'SessionToken';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SessionToken object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'token';
    yield serializers.serialize(
      object.token,
      specifiedType: const FullType(String),
    );
    if (object.tokenPrefix != null) {
      yield r'tokenPrefix';
      yield serializers.serialize(
        object.tokenPrefix,
        specifiedType: const FullType(String),
      );
    }
    yield r'userId';
    yield serializers.serialize(
      object.userId,
      specifiedType: const FullType(String),
    );
    if (object.issuedAt != null) {
      yield r'issuedAt';
      yield serializers.serialize(
        object.issuedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'expiresAt';
    yield object.expiresAt == null
        ? null
        : serializers.serialize(
            object.expiresAt,
            specifiedType: const FullType.nullable(DateTime),
          );
    if (object.idleExpiresAt != null) {
      yield r'idleExpiresAt';
      yield serializers.serialize(
        object.idleExpiresAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.mfaRequired != null) {
      yield r'mfaRequired';
      yield serializers.serialize(
        object.mfaRequired,
        specifiedType: const FullType(bool),
      );
    }
    if (object.scopes != null) {
      yield r'scopes';
      yield serializers.serialize(
        object.scopes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.permissions != null) {
      yield r'permissions';
      yield serializers.serialize(
        object.permissions,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SessionToken object, {
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
    required SessionTokenBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'token':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.token = valueDes;
          break;
        case r'tokenPrefix':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.tokenPrefix = valueDes;
          break;
        case r'userId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.userId = valueDes;
          break;
        case r'issuedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.issuedAt = valueDes;
          break;
        case r'expiresAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.expiresAt = valueDes;
          break;
        case r'idleExpiresAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.idleExpiresAt = valueDes;
          break;
        case r'mfaRequired':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.mfaRequired = valueDes;
          break;
        case r'scopes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.scopes.replace(valueDes);
          break;
        case r'permissions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.permissions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SessionToken deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SessionTokenBuilder();
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
