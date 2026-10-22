//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/workspace_viewport.dart';
import 'package:foresignal_api/src/model/time_range.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'context_summary_request.g.dart';

/// A viewport, window and filters to summarise
///
/// Properties:
/// * [viewport]
/// * [timeRange]
/// * [asOf]
/// * [filters]
/// * [layers]
@BuiltValue()
abstract class ContextSummaryRequest
    implements Built<ContextSummaryRequest, ContextSummaryRequestBuilder> {
  @BuiltValueField(wireName: r'viewport')
  WorkspaceViewport get viewport;

  @BuiltValueField(wireName: r'timeRange')
  TimeRange get timeRange;

  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  @BuiltValueField(wireName: r'filters')
  BuiltMap<String, JsonObject?>? get filters;

  @BuiltValueField(wireName: r'layers')
  BuiltList<String>? get layers;

  ContextSummaryRequest._();

  factory ContextSummaryRequest([
    void updates(ContextSummaryRequestBuilder b),
  ]) = _$ContextSummaryRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ContextSummaryRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ContextSummaryRequest> get serializer =>
      _$ContextSummaryRequestSerializer();
}

class _$ContextSummaryRequestSerializer
    implements PrimitiveSerializer<ContextSummaryRequest> {
  @override
  final Iterable<Type> types = const [
    ContextSummaryRequest,
    _$ContextSummaryRequest,
  ];

  @override
  final String wireName = r'ContextSummaryRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ContextSummaryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'viewport';
    yield serializers.serialize(
      object.viewport,
      specifiedType: const FullType(WorkspaceViewport),
    );
    yield r'timeRange';
    yield serializers.serialize(
      object.timeRange,
      specifiedType: const FullType(TimeRange),
    );
    if (object.asOf != null) {
      yield r'asOf';
      yield serializers.serialize(
        object.asOf,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.filters != null) {
      yield r'filters';
      yield serializers.serialize(
        object.filters,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.layers != null) {
      yield r'layers';
      yield serializers.serialize(
        object.layers,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ContextSummaryRequest object, {
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
    required ContextSummaryRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'viewport':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(WorkspaceViewport),
                  )
                  as WorkspaceViewport;
          result.viewport.replace(valueDes);
          break;
        case r'timeRange':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(TimeRange),
                  )
                  as TimeRange;
          result.timeRange.replace(valueDes);
          break;
        case r'asOf':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.asOf = valueDes;
          break;
        case r'filters':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.filters.replace(valueDes);
          break;
        case r'layers':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.layers.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ContextSummaryRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ContextSummaryRequestBuilder();
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
