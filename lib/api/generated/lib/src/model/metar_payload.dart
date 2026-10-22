//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/metar_payload_sky_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'metar_payload.g.dart';

/// Payload of `metar` records (awc-metars, externalId = station; empty fields omitted)
///
/// Properties:
/// * [raw]
/// * [stationId]
/// * [metarType]
/// * [tempC]
/// * [dewpointC]
/// * [windDirDeg]
/// * [windVariable]
/// * [windKt]
/// * [gustKt]
/// * [visibilitySm]
/// * [visibilityPlus]
/// * [altimInHg]
/// * [slpMb]
/// * [wx]
/// * [sky]
/// * [flightCategory]
/// * [elevationM]
@BuiltValue()
abstract class MetarPayload
    implements Built<MetarPayload, MetarPayloadBuilder> {
  @BuiltValueField(wireName: r'raw')
  String get raw;

  @BuiltValueField(wireName: r'stationId')
  String get stationId;

  @BuiltValueField(wireName: r'metarType')
  MetarPayloadMetarTypeEnum? get metarType;
  // enum metarTypeEnum {  METAR,  SPECI,  };

  @BuiltValueField(wireName: r'tempC')
  num? get tempC;

  @BuiltValueField(wireName: r'dewpointC')
  num? get dewpointC;

  @BuiltValueField(wireName: r'windDirDeg')
  int? get windDirDeg;

  @BuiltValueField(wireName: r'windVariable')
  bool? get windVariable;

  @BuiltValueField(wireName: r'windKt')
  int? get windKt;

  @BuiltValueField(wireName: r'gustKt')
  int? get gustKt;

  @BuiltValueField(wireName: r'visibilitySm')
  num? get visibilitySm;

  @BuiltValueField(wireName: r'visibilityPlus')
  bool? get visibilityPlus;

  @BuiltValueField(wireName: r'altimInHg')
  num? get altimInHg;

  @BuiltValueField(wireName: r'slpMb')
  num? get slpMb;

  @BuiltValueField(wireName: r'wx')
  String? get wx;

  @BuiltValueField(wireName: r'sky')
  BuiltList<MetarPayloadSkyInner>? get sky;

  @BuiltValueField(wireName: r'flightCategory')
  MetarPayloadFlightCategoryEnum? get flightCategory;
  // enum flightCategoryEnum {  VFR,  MVFR,  IFR,  LIFR,  };

  @BuiltValueField(wireName: r'elevationM')
  num? get elevationM;

  MetarPayload._();

  factory MetarPayload([void updates(MetarPayloadBuilder b)]) = _$MetarPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MetarPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MetarPayload> get serializer => _$MetarPayloadSerializer();
}

class _$MetarPayloadSerializer implements PrimitiveSerializer<MetarPayload> {
  @override
  final Iterable<Type> types = const [MetarPayload, _$MetarPayload];

