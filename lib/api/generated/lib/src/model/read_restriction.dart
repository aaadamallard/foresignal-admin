//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'read_restriction.g.dart';

/// The effective read restriction of a principal (035): restricted tokens, feed keys and the anonymous profile. Intersected with every request filter by `RestrictionClamp`; out-of-scope single reads return 404.
///
/// Properties:
/// * [sources] - Allowed source ids (must exist); null = any
/// * [kinds] - Allowed kinds (must exist); null = any
/// * [bbox] - [minLon, minLat, maxLon, maxLat] (WGS84)
/// * [endpoints] - Allowed operations as `METHOD /v1/path/pattern` (Ant-style; method may be `*`). Each pattern must match at least one spec operation the token's scope can reach; no match → 403 ENDPOINT_NOT_ALLOWED (023) / RESTRICTED (035).
/// * [federation] - Allows the federation feed endpoints (with read scope)
/// * [includeExercise] - Federation feed includes exercise records (115)
/// * [area] - MultiPolygon (WGS84, ≤ 2,000 vertices) limiting reads; combined with `bbox` when both are set
/// * [placeIds] - Places (036) whose areas, unioned, bound what may be read (intersected with area and bbox); unknown places fail closed. Refused for the anonymous profile and feed keys (places are never anonymous)
/// * [excludePrivate] - Exclude private sources. Always true for anonymous callers and feed keys; for tokens the default leaves private visibility to the 023 gate (agent and admin tokens see private sources unless this is true)
/// * [maxRequestsPerMinute] - Overrides the `read` rate-limit class for this principal
@BuiltValue()
abstract class ReadRestriction
    implements Built<ReadRestriction, ReadRestrictionBuilder> {
  /// Allowed source ids (must exist); null = any
  @BuiltValueField(wireName: r'sources')
  BuiltList<String>? get sources;

  /// Allowed kinds (must exist); null = any
  @BuiltValueField(wireName: r'kinds')
  BuiltList<String>? get kinds;

  /// [minLon, minLat, maxLon, maxLat] (WGS84)
  @BuiltValueField(wireName: r'bbox')
  BuiltList<num>? get bbox;

  /// Allowed operations as `METHOD /v1/path/pattern` (Ant-style; method may be `*`). Each pattern must match at least one spec operation the token's scope can reach; no match → 403 ENDPOINT_NOT_ALLOWED (023) / RESTRICTED (035).
  @BuiltValueField(wireName: r'endpoints')
  BuiltList<String>? get endpoints;

  /// Allows the federation feed endpoints (with read scope)
  @BuiltValueField(wireName: r'federation')
  bool? get federation;

  /// Federation feed includes exercise records (115)
  @BuiltValueField(wireName: r'includeExercise')
  bool? get includeExercise;

  /// MultiPolygon (WGS84, ≤ 2,000 vertices) limiting reads; combined with `bbox` when both are set
  @BuiltValueField(wireName: r'area')
  Geometry? get area;

  /// Places (036) whose areas, unioned, bound what may be read (intersected with area and bbox); unknown places fail closed. Refused for the anonymous profile and feed keys (places are never anonymous)
  @BuiltValueField(wireName: r'placeIds')
  BuiltList<String>? get placeIds;

  /// Exclude private sources. Always true for anonymous callers and feed keys; for tokens the default leaves private visibility to the 023 gate (agent and admin tokens see private sources unless this is true)
  @BuiltValueField(wireName: r'excludePrivate')
  bool? get excludePrivate;

  /// Overrides the `read` rate-limit class for this principal
  @BuiltValueField(wireName: r'maxRequestsPerMinute')
  int? get maxRequestsPerMinute;

  ReadRestriction._();

  factory ReadRestriction([void updates(ReadRestrictionBuilder b)]) =
      _$ReadRestriction;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReadRestrictionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReadRestriction> get serializer =>
      _$ReadRestrictionSerializer();
}

class _$ReadRestrictionSerializer
    implements PrimitiveSerializer<ReadRestriction> {
  @override
  final Iterable<Type> types = const [ReadRestriction, _$ReadRestriction];

  @override
  final String wireName = r'ReadRestriction';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReadRestriction object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.sources != null) {
      yield r'sources';
      yield serializers.serialize(
        object.sources,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.kinds != null) {
      yield r'kinds';
      yield serializers.serialize(
        object.kinds,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.bbox != null) {
      yield r'bbox';
      yield serializers.serialize(
        object.bbox,
        specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
      );
    }
    if (object.endpoints != null) {
      yield r'endpoints';
      yield serializers.serialize(
        object.endpoints,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.federation != null) {
      yield r'federation';
      yield serializers.serialize(
        object.federation,
        specifiedType: const FullType(bool),
      );
    }
    if (object.includeExercise != null) {
      yield r'includeExercise';
      yield serializers.serialize(
        object.includeExercise,
        specifiedType: const FullType(bool),
      );
    }
    if (object.area != null) {
      yield r'area';
      yield serializers.serialize(
        object.area,
        specifiedType: const FullType.nullable(Geometry),
      );
    }
    if (object.placeIds != null) {
      yield r'placeIds';
      yield serializers.serialize(
        object.placeIds,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.excludePrivate != null) {
      yield r'excludePrivate';
      yield serializers.serialize(
        object.excludePrivate,
        specifiedType: const FullType(bool),
      );
    }
    if (object.maxRequestsPerMinute != null) {
      yield r'maxRequestsPerMinute';
      yield serializers.serialize(
        object.maxRequestsPerMinute,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReadRestriction object, {
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
    required ReadRestrictionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.sources.replace(valueDes);
          break;
        case r'kinds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.kinds.replace(valueDes);
          break;
        case r'bbox':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(num),
                    ]),
                  )
                  as BuiltList<num>?;
          if (valueDes == null) continue;
          result.bbox.replace(valueDes);
          break;
        case r'endpoints':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.endpoints.replace(valueDes);
          break;
        case r'federation':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.federation = valueDes;
          break;
        case r'includeExercise':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.includeExercise = valueDes;
          break;
        case r'area':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Geometry),
                  )
                  as Geometry?;
          if (valueDes == null) continue;
          result.area.replace(valueDes);
          break;
        case r'placeIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.placeIds.replace(valueDes);
          break;
        case r'excludePrivate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.excludePrivate = valueDes;
          break;
        case r'maxRequestsPerMinute':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxRequestsPerMinute = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReadRestriction deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReadRestrictionBuilder();
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
