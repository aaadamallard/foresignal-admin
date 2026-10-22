//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fire_cluster_payload.g.dart';

/// Payload of `fire-cluster` records (goes-fdc 8-connected components)
///
/// Properties:
/// * [pixels]
/// * [frpTotalMw]
/// * [frpMaxMw]
/// * [firstSeenAt]
/// * [label]
@BuiltValue()
abstract class FireClusterPayload
    implements Built<FireClusterPayload, FireClusterPayloadBuilder> {
  @BuiltValueField(wireName: r'pixels')
  int get pixels;

  @BuiltValueField(wireName: r'frpTotalMw')
  num? get frpTotalMw;

  @BuiltValueField(wireName: r'frpMaxMw')
  num? get frpMaxMw;

  @BuiltValueField(wireName: r'firstSeenAt')
  DateTime? get firstSeenAt;

  @BuiltValueField(wireName: r'label')
  String get label;

  FireClusterPayload._();

  factory FireClusterPayload([void updates(FireClusterPayloadBuilder b)]) =
      _$FireClusterPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FireClusterPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FireClusterPayload> get serializer =>
      _$FireClusterPayloadSerializer();
}

class _$FireClusterPayloadSerializer
    implements PrimitiveSerializer<FireClusterPayload> {
  @override
  final Iterable<Type> types = const [FireClusterPayload, _$FireClusterPayload];

  @override
  final String wireName = r'FireClusterPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FireClusterPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'pixels';
    yield serializers.serialize(
      object.pixels,
      specifiedType: const FullType(int),
    );
    if (object.frpTotalMw != null) {
      yield r'frpTotalMw';
      yield serializers.serialize(
        object.frpTotalMw,
        specifiedType: const FullType(num),
      );
    }
    if (object.frpMaxMw != null) {
      yield r'frpMaxMw';
      yield serializers.serialize(
        object.frpMaxMw,
        specifiedType: const FullType(num),
      );
    }
    if (object.firstSeenAt != null) {
      yield r'firstSeenAt';
      yield serializers.serialize(
        object.firstSeenAt,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'label';
    yield serializers.serialize(
      object.label,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FireClusterPayload object, {
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
    required FireClusterPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'pixels':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pixels = valueDes;
          break;
        case r'frpTotalMw':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.frpTotalMw = valueDes;
          break;
        case r'frpMaxMw':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.frpMaxMw = valueDes;
          break;
        case r'firstSeenAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.firstSeenAt = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.label = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FireClusterPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FireClusterPayloadBuilder();
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
