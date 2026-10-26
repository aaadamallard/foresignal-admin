//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'smtp_settings.g.dart';

/// Outbound transactional-email (SMTP) settings (settings key `smtp`); secrets are write-only (A6/170). While user accounts exist and SMTP is off or has no host, `/v1/system` warns SMTP_NOT_CONFIGURED and admins receive each activation or reset link in the user-management response instead (R2-007).
///
/// Properties:
/// * [enabled]
/// * [host]
/// * [port] - Typically 587 (STARTTLS) or 465 (TLS)
/// * [security]
/// * [username]
/// * [fromAddress] - Default info@remoteidsystems.com
/// * [fromName] - Display name on outbound mail
/// * [secretsSet] - Names of secrets that have a stored value
@BuiltValue()
abstract class SmtpSettings
    implements Built<SmtpSettings, SmtpSettingsBuilder> {
  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  @BuiltValueField(wireName: r'host')
  String? get host;

  /// Typically 587 (STARTTLS) or 465 (TLS)
  @BuiltValueField(wireName: r'port')
  int? get port;

  @BuiltValueField(wireName: r'security')
  String? get security;

  @BuiltValueField(wireName: r'username')
  String? get username;

  /// Default info@remoteidsystems.com
  @BuiltValueField(wireName: r'fromAddress')
  String? get fromAddress;

  /// Display name on outbound mail
  @BuiltValueField(wireName: r'fromName')
  String? get fromName;

  /// Names of secrets that have a stored value
  @BuiltValueField(wireName: r'secretsSet')
  BuiltList<String>? get secretsSet;

  SmtpSettings._();

  factory SmtpSettings([void updates(SmtpSettingsBuilder b)]) = _$SmtpSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SmtpSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SmtpSettings> get serializer => _$SmtpSettingsSerializer();
}

class _$SmtpSettingsSerializer implements PrimitiveSerializer<SmtpSettings> {
  @override
  final Iterable<Type> types = const [SmtpSettings, _$SmtpSettings];

  @override
  final String wireName = r'SmtpSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SmtpSettings object, {
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
    if (object.secretsSet != null) {
      yield r'secretsSet';
      yield serializers.serialize(
        object.secretsSet,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SmtpSettings object, {
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
    required SmtpSettingsBuilder result,
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
        case r'secretsSet':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.secretsSet.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SmtpSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SmtpSettingsBuilder();
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
