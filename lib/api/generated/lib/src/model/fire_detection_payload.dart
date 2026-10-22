//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fire_detection_payload.g.dart';

/// Payload of `fire-detection` records (goes-fdc `g19:{col}:{row}`, hms-fire `hms:…`, nasa-firms `{SOURCE}:{acq_date}:{HHMM}:{lat}:{lon}`)
///
/// Properties:
/// * [maskCode]
/// * [confidence] - goes-fdc: `processed`, `saturated`, `cloudy` or `high`. nasa-firms: the raw FIRMS value, `l`, `n` or `h` (VIIRS) or an integer 0-100 (MODIS)
/// * [confidenceClass] - nasa-firms: VIIRS letters mapped; MODIS below 30 low, 30-79 nominal, from 80 high
/// * [instrument] - nasa-firms: VIIRS, MODIS or OLI, from the product
/// * [brightK] - nasa-firms: bright_ti4 (VIIRS) or brightness (MODIS), K
/// * [bright2K] - nasa-firms: bright_ti5 (VIIRS) or bright_t31 (MODIS), K
/// * [scanKm]
/// * [trackKm]
/// * [daynight] - nasa-firms: D or N
/// * [version] - nasa-firms: collection and processing, for example 2.0NRT
/// * [type] - nasa-firms MODIS only, when present: 0 vegetation fire, 1 active volcano, 2 other static land source, 3 offshore
/// * [temporallyFiltered]
/// * [frpMw] - Fire radiative power, MW. goes-fdc and hms-fire: 2 significant figures; nasa-firms: the FIRMS frp column as sent
/// * [tempK] - Rounded to 10 K
/// * [areaKm2]
/// * [satellite]
/// * [method]
/// * [ecosystem] - hms-fire only
/// * [source_] - `HMS` for hms-fire; the FIRMS product (for example `VIIRS_NOAA20_NRT`) for nasa-firms
/// * [label]
@BuiltValue()
abstract class FireDetectionPayload
    implements Built<FireDetectionPayload, FireDetectionPayloadBuilder> {
  @BuiltValueField(wireName: r'maskCode')
  int? get maskCode;

  /// goes-fdc: `processed`, `saturated`, `cloudy` or `high`. nasa-firms: the raw FIRMS value, `l`, `n` or `h` (VIIRS) or an integer 0-100 (MODIS)
  @BuiltValueField(wireName: r'confidence')
  JsonObject? get confidence;

  /// nasa-firms: VIIRS letters mapped; MODIS below 30 low, 30-79 nominal, from 80 high
  @BuiltValueField(wireName: r'confidenceClass')
  FireDetectionPayloadConfidenceClassEnum? get confidenceClass;
  // enum confidenceClassEnum {  low,  nominal,  high,  };

  /// nasa-firms: VIIRS, MODIS or OLI, from the product
  @BuiltValueField(wireName: r'instrument')
  String? get instrument;

  /// nasa-firms: bright_ti4 (VIIRS) or brightness (MODIS), K
  @BuiltValueField(wireName: r'brightK')
  num? get brightK;

  /// nasa-firms: bright_ti5 (VIIRS) or bright_t31 (MODIS), K
  @BuiltValueField(wireName: r'bright2K')
  num? get bright2K;

  @BuiltValueField(wireName: r'scanKm')
  num? get scanKm;

  @BuiltValueField(wireName: r'trackKm')
  num? get trackKm;

  /// nasa-firms: D or N
  @BuiltValueField(wireName: r'daynight')
  String? get daynight;

  /// nasa-firms: collection and processing, for example 2.0NRT
  @BuiltValueField(wireName: r'version')
  String? get version;

  /// nasa-firms MODIS only, when present: 0 vegetation fire, 1 active volcano, 2 other static land source, 3 offshore
  @BuiltValueField(wireName: r'type')
  int? get type;

  @BuiltValueField(wireName: r'temporallyFiltered')
  bool? get temporallyFiltered;

  /// Fire radiative power, MW. goes-fdc and hms-fire: 2 significant figures; nasa-firms: the FIRMS frp column as sent
  @BuiltValueField(wireName: r'frpMw')
  num? get frpMw;

  /// Rounded to 10 K
  @BuiltValueField(wireName: r'tempK')
  num? get tempK;

  @BuiltValueField(wireName: r'areaKm2')
  num? get areaKm2;

  @BuiltValueField(wireName: r'satellite')
  String get satellite;

  @BuiltValueField(wireName: r'method')
  String? get method;

  /// hms-fire only
  @BuiltValueField(wireName: r'ecosystem')
  String? get ecosystem;

  /// `HMS` for hms-fire; the FIRMS product (for example `VIIRS_NOAA20_NRT`) for nasa-firms
  @BuiltValueField(wireName: r'source')
  String? get source_;

  @BuiltValueField(wireName: r'label')
  String? get label;

  FireDetectionPayload._();

  factory FireDetectionPayload([void updates(FireDetectionPayloadBuilder b)]) =
      _$FireDetectionPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FireDetectionPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FireDetectionPayload> get serializer =>
      _$FireDetectionPayloadSerializer();
}

