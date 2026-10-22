//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'package_manifest_sender.g.dart';

/// Sending instance
///
/// Properties:
/// * [instanceId]
/// * [instanceName]
/// * [keyId] - Kid in the sender's 109 JWKS
@BuiltValue()
abstract class PackageManifestSender
    implements Built<PackageManifestSender, PackageManifestSenderBuilder> {
  @BuiltValueField(wireName: r'instanceId')
  String get instanceId;

  @BuiltValueField(wireName: r'instanceName')
  String? get instanceName;

  /// Kid in the sender's 109 JWKS
  @BuiltValueField(wireName: r'keyId')
  String get keyId;

  PackageManifestSender._();

  factory PackageManifestSender([
    void updates(PackageManifestSenderBuilder b),
  ]) = _$PackageManifestSender;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PackageManifestSenderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PackageManifestSender> get serializer =>
      _$PackageManifestSenderSerializer();
}

class _$PackageManifestSenderSerializer
    implements PrimitiveSerializer<PackageManifestSender> {
  @override
  final Iterable<Type> types = const [
    PackageManifestSender,
    _$PackageManifestSender,
  ];

  @override
  final String wireName = r'PackageManifestSender';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PackageManifestSender object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'instanceId';
    yield serializers.serialize(
      object.instanceId,
      specifiedType: const FullType(String),
    );
    if (object.instanceName != null) {
      yield r'instanceName';
      yield serializers.serialize(
        object.instanceName,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'keyId';
    yield serializers.serialize(
      object.keyId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PackageManifestSender object, {
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
    required PackageManifestSenderBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'instanceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.instanceId = valueDes;
          break;
        case r'instanceName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.instanceName = valueDes;
          break;
        case r'keyId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.keyId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PackageManifestSender deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PackageManifestSenderBuilder();
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
