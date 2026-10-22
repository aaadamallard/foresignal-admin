//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'impact_projection_event.g.dart';

/// SSE payload for `impact.projected|superseded` (topic `analytics`)
///
/// Properties:
/// * [findingId] - ULID identifier
/// * [hazardType]
/// * [sourceRef]
/// * [impactFamily]
/// * [admin1]
/// * [pImpact]
/// * [questionId] - ULID identifier
/// * [supersededBy] - ULID identifier
/// * [at]
@BuiltValue()
abstract class ImpactProjectionEvent
    implements Built<ImpactProjectionEvent, ImpactProjectionEventBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'findingId')
  String get findingId;

  @BuiltValueField(wireName: r'hazardType')
  ImpactProjectionEventHazardTypeEnum get hazardType;
  // enum hazardTypeEnum {  tropical-wind-34,  tropical-wind-50,  tropical-wind-64,  tropical-track,  tornado,  wind,  hail,  severe-categorical,  excessive-rain,  river-flood,  storm-cell,  };

  @BuiltValueField(wireName: r'sourceRef')
  String? get sourceRef;

  @BuiltValueField(wireName: r'impactFamily')
  String get impactFamily;

  @BuiltValueField(wireName: r'admin1')
  String get admin1;

  @BuiltValueField(wireName: r'pImpact')
  num get pImpact;

  /// ULID identifier
  @BuiltValueField(wireName: r'questionId')
  String? get questionId;

  /// ULID identifier
  @BuiltValueField(wireName: r'supersededBy')
  String? get supersededBy;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  ImpactProjectionEvent._();

  factory ImpactProjectionEvent([
    void updates(ImpactProjectionEventBuilder b),
  ]) = _$ImpactProjectionEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImpactProjectionEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImpactProjectionEvent> get serializer =>
      _$ImpactProjectionEventSerializer();
}

class _$ImpactProjectionEventSerializer
    implements PrimitiveSerializer<ImpactProjectionEvent> {
  @override
  final Iterable<Type> types = const [
    ImpactProjectionEvent,
    _$ImpactProjectionEvent,
  ];

  @override
  final String wireName = r'ImpactProjectionEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImpactProjectionEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'findingId';
    yield serializers.serialize(
      object.findingId,
      specifiedType: const FullType(String),
    );
    yield r'hazardType';
    yield serializers.serialize(
      object.hazardType,
      specifiedType: const FullType(ImpactProjectionEventHazardTypeEnum),
    );
    if (object.sourceRef != null) {
      yield r'sourceRef';
      yield serializers.serialize(
        object.sourceRef,
        specifiedType: const FullType(String),
      );
    }
    yield r'impactFamily';
    yield serializers.serialize(
      object.impactFamily,
      specifiedType: const FullType(String),
    );
    yield r'admin1';
    yield serializers.serialize(
      object.admin1,
      specifiedType: const FullType(String),
    );
    yield r'pImpact';
    yield serializers.serialize(
      object.pImpact,
      specifiedType: const FullType(num),
    );
    if (object.questionId != null) {
      yield r'questionId';
      yield serializers.serialize(
        object.questionId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.supersededBy != null) {
      yield r'supersededBy';
      yield serializers.serialize(
        object.supersededBy,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ImpactProjectionEvent object, {
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
    required ImpactProjectionEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'findingId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.findingId = valueDes;
          break;
        case r'hazardType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      ImpactProjectionEventHazardTypeEnum,
                    ),
                  )
                  as ImpactProjectionEventHazardTypeEnum;
          result.hazardType = valueDes;
          break;
        case r'sourceRef':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.sourceRef = valueDes;
          break;
        case r'impactFamily':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.impactFamily = valueDes;
          break;
        case r'admin1':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.admin1 = valueDes;
          break;
        case r'pImpact':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.pImpact = valueDes;
          break;
        case r'questionId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.questionId = valueDes;
          break;
        case r'supersededBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.supersededBy = valueDes;
          break;
        case r'at':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.at = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ImpactProjectionEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImpactProjectionEventBuilder();
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

class ImpactProjectionEventHazardTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'tropical-wind-34')
  static const ImpactProjectionEventHazardTypeEnum tropicalWind34 =
      _$impactProjectionEventHazardTypeEnum_tropicalWind34;
  @BuiltValueEnumConst(wireName: r'tropical-wind-50')
  static const ImpactProjectionEventHazardTypeEnum tropicalWind50 =
      _$impactProjectionEventHazardTypeEnum_tropicalWind50;
  @BuiltValueEnumConst(wireName: r'tropical-wind-64')
  static const ImpactProjectionEventHazardTypeEnum tropicalWind64 =
      _$impactProjectionEventHazardTypeEnum_tropicalWind64;
  @BuiltValueEnumConst(wireName: r'tropical-track')
  static const ImpactProjectionEventHazardTypeEnum tropicalTrack =
      _$impactProjectionEventHazardTypeEnum_tropicalTrack;
  @BuiltValueEnumConst(wireName: r'tornado')
  static const ImpactProjectionEventHazardTypeEnum tornado =
      _$impactProjectionEventHazardTypeEnum_tornado;
  @BuiltValueEnumConst(wireName: r'wind')
  static const ImpactProjectionEventHazardTypeEnum wind =
      _$impactProjectionEventHazardTypeEnum_wind;
  @BuiltValueEnumConst(wireName: r'hail')
  static const ImpactProjectionEventHazardTypeEnum hail =
      _$impactProjectionEventHazardTypeEnum_hail;
  @BuiltValueEnumConst(wireName: r'severe-categorical')
  static const ImpactProjectionEventHazardTypeEnum severeCategorical =
      _$impactProjectionEventHazardTypeEnum_severeCategorical;
  @BuiltValueEnumConst(wireName: r'excessive-rain')
  static const ImpactProjectionEventHazardTypeEnum excessiveRain =
      _$impactProjectionEventHazardTypeEnum_excessiveRain;
  @BuiltValueEnumConst(wireName: r'river-flood')
  static const ImpactProjectionEventHazardTypeEnum riverFlood =
      _$impactProjectionEventHazardTypeEnum_riverFlood;
  @BuiltValueEnumConst(wireName: r'storm-cell')
  static const ImpactProjectionEventHazardTypeEnum stormCell =
      _$impactProjectionEventHazardTypeEnum_stormCell;

  static Serializer<ImpactProjectionEventHazardTypeEnum> get serializer =>
      _$impactProjectionEventHazardTypeEnumSerializer;

  const ImpactProjectionEventHazardTypeEnum._(String name) : super(name);

  static BuiltSet<ImpactProjectionEventHazardTypeEnum> get values =>
      _$impactProjectionEventHazardTypeEnumValues;
  static ImpactProjectionEventHazardTypeEnum valueOf(String name) =>
      _$impactProjectionEventHazardTypeEnumValueOf(name);
}
