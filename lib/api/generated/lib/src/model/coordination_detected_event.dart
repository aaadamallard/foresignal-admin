//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'coordination_detected_event.g.dart';

/// SSE `coordination.detected` (topic `social`): a `social-coordination` finding (136)
///
/// Properties:
/// * [event]
/// * [findingId] - ULID identifier
/// * [narrativeId] - ULID identifier
/// * [significantIndicators]
/// * [at]
@BuiltValue()
abstract class CoordinationDetectedEvent
    implements
        Built<CoordinationDetectedEvent, CoordinationDetectedEventBuilder> {
  @BuiltValueField(wireName: r'event')
  CoordinationDetectedEventEventEnum get event;
  // enum eventEnum {  coordination.detected,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'findingId')
  String get findingId;

  /// ULID identifier
  @BuiltValueField(wireName: r'narrativeId')
  String get narrativeId;

  @BuiltValueField(wireName: r'significantIndicators')
  BuiltList<CoordinationDetectedEventSignificantIndicatorsEnum>
      get significantIndicators;
  // enum significantIndicatorsEnum {  synchrony,  textDuplication,  accountAgeSkew,  coRepostBursts,  };

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  CoordinationDetectedEvent._();

  factory CoordinationDetectedEvent(
          [void updates(CoordinationDetectedEventBuilder b)]) =
      _$CoordinationDetectedEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CoordinationDetectedEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CoordinationDetectedEvent> get serializer =>
      _$CoordinationDetectedEventSerializer();
}

class _$CoordinationDetectedEventSerializer
    implements PrimitiveSerializer<CoordinationDetectedEvent> {
  @override
  final Iterable<Type> types = const [
    CoordinationDetectedEvent,
    _$CoordinationDetectedEvent
  ];

  @override
  final String wireName = r'CoordinationDetectedEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CoordinationDetectedEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(CoordinationDetectedEventEventEnum),
    );
    yield r'findingId';
    yield serializers.serialize(
      object.findingId,
      specifiedType: const FullType(String),
    );
    yield r'narrativeId';
    yield serializers.serialize(
      object.narrativeId,
      specifiedType: const FullType(String),
    );
    yield r'significantIndicators';
    yield serializers.serialize(
      object.significantIndicators,
      specifiedType: const FullType(BuiltList,
          [FullType(CoordinationDetectedEventSignificantIndicatorsEnum)]),
    );
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CoordinationDetectedEvent object, {
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
    required CoordinationDetectedEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'event':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CoordinationDetectedEventEventEnum),
          ) as CoordinationDetectedEventEventEnum;
          result.event = valueDes;
          break;
        case r'findingId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.findingId = valueDes;
          break;
        case r'narrativeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.narrativeId = valueDes;
          break;
        case r'significantIndicators':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList,
                [FullType(CoordinationDetectedEventSignificantIndicatorsEnum)]),
          ) as BuiltList<CoordinationDetectedEventSignificantIndicatorsEnum>;
          result.significantIndicators.replace(valueDes);
          break;
        case r'at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
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
  CoordinationDetectedEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CoordinationDetectedEventBuilder();
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

class CoordinationDetectedEventEventEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'coordination.detected')
  static const CoordinationDetectedEventEventEnum coordinationPeriodDetected =
      _$coordinationDetectedEventEventEnum_coordinationPeriodDetected;

  static Serializer<CoordinationDetectedEventEventEnum> get serializer =>
      _$coordinationDetectedEventEventEnumSerializer;

  const CoordinationDetectedEventEventEnum._(String name) : super(name);

  static BuiltSet<CoordinationDetectedEventEventEnum> get values =>
      _$coordinationDetectedEventEventEnumValues;
  static CoordinationDetectedEventEventEnum valueOf(String name) =>
      _$coordinationDetectedEventEventEnumValueOf(name);
}

class CoordinationDetectedEventSignificantIndicatorsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'synchrony')
  static const CoordinationDetectedEventSignificantIndicatorsEnum synchrony =
      _$coordinationDetectedEventSignificantIndicatorsEnum_synchrony;
  @BuiltValueEnumConst(wireName: r'textDuplication')
  static const CoordinationDetectedEventSignificantIndicatorsEnum
      textDuplication =
      _$coordinationDetectedEventSignificantIndicatorsEnum_textDuplication;
  @BuiltValueEnumConst(wireName: r'accountAgeSkew')
  static const CoordinationDetectedEventSignificantIndicatorsEnum
      accountAgeSkew =
      _$coordinationDetectedEventSignificantIndicatorsEnum_accountAgeSkew;
  @BuiltValueEnumConst(wireName: r'coRepostBursts')
  static const CoordinationDetectedEventSignificantIndicatorsEnum
      coRepostBursts =
      _$coordinationDetectedEventSignificantIndicatorsEnum_coRepostBursts;

  static Serializer<CoordinationDetectedEventSignificantIndicatorsEnum>
      get serializer =>
          _$coordinationDetectedEventSignificantIndicatorsEnumSerializer;

  const CoordinationDetectedEventSignificantIndicatorsEnum._(String name)
      : super(name);

  static BuiltSet<CoordinationDetectedEventSignificantIndicatorsEnum>
      get values => _$coordinationDetectedEventSignificantIndicatorsEnumValues;
  static CoordinationDetectedEventSignificantIndicatorsEnum valueOf(
          String name) =>
      _$coordinationDetectedEventSignificantIndicatorsEnumValueOf(name);
}
