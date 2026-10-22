//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'stats_rollup_rebuild_request.g.dart';

/// Range of closed buckets to recompute from raw rows (038)
///
/// Properties:
/// * [from]
/// * [to]
@BuiltValue()
abstract class StatsRollupRebuildRequest
    implements
        Built<StatsRollupRebuildRequest, StatsRollupRebuildRequestBuilder> {
  @BuiltValueField(wireName: r'from')
  DateTime get from;

  @BuiltValueField(wireName: r'to')
  DateTime get to;

  StatsRollupRebuildRequest._();

  factory StatsRollupRebuildRequest([
    void updates(StatsRollupRebuildRequestBuilder b),
  ]) = _$StatsRollupRebuildRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StatsRollupRebuildRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StatsRollupRebuildRequest> get serializer =>
      _$StatsRollupRebuildRequestSerializer();
}

class _$StatsRollupRebuildRequestSerializer
    implements PrimitiveSerializer<StatsRollupRebuildRequest> {
  @override
  final Iterable<Type> types = const [
    StatsRollupRebuildRequest,
    _$StatsRollupRebuildRequest,
  ];

  @override
  final String wireName = r'StatsRollupRebuildRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StatsRollupRebuildRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(DateTime),
    );
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StatsRollupRebuildRequest object, {
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
    required StatsRollupRebuildRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'from':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.to = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StatsRollupRebuildRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatsRollupRebuildRequestBuilder();
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
