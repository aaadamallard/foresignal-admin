//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/edp_manifest.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'external_source_registration.g.dart';

/// Register by manifest or manifest URL
///
/// Properties:
/// * [manifest]
/// * [manifestUrl]
/// * [approve]
/// * [allowPrivateNetwork] - Allow this provider's URLs (manifestUrl, pull itemsUrl, search url) to resolve to private, loopback, link-local or carrier-grade NAT addresses and to use plain http, for a provider on the operator's own network. Cloud-metadata addresses stay refused (EDP §7, invariant EXT-6). Set only at registration (024).
@BuiltValue()
abstract class ExternalSourceRegistration
    implements
        Built<ExternalSourceRegistration, ExternalSourceRegistrationBuilder> {
  @BuiltValueField(wireName: r'manifest')
  EdpManifest? get manifest;

  @BuiltValueField(wireName: r'manifestUrl')
  String? get manifestUrl;

  @BuiltValueField(wireName: r'approve')
  bool? get approve;

  /// Allow this provider's URLs (manifestUrl, pull itemsUrl, search url) to resolve to private, loopback, link-local or carrier-grade NAT addresses and to use plain http, for a provider on the operator's own network. Cloud-metadata addresses stay refused (EDP §7, invariant EXT-6). Set only at registration (024).
  @BuiltValueField(wireName: r'allowPrivateNetwork')
  bool? get allowPrivateNetwork;

  ExternalSourceRegistration._();

  factory ExternalSourceRegistration([
    void updates(ExternalSourceRegistrationBuilder b),
  ]) = _$ExternalSourceRegistration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExternalSourceRegistrationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExternalSourceRegistration> get serializer =>
      _$ExternalSourceRegistrationSerializer();
}

class _$ExternalSourceRegistrationSerializer
    implements PrimitiveSerializer<ExternalSourceRegistration> {
  @override
  final Iterable<Type> types = const [
    ExternalSourceRegistration,
    _$ExternalSourceRegistration,
  ];

  @override
  final String wireName = r'ExternalSourceRegistration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExternalSourceRegistration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.manifest != null) {
      yield r'manifest';
      yield serializers.serialize(
        object.manifest,
        specifiedType: const FullType.nullable(EdpManifest),
      );
    }
    if (object.manifestUrl != null) {
      yield r'manifestUrl';
      yield serializers.serialize(
        object.manifestUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.approve != null) {
      yield r'approve';
      yield serializers.serialize(
        object.approve,
        specifiedType: const FullType(bool),
      );
    }
    if (object.allowPrivateNetwork != null) {
      yield r'allowPrivateNetwork';
      yield serializers.serialize(
        object.allowPrivateNetwork,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExternalSourceRegistration object, {
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
    required ExternalSourceRegistrationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'manifest':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EdpManifest),
                  )
                  as EdpManifest?;
          if (valueDes == null) continue;
          result.manifest.replace(valueDes);
          break;
        case r'manifestUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.manifestUrl = valueDes;
          break;
        case r'approve':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.approve = valueDes;
          break;
        case r'allowPrivateNetwork':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.allowPrivateNetwork = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExternalSourceRegistration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExternalSourceRegistrationBuilder();
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