class _$FireDetectionPayloadSerializer
    implements PrimitiveSerializer<FireDetectionPayload> {
  @override
  final Iterable<Type> types = const [
    FireDetectionPayload,
    _$FireDetectionPayload,
  ];

  @override
  final String wireName = r'FireDetectionPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FireDetectionPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.maskCode != null) {
      yield r'maskCode';
      yield serializers.serialize(
        object.maskCode,
        specifiedType: const FullType(int),
      );
    }
    if (object.confidence != null) {
      yield r'confidence';
      yield serializers.serialize(
        object.confidence,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.confidenceClass != null) {
      yield r'confidenceClass';
      yield serializers.serialize(
        object.confidenceClass,
        specifiedType: const FullType(FireDetectionPayloadConfidenceClassEnum),
      );
    }
    if (object.instrument != null) {
      yield r'instrument';
      yield serializers.serialize(
        object.instrument,
        specifiedType: const FullType(String),
      );
    }
    if (object.brightK != null) {
      yield r'brightK';
      yield serializers.serialize(
        object.brightK,
        specifiedType: const FullType(num),
      );
    }
    if (object.bright2K != null) {
      yield r'bright2K';
      yield serializers.serialize(
        object.bright2K,
        specifiedType: const FullType(num),
      );
    }
    if (object.scanKm != null) {
      yield r'scanKm';
      yield serializers.serialize(
        object.scanKm,
        specifiedType: const FullType(num),
      );
    }
    if (object.trackKm != null) {
      yield r'trackKm';
      yield serializers.serialize(
        object.trackKm,
        specifiedType: const FullType(num),
      );
    }
    if (object.daynight != null) {
      yield r'daynight';
      yield serializers.serialize(
        object.daynight,
        specifiedType: const FullType(String),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(int),
      );
    }
    if (object.temporallyFiltered != null) {
      yield r'temporallyFiltered';
      yield serializers.serialize(
        object.temporallyFiltered,
        specifiedType: const FullType(bool),
      );
    }
    if (object.frpMw != null) {
      yield r'frpMw';
      yield serializers.serialize(
        object.frpMw,
        specifiedType: const FullType(num),
      );
    }
    if (object.tempK != null) {
      yield r'tempK';
      yield serializers.serialize(
        object.tempK,
        specifiedType: const FullType(num),
      );
    }
    if (object.areaKm2 != null) {
      yield r'areaKm2';
      yield serializers.serialize(
        object.areaKm2,
        specifiedType: const FullType(num),
      );
    }
    yield r'satellite';
    yield serializers.serialize(
      object.satellite,
      specifiedType: const FullType(String),
    );
    if (object.method != null) {
      yield r'method';
      yield serializers.serialize(
        object.method,
        specifiedType: const FullType(String),
      );
    }
    if (object.ecosystem != null) {
      yield r'ecosystem';
      yield serializers.serialize(
        object.ecosystem,
        specifiedType: const FullType(String),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(String),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FireDetectionPayload object, {
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
    required FireDetectionPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'maskCode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maskCode = valueDes;
          break;
        case r'confidence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.confidence = valueDes;
          break;
        case r'confidenceClass':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      FireDetectionPayloadConfidenceClassEnum,
                    ),
                  )
                  as FireDetectionPayloadConfidenceClassEnum?;
          if (valueDes == null) continue;
          result.confidenceClass = valueDes;
          break;
        case r'instrument':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.instrument = valueDes;
          break;
        case r'brightK':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.brightK = valueDes;
          break;
        case r'bright2K':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.bright2K = valueDes;
          break;
        case r'scanKm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.scanKm = valueDes;
          break;
        case r'trackKm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.trackKm = valueDes;
          break;
        case r'daynight':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.daynight = valueDes;
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'temporallyFiltered':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.temporallyFiltered = valueDes;
          break;
        case r'frpMw':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.frpMw = valueDes;
          break;
        case r'tempK':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.tempK = valueDes;
          break;
        case r'areaKm2':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.areaKm2 = valueDes;
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
        case r'method':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.method = valueDes;
          break;
        case r'ecosystem':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ecosystem = valueDes;
          break;
        case r'source':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.source_ = valueDes;
          break;
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FireDetectionPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FireDetectionPayloadBuilder();
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

/// nasa-firms: VIIRS letters mapped; MODIS below 30 low, 30-79 nominal, from 80 high
class FireDetectionPayloadConfidenceClassEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'low')
  static const FireDetectionPayloadConfidenceClassEnum low =
      _$fireDetectionPayloadConfidenceClassEnum_low;
  @BuiltValueEnumConst(wireName: r'nominal')
  static const FireDetectionPayloadConfidenceClassEnum nominal =
      _$fireDetectionPayloadConfidenceClassEnum_nominal;
  @BuiltValueEnumConst(wireName: r'high')
  static const FireDetectionPayloadConfidenceClassEnum high =
      _$fireDetectionPayloadConfidenceClassEnum_high;

  static Serializer<FireDetectionPayloadConfidenceClassEnum> get serializer =>
      _$fireDetectionPayloadConfidenceClassEnumSerializer;

  const FireDetectionPayloadConfidenceClassEnum._(String name) : super(name);

  static BuiltSet<FireDetectionPayloadConfidenceClassEnum> get values =>
      _$fireDetectionPayloadConfidenceClassEnumValues;
  static FireDetectionPayloadConfidenceClassEnum valueOf(String name) =>
      _$fireDetectionPayloadConfidenceClassEnumValueOf(name);
}
