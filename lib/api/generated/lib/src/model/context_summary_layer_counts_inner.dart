//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'context_summary_layer_counts_inner.g.dart';

/// Aggregated count for a layer or kind in the viewport
///
/// Properties:
/// * [layer]
/// * [count]
/// * [liveCount]
@BuiltValue()
abstract class ContextSummaryLayerCountsInner
    implements
        Built<
          ContextSummaryLayerCountsInner,
          ContextSummaryLayerCountsInnerBuilder
        > {
  @BuiltValueField(wireName: r'layer')
  String get layer;

  @BuiltValueField(wireName: r'count')
  int get count;

  @BuiltValueField(wireName: r'liveCount')
  int? get liveCount;

  ContextSummaryLayerCountsInner._();

  factory ContextSummaryLayerCountsInner([
    void updates(ContextSummaryLayerCountsInnerBuilder b),
  ]) = _$ContextSummaryLayerCountsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ContextSummaryLayerCountsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ContextSummaryLayerCountsInner> get serializer =>
      _$ContextSummaryLayerCountsInnerSerializer();
}

class _$ContextSummaryLayerCountsInnerSerializer
    implements PrimitiveSerializer<ContextSummaryLayerCountsInner> {
  @override
  final Iterable<Type> types = const [
    ContextSummaryLayerCountsInner,
    _$ContextSummaryLayerCountsInner,
  ];

  @override
  final String wireName = r'ContextSummaryLayerCountsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ContextSummaryLayerCountsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'layer';
    yield serializers.serialize(
      object.layer,
      specifiedType: const FullType(String),
    );
    yield r'count';
    yield serializers.serialize(
      object.count,
      specifiedType: const FullType(int),
    );
    if (object.liveCount != null) {
      yield r'liveCount';
      yield serializers.serialize(
        object.liveCount,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ContextSummaryLayerCountsInner object, {
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
    required ContextSummaryLayerCountsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'layer':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.layer = valueDes;
          break;
        case r'count':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.count = valueDes;
          break;
        case r'liveCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.liveCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ContextSummaryLayerCountsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ContextSummaryLayerCountsInnerBuilder();
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
