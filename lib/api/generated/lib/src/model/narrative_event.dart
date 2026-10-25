//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/narrative_summary.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'narrative_event.g.dart';

/// SSE `narrative.emerged` | `narrative.updated` (topic `social`); updates fire when state or counts cross a band (136)
///
/// Properties:
/// * [event]
/// * [narrative]
/// * [changed]
/// * [at]
@BuiltValue()
abstract class NarrativeEvent
    implements Built<NarrativeEvent, NarrativeEventBuilder> {
  @BuiltValueField(wireName: r'event')
  NarrativeEventEventEnum get event;
  // enum eventEnum {  narrative.emerged,  narrative.updated,  };

  @BuiltValueField(wireName: r'narrative')
  NarrativeSummary get narrative;

  @BuiltValueField(wireName: r'changed')
  BuiltList<NarrativeEventChangedEnum>? get changed;
  // enum changedEnum {  state,  status,  postCount,  evidenceGroupCount,  velocity,  merged,  split,  title,  };

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  NarrativeEvent._();

  factory NarrativeEvent([void updates(NarrativeEventBuilder b)]) =
      _$NarrativeEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NarrativeEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NarrativeEvent> get serializer =>
      _$NarrativeEventSerializer();
}

class _$NarrativeEventSerializer
    implements PrimitiveSerializer<NarrativeEvent> {
  @override
  final Iterable<Type> types = const [NarrativeEvent, _$NarrativeEvent];

  @override
  final String wireName = r'NarrativeEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NarrativeEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(NarrativeEventEventEnum),
    );
    yield r'narrative';
    yield serializers.serialize(
      object.narrative,
      specifiedType: const FullType(NarrativeSummary),
    );
    if (object.changed != null) {
      yield r'changed';
      yield serializers.serialize(
        object.changed,
        specifiedType: const FullType(BuiltList, [
          FullType(NarrativeEventChangedEnum),
        ]),
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
    NarrativeEvent object, {
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
    required NarrativeEventBuilder result,
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
                    specifiedType: const FullType(NarrativeEventEventEnum),
                  )
                  as NarrativeEventEventEnum;
          result.event = valueDes;
          break;
        case r'narrative':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(NarrativeSummary),
                  )
                  as NarrativeSummary;
          result.narrative.replace(valueDes);
          break;
        case r'changed':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(NarrativeEventChangedEnum),
                    ]),
                  )
                  as BuiltList<NarrativeEventChangedEnum>?;
          if (valueDes == null) continue;
          result.changed.replace(valueDes);
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
  NarrativeEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NarrativeEventBuilder();
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

class NarrativeEventEventEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'narrative.emerged')
  static const NarrativeEventEventEnum narrativePeriodEmerged =
      _$narrativeEventEventEnum_narrativePeriodEmerged;
  @BuiltValueEnumConst(wireName: r'narrative.updated')
  static const NarrativeEventEventEnum narrativePeriodUpdated =
      _$narrativeEventEventEnum_narrativePeriodUpdated;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const NarrativeEventEventEnum unknownDefaultOpenApi =
      _$narrativeEventEventEnum_unknownDefaultOpenApi;

  static Serializer<NarrativeEventEventEnum> get serializer =>
      _$narrativeEventEventEnumSerializer;

  const NarrativeEventEventEnum._(String name) : super(name);

  static BuiltSet<NarrativeEventEventEnum> get values =>
      _$narrativeEventEventEnumValues;
  static NarrativeEventEventEnum valueOf(String name) =>
      _$narrativeEventEventEnumValueOf(name);
}

class NarrativeEventChangedEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'state')
  static const NarrativeEventChangedEnum state =
      _$narrativeEventChangedEnum_state;
  @BuiltValueEnumConst(wireName: r'status')
  static const NarrativeEventChangedEnum status =
      _$narrativeEventChangedEnum_status;
  @BuiltValueEnumConst(wireName: r'postCount')
  static const NarrativeEventChangedEnum postCount =
      _$narrativeEventChangedEnum_postCount;
  @BuiltValueEnumConst(wireName: r'evidenceGroupCount')
  static const NarrativeEventChangedEnum evidenceGroupCount =
      _$narrativeEventChangedEnum_evidenceGroupCount;
  @BuiltValueEnumConst(wireName: r'velocity')
  static const NarrativeEventChangedEnum velocity =
      _$narrativeEventChangedEnum_velocity;
  @BuiltValueEnumConst(wireName: r'merged')
  static const NarrativeEventChangedEnum merged =
      _$narrativeEventChangedEnum_merged;
  @BuiltValueEnumConst(wireName: r'split')
  static const NarrativeEventChangedEnum split =
      _$narrativeEventChangedEnum_split;
  @BuiltValueEnumConst(wireName: r'title')
  static const NarrativeEventChangedEnum title =
      _$narrativeEventChangedEnum_title;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const NarrativeEventChangedEnum unknownDefaultOpenApi =
      _$narrativeEventChangedEnum_unknownDefaultOpenApi;

  static Serializer<NarrativeEventChangedEnum> get serializer =>
      _$narrativeEventChangedEnumSerializer;

  const NarrativeEventChangedEnum._(String name) : super(name);

  static BuiltSet<NarrativeEventChangedEnum> get values =>
      _$narrativeEventChangedEnumValues;
  static NarrativeEventChangedEnum valueOf(String name) =>
      _$narrativeEventChangedEnumValueOf(name);
}
