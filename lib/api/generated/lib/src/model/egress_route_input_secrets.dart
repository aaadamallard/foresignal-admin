//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'egress_route_input_secrets.g.dart';

/// Write-only proxy/VPN credentials and config
///
/// Properties:
/// * [username]
/// * [password]
/// * [wireguardConfig] - A WireGuard profile to import
@BuiltValue()
abstract class EgressRouteInputSecrets
    implements Built<EgressRouteInputSecrets, EgressRouteInputSecretsBuilder> {
  @BuiltValueField(wireName: r'username')
  String? get username;

  @BuiltValueField(wireName: r'password')
  String? get password;

  /// A WireGuard profile to import
  @BuiltValueField(wireName: r'wireguardConfig')
  String? get wireguardConfig;

  EgressRouteInputSecrets._();

  factory EgressRouteInputSecrets([
    void updates(EgressRouteInputSecretsBuilder b),
  ]) = _$EgressRouteInputSecrets;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EgressRouteInputSecretsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EgressRouteInputSecrets> get serializer =>
      _$EgressRouteInputSecretsSerializer();
}

class _$EgressRouteInputSecretsSerializer
    implements PrimitiveSerializer<EgressRouteInputSecrets> {
  @override
  final Iterable<Type> types = const [
    EgressRouteInputSecrets,
    _$EgressRouteInputSecrets,
  ];

  @override
  final String wireName = r'EgressRouteInputSecrets';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EgressRouteInputSecrets object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.username != null) {
      yield r'username';
      yield serializers.serialize(
        object.username,
        specifiedType: const FullType(String),
      );
    }
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      );
    }
    if (object.wireguardConfig != null) {
      yield r'wireguardConfig';
      yield serializers.serialize(
        object.wireguardConfig,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EgressRouteInputSecrets object, {
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
    required EgressRouteInputSecretsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'wireguardConfig':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.wireguardConfig = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EgressRouteInputSecrets deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EgressRouteInputSecretsBuilder();
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
