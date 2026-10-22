//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/finding_event_finding.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'finding_event.g.dart';

/// SSE payload on topic `analytics` for finding changes
///
/// Properties:
/// * [event]
/// * [finding]
/// * [at]
@BuiltValue()
abstract class FindingEvent
    implements Built<FindingEvent, FindingEventBuilder> {
  @BuiltValueField(wireName: r'event')
  FindingEventEventEnum get event;
  // enum eventEnum {  finding.created,  finding.updated,  finding.dismissed,  };

  @BuiltValueField(wireName: r'finding')
  FindingEventFinding get finding;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  FindingEvent._();

  factory FindingEvent([void updates(FindingEventBuilder b)]) = _$FindingEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FindingEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FindingEvent> get serializer => _$FindingEventSerializer();
}

class _$FindingEventSerializer implements PrimitiveSerializer<FindingEvent> {
  @override
  final Iterable<Type> types = const [FindingEvent, _$FindingEvent];

  @override
  final String wireName = r'FindingEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FindingEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(FindingEventEventEnum),
    );
    yield r'finding';
    yield serializers.serialize(
      object.finding,
      specifiedType: const FullType(FindingEventFinding),
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
    FindingEvent object, {
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
    required FindingEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'event':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FindingEventEventEnum),
          ) as FindingEventEventEnum;
          result.event = valueDes;
          break;
        case r'finding':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FindingEventFinding),
          ) as FindingEventFinding;
          result.finding.replace(valueDes);
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
  FindingEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FindingEventBuilder();
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

class FindingEventEventEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'finding.created')
  static const FindingEventEventEnum findingPeriodCreated =
      _$findingEventEventEnum_findingPeriodCreated;
  @BuiltValueEnumConst(wireName: r'finding.updated')
  static const FindingEventEventEnum findingPeriodUpdated =
      _$findingEventEventEnum_findingPeriodUpdated;
  @BuiltValueEnumConst(wireName: r'finding.dismissed')
  static const FindingEventEventEnum findingPeriodDismissed =
      _$findingEventEventEnum_findingPeriodDismissed;

  static Serializer<FindingEventEventEnum> get serializer =>
      _$findingEventEventEnumSerializer;

  const FindingEventEventEnum._(String name) : super(name);

  static BuiltSet<FindingEventEventEnum> get values =>
      _$findingEventEventEnumValues;
  static FindingEventEventEnum valueOf(String name) =>
      _$findingEventEventEnumValueOf(name);
}
