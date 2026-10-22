//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workspace_viewport.g.dart';

/// Viewport: either `bbox` or `center` + `radiusKm`
///
/// Properties:
/// * [bbox] - [minLon, minLat, maxLon, maxLat]
/// * [center] - [lon, lat]
/// * [radiusKm]
@BuiltValue()
abstract class WorkspaceViewport
    implements Built<WorkspaceViewport, WorkspaceViewportBuilder> {
  /// [minLon, minLat, maxLon, maxLat]
  @BuiltValueField(wireName: r'bbox')
  BuiltList<num>? get bbox;

  /// [lon, lat]
  @BuiltValueField(wireName: r'center')
  BuiltList<num>? get center;

  @BuiltValueField(wireName: r'radiusKm')
  num? get radiusKm;

  WorkspaceViewport._();

  factory WorkspaceViewport([void updates(WorkspaceViewportBuilder b)]) =
      _$WorkspaceViewport;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkspaceViewportBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkspaceViewport> get serializer =>
      _$WorkspaceViewportSerializer();
}

class _$WorkspaceViewportSerializer
    implements PrimitiveSerializer<WorkspaceViewport> {
  @override
  final Iterable<Type> types = const [WorkspaceViewport, _$WorkspaceViewport];

  @override
  final String wireName = r'WorkspaceViewport';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkspaceViewport object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.bbox != null) {
      yield r'bbox';
      yield serializers.serialize(
        object.bbox,
        specifiedType: const FullType(BuiltList, [FullType(num)]),
      );
    }
    if (object.center != null) {
      yield r'center';
      yield serializers.serialize(
        object.center,
        specifiedType: const FullType(BuiltList, [FullType(num)]),
      );
    }
    if (object.radiusKm != null) {
      yield r'radiusKm';
      yield serializers.serialize(
        object.radiusKm,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WorkspaceViewport object, {
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
    required WorkspaceViewportBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'bbox':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
          ) as BuiltList<num>?;
          if (valueDes == null) continue;
          result.bbox.replace(valueDes);
          break;
        case r'center':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
          ) as BuiltList<num>?;
          if (valueDes == null) continue;
          result.center.replace(valueDes);
          break;
        case r'radiusKm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.radiusKm = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WorkspaceViewport deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkspaceViewportBuilder();
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
