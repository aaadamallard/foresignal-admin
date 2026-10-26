//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_data_restriction.g.dart';

/// What a user may read (R2-013): the data members of a token's ReadRestriction, stored per user and set by an admin through updateUser. Null members mean any; a session's reads are intersected with it through the same clamp as a restricted token's.
///
/// Properties:
/// * [sources] - Allowed source ids (must exist); null = any
/// * [kinds] - Allowed kinds (must exist); null = any
/// * [bbox] - [minLon, minLat, maxLon, maxLat] (WGS84)
/// * [area] - MultiPolygon (WGS84, ≤ 2,000 vertices); combined with `bbox` when both are set
/// * [placeIds] - Places whose areas, unioned, bound what may be read; unknown places fail closed
@BuiltValue()
abstract class UserDataRestriction
    implements Built<UserDataRestriction, UserDataRestrictionBuilder> {
  /// Allowed source ids (must exist); null = any
  @BuiltValueField(wireName: r'sources')
  BuiltList<String>? get sources;

  /// Allowed kinds (must exist); null = any
  @BuiltValueField(wireName: r'kinds')
  BuiltList<String>? get kinds;

  /// [minLon, minLat, maxLon, maxLat] (WGS84)
  @BuiltValueField(wireName: r'bbox')
  BuiltList<num>? get bbox;

  /// MultiPolygon (WGS84, ≤ 2,000 vertices); combined with `bbox` when both are set
  @BuiltValueField(wireName: r'area')
  Geometry? get area;

  /// Places whose areas, unioned, bound what may be read; unknown places fail closed
  @BuiltValueField(wireName: r'placeIds')
  BuiltList<String>? get placeIds;

  UserDataRestriction._();

  factory UserDataRestriction([void updates(UserDataRestrictionBuilder b)]) =
      _$UserDataRestriction;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserDataRestrictionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserDataRestriction> get serializer =>
      _$UserDataRestrictionSerializer();
}

class _$UserDataRestrictionSerializer
    implements PrimitiveSerializer<UserDataRestriction> {
  @override
  final Iterable<Type> types = const [
    UserDataRestriction,
    _$UserDataRestriction,
  ];

  @override
  final String wireName = r'UserDataRestriction';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserDataRestriction object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    UserDataRestriction object, {
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
    required UserDataRestrictionBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserDataRestriction deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserDataRestrictionBuilder();
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
