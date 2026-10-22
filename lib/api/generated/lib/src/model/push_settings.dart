//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'push_settings.g.dart';

/// Push settings inside ServerSettings (031)
///
/// Properties:
/// * [contact] - VAPID `sub`
/// * [allowedPrivateHosts] - Exact hostnames or CIDRs (IPv4 prefix ≥ /8, IPv6 ≥ /32) allowed as push endpoints despite resolving to private addresses (e.g. a LAN UnifiedPush distributor); https still required
/// * [defaultLang]
@BuiltValue()
abstract class PushSettings
    implements Built<PushSettings, PushSettingsBuilder> {
  /// VAPID `sub`
  @BuiltValueField(wireName: r'contact')
  String? get contact;

  /// Exact hostnames or CIDRs (IPv4 prefix ≥ /8, IPv6 ≥ /32) allowed as push endpoints despite resolving to private addresses (e.g. a LAN UnifiedPush distributor); https still required
  @BuiltValueField(wireName: r'allowedPrivateHosts')
  BuiltList<String>? get allowedPrivateHosts;

  @BuiltValueField(wireName: r'defaultLang')
  String? get defaultLang;

  PushSettings._();

  factory PushSettings([void updates(PushSettingsBuilder b)]) = _$PushSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PushSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PushSettings> get serializer => _$PushSettingsSerializer();
}

class _$PushSettingsSerializer implements PrimitiveSerializer<PushSettings> {
  @override
  final Iterable<Type> types = const [PushSettings, _$PushSettings];

  @override
  final String wireName = r'PushSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PushSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.contact != null) {
      yield r'contact';
      yield serializers.serialize(
        object.contact,
        specifiedType: const FullType(String),
      );
    }
    if (object.allowedPrivateHosts != null) {
      yield r'allowedPrivateHosts';
      yield serializers.serialize(
        object.allowedPrivateHosts,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.defaultLang != null) {
      yield r'defaultLang';
      yield serializers.serialize(
        object.defaultLang,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PushSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PushSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'contact':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contact = valueDes;
          break;
        case r'allowedPrivateHosts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.allowedPrivateHosts.replace(valueDes);
          break;
        case r'defaultLang':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.defaultLang = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PushSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PushSettingsBuilder();
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