  @override
  final String wireName = r'MetarPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MetarPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'raw';
    yield serializers.serialize(
      object.raw,
      specifiedType: const FullType(String),
    );
    yield r'stationId';
    yield serializers.serialize(
      object.stationId,
      specifiedType: const FullType(String),
    );
    if (object.metarType != null) {
      yield r'metarType';
      yield serializers.serialize(
        object.metarType,
        specifiedType: const FullType(MetarPayloadMetarTypeEnum),
      );
    }
    if (object.tempC != null) {
      yield r'tempC';
      yield serializers.serialize(
        object.tempC,
        specifiedType: const FullType(num),
      );
    }
    if (object.dewpointC != null) {
      yield r'dewpointC';
      yield serializers.serialize(
        object.dewpointC,
        specifiedType: const FullType(num),
      );
    }
    if (object.windDirDeg != null) {
      yield r'windDirDeg';
      yield serializers.serialize(
        object.windDirDeg,
        specifiedType: const FullType(int),
      );
    }
    if (object.windVariable != null) {
      yield r'windVariable';
      yield serializers.serialize(
        object.windVariable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.windKt != null) {
      yield r'windKt';
      yield serializers.serialize(
        object.windKt,
        specifiedType: const FullType(int),
      );
    }
    if (object.gustKt != null) {
      yield r'gustKt';
      yield serializers.serialize(
        object.gustKt,
        specifiedType: const FullType(int),
      );
    }
    if (object.visibilitySm != null) {
      yield r'visibilitySm';
      yield serializers.serialize(
        object.visibilitySm,
        specifiedType: const FullType(num),
      );
    }
    if (object.visibilityPlus != null) {
      yield r'visibilityPlus';
      yield serializers.serialize(
        object.visibilityPlus,
        specifiedType: const FullType(bool),
      );
    }
    if (object.altimInHg != null) {
      yield r'altimInHg';
      yield serializers.serialize(
        object.altimInHg,
        specifiedType: const FullType(num),
      );
    }
    if (object.slpMb != null) {
      yield r'slpMb';
      yield serializers.serialize(
        object.slpMb,
        specifiedType: const FullType(num),
      );
    }
    if (object.wx != null) {
      yield r'wx';
      yield serializers.serialize(
        object.wx,
        specifiedType: const FullType(String),
      );
    }
    if (object.sky != null) {
      yield r'sky';
      yield serializers.serialize(
        object.sky,
        specifiedType:
            const FullType(BuiltList, [FullType(MetarPayloadSkyInner)]),
      );
    }
    if (object.flightCategory != null) {
      yield r'flightCategory';
      yield serializers.serialize(
        object.flightCategory,
        specifiedType: const FullType(MetarPayloadFlightCategoryEnum),
      );
    }
    if (object.elevationM != null) {
      yield r'elevationM';
      yield serializers.serialize(
        object.elevationM,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MetarPayload object, {
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
    required MetarPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'raw':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.raw = valueDes;
          break;
        case r'stationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.stationId = valueDes;
          break;
        case r'metarType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(MetarPayloadMetarTypeEnum),
          ) as MetarPayloadMetarTypeEnum?;
          if (valueDes == null) continue;
          result.metarType = valueDes;
          break;
        case r'tempC':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.tempC = valueDes;
          break;
        case r'dewpointC':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.dewpointC = valueDes;
          break;
        case r'windDirDeg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.windDirDeg = valueDes;
          break;
        case r'windVariable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.windVariable = valueDes;
          break;
        case r'windKt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.windKt = valueDes;
          break;
        case r'gustKt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.gustKt = valueDes;
          break;
        case r'visibilitySm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.visibilitySm = valueDes;
          break;
        case r'visibilityPlus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.visibilityPlus = valueDes;
          break;
        case r'altimInHg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.altimInHg = valueDes;
          break;
        case r'slpMb':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.slpMb = valueDes;
          break;
        case r'wx':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.wx = valueDes;
          break;
        case r'sky':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(MetarPayloadSkyInner)]),
          ) as BuiltList<MetarPayloadSkyInner>?;
          if (valueDes == null) continue;
          result.sky.replace(valueDes);
          break;
        case r'flightCategory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(MetarPayloadFlightCategoryEnum),
          ) as MetarPayloadFlightCategoryEnum?;
          if (valueDes == null) continue;
          result.flightCategory = valueDes;
          break;
        case r'elevationM':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.elevationM = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MetarPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MetarPayloadBuilder();
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

class MetarPayloadMetarTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'METAR')
  static const MetarPayloadMetarTypeEnum METAR =
      _$metarPayloadMetarTypeEnum_METAR;
  @BuiltValueEnumConst(wireName: r'SPECI')
  static const MetarPayloadMetarTypeEnum SPECI =
      _$metarPayloadMetarTypeEnum_SPECI;

  static Serializer<MetarPayloadMetarTypeEnum> get serializer =>
      _$metarPayloadMetarTypeEnumSerializer;

  const MetarPayloadMetarTypeEnum._(String name) : super(name);

  static BuiltSet<MetarPayloadMetarTypeEnum> get values =>
      _$metarPayloadMetarTypeEnumValues;
  static MetarPayloadMetarTypeEnum valueOf(String name) =>
      _$metarPayloadMetarTypeEnumValueOf(name);
}

class MetarPayloadFlightCategoryEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'VFR')
  static const MetarPayloadFlightCategoryEnum VFR =
      _$metarPayloadFlightCategoryEnum_VFR;
  @BuiltValueEnumConst(wireName: r'MVFR')
  static const MetarPayloadFlightCategoryEnum MVFR =
      _$metarPayloadFlightCategoryEnum_MVFR;
  @BuiltValueEnumConst(wireName: r'IFR')
  static const MetarPayloadFlightCategoryEnum IFR =
      _$metarPayloadFlightCategoryEnum_IFR;
  @BuiltValueEnumConst(wireName: r'LIFR')
  static const MetarPayloadFlightCategoryEnum LIFR =
      _$metarPayloadFlightCategoryEnum_LIFR;

  static Serializer<MetarPayloadFlightCategoryEnum> get serializer =>
      _$metarPayloadFlightCategoryEnumSerializer;

  const MetarPayloadFlightCategoryEnum._(String name) : super(name);

  static BuiltSet<MetarPayloadFlightCategoryEnum> get values =>
      _$metarPayloadFlightCategoryEnumValues;
  static MetarPayloadFlightCategoryEnum valueOf(String name) =>
      _$metarPayloadFlightCategoryEnumValueOf(name);
}
