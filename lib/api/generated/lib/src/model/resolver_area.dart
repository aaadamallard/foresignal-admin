//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'resolver_area.g.dart';

/// Area for a resolver: one of bbox, polygon, place or regions
///
/// Properties:
/// * [bbox]
/// * [polygon]
/// * [placeId] - 036 place id
/// * [regionCodes]
@BuiltValue()
abstract class ResolverArea
    implements Built<ResolverArea, ResolverAreaBuilder> {
  @BuiltValueField(wireName: r'bbox')
  BuiltList<num>? get bbox;

  @BuiltValueField(wireName: r'polygon')
  Geometry? get polygon;

  /// 036 place id
  @BuiltValueField(wireName: r'placeId')
  String? get placeId;

  @BuiltValueField(wireName: r'regionCodes')
  BuiltList<String>? get regionCodes;

  ResolverArea._();

  factory ResolverArea([void updates(ResolverAreaBuilder b)]) = _$ResolverArea;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResolverAreaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResolverArea> get serializer => _$ResolverAreaSerializer();
}

class _$ResolverAreaSerializer implements PrimitiveSerializer<ResolverArea> {
  @override
  final Iterable<Type> types = const [ResolverArea, _$ResolverArea];

  @override
  final String wireName = r'ResolverArea';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResolverArea object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.bbox != null) {
      yield r'bbox';
      yield serializers.serialize(
        object.bbox,
        specifiedType: const FullType(BuiltList, [FullType(num)]),
      );
    }
    if (object.polygon != null) {
      yield r'polygon';
      yield serializers.serialize(
        object.polygon,
        specifiedType: const FullType(Geometry),
      );
    }
    if (object.placeId != null) {
      yield r'placeId';
      yield serializers.serialize(
        object.placeId,
        specifiedType: const FullType(String),
      );
    }
    if (object.regionCodes != null) {
      yield r'regionCodes';
      yield serializers.serialize(
        object.regionCodes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ResolverArea object, {
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
    required ResolverAreaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'polygon':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Geometry),
                  )
                  as Geometry?;
          if (valueDes == null) continue;
          result.polygon.replace(valueDes);
          break;
        case r'placeId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.placeId = valueDes;
          break;
        case r'regionCodes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.regionCodes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResolverArea deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResolverAreaBuilder();
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
