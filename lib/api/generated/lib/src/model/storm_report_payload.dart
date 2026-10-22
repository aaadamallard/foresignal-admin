//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'storm_report_payload.g.dart';

/// Payload of `storm-report` records (spc-storm-reports; never tombstoned on absence)
///
/// Properties:
/// * [type]
/// * [magnitude] - Tornado rating string (EF0 to EF5), wind mph or hail inches as numbers; omitted when UNK
/// * [magnitudeUnits] - EF (tornado), mph (wind) or in (hail)
/// * [location]
/// * [county]
/// * [state]
/// * [wfo]
/// * [comments] - Untrusted upstream text, ≤ 500 chars
/// * [title]
@BuiltValue()
abstract class StormReportPayload
    implements Built<StormReportPayload, StormReportPayloadBuilder> {
  @BuiltValueField(wireName: r'type')
  StormReportPayloadTypeEnum get type;
  // enum typeEnum {  tornado,  wind,  hail,  };

  /// Tornado rating string (EF0 to EF5), wind mph or hail inches as numbers; omitted when UNK
  @BuiltValueField(wireName: r'magnitude')
  JsonObject? get magnitude;

  /// EF (tornado), mph (wind) or in (hail)
  @BuiltValueField(wireName: r'magnitudeUnits')
  StormReportPayloadMagnitudeUnitsEnum? get magnitudeUnits;
  // enum magnitudeUnitsEnum {  EF,  mph,  in,  };

  @BuiltValueField(wireName: r'location')
  String get location;

  @BuiltValueField(wireName: r'county')
  String? get county;

  @BuiltValueField(wireName: r'state')
  String? get state;

  @BuiltValueField(wireName: r'wfo')
  String? get wfo;

  /// Untrusted upstream text, ≤ 500 chars
  @BuiltValueField(wireName: r'comments')
  String? get comments;

  @BuiltValueField(wireName: r'title')
  String get title;

  StormReportPayload._();

  factory StormReportPayload([void updates(StormReportPayloadBuilder b)]) =
      _$StormReportPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StormReportPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StormReportPayload> get serializer =>
      _$StormReportPayloadSerializer();
}

class _$StormReportPayloadSerializer
    implements PrimitiveSerializer<StormReportPayload> {
  @override
  final Iterable<Type> types = const [StormReportPayload, _$StormReportPayload];

  @override
  final String wireName = r'StormReportPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StormReportPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(StormReportPayloadTypeEnum),
    );
    if (object.magnitude != null) {
      yield r'magnitude';
      yield serializers.serialize(
        object.magnitude,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.magnitudeUnits != null) {
      yield r'magnitudeUnits';
      yield serializers.serialize(
        object.magnitudeUnits,
        specifiedType: const FullType(StormReportPayloadMagnitudeUnitsEnum),
      );
    }
    yield r'location';
    yield serializers.serialize(
      object.location,
      specifiedType: const FullType(String),
    );
    if (object.county != null) {
      yield r'county';
      yield serializers.serialize(
        object.county,
        specifiedType: const FullType(String),
      );
    }
    if (object.state != null) {
      yield r'state';
      yield serializers.serialize(
        object.state,
        specifiedType: const FullType(String),
      );
    }
    if (object.wfo != null) {
      yield r'wfo';
      yield serializers.serialize(
        object.wfo,
        specifiedType: const FullType(String),
      );
    }
    if (object.comments != null) {
      yield r'comments';
      yield serializers.serialize(
        object.comments,
        specifiedType: const FullType(String),
      );
    }
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StormReportPayload object, {
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
    required StormReportPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(StormReportPayloadTypeEnum),
                  )
                  as StormReportPayloadTypeEnum;
          result.type = valueDes;
          break;
        case r'magnitude':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.magnitude = valueDes;
          break;
        case r'magnitudeUnits':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      StormReportPayloadMagnitudeUnitsEnum,
                    ),
                  )
                  as StormReportPayloadMagnitudeUnitsEnum?;
          if (valueDes == null) continue;
          result.magnitudeUnits = valueDes;
          break;
        case r'location':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.location = valueDes;
          break;
        case r'county':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.county = valueDes;
          break;
        case r'state':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.state = valueDes;
          break;
        case r'wfo':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.wfo = valueDes;
          break;
        case r'comments':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.comments = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StormReportPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StormReportPayloadBuilder();
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

class StormReportPayloadTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'tornado')
  static const StormReportPayloadTypeEnum tornado =
      _$stormReportPayloadTypeEnum_tornado;
  @BuiltValueEnumConst(wireName: r'wind')
  static const StormReportPayloadTypeEnum wind =
      _$stormReportPayloadTypeEnum_wind;
  @BuiltValueEnumConst(wireName: r'hail')
  static const StormReportPayloadTypeEnum hail =
      _$stormReportPayloadTypeEnum_hail;

  static Serializer<StormReportPayloadTypeEnum> get serializer =>
      _$stormReportPayloadTypeEnumSerializer;

  const StormReportPayloadTypeEnum._(String name) : super(name);

  static BuiltSet<StormReportPayloadTypeEnum> get values =>
      _$stormReportPayloadTypeEnumValues;
  static StormReportPayloadTypeEnum valueOf(String name) =>
      _$stormReportPayloadTypeEnumValueOf(name);
}

/// EF (tornado), mph (wind) or in (hail)
class StormReportPayloadMagnitudeUnitsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'EF')
  static const StormReportPayloadMagnitudeUnitsEnum EF =
      _$stormReportPayloadMagnitudeUnitsEnum_EF;
  @BuiltValueEnumConst(wireName: r'mph')
  static const StormReportPayloadMagnitudeUnitsEnum mph =
      _$stormReportPayloadMagnitudeUnitsEnum_mph;
  @BuiltValueEnumConst(wireName: r'in')
  static const StormReportPayloadMagnitudeUnitsEnum in_ =
      _$stormReportPayloadMagnitudeUnitsEnum_in_;

  static Serializer<StormReportPayloadMagnitudeUnitsEnum> get serializer =>
      _$stormReportPayloadMagnitudeUnitsEnumSerializer;

  const StormReportPayloadMagnitudeUnitsEnum._(String name) : super(name);

  static BuiltSet<StormReportPayloadMagnitudeUnitsEnum> get values =>
      _$stormReportPayloadMagnitudeUnitsEnumValues;
  static StormReportPayloadMagnitudeUnitsEnum valueOf(String name) =>
      _$stormReportPayloadMagnitudeUnitsEnumValueOf(name);
}
