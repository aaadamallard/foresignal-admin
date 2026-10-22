//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'places_aoi.g.dart';

/// Union of place areas used by weather sources as their area of interest (036)
///
/// Properties:
/// * [version]
/// * [geometry] - MultiPolygon: each place area buffered to at least max(radiusKm, weather.aoiBufferKm)
/// * [envelope] - [minLon, minLat, maxLon, maxLat] (WGS84)
/// * [placeCount]
/// * [bufferKm] - weather.aoiBufferKm (default 150)
/// * [isDefault] - True when there are no places and weather.defaultAoi is used
@BuiltValue()
abstract class PlacesAoi implements Built<PlacesAoi, PlacesAoiBuilder> {
  @BuiltValueField(wireName: r'version')
  int get version;

  /// MultiPolygon: each place area buffered to at least max(radiusKm, weather.aoiBufferKm)
  @BuiltValueField(wireName: r'geometry')
  Geometry? get geometry;

  /// [minLon, minLat, maxLon, maxLat] (WGS84)
  @BuiltValueField(wireName: r'envelope')
  BuiltList<num> get envelope;

  @BuiltValueField(wireName: r'placeCount')
  int get placeCount;

  /// weather.aoiBufferKm (default 150)
  @BuiltValueField(wireName: r'bufferKm')
  num? get bufferKm;

  /// True when there are no places and weather.defaultAoi is used
  @BuiltValueField(wireName: r'isDefault')
  bool get isDefault;

  PlacesAoi._();

  factory PlacesAoi([void updates(PlacesAoiBuilder b)]) = _$PlacesAoi;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlacesAoiBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlacesAoi> get serializer => _$PlacesAoiSerializer();
}

class _$PlacesAoiSerializer implements PrimitiveSerializer<PlacesAoi> {
  @override
  final Iterable<Type> types = const [PlacesAoi, _$PlacesAoi];

  @override
  final String wireName = r'PlacesAoi';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlacesAoi object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(int),
    );
    if (object.geometry != null) {
      yield r'geometry';
      yield serializers.serialize(
        object.geometry,
        specifiedType: const FullType.nullable(Geometry),
      );
    }
    yield r'envelope';
    yield serializers.serialize(
      object.envelope,
      specifiedType: const FullType(BuiltList, [FullType(num)]),
    );
    yield r'placeCount';
    yield serializers.serialize(
      object.placeCount,
      specifiedType: const FullType(int),
    );
    if (object.bufferKm != null) {
      yield r'bufferKm';
      yield serializers.serialize(
        object.bufferKm,
        specifiedType: const FullType(num),
      );
    }
    yield r'isDefault';
    yield serializers.serialize(
      object.isDefault,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PlacesAoi object, {
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
    required PlacesAoiBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'version':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.version = valueDes;
          break;
        case r'geometry':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Geometry),
                  )
                  as Geometry?;
          if (valueDes == null) continue;
          result.geometry.replace(valueDes);
          break;
        case r'envelope':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [FullType(num)]),
                  )
                  as BuiltList<num>;
          result.envelope.replace(valueDes);
          break;
        case r'placeCount':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.placeCount = valueDes;
          break;
        case r'bufferKm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.bufferKm = valueDes;
          break;
        case r'isDefault':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.isDefault = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlacesAoi deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlacesAoiBuilder();
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
