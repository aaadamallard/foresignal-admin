//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/pack_spec_raster.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/pack_spec_vector.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pack_spec.g.dart';

/// PMTiles v3 offline pack request: one .pmtiles per tile type (MVT and/or PNG) (111)
///
/// Properties:
/// * [name]
/// * [bbox] - [minLon, minLat, maxLon, maxLat] (WGS84)
/// * [placeId]
/// * [minZoom]
/// * [maxZoom]
/// * [vector]
/// * [raster]
/// * [includePrivate] - Admin only
/// * [personalUse] - As ExportSpec.personalUse
@BuiltValue()
abstract class PackSpec implements Built<PackSpec, PackSpecBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  /// [minLon, minLat, maxLon, maxLat] (WGS84)
  @BuiltValueField(wireName: r'bbox')
  BuiltList<num>? get bbox;

  @BuiltValueField(wireName: r'placeId')
  String? get placeId;

  @BuiltValueField(wireName: r'minZoom')
  int get minZoom;

  @BuiltValueField(wireName: r'maxZoom')
  int get maxZoom;

  @BuiltValueField(wireName: r'vector')
  PackSpecVector? get vector;

  @BuiltValueField(wireName: r'raster')
  PackSpecRaster? get raster;

  /// Admin only
  @BuiltValueField(wireName: r'includePrivate')
  bool? get includePrivate;

  /// As ExportSpec.personalUse
  @BuiltValueField(wireName: r'personalUse')
  bool? get personalUse;

  PackSpec._();

  factory PackSpec([void updates(PackSpecBuilder b)]) = _$PackSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PackSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PackSpec> get serializer => _$PackSpecSerializer();
}

class _$PackSpecSerializer implements PrimitiveSerializer<PackSpec> {
  @override
  final Iterable<Type> types = const [PackSpec, _$PackSpec];

  @override
  final String wireName = r'PackSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PackSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.bbox != null) {
      yield r'bbox';
      yield serializers.serialize(
        object.bbox,
        specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
      );
    }
    if (object.placeId != null) {
      yield r'placeId';
      yield serializers.serialize(
        object.placeId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'minZoom';
    yield serializers.serialize(
      object.minZoom,
      specifiedType: const FullType(int),
    );
    yield r'maxZoom';
    yield serializers.serialize(
      object.maxZoom,
      specifiedType: const FullType(int),
    );
    if (object.vector != null) {
      yield r'vector';
      yield serializers.serialize(
        object.vector,
        specifiedType: const FullType.nullable(PackSpecVector),
      );
    }
    if (object.raster != null) {
      yield r'raster';
      yield serializers.serialize(
        object.raster,
        specifiedType: const FullType.nullable(PackSpecRaster),
      );
    }
    if (object.includePrivate != null) {
      yield r'includePrivate';
      yield serializers.serialize(
        object.includePrivate,
        specifiedType: const FullType(bool),
      );
    }
    if (object.personalUse != null) {
      yield r'personalUse';
      yield serializers.serialize(
        object.personalUse,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PackSpec object, {
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
    required PackSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'bbox':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
          ) as BuiltList<num>?;
          if (valueDes == null) continue;
          result.bbox.replace(valueDes);
          break;
        case r'placeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.placeId = valueDes;
          break;
        case r'minZoom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.minZoom = valueDes;
          break;
        case r'maxZoom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxZoom = valueDes;
          break;
        case r'vector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PackSpecVector),
          ) as PackSpecVector?;
          if (valueDes == null) continue;
          result.vector.replace(valueDes);
          break;
        case r'raster':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PackSpecRaster),
          ) as PackSpecRaster?;
          if (valueDes == null) continue;
          result.raster.replace(valueDes);
          break;
        case r'includePrivate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.includePrivate = valueDes;
          break;
        case r'personalUse':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.personalUse = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PackSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PackSpecBuilder();
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
