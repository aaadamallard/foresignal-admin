//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'smtp_settings_input.g.dart';

/// SMTP settings with write-only credentials
///
/// Properties:
/// * [enabled]
/// * [host]
/// * [port]
/// * [security]
/// * [username]
/// * [password]
/// * [fromAddress]
/// * [fromName]
@BuiltValue()
abstract class SmtpSettingsInput
    implements Built<SmtpSettingsInput, SmtpSettingsInputBuilder> {
  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  @BuiltValueField(wireName: r'host')
  String? get host;

  @BuiltValueField(wireName: r'port')
  int? get port;

  @BuiltValueField(wireName: r'security')
  String? get security;

  @BuiltValueField(wireName: r'username')
  String? get username;

  @BuiltValueField(wireName: r'password')
  String? get password;

  @BuiltValueField(wireName: r'fromAddress')
  String? get fromAddress;

  @BuiltValueField(wireName: r'fromName')
  String? get fromName;

  SmtpSettingsInput._();

  factory SmtpSettingsInput([void updates(SmtpSettingsInputBuilder b)]) =
      _$SmtpSettingsInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SmtpSettingsInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SmtpSettingsInput> get serializer =>
      _$SmtpSettingsInputSerializer();
}

class _$SmtpSettingsInputSerializer
    implements PrimitiveSerializer<SmtpSettingsInput> {
  @override
  final Iterable<Type> types = const [SmtpSettingsInput, _$SmtpSettingsInput];

  @override
  final String wireName = r'SmtpSettingsInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SmtpSettingsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    if (object.host != null) {
      yield r'host';
      yield serializers.serialize(
        object.host,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.port != null) {
      yield r'port';
      yield serializers.serialize(
        object.port,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.security != null) {
      yield r'security';
      yield serializers.serialize(
        object.security,
        specifiedType: const FullType(String),
      );
    }
    if (object.username != null) {
      yield r'username';
      yield serializers.serialize(
        object.username,
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
    if (object.fromAddress != null) {
      yield r'fromAddress';
      yield serializers.serialize(
        object.fromAddress,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.fromName != null) {
      yield r'fromName';
      yield serializers.serialize(
        object.fromName,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SmtpSettingsInput object, {
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
    required SmtpSettingsInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.enabled = valueDes;
          break;
        case r'host':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.host = valueDes;
          break;
        case r'port':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.port = valueDes;
          break;
        case r'security':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.security = valueDes;
          break;
        case r'username':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.username = valueDes;
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
        case r'fromAddress':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.fromAddress = valueDes;
          break;
        case r'fromName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.fromName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SmtpSettingsInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SmtpSettingsInputBuilder();
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
