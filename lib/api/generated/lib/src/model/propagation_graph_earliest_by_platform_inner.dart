//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'propagation_graph_earliest_by_platform_inner.g.dart';

/// Earliest observed post on a platform (never 'originator')
///
/// Properties:
/// * [platform] - Social network: `bluesky`, `mastodon`, `reddit`, `youtube`, `x`, `threads`, `instagram`, or the platform an EDP provider (024, 138) declares
/// * [postRef] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [observedAt]
@BuiltValue()
abstract class PropagationGraphEarliestByPlatformInner
    implements
        Built<
          PropagationGraphEarliestByPlatformInner,
          PropagationGraphEarliestByPlatformInnerBuilder
        > {
  /// Social network: `bluesky`, `mastodon`, `reddit`, `youtube`, `x`, `threads`, `instagram`, or the platform an EDP provider (024, 138) declares
  @BuiltValueField(wireName: r'platform')
  String get platform;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'postRef')
  String get postRef;

  @BuiltValueField(wireName: r'observedAt')
  DateTime get observedAt;

  PropagationGraphEarliestByPlatformInner._();

  factory PropagationGraphEarliestByPlatformInner([
    void updates(PropagationGraphEarliestByPlatformInnerBuilder b),
  ]) = _$PropagationGraphEarliestByPlatformInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PropagationGraphEarliestByPlatformInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PropagationGraphEarliestByPlatformInner> get serializer =>
      _$PropagationGraphEarliestByPlatformInnerSerializer();
}

class _$PropagationGraphEarliestByPlatformInnerSerializer
    implements PrimitiveSerializer<PropagationGraphEarliestByPlatformInner> {
  @override
  final Iterable<Type> types = const [
    PropagationGraphEarliestByPlatformInner,
    _$PropagationGraphEarliestByPlatformInner,
  ];

  @override
  final String wireName = r'PropagationGraphEarliestByPlatformInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PropagationGraphEarliestByPlatformInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'platform';
    yield serializers.serialize(
      object.platform,
      specifiedType: const FullType(String),
    );
    yield r'postRef';
    yield serializers.serialize(
      object.postRef,
      specifiedType: const FullType(String),
    );
    yield r'observedAt';
    yield serializers.serialize(
      object.observedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PropagationGraphEarliestByPlatformInner object, {
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
    required PropagationGraphEarliestByPlatformInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'platform':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.platform = valueDes;
          break;
        case r'postRef':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.postRef = valueDes;
          break;
        case r'observedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.observedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PropagationGraphEarliestByPlatformInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PropagationGraphEarliestByPlatformInnerBuilder();
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
