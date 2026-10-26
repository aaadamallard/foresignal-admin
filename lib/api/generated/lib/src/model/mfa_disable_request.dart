//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mfa_disable_request.g.dart';

/// Disable MFA, re-authenticating with a code or the account password
///
/// Properties:
/// * [code] - A current TOTP or recovery code
/// * [password]
@BuiltValue()
abstract class MfaDisableRequest
    implements Built<MfaDisableRequest, MfaDisableRequestBuilder> {
  /// A current TOTP or recovery code
  @BuiltValueField(wireName: r'code')
  String? get code;

  @BuiltValueField(wireName: r'password')
  String? get password;

  MfaDisableRequest._();

  factory MfaDisableRequest([void updates(MfaDisableRequestBuilder b)]) =
      _$MfaDisableRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MfaDisableRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MfaDisableRequest> get serializer =>
      _$MfaDisableRequestSerializer();
}

class _$MfaDisableRequestSerializer
    implements PrimitiveSerializer<MfaDisableRequest> {
  @override
  final Iterable<Type> types = const [MfaDisableRequest, _$MfaDisableRequest];

  @override
  final String wireName = r'MfaDisableRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MfaDisableRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MfaDisableRequest object, {
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
    required MfaDisableRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.code = valueDes;
          break;
        case r'password':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.password = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MfaDisableRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MfaDisableRequestBuilder();
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
