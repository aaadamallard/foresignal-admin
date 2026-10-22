//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'media_fingerprint_uses_inner.g.dart';

/// One use (detail view; latest 100)
///
/// Properties:
/// * [postRef] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [seenAt]
/// * [platform] - Social network: `bluesky`, `mastodon`, `reddit`, `youtube`, `x`, `threads`, `instagram`, or the platform an EDP provider (024, 138) declares
@BuiltValue()
abstract class MediaFingerprintUsesInner
    implements
        Built<MediaFingerprintUsesInner, MediaFingerprintUsesInnerBuilder> {
  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'postRef')
  String get postRef;

  @BuiltValueField(wireName: r'seenAt')
  DateTime get seenAt;

  /// Social network: `bluesky`, `mastodon`, `reddit`, `youtube`, `x`, `threads`, `instagram`, or the platform an EDP provider (024, 138) declares
  @BuiltValueField(wireName: r'platform')
  String? get platform;

  MediaFingerprintUsesInner._();

  factory MediaFingerprintUsesInner([
    void updates(MediaFingerprintUsesInnerBuilder b),
  ]) = _$MediaFingerprintUsesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MediaFingerprintUsesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MediaFingerprintUsesInner> get serializer =>
      _$MediaFingerprintUsesInnerSerializer();
}

class _$MediaFingerprintUsesInnerSerializer
    implements PrimitiveSerializer<MediaFingerprintUsesInner> {
  @override
  final Iterable<Type> types = const [
    MediaFingerprintUsesInner,
    _$MediaFingerprintUsesInner,
  ];

  @override
  final String wireName = r'MediaFingerprintUsesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MediaFingerprintUsesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'postRef';
    yield serializers.serialize(
      object.postRef,
      specifiedType: const FullType(String),
    );
    yield r'seenAt';
    yield serializers.serialize(
      object.seenAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.platform != null) {
      yield r'platform';
      yield serializers.serialize(
        object.platform,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MediaFingerprintUsesInner object, {
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
    required MediaFingerprintUsesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'postRef':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.postRef = valueDes;
          break;
        case r'seenAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.seenAt = valueDes;
          break;
        case r'platform':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.platform = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MediaFingerprintUsesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MediaFingerprintUsesInnerBuilder();
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
