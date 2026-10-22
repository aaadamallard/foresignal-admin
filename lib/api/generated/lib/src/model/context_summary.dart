//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/context_summary_insights_inner.dart';
import 'package:foresignal_api/src/model/object_envelope.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/context_summary_layer_counts_inner.dart';
import 'package:foresignal_api/src/model/context_summary_activity_inner.dart';
import 'package:foresignal_api/src/model/context_summary_request.dart';
import 'package:foresignal_api/src/model/context_summary_narrative.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'context_summary.g.dart';

/// Counts, activity, insights and related objects for a context (≤ 32 KB)
///
/// Properties:
/// * [context]
/// * [generatedAt]
/// * [cacheAgeSeconds]
/// * [layerCounts]
/// * [activity]
/// * [insights]
/// * [related]
/// * [narrative]
/// * [truncated]
@BuiltValue()
abstract class ContextSummary
    implements Built<ContextSummary, ContextSummaryBuilder> {
  @BuiltValueField(wireName: r'context')
  ContextSummaryRequest? get context;

  @BuiltValueField(wireName: r'generatedAt')
  DateTime get generatedAt;

  @BuiltValueField(wireName: r'cacheAgeSeconds')
  int? get cacheAgeSeconds;

  @BuiltValueField(wireName: r'layerCounts')
  BuiltList<ContextSummaryLayerCountsInner> get layerCounts;

  @BuiltValueField(wireName: r'activity')
  BuiltList<ContextSummaryActivityInner> get activity;

  @BuiltValueField(wireName: r'insights')
  BuiltList<ContextSummaryInsightsInner> get insights;

  @BuiltValueField(wireName: r'related')
  BuiltList<ObjectEnvelope> get related;

  @BuiltValueField(wireName: r'narrative')
  ContextSummaryNarrative? get narrative;

  @BuiltValueField(wireName: r'truncated')
  bool? get truncated;

  ContextSummary._();

  factory ContextSummary([void updates(ContextSummaryBuilder b)]) =
      _$ContextSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ContextSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ContextSummary> get serializer =>
      _$ContextSummarySerializer();
}

class _$ContextSummarySerializer
    implements PrimitiveSerializer<ContextSummary> {
  @override
  final Iterable<Type> types = const [ContextSummary, _$ContextSummary];

  @override
  final String wireName = r'ContextSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ContextSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.context != null) {
      yield r'context';
      yield serializers.serialize(
        object.context,
        specifiedType: const FullType(ContextSummaryRequest),
      );
    }
    yield r'generatedAt';
    yield serializers.serialize(
      object.generatedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.cacheAgeSeconds != null) {
      yield r'cacheAgeSeconds';
      yield serializers.serialize(
        object.cacheAgeSeconds,
        specifiedType: const FullType(int),
      );
    }
    yield r'layerCounts';
    yield serializers.serialize(
      object.layerCounts,
      specifiedType: const FullType(BuiltList, [
        FullType(ContextSummaryLayerCountsInner),
      ]),
    );
    yield r'activity';
    yield serializers.serialize(
      object.activity,
      specifiedType: const FullType(BuiltList, [
        FullType(ContextSummaryActivityInner),
      ]),
    );
    yield r'insights';
    yield serializers.serialize(
      object.insights,
      specifiedType: const FullType(BuiltList, [
        FullType(ContextSummaryInsightsInner),
      ]),
    );
    yield r'related';
    yield serializers.serialize(
      object.related,
      specifiedType: const FullType(BuiltList, [FullType(ObjectEnvelope)]),
    );
    if (object.narrative != null) {
      yield r'narrative';
      yield serializers.serialize(
        object.narrative,
        specifiedType: const FullType.nullable(ContextSummaryNarrative),
      );
    }
    if (object.truncated != null) {
      yield r'truncated';
      yield serializers.serialize(
        object.truncated,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ContextSummary object, {
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
    required ContextSummaryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'context':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ContextSummaryRequest,
                    ),
                  )
                  as ContextSummaryRequest?;
          if (valueDes == null) continue;
          result.context.replace(valueDes);
          break;
        case r'generatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.generatedAt = valueDes;
          break;
        case r'cacheAgeSeconds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.cacheAgeSeconds = valueDes;
          break;
        case r'layerCounts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(ContextSummaryLayerCountsInner),
                    ]),
                  )
                  as BuiltList<ContextSummaryLayerCountsInner>;
          result.layerCounts.replace(valueDes);
          break;
        case r'activity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(ContextSummaryActivityInner),
                    ]),
                  )
                  as BuiltList<ContextSummaryActivityInner>;
          result.activity.replace(valueDes);
          break;
        case r'insights':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(ContextSummaryInsightsInner),
                    ]),
                  )
                  as BuiltList<ContextSummaryInsightsInner>;
          result.insights.replace(valueDes);
          break;
        case r'related':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(ObjectEnvelope),
                    ]),
                  )
                  as BuiltList<ObjectEnvelope>;
          result.related.replace(valueDes);
          break;
        case r'narrative':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ContextSummaryNarrative,
                    ),
                  )
                  as ContextSummaryNarrative?;
          if (valueDes == null) continue;
          result.narrative.replace(valueDes);
          break;
        case r'truncated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.truncated = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ContextSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ContextSummaryBuilder();
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
