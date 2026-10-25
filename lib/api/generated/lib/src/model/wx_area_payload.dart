//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/weather_section_status.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'wx_area_payload.g.dart';

/// Payload of `wx-area` records (externalId `{field}:{threshold}:{aoi}`); geometry null when empty
///
/// Properties:
/// * [field] - rotation, qpe1h, ffg added by 053
/// * [threshold]
/// * [aoi] - Place id or `aoi`
/// * [status]
/// * [asOf]
/// * [areaKm2] - 2 significant figures
/// * [maxValue]
/// * [coveragePct]
/// * [automated]
/// * [notAWarning]
@BuiltValue()
abstract class WxAreaPayload
    implements Built<WxAreaPayload, WxAreaPayloadBuilder> {
  /// rotation, qpe1h, ffg added by 053
  @BuiltValueField(wireName: r'field')
  WxAreaPayloadFieldEnum get field;
  // enum fieldEnum {  refl,  mesh,  precip,  rotation,  qpe1h,  ffg,  };

  @BuiltValueField(wireName: r'threshold')
  num get threshold;

  /// Place id or `aoi`
  @BuiltValueField(wireName: r'aoi')
  String get aoi;

  @BuiltValueField(wireName: r'status')
  WeatherSectionStatus get status;
  // enum statusEnum {  ok,  stale,  no-coverage,  unavailable,  };

  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  /// 2 significant figures
  @BuiltValueField(wireName: r'areaKm2')
  num? get areaKm2;

  @BuiltValueField(wireName: r'maxValue')
  num? get maxValue;

  @BuiltValueField(wireName: r'coveragePct')
  int? get coveragePct;

  @BuiltValueField(wireName: r'automated')
  bool? get automated;

  @BuiltValueField(wireName: r'notAWarning')
  bool? get notAWarning;

  WxAreaPayload._();

  factory WxAreaPayload([void updates(WxAreaPayloadBuilder b)]) =
      _$WxAreaPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WxAreaPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WxAreaPayload> get serializer =>
      _$WxAreaPayloadSerializer();
}

class _$WxAreaPayloadSerializer implements PrimitiveSerializer<WxAreaPayload> {
  @override
  final Iterable<Type> types = const [WxAreaPayload, _$WxAreaPayload];

  @override
  final String wireName = r'WxAreaPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WxAreaPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'field';
    yield serializers.serialize(
      object.field,
      specifiedType: const FullType(WxAreaPayloadFieldEnum),
    );
    yield r'threshold';
    yield serializers.serialize(
      object.threshold,
      specifiedType: const FullType(num),
    );
    yield r'aoi';
    yield serializers.serialize(
      object.aoi,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(WeatherSectionStatus),
    );
    if (object.asOf != null) {
      yield r'asOf';
      yield serializers.serialize(
        object.asOf,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.areaKm2 != null) {
      yield r'areaKm2';
      yield serializers.serialize(
        object.areaKm2,
        specifiedType: const FullType(num),
      );
    }
    if (object.maxValue != null) {
      yield r'maxValue';
      yield serializers.serialize(
        object.maxValue,
        specifiedType: const FullType(num),
      );
    }
    if (object.coveragePct != null) {
      yield r'coveragePct';
      yield serializers.serialize(
        object.coveragePct,
        specifiedType: const FullType(int),
      );
    }
    if (object.automated != null) {
      yield r'automated';
      yield serializers.serialize(
        object.automated,
        specifiedType: const FullType(bool),
      );
    }
    if (object.notAWarning != null) {
      yield r'notAWarning';
      yield serializers.serialize(
        object.notAWarning,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WxAreaPayload object, {
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
    required WxAreaPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'field':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(WxAreaPayloadFieldEnum),
                  )
                  as WxAreaPayloadFieldEnum;
          result.field = valueDes;
          break;
        case r'threshold':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.threshold = valueDes;
          break;
        case r'aoi':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.aoi = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(WeatherSectionStatus),
                  )
                  as WeatherSectionStatus;
          result.status = valueDes;
          break;
        case r'asOf':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.asOf = valueDes;
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
        case r'maxValue':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.maxValue = valueDes;
          break;
        case r'coveragePct':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.coveragePct = valueDes;
          break;
        case r'automated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.automated = valueDes;
          break;
        case r'notAWarning':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.notAWarning = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WxAreaPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WxAreaPayloadBuilder();
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

/// rotation, qpe1h, ffg added by 053
class WxAreaPayloadFieldEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'refl')
  static const WxAreaPayloadFieldEnum refl = _$wxAreaPayloadFieldEnum_refl;
  @BuiltValueEnumConst(wireName: r'mesh')
  static const WxAreaPayloadFieldEnum mesh = _$wxAreaPayloadFieldEnum_mesh;
  @BuiltValueEnumConst(wireName: r'precip')
  static const WxAreaPayloadFieldEnum precip = _$wxAreaPayloadFieldEnum_precip;
  @BuiltValueEnumConst(wireName: r'rotation')
  static const WxAreaPayloadFieldEnum rotation =
      _$wxAreaPayloadFieldEnum_rotation;
  @BuiltValueEnumConst(wireName: r'qpe1h')
  static const WxAreaPayloadFieldEnum qpe1h = _$wxAreaPayloadFieldEnum_qpe1h;
  @BuiltValueEnumConst(wireName: r'ffg')
  static const WxAreaPayloadFieldEnum ffg = _$wxAreaPayloadFieldEnum_ffg;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const WxAreaPayloadFieldEnum unknownDefaultOpenApi =
      _$wxAreaPayloadFieldEnum_unknownDefaultOpenApi;

  static Serializer<WxAreaPayloadFieldEnum> get serializer =>
      _$wxAreaPayloadFieldEnumSerializer;

  const WxAreaPayloadFieldEnum._(String name) : super(name);

  static BuiltSet<WxAreaPayloadFieldEnum> get values =>
      _$wxAreaPayloadFieldEnumValues;
  static WxAreaPayloadFieldEnum valueOf(String name) =>
      _$wxAreaPayloadFieldEnumValueOf(name);
}
