//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/attribution.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/satellite_pass_payload_rf.dart';
import 'package:foresignal_api/src/model/satellite_pass_payload_products_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'satellite_pass_payload.g.dart';

/// Payload of `satellite-pass` records (externalId `{station}:{satKey}:{aosEpochMinute}`); geometry: polar GeoTIFF footprint → approximate SGP4 swath → station point (054), named by `geometrySource`
///
/// Properties:
/// * [status] - `predicted` (064: Orekit from `celestrak-gp` elements), then `receiving`, `recorded`, `decoded` or `failed` (049); `missed` (064) when a predicted pass had no session by LOS + 20 min while the station was healthy (otherwise the predicted pass is tombstoned)
/// * [satellite]
/// * [satKey]
/// * [norad]
/// * [pipelineId]
/// * [frequencyHz]
/// * [aos]
/// * [los]
/// * [maxElevationDeg]
/// * [rf]
/// * [instruments]
/// * [products]
/// * [tle]
/// * [satdumpVersion]
/// * [title]
/// * [attribution]
/// * [geometrySource] - Present when the record geometry is not the station point: `footprint` (the alpha-mask outline of the pass's polar GeoTIFF overlays, 054) or `swath` (an approximate SGP4 swath from the TLE, used when no GeoTIFF was usable; never tiled)
/// * [tca] - Predicted time of maximum elevation (064, predicted passes)
/// * [aosAzimuthDeg] - Predicted azimuth at AOS, degrees (064)
/// * [losAzimuthDeg] - Predicted azimuth at LOS, degrees (064)
/// * [place] - The place id (064 `satellite-passes`, externalId `place:{placeId}:{norad}:{aosEpochMinute}`)
/// * [imminent] - 064 `satellite-passes`: true from 15 minutes before AOS until LOS (a new version near AOS, so `forecastHorizon` rules, which match `validFrom` = AOS on new versions only, and plain `imminent == true` rules can fire)
@BuiltValue()
abstract class SatellitePassPayload
    implements Built<SatellitePassPayload, SatellitePassPayloadBuilder> {
  /// `predicted` (064: Orekit from `celestrak-gp` elements), then `receiving`, `recorded`, `decoded` or `failed` (049); `missed` (064) when a predicted pass had no session by LOS + 20 min while the station was healthy (otherwise the predicted pass is tombstoned)
  @BuiltValueField(wireName: r'status')
  SatellitePassPayloadStatusEnum get status;
  // enum statusEnum {  predicted,  receiving,  recorded,  decoded,  failed,  missed,  };

  @BuiltValueField(wireName: r'satellite')
  String get satellite;

  @BuiltValueField(wireName: r'satKey')
  String get satKey;

  @BuiltValueField(wireName: r'norad')
  int? get norad;

  @BuiltValueField(wireName: r'pipelineId')
  String? get pipelineId;

  @BuiltValueField(wireName: r'frequencyHz')
  int? get frequencyHz;

  @BuiltValueField(wireName: r'aos')
  DateTime get aos;

  @BuiltValueField(wireName: r'los')
  DateTime? get los;

  @BuiltValueField(wireName: r'maxElevationDeg')
  num? get maxElevationDeg;

  @BuiltValueField(wireName: r'rf')
  SatellitePassPayloadRf? get rf;

  @BuiltValueField(wireName: r'instruments')
  BuiltList<String>? get instruments;

  @BuiltValueField(wireName: r'products')
  BuiltList<SatellitePassPayloadProductsInner>? get products;

  @BuiltValueField(wireName: r'tle')
  String? get tle;

  @BuiltValueField(wireName: r'satdumpVersion')
  String? get satdumpVersion;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'attribution')
  Attribution? get attribution;

  /// Present when the record geometry is not the station point: `footprint` (the alpha-mask outline of the pass's polar GeoTIFF overlays, 054) or `swath` (an approximate SGP4 swath from the TLE, used when no GeoTIFF was usable; never tiled)
  @BuiltValueField(wireName: r'geometrySource')
  SatellitePassPayloadGeometrySourceEnum? get geometrySource;
  // enum geometrySourceEnum {  footprint,  swath,  };

  /// Predicted time of maximum elevation (064, predicted passes)
  @BuiltValueField(wireName: r'tca')
  DateTime? get tca;

  /// Predicted azimuth at AOS, degrees (064)
  @BuiltValueField(wireName: r'aosAzimuthDeg')
  num? get aosAzimuthDeg;

  /// Predicted azimuth at LOS, degrees (064)
  @BuiltValueField(wireName: r'losAzimuthDeg')
  num? get losAzimuthDeg;

  /// The place id (064 `satellite-passes`, externalId `place:{placeId}:{norad}:{aosEpochMinute}`)
  @BuiltValueField(wireName: r'place')
  String? get place;

  /// 064 `satellite-passes`: true from 15 minutes before AOS until LOS (a new version near AOS, so `forecastHorizon` rules, which match `validFrom` = AOS on new versions only, and plain `imminent == true` rules can fire)
  @BuiltValueField(wireName: r'imminent')
  bool? get imminent;

  SatellitePassPayload._();

  factory SatellitePassPayload([void updates(SatellitePassPayloadBuilder b)]) =
      _$SatellitePassPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SatellitePassPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SatellitePassPayload> get serializer =>
      _$SatellitePassPayloadSerializer();
}

