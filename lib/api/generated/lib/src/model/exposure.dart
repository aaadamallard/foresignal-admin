//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/exposure_area.dart';
import 'package:foresignal_api/src/model/exposure_population.dart';
import 'package:foresignal_api/src/model/exposure_places.dart';
import 'package:foresignal_api/src/model/exposure_traffic.dart';
import 'package:foresignal_api/src/model/exposure_dependents.dart';
import 'package:foresignal_api/src/model/exposure_watchlist_entities.dart';
import 'package:foresignal_api/src/model/exposure_facilities.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'exposure.g.dart';

/// What is inside an affected area: reference facilities, places, watchlist entities, live traffic, optional population and infrastructure dependents. Each section carries status and attribution.
///
/// Properties:
/// * [area]
/// * [computedAt]
/// * [facilities]
/// * [places]
/// * [watchlistEntities]
/// * [traffic]
/// * [population]
/// * [dependents]
@BuiltValue()
abstract class Exposure implements Built<Exposure, ExposureBuilder> {
  @BuiltValueField(wireName: r'area')
  ExposureArea get area;

  @BuiltValueField(wireName: r'computedAt')
  DateTime get computedAt;

  @BuiltValueField(wireName: r'facilities')
  ExposureFacilities get facilities;

  @BuiltValueField(wireName: r'places')
  ExposurePlaces get places;

  @BuiltValueField(wireName: r'watchlistEntities')
  ExposureWatchlistEntities get watchlistEntities;

  @BuiltValueField(wireName: r'traffic')
  ExposureTraffic get traffic;

  @BuiltValueField(wireName: r'population')
  ExposurePopulation get population;

  @BuiltValueField(wireName: r'dependents')
  ExposureDependents? get dependents;

  Exposure._();

  factory Exposure([void updates(ExposureBuilder b)]) = _$Exposure;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExposureBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Exposure> get serializer => _$ExposureSerializer();
}

class _$ExposureSerializer implements PrimitiveSerializer<Exposure> {
  @override
  final Iterable<Type> types = const [Exposure, _$Exposure];

  @override
  final String wireName = r'Exposure';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Exposure object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'area';
    yield serializers.serialize(
      object.area,
      specifiedType: const FullType(ExposureArea),
    );
    yield r'computedAt';
    yield serializers.serialize(
      object.computedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'facilities';
    yield serializers.serialize(
      object.facilities,
      specifiedType: const FullType(ExposureFacilities),
    );
    yield r'places';
    yield serializers.serialize(
      object.places,
      specifiedType: const FullType(ExposurePlaces),
    );
    yield r'watchlistEntities';
    yield serializers.serialize(
      object.watchlistEntities,
      specifiedType: const FullType(ExposureWatchlistEntities),
    );
    yield r'traffic';
    yield serializers.serialize(
      object.traffic,
      specifiedType: const FullType(ExposureTraffic),
    );
    yield r'population';
    yield serializers.serialize(
      object.population,
      specifiedType: const FullType(ExposurePopulation),
    );
    if (object.dependents != null) {
      yield r'dependents';
      yield serializers.serialize(
        object.dependents,
        specifiedType: const FullType(ExposureDependents),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Exposure object, {
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
    required ExposureBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'area':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ExposureArea),
                  )
                  as ExposureArea;
          result.area.replace(valueDes);
          break;
        case r'computedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.computedAt = valueDes;
          break;
        case r'facilities':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ExposureFacilities),
                  )
                  as ExposureFacilities;
          result.facilities.replace(valueDes);
          break;
        case r'places':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ExposurePlaces),
                  )
                  as ExposurePlaces;
          result.places.replace(valueDes);
          break;
        case r'watchlistEntities':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ExposureWatchlistEntities),
                  )
                  as ExposureWatchlistEntities;
          result.watchlistEntities.replace(valueDes);
          break;
        case r'traffic':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ExposureTraffic),
                  )
                  as ExposureTraffic;
          result.traffic.replace(valueDes);
          break;
        case r'population':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ExposurePopulation),
                  )
                  as ExposurePopulation;
          result.population.replace(valueDes);
          break;
        case r'dependents':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ExposureDependents),
                  )
                  as ExposureDependents?;
          if (valueDes == null) continue;
          result.dependents.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Exposure deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExposureBuilder();
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
