//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_link_issued.g.dart';

/// A one-time activation or reset link issued for a user (R2-005). When the email was not sent (no SMTP, or `sendInvite: false`) the plaintext `token` is returned here once for the admin to pass on; when it was emailed, `token` is null. Only the token's hash is stored.
///
/// Properties:
/// * [kind]
/// * [emailed] - True when the email left; the token is then withheld
/// * [token] - The one-time token (`fsv_…` activation, `fsw_…` reset), only when not emailed
/// * [tokenPrefix] - The token's first eight characters
/// * [expiresAt]
@BuiltValue()
abstract class UserLinkIssued
    implements Built<UserLinkIssued, UserLinkIssuedBuilder> {
  @BuiltValueField(wireName: r'kind')
  String get kind;

  /// True when the email left; the token is then withheld
  @BuiltValueField(wireName: r'emailed')
  bool get emailed;

  /// The one-time token (`fsv_…` activation, `fsw_…` reset), only when not emailed
  @BuiltValueField(wireName: r'token')
  String? get token;

  /// The token's first eight characters
  @BuiltValueField(wireName: r'tokenPrefix')
  String get tokenPrefix;

  @BuiltValueField(wireName: r'expiresAt')
  DateTime get expiresAt;

  UserLinkIssued._();

  factory UserLinkIssued([void updates(UserLinkIssuedBuilder b)]) =
      _$UserLinkIssued;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserLinkIssuedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserLinkIssued> get serializer =>
      _$UserLinkIssuedSerializer();
}

class _$UserLinkIssuedSerializer
    implements PrimitiveSerializer<UserLinkIssued> {
  @override
  final Iterable<Type> types = const [UserLinkIssued, _$UserLinkIssued];

  @override
  final String wireName = r'UserLinkIssued';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserLinkIssued object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(String),
    );
    yield r'emailed';
    yield serializers.serialize(
      object.emailed,
      specifiedType: const FullType(bool),
    );
    if (object.token != null) {
      yield r'token';
      yield serializers.serialize(
        object.token,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'tokenPrefix';
    yield serializers.serialize(
      object.tokenPrefix,
      specifiedType: const FullType(String),
    );
    yield r'expiresAt';
    yield serializers.serialize(
      object.expiresAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UserLinkIssued object, {
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
    required UserLinkIssuedBuilder result,
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
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.kind = valueDes;
          break;
        case r'emailed':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.emailed = valueDes;
          break;
        case r'token':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.token = valueDes;
          break;
        case r'tokenPrefix':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.tokenPrefix = valueDes;
          break;
        case r'expiresAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.expiresAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserLinkIssued deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserLinkIssuedBuilder();
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