class _$SatellitePassPayloadSerializer
    implements PrimitiveSerializer<SatellitePassPayload> {
  @override
  final Iterable<Type> types = const [
    SatellitePassPayload,
    _$SatellitePassPayload,
  ];

  @override
  final String wireName = r'SatellitePassPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SatellitePassPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(SatellitePassPayloadStatusEnum),
    );
    yield r'satellite';
    yield serializers.serialize(
      object.satellite,
      specifiedType: const FullType(String),
    );
    yield r'satKey';
    yield serializers.serialize(
      object.satKey,
      specifiedType: const FullType(String),
    );
    if (object.norad != null) {
      yield r'norad';
      yield serializers.serialize(
        object.norad,
        specifiedType: const FullType(int),
      );
    }
    if (object.pipelineId != null) {
      yield r'pipelineId';
      yield serializers.serialize(
        object.pipelineId,
        specifiedType: const FullType(String),
      );
    }
    if (object.frequencyHz != null) {
      yield r'frequencyHz';
      yield serializers.serialize(
        object.frequencyHz,
        specifiedType: const FullType(int),
      );
    }
    yield r'aos';
    yield serializers.serialize(
      object.aos,
      specifiedType: const FullType(DateTime),
    );
    if (object.los != null) {
      yield r'los';
      yield serializers.serialize(
        object.los,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.maxElevationDeg != null) {
      yield r'maxElevationDeg';
      yield serializers.serialize(
        object.maxElevationDeg,
        specifiedType: const FullType(num),
      );
    }
    if (object.rf != null) {
      yield r'rf';
      yield serializers.serialize(
        object.rf,
        specifiedType: const FullType(SatellitePassPayloadRf),
      );
    }
    if (object.instruments != null) {
      yield r'instruments';
      yield serializers.serialize(
        object.instruments,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.products != null) {
      yield r'products';
      yield serializers.serialize(
        object.products,
        specifiedType: const FullType(BuiltList, [
          FullType(SatellitePassPayloadProductsInner),
        ]),
      );
    }
    if (object.tle != null) {
      yield r'tle';
      yield serializers.serialize(
        object.tle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.satdumpVersion != null) {
      yield r'satdumpVersion';
      yield serializers.serialize(
        object.satdumpVersion,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.attribution != null) {
      yield r'attribution';
      yield serializers.serialize(
        object.attribution,
        specifiedType: const FullType(Attribution),
      );
    }
    if (object.geometrySource != null) {
      yield r'geometrySource';
      yield serializers.serialize(
        object.geometrySource,
        specifiedType: const FullType(SatellitePassPayloadGeometrySourceEnum),
      );
    }
    if (object.tca != null) {
      yield r'tca';
      yield serializers.serialize(
        object.tca,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.aosAzimuthDeg != null) {
      yield r'aosAzimuthDeg';
      yield serializers.serialize(
        object.aosAzimuthDeg,
        specifiedType: const FullType(num),
      );
    }
    if (object.losAzimuthDeg != null) {
      yield r'losAzimuthDeg';
      yield serializers.serialize(
        object.losAzimuthDeg,
        specifiedType: const FullType(num),
      );
    }
    if (object.place != null) {
      yield r'place';
      yield serializers.serialize(
        object.place,
        specifiedType: const FullType(String),
      );
    }
    if (object.imminent != null) {
      yield r'imminent';
      yield serializers.serialize(
        object.imminent,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SatellitePassPayload object, {
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
    required SatellitePassPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      SatellitePassPayloadStatusEnum,
                    ),
                  )
                  as SatellitePassPayloadStatusEnum;
          result.status = valueDes;
          break;
        case r'satellite':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.satellite = valueDes;
          break;
        case r'satKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.satKey = valueDes;
          break;
        case r'norad':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.norad = valueDes;
          break;
        case r'pipelineId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.pipelineId = valueDes;
          break;
        case r'frequencyHz':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.frequencyHz = valueDes;
          break;
        case r'aos':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.aos = valueDes;
          break;
        case r'los':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.los = valueDes;
          break;
        case r'maxElevationDeg':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.maxElevationDeg = valueDes;
          break;
        case r'rf':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SatellitePassPayloadRf,
                    ),
                  )
                  as SatellitePassPayloadRf?;
          if (valueDes == null) continue;
          result.rf.replace(valueDes);
          break;
        case r'instruments':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.instruments.replace(valueDes);
          break;
        case r'products':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(SatellitePassPayloadProductsInner),
                    ]),
                  )
                  as BuiltList<SatellitePassPayloadProductsInner>?;
          if (valueDes == null) continue;
          result.products.replace(valueDes);
          break;
        case r'tle':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.tle = valueDes;
          break;
        case r'satdumpVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.satdumpVersion = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.title = valueDes;
          break;
        case r'attribution':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Attribution),
                  )
                  as Attribution?;
          if (valueDes == null) continue;
          result.attribution.replace(valueDes);
          break;
        case r'geometrySource':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SatellitePassPayloadGeometrySourceEnum,
                    ),
                  )
                  as SatellitePassPayloadGeometrySourceEnum?;
          if (valueDes == null) continue;
          result.geometrySource = valueDes;
          break;
        case r'tca':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.tca = valueDes;
          break;
        case r'aosAzimuthDeg':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.aosAzimuthDeg = valueDes;
          break;
        case r'losAzimuthDeg':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.losAzimuthDeg = valueDes;
          break;
        case r'place':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.place = valueDes;
          break;
        case r'imminent':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.imminent = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SatellitePassPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SatellitePassPayloadBuilder();
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

