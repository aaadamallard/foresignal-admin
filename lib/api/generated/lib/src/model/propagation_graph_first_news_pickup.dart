//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'propagation_graph_first_news_pickup.g.dart';

/// First 133 story linked by URL or text
///
/// Properties:
/// * [storyId] - ULID identifier
/// * [articleRef] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [observedAt]
/// * [afterFirstPostSeconds]
@BuiltValue()
abstract class PropagationGraphFirstNewsPickup
    implements
        Built<PropagationGraphFirstNewsPickup,
            PropagationGraphFirstNewsPickupBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'storyId')
  String get storyId;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'articleRef')
  String? get articleRef;

  @BuiltValueField(wireName: r'observedAt')
  DateTime get observedAt;

  @BuiltValueField(wireName: r'afterFirstPostSeconds')
  num? get afterFirstPostSeconds;

  PropagationGraphFirstNewsPickup._();

  factory PropagationGraphFirstNewsPickup(
          [void updates(PropagationGraphFirstNewsPickupBuilder b)]) =
      _$PropagationGraphFirstNewsPickup;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PropagationGraphFirstNewsPickupBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PropagationGraphFirstNewsPickup> get serializer =>
      _$PropagationGraphFirstNewsPickupSerializer();
}

class _$PropagationGraphFirstNewsPickupSerializer
    implements PrimitiveSerializer<PropagationGraphFirstNewsPickup> {
  @override
  final Iterable<Type> types = const [
    PropagationGraphFirstNewsPickup,
    _$PropagationGraphFirstNewsPickup
  ];

  @override
  final String wireName = r'PropagationGraphFirstNewsPickup';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PropagationGraphFirstNewsPickup object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'storyId';
    yield serializers.serialize(
      object.storyId,
      specifiedType: const FullType(String),
    );
    if (object.articleRef != null) {
      yield r'articleRef';
      yield serializers.serialize(
        object.articleRef,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'observedAt';
    yield serializers.serialize(
      object.observedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.afterFirstPostSeconds != null) {
      yield r'afterFirstPostSeconds';
      yield serializers.serialize(
        object.afterFirstPostSeconds,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PropagationGraphFirstNewsPickup object, {
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
    required PropagationGraphFirstNewsPickupBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'storyId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.storyId = valueDes;
          break;
        case r'articleRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.articleRef = valueDes;
          break;
        case r'observedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.observedAt = valueDes;
          break;
        case r'afterFirstPostSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.afterFirstPostSeconds = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PropagationGraphFirstNewsPickup deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PropagationGraphFirstNewsPickupBuilder();
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
