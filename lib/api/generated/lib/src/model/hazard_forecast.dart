//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/hazard_forecast_probability_field_inner.dart';
import 'package:foresignal_api/src/model/hazard_forecast_probability_range.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hazard_forecast.g.dart';

/// A hazard forecast adapted from an ingested record, with its published probability model
///
/// Properties:
/// * [hazardType]
/// * [sourceRef] - Pinned record reference `record:{sourceId}/{externalId}@{seq}`
/// * [issuer]
/// * [issuedAt]
/// * [validFrom]
/// * [validTo]
/// * [geometry]
/// * [probabilityField] - Published probability bands, highest first; geometries only on getProjectedImpact (lists leave them out)
/// * [probabilityModel] - `none` for cones and categorical products (context only, never a probability)
/// * [category] - Producer category (e.g. ERO `moderate`, flood category)
/// * [probabilityRange]
/// * [note]
/// * [hazardKey] - The hazard's identity across versions (debounce, supersession, question dedup), e.g. nhc-wind-probs:34, spc-outlooks:day1:torn, wpc-ero-d1, nwps-gauges:{lid}
/// * [sourceRefs] - Every pinned record behind the forecast (sourceRef is the newest)
/// * [pointRadiusKm] - Radius a published point probability applies within (SPC and WPC: 25 miles = 40.2336 km)
/// * [details] - Source-specific facts: NHC thresholdKt and horizonHours; SPC day and layer; WPC day and categoryName; a gauge's basis (forecast or persistence), categories, calibration {basis, minCategory, n, hits, p, lower, upper, minSamples} and reason when no probability is derived (below-category, uncalibrated, no-geometry); a storm cell's reason (no-position-error)
@BuiltValue()
abstract class HazardForecast
    implements Built<HazardForecast, HazardForecastBuilder> {
  @BuiltValueField(wireName: r'hazardType')
  HazardForecastHazardTypeEnum get hazardType;
  // enum hazardTypeEnum {  tropical-wind-34,  tropical-wind-50,  tropical-wind-64,  tropical-track,  tornado,  wind,  hail,  severe-categorical,  excessive-rain,  river-flood,  storm-cell,  };

  /// Pinned record reference `record:{sourceId}/{externalId}@{seq}`
  @BuiltValueField(wireName: r'sourceRef')
  String get sourceRef;

  @BuiltValueField(wireName: r'issuer')
  String? get issuer;

  @BuiltValueField(wireName: r'issuedAt')
  DateTime get issuedAt;

  @BuiltValueField(wireName: r'validFrom')
  DateTime get validFrom;

  @BuiltValueField(wireName: r'validTo')
  DateTime get validTo;

  @BuiltValueField(wireName: r'geometry')
  Geometry? get geometry;

  /// Published probability bands, highest first; geometries only on getProjectedImpact (lists leave them out)
  @BuiltValueField(wireName: r'probabilityField')
  BuiltList<HazardForecastProbabilityFieldInner>? get probabilityField;

  /// `none` for cones and categorical products (context only, never a probability)
  @BuiltValueField(wireName: r'probabilityModel')
  HazardForecastProbabilityModelEnum get probabilityModel;
  // enum probabilityModelEnum {  published-polygons,  published-point,  published-category-range,  gauge-category,  track-error-ellipse,  none,  };

  /// Producer category (e.g. ERO `moderate`, flood category)
  @BuiltValueField(wireName: r'category')
  String? get category;

  @BuiltValueField(wireName: r'probabilityRange')
  HazardForecastProbabilityRange? get probabilityRange;

  @BuiltValueField(wireName: r'note')
  String? get note;

  /// The hazard's identity across versions (debounce, supersession, question dedup), e.g. nhc-wind-probs:34, spc-outlooks:day1:torn, wpc-ero-d1, nwps-gauges:{lid}
  @BuiltValueField(wireName: r'hazardKey')
  String? get hazardKey;

  /// Every pinned record behind the forecast (sourceRef is the newest)
  @BuiltValueField(wireName: r'sourceRefs')
  BuiltList<String>? get sourceRefs;

  /// Radius a published point probability applies within (SPC and WPC: 25 miles = 40.2336 km)
  @BuiltValueField(wireName: r'pointRadiusKm')
  num? get pointRadiusKm;

  /// Source-specific facts: NHC thresholdKt and horizonHours; SPC day and layer; WPC day and categoryName; a gauge's basis (forecast or persistence), categories, calibration {basis, minCategory, n, hits, p, lower, upper, minSamples} and reason when no probability is derived (below-category, uncalibrated, no-geometry); a storm cell's reason (no-position-error)
  @BuiltValueField(wireName: r'details')
  BuiltMap<String, JsonObject?>? get details;

  HazardForecast._();

  factory HazardForecast([void updates(HazardForecastBuilder b)]) =
      _$HazardForecast;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HazardForecastBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HazardForecast> get serializer =>
      _$HazardForecastSerializer();
}