/// `predicted` (064: Orekit from `celestrak-gp` elements), then `receiving`, `recorded`, `decoded` or `failed` (049); `missed` (064) when a predicted pass had no session by LOS + 20 min while the station was healthy (otherwise the predicted pass is tombstoned)
class SatellitePassPayloadStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'predicted')
  static const SatellitePassPayloadStatusEnum predicted =
      _$satellitePassPayloadStatusEnum_predicted;
  @BuiltValueEnumConst(wireName: r'receiving')
  static const SatellitePassPayloadStatusEnum receiving =
      _$satellitePassPayloadStatusEnum_receiving;
  @BuiltValueEnumConst(wireName: r'recorded')
  static const SatellitePassPayloadStatusEnum recorded =
      _$satellitePassPayloadStatusEnum_recorded;
  @BuiltValueEnumConst(wireName: r'decoded')
  static const SatellitePassPayloadStatusEnum decoded =
      _$satellitePassPayloadStatusEnum_decoded;
  @BuiltValueEnumConst(wireName: r'failed')
  static const SatellitePassPayloadStatusEnum failed =
      _$satellitePassPayloadStatusEnum_failed;
  @BuiltValueEnumConst(wireName: r'missed')
  static const SatellitePassPayloadStatusEnum missed =
      _$satellitePassPayloadStatusEnum_missed;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SatellitePassPayloadStatusEnum unknownDefaultOpenApi =
      _$satellitePassPayloadStatusEnum_unknownDefaultOpenApi;

  static Serializer<SatellitePassPayloadStatusEnum> get serializer =>
      _$satellitePassPayloadStatusEnumSerializer;

  const SatellitePassPayloadStatusEnum._(String name) : super(name);

  static BuiltSet<SatellitePassPayloadStatusEnum> get values =>
      _$satellitePassPayloadStatusEnumValues;
  static SatellitePassPayloadStatusEnum valueOf(String name) =>
      _$satellitePassPayloadStatusEnumValueOf(name);
}

/// Present when the record geometry is not the station point: `footprint` (the alpha-mask outline of the pass's polar GeoTIFF overlays, 054) or `swath` (an approximate SGP4 swath from the TLE, used when no GeoTIFF was usable; never tiled)
class SatellitePassPayloadGeometrySourceEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'footprint')
  static const SatellitePassPayloadGeometrySourceEnum footprint =
      _$satellitePassPayloadGeometrySourceEnum_footprint;
  @BuiltValueEnumConst(wireName: r'swath')
  static const SatellitePassPayloadGeometrySourceEnum swath =
      _$satellitePassPayloadGeometrySourceEnum_swath;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SatellitePassPayloadGeometrySourceEnum unknownDefaultOpenApi =
      _$satellitePassPayloadGeometrySourceEnum_unknownDefaultOpenApi;

  static Serializer<SatellitePassPayloadGeometrySourceEnum> get serializer =>
      _$satellitePassPayloadGeometrySourceEnumSerializer;

  const SatellitePassPayloadGeometrySourceEnum._(String name) : super(name);

  static BuiltSet<SatellitePassPayloadGeometrySourceEnum> get values =>
      _$satellitePassPayloadGeometrySourceEnumValues;
  static SatellitePassPayloadGeometrySourceEnum valueOf(String name) =>
      _$satellitePassPayloadGeometrySourceEnumValueOf(name);
}
