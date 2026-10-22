//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/workspace_viewport.dart';
import 'package:foresignal_api/src/model/time_range.dart';
import 'package:foresignal_api/src/model/workspace_context_playback.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workspace_context.g.dart';

/// Shared, versioned workspace context (Client-Contract §5)
///
/// Properties:
/// * [selectedRefs]
/// * [focusRef] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [timeRange]
/// * [asOf]
/// * [playback]
/// * [viewport]
/// * [activeSituationId] - ULID identifier
/// * [activeHypothesisSetId] - ULID identifier
/// * [filters] - Simple values the clients agree on; validated for shape and size only
/// * [layers] - Opaque layer ids (source ids, kinds, `observability:{family}`)
@BuiltValue()
abstract class WorkspaceContext
    implements Built<WorkspaceContext, WorkspaceContextBuilder> {
  @BuiltValueField(wireName: r'selectedRefs')
  BuiltList<String>? get selectedRefs;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'focusRef')
  String? get focusRef;

  @BuiltValueField(wireName: r'timeRange')
  TimeRange? get timeRange;

  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  @BuiltValueField(wireName: r'playback')
  WorkspaceContextPlayback? get playback;

  @BuiltValueField(wireName: r'viewport')
  WorkspaceViewport? get viewport;

  /// ULID identifier
  @BuiltValueField(wireName: r'activeSituationId')
  String? get activeSituationId;

  /// ULID identifier
  @BuiltValueField(wireName: r'activeHypothesisSetId')
  String? get activeHypothesisSetId;

  /// Simple values the clients agree on; validated for shape and size only
  @BuiltValueField(wireName: r'filters')
  BuiltMap<String, JsonObject?>? get filters;

  /// Opaque layer ids (source ids, kinds, `observability:{family}`)
  @BuiltValueField(wireName: r'layers')
  BuiltList<String>? get layers;

  WorkspaceContext._();

  factory WorkspaceContext([void updates(WorkspaceContextBuilder b)]) =
      _$WorkspaceContext;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkspaceContextBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkspaceContext> get serializer =>
      _$WorkspaceContextSerializer();
}

class _$WorkspaceContextSerializer
    implements PrimitiveSerializer<WorkspaceContext> {
  @override
  final Iterable<Type> types = const [WorkspaceContext, _$WorkspaceContext];

  @override
  final String wireName = r'WorkspaceContext';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkspaceContext object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.selectedRefs != null) {
      yield r'selectedRefs';
      yield serializers.serialize(
        object.selectedRefs,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.focusRef != null) {
      yield r'focusRef';
      yield serializers.serialize(
        object.focusRef,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.timeRange != null) {
      yield r'timeRange';
      yield serializers.serialize(
        object.timeRange,
        specifiedType: const FullType.nullable(TimeRange),
      );
    }
    if (object.asOf != null) {
      yield r'asOf';
      yield serializers.serialize(
        object.asOf,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.playback != null) {
      yield r'playback';
      yield serializers.serialize(
        object.playback,
        specifiedType: const FullType.nullable(WorkspaceContextPlayback),
      );
    }
    if (object.viewport != null) {
      yield r'viewport';
      yield serializers.serialize(
        object.viewport,
        specifiedType: const FullType.nullable(WorkspaceViewport),
      );
    }
    if (object.activeSituationId != null) {
      yield r'activeSituationId';
      yield serializers.serialize(
        object.activeSituationId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.activeHypothesisSetId != null) {
      yield r'activeHypothesisSetId';
      yield serializers.serialize(
        object.activeHypothesisSetId,
        specifiedType: const FullType.nullable(String),
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
    WorkspaceContext object, {
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
    required WorkspaceContextBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'selectedRefs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.selectedRefs.replace(valueDes);
          break;
        case r'focusRef':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.focusRef = valueDes;
          break;
        case r'timeRange':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(TimeRange),
                  )
                  as TimeRange?;
          if (valueDes == null) continue;
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
        case r'playback':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      WorkspaceContextPlayback,
                    ),
                  )
                  as WorkspaceContextPlayback?;
          if (valueDes == null) continue;
          result.playback.replace(valueDes);
          break;
        case r'viewport':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(WorkspaceViewport),
                  )
                  as WorkspaceViewport?;
          if (valueDes == null) continue;
          result.viewport.replace(valueDes);
          break;
        case r'activeSituationId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.activeSituationId = valueDes;
          break;
        case r'activeHypothesisSetId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.activeHypothesisSetId = valueDes;
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
  WorkspaceContext deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkspaceContextBuilder();
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