class _$HazardForecastSerializer
    implements PrimitiveSerializer<HazardForecast> {
  @override
  final Iterable<Type> types = const [HazardForecast, _$HazardForecast];

  @override
  final String wireName = r'HazardForecast';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HazardForecast object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'hazardType';
    yield serializers.serialize(
      object.hazardType,
      specifiedType: const FullType(HazardForecastHazardTypeEnum),
    );
    yield r'sourceRef';
    yield serializers.serialize(
      object.sourceRef,
      specifiedType: const FullType(String),
    );
    if (object.issuer != null) {
      yield r'issuer';
      yield serializers.serialize(
        object.issuer,
        specifiedType: const FullType(String),
      );
    }
    yield r'issuedAt';
    yield serializers.serialize(
      object.issuedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'validFrom';
    yield serializers.serialize(
      object.validFrom,
      specifiedType: const FullType(DateTime),
    );
    yield r'validTo';
    yield serializers.serialize(
      object.validTo,
      specifiedType: const FullType(DateTime),
    );
    if (object.geometry != null) {
      yield r'geometry';
      yield serializers.serialize(
        object.geometry,
        specifiedType: const FullType.nullable(Geometry),
      );
    }
    if (object.probabilityField != null) {
      yield r'probabilityField';
      yield serializers.serialize(
        object.probabilityField,
        specifiedType: const FullType(
            BuiltList, [FullType(HazardForecastProbabilityFieldInner)]),
      );
    }
    yield r'probabilityModel';
    yield serializers.serialize(
      object.probabilityModel,
      specifiedType: const FullType(HazardForecastProbabilityModelEnum),
    );
    if (object.category != null) {
      yield r'category';
      yield serializers.serialize(
        object.category,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.probabilityRange != null) {
      yield r'probabilityRange';
      yield serializers.serialize(
        object.probabilityRange,
        specifiedType: const FullType.nullable(HazardForecastProbabilityRange),
      );
    }
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.hazardKey != null) {
      yield r'hazardKey';
      yield serializers.serialize(
        object.hazardKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.sourceRefs != null) {
      yield r'sourceRefs';
      yield serializers.serialize(
        object.sourceRefs,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.pointRadiusKm != null) {
      yield r'pointRadiusKm';
      yield serializers.serialize(
        object.pointRadiusKm,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.details != null) {
      yield r'details';
      yield serializers.serialize(
        object.details,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HazardForecast object, {
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
    required HazardForecastBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'hazardType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(HazardForecastHazardTypeEnum),
          ) as HazardForecastHazardTypeEnum;
          result.hazardType = valueDes;
          break;
        case r'sourceRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceRef = valueDes;
          break;
        case r'issuer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.issuer = valueDes;
          break;
        case r'issuedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.issuedAt = valueDes;
          break;
        case r'validFrom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.validFrom = valueDes;
          break;
        case r'validTo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.validTo = valueDes;
          break;
        case r'geometry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Geometry),
          ) as Geometry?;
          if (valueDes == null) continue;
          result.geometry.replace(valueDes);
          break;
        case r'probabilityField':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(HazardForecastProbabilityFieldInner)]),
          ) as BuiltList<HazardForecastProbabilityFieldInner>?;
          if (valueDes == null) continue;
          result.probabilityField.replace(valueDes);
          break;
        case r'probabilityModel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(HazardForecastProbabilityModelEnum),
          ) as HazardForecastProbabilityModelEnum;
          result.probabilityModel = valueDes;
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.category = valueDes;
          break;
        case r'probabilityRange':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(HazardForecastProbabilityRange),
          ) as HazardForecastProbabilityRange?;
          if (valueDes == null) continue;
          result.probabilityRange.replace(valueDes);
          break;
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.note = valueDes;
          break;
        case r'hazardKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.hazardKey = valueDes;
          break;
        case r'sourceRefs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.sourceRefs.replace(valueDes);
          break;
        case r'pointRadiusKm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.pointRadiusKm = valueDes;
          break;
        case r'details':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.details.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HazardForecast deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HazardForecastBuilder();
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

class HazardForecastHazardTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'tropical-wind-34')
  static const HazardForecastHazardTypeEnum tropicalWind34 =
      _$hazardForecastHazardTypeEnum_tropicalWind34;
  @BuiltValueEnumConst(wireName: r'tropical-wind-50')
  static const HazardForecastHazardTypeEnum tropicalWind50 =
      _$hazardForecastHazardTypeEnum_tropicalWind50;
  @BuiltValueEnumConst(wireName: r'tropical-wind-64')
  static const HazardForecastHazardTypeEnum tropicalWind64 =
      _$hazardForecastHazardTypeEnum_tropicalWind64;
  @BuiltValueEnumConst(wireName: r'tropical-track')
  static const HazardForecastHazardTypeEnum tropicalTrack =
      _$hazardForecastHazardTypeEnum_tropicalTrack;
  @BuiltValueEnumConst(wireName: r'tornado')
  static const HazardForecastHazardTypeEnum tornado =
      _$hazardForecastHazardTypeEnum_tornado;
  @BuiltValueEnumConst(wireName: r'wind')
  static const HazardForecastHazardTypeEnum wind =
      _$hazardForecastHazardTypeEnum_wind;
  @BuiltValueEnumConst(wireName: r'hail')
  static const HazardForecastHazardTypeEnum hail =
      _$hazardForecastHazardTypeEnum_hail;
  @BuiltValueEnumConst(wireName: r'severe-categorical')
  static const HazardForecastHazardTypeEnum severeCategorical =
      _$hazardForecastHazardTypeEnum_severeCategorical;
  @BuiltValueEnumConst(wireName: r'excessive-rain')
  static const HazardForecastHazardTypeEnum excessiveRain =
      _$hazardForecastHazardTypeEnum_excessiveRain;
  @BuiltValueEnumConst(wireName: r'river-flood')
  static const HazardForecastHazardTypeEnum riverFlood =
      _$hazardForecastHazardTypeEnum_riverFlood;
  @BuiltValueEnumConst(wireName: r'storm-cell')
  static const HazardForecastHazardTypeEnum stormCell =
      _$hazardForecastHazardTypeEnum_stormCell;

  static Serializer<HazardForecastHazardTypeEnum> get serializer =>
      _$hazardForecastHazardTypeEnumSerializer;

  const HazardForecastHazardTypeEnum._(String name) : super(name);

  static BuiltSet<HazardForecastHazardTypeEnum> get values =>
      _$hazardForecastHazardTypeEnumValues;
  static HazardForecastHazardTypeEnum valueOf(String name) =>
      _$hazardForecastHazardTypeEnumValueOf(name);
}

