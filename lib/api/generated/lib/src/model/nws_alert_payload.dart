//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nws_alert_payload.g.dart';

/// Payload of `nws-alert` records (nws-alerts, externalId = properties.id); null fields omitted
///
/// Properties:
/// * [event]
/// * [eventCode]
/// * [headline]
/// * [severity]
/// * [certainty]
/// * [urgency]
/// * [messageType]
/// * [category]
/// * [response]
/// * [senderName]
/// * [areaDesc]
/// * [sent]
/// * [effective]
/// * [onset]
/// * [expires]
/// * [ends]
/// * [ugc]
/// * [same]
/// * [vtec]
/// * [motion] - eventMotionDescription
/// * [maxHailSizeIn]
/// * [maxWindGustMph]
/// * [tornadoDetection]
/// * [thunderstormDamageThreat]
/// * [description] - Untrusted upstream text, ≤ 8 KB
/// * [instruction] - Untrusted upstream text, ≤ 8 KB
/// * [web]
/// * [geometrySource]
@BuiltValue()
abstract class NwsAlertPayload
    implements Built<NwsAlertPayload, NwsAlertPayloadBuilder> {
  @BuiltValueField(wireName: r'event')
  String get event;

  @BuiltValueField(wireName: r'eventCode')
  String? get eventCode;

  @BuiltValueField(wireName: r'headline')
  String? get headline;

  @BuiltValueField(wireName: r'severity')
  NwsAlertPayloadSeverityEnum get severity;
  // enum severityEnum {  Extreme,  Severe,  Moderate,  Minor,  Unknown,  };

  @BuiltValueField(wireName: r'certainty')
  String? get certainty;

  @BuiltValueField(wireName: r'urgency')
  String? get urgency;

  @BuiltValueField(wireName: r'messageType')
  NwsAlertPayloadMessageTypeEnum? get messageType;
  // enum messageTypeEnum {  Alert,  Update,  Cancel,  };

  @BuiltValueField(wireName: r'category')
  String? get category;

  @BuiltValueField(wireName: r'response')
  String? get response;

  @BuiltValueField(wireName: r'senderName')
  String? get senderName;

  @BuiltValueField(wireName: r'areaDesc')
  String? get areaDesc;

  @BuiltValueField(wireName: r'sent')
  DateTime? get sent;

  @BuiltValueField(wireName: r'effective')
  DateTime? get effective;

  @BuiltValueField(wireName: r'onset')
  DateTime? get onset;

  @BuiltValueField(wireName: r'expires')
  DateTime? get expires;

  @BuiltValueField(wireName: r'ends')
  DateTime? get ends;

  @BuiltValueField(wireName: r'ugc')
  BuiltList<String>? get ugc;

  @BuiltValueField(wireName: r'same')
  BuiltList<String>? get same;

  @BuiltValueField(wireName: r'vtec')
  BuiltList<String>? get vtec;

  /// eventMotionDescription
  @BuiltValueField(wireName: r'motion')
  String? get motion;

  @BuiltValueField(wireName: r'maxHailSizeIn')
  num? get maxHailSizeIn;

  @BuiltValueField(wireName: r'maxWindGustMph')
  num? get maxWindGustMph;

  @BuiltValueField(wireName: r'tornadoDetection')
  String? get tornadoDetection;

  @BuiltValueField(wireName: r'thunderstormDamageThreat')
  String? get thunderstormDamageThreat;

  /// Untrusted upstream text, ≤ 8 KB
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Untrusted upstream text, ≤ 8 KB
  @BuiltValueField(wireName: r'instruction')
  String? get instruction;

  @BuiltValueField(wireName: r'web')
  String? get web;

  @BuiltValueField(wireName: r'geometrySource')
  NwsAlertPayloadGeometrySourceEnum? get geometrySource;
  // enum geometrySourceEnum {  polygon,  county-union,  none,  };

  NwsAlertPayload._();

  factory NwsAlertPayload([void updates(NwsAlertPayloadBuilder b)]) =
      _$NwsAlertPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NwsAlertPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NwsAlertPayload> get serializer =>
      _$NwsAlertPayloadSerializer();
}

