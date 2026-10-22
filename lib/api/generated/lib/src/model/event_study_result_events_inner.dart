//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/event_study_result_events_inner_car.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/event_study_result_events_inner_abnormal_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event_study_result_events_inner.g.dart';

/// One event's abnormal path
///
/// Properties:
/// * [at]
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [clusterId]
/// * [excluded] - Why the event was excluded, e.g. `FEW_EVENTS` or coverage
/// * [estimationPoints]
/// * [abnormal]
/// * [car]
@BuiltValue()
abstract class EventStudyResultEventsInner
    implements
        Built<EventStudyResultEventsInner, EventStudyResultEventsInnerBuilder> {
  @BuiltValueField(wireName: r'at')
  DateTime get at;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String? get ref;

  @BuiltValueField(wireName: r'clusterId')
  int get clusterId;

  /// Why the event was excluded, e.g. `FEW_EVENTS` or coverage
  @BuiltValueField(wireName: r'excluded')
  String? get excluded;

  @BuiltValueField(wireName: r'estimationPoints')
  int? get estimationPoints;

  @BuiltValueField(wireName: r'abnormal')
  BuiltList<EventStudyResultEventsInnerAbnormalInner>? get abnormal;

  @BuiltValueField(wireName: r'car')
  EventStudyResultEventsInnerCar? get car;

  EventStudyResultEventsInner._();

  factory EventStudyResultEventsInner([
    void updates(EventStudyResultEventsInnerBuilder b),
  ]) = _$EventStudyResultEventsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EventStudyResultEventsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EventStudyResultEventsInner> get serializer =>
      _$EventStudyResultEventsInnerSerializer();
}

class _$EventStudyResultEventsInnerSerializer
    implements PrimitiveSerializer<EventStudyResultEventsInner> {
  @override
  final Iterable<Type> types = const [
    EventStudyResultEventsInner,
    _$EventStudyResultEventsInner,
  ];

  @override
  final String wireName = r'EventStudyResultEventsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EventStudyResultEventsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
    if (object.ref != null) {
      yield r'ref';
      yield serializers.serialize(
        object.ref,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'clusterId';
    yield serializers.serialize(
      object.clusterId,
      specifiedType: const FullType(int),
    );
    if (object.excluded != null) {
      yield r'excluded';
      yield serializers.serialize(
        object.excluded,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.estimationPoints != null) {
      yield r'estimationPoints';
      yield serializers.serialize(
        object.estimationPoints,
        specifiedType: const FullType(int),
      );
    }
    if (object.abnormal != null) {
      yield r'abnormal';
      yield serializers.serialize(
        object.abnormal,
        specifiedType: const FullType(BuiltList, [
          FullType(EventStudyResultEventsInnerAbnormalInner),
        ]),
      );
    }
    if (object.car != null) {
      yield r'car';
      yield serializers.serialize(
        object.car,
        specifiedType: const FullType(EventStudyResultEventsInnerCar),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EventStudyResultEventsInner object, {
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
    required EventStudyResultEventsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'at':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.at = valueDes;
          break;
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ref = valueDes;
          break;
        case r'clusterId':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.clusterId = valueDes;
          break;
        case r'excluded':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.excluded = valueDes;
          break;
        case r'estimationPoints':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.estimationPoints = valueDes;
          break;
        case r'abnormal':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(EventStudyResultEventsInnerAbnormalInner),
                    ]),
                  )
                  as BuiltList<EventStudyResultEventsInnerAbnormalInner>?;
          if (valueDes == null) continue;
          result.abnormal.replace(valueDes);
          break;
        case r'car':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      EventStudyResultEventsInnerCar,
                    ),
                  )
                  as EventStudyResultEventsInnerCar?;
          if (valueDes == null) continue;
          result.car.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EventStudyResultEventsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventStudyResultEventsInnerBuilder();
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
