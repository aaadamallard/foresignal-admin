//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mfa_enrollment.g.dart';

/// A pending TOTP enrollment; confirm with verifyMfa before it takes effect (D1/187)
///
/// Properties:
/// * [secret] - Base32 TOTP secret
/// * [otpauthUri] - otpauth:// provisioning URI for an authenticator app
/// * [qrSvg] - Inline SVG QR of the provisioning URI
@BuiltValue()
abstract class MfaEnrollment
    implements Built<MfaEnrollment, MfaEnrollmentBuilder> {
  /// Base32 TOTP secret
  @BuiltValueField(wireName: r'secret')
  String get secret;

  /// otpauth:// provisioning URI for an authenticator app
  @BuiltValueField(wireName: r'otpauthUri')
  String get otpauthUri;

  /// Inline SVG QR of the provisioning URI
  @BuiltValueField(wireName: r'qrSvg')
  String? get qrSvg;

  MfaEnrollment._();

  factory MfaEnrollment([void updates(MfaEnrollmentBuilder b)]) =
      _$MfaEnrollment;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MfaEnrollmentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MfaEnrollment> get serializer =>
      _$MfaEnrollmentSerializer();
}

class _$MfaEnrollmentSerializer implements PrimitiveSerializer<MfaEnrollment> {
  @override
  final Iterable<Type> types = const [MfaEnrollment, _$MfaEnrollment];

  @override
  final String wireName = r'MfaEnrollment';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MfaEnrollment object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'secret';
    yield serializers.serialize(
      object.secret,
      specifiedType: const FullType(String),
    );
    yield r'otpauthUri';
    yield serializers.serialize(
      object.otpauthUri,
      specifiedType: const FullType(String),
    );
    if (object.qrSvg != null) {
      yield r'qrSvg';
      yield serializers.serialize(
        object.qrSvg,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MfaEnrollment object, {
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
    required MfaEnrollmentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'secret':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.secret = valueDes;
          break;
        case r'otpauthUri':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.otpauthUri = valueDes;
          break;
        case r'qrSvg':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.qrSvg = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MfaEnrollment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MfaEnrollmentBuilder();
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