class _$NwsAlertPayloadSerializer
    implements PrimitiveSerializer<NwsAlertPayload> {
  @override
  final Iterable<Type> types = const [NwsAlertPayload, _$NwsAlertPayload];

  @override
  final String wireName = r'NwsAlertPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NwsAlertPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(String),
    );
    if (object.eventCode != null) {
      yield r'eventCode';
      yield serializers.serialize(
        object.eventCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.headline != null) {
      yield r'headline';
      yield serializers.serialize(
        object.headline,
        specifiedType: const FullType(String),
      );
    }
    yield r'severity';
    yield serializers.serialize(
      object.severity,
      specifiedType: const FullType(NwsAlertPayloadSeverityEnum),
    );
    if (object.certainty != null) {
      yield r'certainty';
      yield serializers.serialize(
        object.certainty,
        specifiedType: const FullType(String),
      );
    }
    if (object.urgency != null) {
      yield r'urgency';
      yield serializers.serialize(
        object.urgency,
        specifiedType: const FullType(String),
      );
    }
    if (object.messageType != null) {
      yield r'messageType';
      yield serializers.serialize(
        object.messageType,
        specifiedType: const FullType(NwsAlertPayloadMessageTypeEnum),
      );
    }
    if (object.category != null) {
      yield r'category';
      yield serializers.serialize(
        object.category,
        specifiedType: const FullType(String),
      );
    }
    if (object.response != null) {
      yield r'response';
      yield serializers.serialize(
        object.response,
        specifiedType: const FullType(String),
      );
    }
    if (object.senderName != null) {
      yield r'senderName';
      yield serializers.serialize(
        object.senderName,
        specifiedType: const FullType(String),
      );
    }
    if (object.areaDesc != null) {
      yield r'areaDesc';
      yield serializers.serialize(
        object.areaDesc,
        specifiedType: const FullType(String),
      );
    }
    if (object.sent != null) {
      yield r'sent';
      yield serializers.serialize(
        object.sent,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.effective != null) {
      yield r'effective';
      yield serializers.serialize(
        object.effective,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.onset != null) {
      yield r'onset';
      yield serializers.serialize(
        object.onset,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.expires != null) {
      yield r'expires';
      yield serializers.serialize(
        object.expires,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.ends != null) {
      yield r'ends';
      yield serializers.serialize(
        object.ends,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.ugc != null) {
      yield r'ugc';
      yield serializers.serialize(
        object.ugc,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.same != null) {
      yield r'same';
      yield serializers.serialize(
        object.same,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.vtec != null) {
      yield r'vtec';
      yield serializers.serialize(
        object.vtec,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.motion != null) {
      yield r'motion';
      yield serializers.serialize(
        object.motion,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxHailSizeIn != null) {
      yield r'maxHailSizeIn';
      yield serializers.serialize(
        object.maxHailSizeIn,
        specifiedType: const FullType(num),
      );
    }
    if (object.maxWindGustMph != null) {
      yield r'maxWindGustMph';
      yield serializers.serialize(
        object.maxWindGustMph,
        specifiedType: const FullType(num),
      );
    }
    if (object.tornadoDetection != null) {
      yield r'tornadoDetection';
      yield serializers.serialize(
        object.tornadoDetection,
        specifiedType: const FullType(String),
      );
    }
    if (object.thunderstormDamageThreat != null) {
      yield r'thunderstormDamageThreat';
      yield serializers.serialize(
        object.thunderstormDamageThreat,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.instruction != null) {
      yield r'instruction';
      yield serializers.serialize(
        object.instruction,
        specifiedType: const FullType(String),
      );
    }
    if (object.web != null) {
      yield r'web';
      yield serializers.serialize(
        object.web,
        specifiedType: const FullType(String),
      );
    }
    if (object.geometrySource != null) {
      yield r'geometrySource';
      yield serializers.serialize(
        object.geometrySource,
        specifiedType: const FullType(NwsAlertPayloadGeometrySourceEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NwsAlertPayload object, {
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
    required NwsAlertPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'event':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.event = valueDes;
          break;
        case r'eventCode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.eventCode = valueDes;
          break;
        case r'headline':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.headline = valueDes;
          break;
        case r'severity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(NwsAlertPayloadSeverityEnum),
                  )
                  as NwsAlertPayloadSeverityEnum;
          result.severity = valueDes;
          break;
        case r'certainty':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.certainty = valueDes;
          break;
        case r'urgency':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.urgency = valueDes;
          break;
        case r'messageType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      NwsAlertPayloadMessageTypeEnum,
                    ),
                  )
                  as NwsAlertPayloadMessageTypeEnum?;
          if (valueDes == null) continue;
          result.messageType = valueDes;
          break;
        case r'category':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.category = valueDes;
          break;
        case r'response':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.response = valueDes;
          break;
        case r'senderName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.senderName = valueDes;
          break;
        case r'areaDesc':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.areaDesc = valueDes;
          break;
        case r'sent':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.sent = valueDes;
          break;
        case r'effective':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.effective = valueDes;
          break;
        case r'onset':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.onset = valueDes;
          break;
        case r'expires':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.expires = valueDes;
          break;
        case r'ends':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.ends = valueDes;
          break;
        case r'ugc':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.ugc.replace(valueDes);
          break;
        case r'same':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.same.replace(valueDes);
          break;
        case r'vtec':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.vtec.replace(valueDes);
          break;
        case r'motion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.motion = valueDes;
          break;
        case r'maxHailSizeIn':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.maxHailSizeIn = valueDes;
          break;
        case r'maxWindGustMph':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.maxWindGustMph = valueDes;
          break;
        case r'tornadoDetection':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.tornadoDetection = valueDes;
          break;
        case r'thunderstormDamageThreat':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.thunderstormDamageThreat = valueDes;
          break;
        case r'description':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'instruction':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.instruction = valueDes;
          break;
        case r'web':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.web = valueDes;
          break;
        case r'geometrySource':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      NwsAlertPayloadGeometrySourceEnum,
                    ),
                  )
                  as NwsAlertPayloadGeometrySourceEnum?;
          if (valueDes == null) continue;
          result.geometrySource = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NwsAlertPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NwsAlertPayloadBuilder();
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

class NwsAlertPayloadSeverityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Extreme')
  static const NwsAlertPayloadSeverityEnum extreme =
      _$nwsAlertPayloadSeverityEnum_extreme;
  @BuiltValueEnumConst(wireName: r'Severe')
  static const NwsAlertPayloadSeverityEnum severe =
      _$nwsAlertPayloadSeverityEnum_severe;
  @BuiltValueEnumConst(wireName: r'Moderate')
  static const NwsAlertPayloadSeverityEnum moderate =
      _$nwsAlertPayloadSeverityEnum_moderate;
  @BuiltValueEnumConst(wireName: r'Minor')
  static const NwsAlertPayloadSeverityEnum minor =
      _$nwsAlertPayloadSeverityEnum_minor;
  @BuiltValueEnumConst(wireName: r'Unknown')
  static const NwsAlertPayloadSeverityEnum unknown =
      _$nwsAlertPayloadSeverityEnum_unknown;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const NwsAlertPayloadSeverityEnum unknownDefaultOpenApi =
      _$nwsAlertPayloadSeverityEnum_unknownDefaultOpenApi;

  static Serializer<NwsAlertPayloadSeverityEnum> get serializer =>
      _$nwsAlertPayloadSeverityEnumSerializer;

  const NwsAlertPayloadSeverityEnum._(String name) : super(name);

  static BuiltSet<NwsAlertPayloadSeverityEnum> get values =>
      _$nwsAlertPayloadSeverityEnumValues;
  static NwsAlertPayloadSeverityEnum valueOf(String name) =>
      _$nwsAlertPayloadSeverityEnumValueOf(name);
}

class NwsAlertPayloadMessageTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Alert')
  static const NwsAlertPayloadMessageTypeEnum alert =
      _$nwsAlertPayloadMessageTypeEnum_alert;
  @BuiltValueEnumConst(wireName: r'Update')
  static const NwsAlertPayloadMessageTypeEnum update =
      _$nwsAlertPayloadMessageTypeEnum_update;
  @BuiltValueEnumConst(wireName: r'Cancel')
  static const NwsAlertPayloadMessageTypeEnum cancel =
      _$nwsAlertPayloadMessageTypeEnum_cancel;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const NwsAlertPayloadMessageTypeEnum unknownDefaultOpenApi =
      _$nwsAlertPayloadMessageTypeEnum_unknownDefaultOpenApi;

  static Serializer<NwsAlertPayloadMessageTypeEnum> get serializer =>
      _$nwsAlertPayloadMessageTypeEnumSerializer;

  const NwsAlertPayloadMessageTypeEnum._(String name) : super(name);

  static BuiltSet<NwsAlertPayloadMessageTypeEnum> get values =>
      _$nwsAlertPayloadMessageTypeEnumValues;
  static NwsAlertPayloadMessageTypeEnum valueOf(String name) =>
      _$nwsAlertPayloadMessageTypeEnumValueOf(name);
}

class NwsAlertPayloadGeometrySourceEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'polygon')
  static const NwsAlertPayloadGeometrySourceEnum polygon =
      _$nwsAlertPayloadGeometrySourceEnum_polygon;
  @BuiltValueEnumConst(wireName: r'county-union')
  static const NwsAlertPayloadGeometrySourceEnum countyUnion =
      _$nwsAlertPayloadGeometrySourceEnum_countyUnion;
  @BuiltValueEnumConst(wireName: r'none')
  static const NwsAlertPayloadGeometrySourceEnum none =
      _$nwsAlertPayloadGeometrySourceEnum_none;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const NwsAlertPayloadGeometrySourceEnum unknownDefaultOpenApi =
      _$nwsAlertPayloadGeometrySourceEnum_unknownDefaultOpenApi;

  static Serializer<NwsAlertPayloadGeometrySourceEnum> get serializer =>
      _$nwsAlertPayloadGeometrySourceEnumSerializer;

  const NwsAlertPayloadGeometrySourceEnum._(String name) : super(name);

  static BuiltSet<NwsAlertPayloadGeometrySourceEnum> get values =>
      _$nwsAlertPayloadGeometrySourceEnumValues;
  static NwsAlertPayloadGeometrySourceEnum valueOf(String name) =>
      _$nwsAlertPayloadGeometrySourceEnumValueOf(name);
}
