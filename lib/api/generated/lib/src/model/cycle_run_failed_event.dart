//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cycle_run_failed_event.g.dart';

/// SSE payload for `cycle.run_failed` (topic `assessments`)
///
/// Properties:
/// * [runId] - ULID identifier
/// * [cycleId] - ULID identifier
/// * [situationId] - ULID identifier
/// * [cadence]
/// * [reason]
/// * [at]
@BuiltValue()
abstract class CycleRunFailedEvent
    implements Built<CycleRunFailedEvent, CycleRunFailedEventBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'runId')
  String get runId;

  /// ULID identifier
  @BuiltValueField(wireName: r'cycleId')
  String? get cycleId;

  /// ULID identifier
  @BuiltValueField(wireName: r'situationId')
  String? get situationId;

  @BuiltValueField(wireName: r'cadence')
  CycleRunFailedEventCadenceEnum get cadence;
  // enum cadenceEnum {  daily,  weekly,  monthly,  on-demand,  };

  @BuiltValueField(wireName: r'reason')
  String get reason;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  CycleRunFailedEvent._();

  factory CycleRunFailedEvent([void updates(CycleRunFailedEventBuilder b)]) =
      _$CycleRunFailedEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CycleRunFailedEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CycleRunFailedEvent> get serializer =>
      _$CycleRunFailedEventSerializer();
}

class _$CycleRunFailedEventSerializer
    implements PrimitiveSerializer<CycleRunFailedEvent> {
  @override
  final Iterable<Type> types = const [
    CycleRunFailedEvent,
    _$CycleRunFailedEvent,
  ];

  @override
  final String wireName = r'CycleRunFailedEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CycleRunFailedEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'runId';
    yield serializers.serialize(
      object.runId,
      specifiedType: const FullType(String),
    );
    if (object.cycleId != null) {
      yield r'cycleId';
      yield serializers.serialize(
        object.cycleId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.situationId != null) {
      yield r'situationId';
      yield serializers.serialize(
        object.situationId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'cadence';
    yield serializers.serialize(
      object.cadence,
      specifiedType: const FullType(CycleRunFailedEventCadenceEnum),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
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
    CycleRunFailedEvent object, {
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
    required CycleRunFailedEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'runId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.runId = valueDes;
          break;
        case r'cycleId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.cycleId = valueDes;
          break;
        case r'situationId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.situationId = valueDes;
          break;
        case r'cadence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      CycleRunFailedEventCadenceEnum,
                    ),
                  )
                  as CycleRunFailedEventCadenceEnum;
          result.cadence = valueDes;
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.reason = valueDes;
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
  CycleRunFailedEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CycleRunFailedEventBuilder();
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

class CycleRunFailedEventCadenceEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'daily')
  static const CycleRunFailedEventCadenceEnum daily =
      _$cycleRunFailedEventCadenceEnum_daily;
  @BuiltValueEnumConst(wireName: r'weekly')
  static const CycleRunFailedEventCadenceEnum weekly =
      _$cycleRunFailedEventCadenceEnum_weekly;
  @BuiltValueEnumConst(wireName: r'monthly')
  static const CycleRunFailedEventCadenceEnum monthly =
      _$cycleRunFailedEventCadenceEnum_monthly;
  @BuiltValueEnumConst(wireName: r'on-demand')
  static const CycleRunFailedEventCadenceEnum onDemand =
      _$cycleRunFailedEventCadenceEnum_onDemand;

  static Serializer<CycleRunFailedEventCadenceEnum> get serializer =>
      _$cycleRunFailedEventCadenceEnumSerializer;

  const CycleRunFailedEventCadenceEnum._(String name) : super(name);

  static BuiltSet<CycleRunFailedEventCadenceEnum> get values =>
      _$cycleRunFailedEventCadenceEnumValues;
  static CycleRunFailedEventCadenceEnum valueOf(String name) =>
      _$cycleRunFailedEventCadenceEnumValueOf(name);
}