/// `none` for cones and categorical products (context only, never a probability)
class HazardForecastProbabilityModelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'published-polygons')
  static const HazardForecastProbabilityModelEnum publishedPolygons =
      _$hazardForecastProbabilityModelEnum_publishedPolygons;
  @BuiltValueEnumConst(wireName: r'published-point')
  static const HazardForecastProbabilityModelEnum publishedPoint =
      _$hazardForecastProbabilityModelEnum_publishedPoint;
  @BuiltValueEnumConst(wireName: r'published-category-range')
  static const HazardForecastProbabilityModelEnum publishedCategoryRange =
      _$hazardForecastProbabilityModelEnum_publishedCategoryRange;
  @BuiltValueEnumConst(wireName: r'gauge-category')
  static const HazardForecastProbabilityModelEnum gaugeCategory =
      _$hazardForecastProbabilityModelEnum_gaugeCategory;
  @BuiltValueEnumConst(wireName: r'track-error-ellipse')
  static const HazardForecastProbabilityModelEnum trackErrorEllipse =
      _$hazardForecastProbabilityModelEnum_trackErrorEllipse;
  @BuiltValueEnumConst(wireName: r'none')
  static const HazardForecastProbabilityModelEnum none =
      _$hazardForecastProbabilityModelEnum_none;

  static Serializer<HazardForecastProbabilityModelEnum> get serializer =>
      _$hazardForecastProbabilityModelEnumSerializer;

  const HazardForecastProbabilityModelEnum._(String name) : super(name);

  static BuiltSet<HazardForecastProbabilityModelEnum> get values =>
      _$hazardForecastProbabilityModelEnumValues;
  static HazardForecastProbabilityModelEnum valueOf(String name) =>
      _$hazardForecastProbabilityModelEnumValueOf(name);
}
