//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/client_links.dart';
import 'package:foresignal_api/src/model/push_settings.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/settings_warning.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'server_settings.g.dart';

/// ServerSettings
///
/// Properties:
/// * [publicBaseUrl] - Base URL used in notification links
/// * [timezone] - IANA zone; fallback for channel timezones
/// * [clientLinks]
/// * [warnings] - PUBLIC_BASE_URL_INSECURE when publicBaseUrl is http:// on a non-local host; PUBLIC_BASE_URL_MISMATCH when requests arrive over https
/// * [push]
/// * [contactEmail] - Operator contact appended to the upstream User-Agent as `contact=…` (the NWS API asks for a contact); null for none
@BuiltValue()
abstract class ServerSettings
    implements Built<ServerSettings, ServerSettingsBuilder> {
  /// Base URL used in notification links
  @BuiltValueField(wireName: r'publicBaseUrl')
  String get publicBaseUrl;

  /// IANA zone; fallback for channel timezones
  @BuiltValueField(wireName: r'timezone')
  String? get timezone;

  @BuiltValueField(wireName: r'clientLinks')
  ClientLinks? get clientLinks;

  /// PUBLIC_BASE_URL_INSECURE when publicBaseUrl is http:// on a non-local host; PUBLIC_BASE_URL_MISMATCH when requests arrive over https
  @BuiltValueField(wireName: r'warnings')
  BuiltList<SettingsWarning>? get warnings;

  @BuiltValueField(wireName: r'push')
  PushSettings? get push;

  /// Operator contact appended to the upstream User-Agent as `contact=…` (the NWS API asks for a contact); null for none
  @BuiltValueField(wireName: r'contactEmail')
  String? get contactEmail;

  ServerSettings._();

  factory ServerSettings([void updates(ServerSettingsBuilder b)]) =
      _$ServerSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServerSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServerSettings> get serializer =>
      _$ServerSettingsSerializer();
}

class _$ServerSettingsSerializer
    implements PrimitiveSerializer<ServerSettings> {
  @override
  final Iterable<Type> types = const [ServerSettings, _$ServerSettings];

  @override
  final String wireName = r'ServerSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServerSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'publicBaseUrl';
    yield serializers.serialize(
      object.publicBaseUrl,
      specifiedType: const FullType(String),
    );
    if (object.timezone != null) {
      yield r'timezone';
      yield serializers.serialize(
        object.timezone,
        specifiedType: const FullType(String),
      );
    }
    if (object.clientLinks != null) {
      yield r'clientLinks';
      yield serializers.serialize(
        object.clientLinks,
        specifiedType: const FullType(ClientLinks),
      );
    }
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType: const FullType(BuiltList, [FullType(SettingsWarning)]),
      );
    }
    if (object.push != null) {
      yield r'push';
      yield serializers.serialize(
        object.push,
        specifiedType: const FullType(PushSettings),
      );
    }
    if (object.contactEmail != null) {
      yield r'contactEmail';
      yield serializers.serialize(
        object.contactEmail,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ServerSettings object, {
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
    required ServerSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'publicBaseUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.publicBaseUrl = valueDes;
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
        case r'clientLinks':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ClientLinks),
                  )
                  as ClientLinks?;
          if (valueDes == null) continue;
          result.clientLinks.replace(valueDes);
          break;
        case r'warnings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(SettingsWarning),
                    ]),
                  )
                  as BuiltList<SettingsWarning>?;
          if (valueDes == null) continue;
          result.warnings.replace(valueDes);
          break;
        case r'push':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(PushSettings),
                  )
                  as PushSettings?;
          if (valueDes == null) continue;
          result.push.replace(valueDes);
          break;
        case r'contactEmail':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.contactEmail = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ServerSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServerSettingsBuilder();
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
