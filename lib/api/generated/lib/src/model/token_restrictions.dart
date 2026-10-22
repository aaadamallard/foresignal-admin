//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'token_restrictions.g.dart';

/// Restrictions stored on an API token, feed key or pairing code (023, 035). Endpoint restrictions are enforced by the token filter (403 ENDPOINT_NOT_ALLOWED); source, kind, bbox and area restrictions (see ReadRestriction) are applied on every read path from 035 by RestrictionClamp.
///
/// Properties:
/// * [sources] - Allowed source ids (must exist); null = any
/// * [kinds] - Allowed kinds (must exist); null = any
/// * [bbox] - [minLon, minLat, maxLon, maxLat] (WGS84)
/// * [endpoints] - Allowed operations as `METHOD /v1/path/pattern` (Ant-style; method may be `*`). Each pattern must match at least one spec operation the token's scope can reach; no match → 403 ENDPOINT_NOT_ALLOWED (023) / RESTRICTED (035).
/// * [federation] - Allows the federation feed endpoints (with read scope)
/// * [includeExercise] - Federation feed includes exercise records (115)
@BuiltValue()
abstract class TokenRestrictions
    implements Built<TokenRestrictions, TokenRestrictionsBuilder> {
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

  TokenRestrictions._();

  factory TokenRestrictions([void updates(TokenRestrictionsBuilder b)]) =
      _$TokenRestrictions;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TokenRestrictionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TokenRestrictions> get serializer =>
      _$TokenRestrictionsSerializer();
}

class _$TokenRestrictionsSerializer
    implements PrimitiveSerializer<TokenRestrictions> {
  @override
  final Iterable<Type> types = const [TokenRestrictions, _$TokenRestrictions];

  @override
  final String wireName = r'TokenRestrictions';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TokenRestrictions object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    TokenRestrictions object, {
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
    required TokenRestrictionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sources':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.sources.replace(valueDes);
          break;
        case r'kinds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.kinds.replace(valueDes);
          break;
        case r'bbox':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
          ) as BuiltList<num>?;
          if (valueDes == null) continue;
          result.bbox.replace(valueDes);
          break;
        case r'endpoints':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.endpoints.replace(valueDes);
          break;
        case r'federation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.federation = valueDes;
          break;
        case r'includeExercise':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.includeExercise = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TokenRestrictions deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TokenRestrictionsBuilder();
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
