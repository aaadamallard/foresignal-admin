//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/social_cue.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_cue_event.g.dart';

/// SSE `cue.completed` (topic `social`): a cue finished, failed or was refused by budget (137)
///
/// Properties:
/// * [event]
/// * [cue]
@BuiltValue()
abstract class SocialCueEvent
    implements Built<SocialCueEvent, SocialCueEventBuilder> {
  @BuiltValueField(wireName: r'event')
  SocialCueEventEventEnum get event;
  // enum eventEnum {  cue.completed,  };

  @BuiltValueField(wireName: r'cue')
  SocialCue get cue;

  SocialCueEvent._();

  factory SocialCueEvent([void updates(SocialCueEventBuilder b)]) =
      _$SocialCueEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialCueEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialCueEvent> get serializer =>
      _$SocialCueEventSerializer();
}

class _$SocialCueEventSerializer
    implements PrimitiveSerializer<SocialCueEvent> {
  @override
  final Iterable<Type> types = const [SocialCueEvent, _$SocialCueEvent];

  @override
  final String wireName = r'SocialCueEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialCueEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(SocialCueEventEventEnum),
    );
    yield r'cue';
    yield serializers.serialize(
      object.cue,
      specifiedType: const FullType(SocialCue),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialCueEvent object, {
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
    required SocialCueEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'event':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SocialCueEventEventEnum),
          ) as SocialCueEventEventEnum;
          result.event = valueDes;
          break;
        case r'cue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SocialCue),
          ) as SocialCue;
          result.cue.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialCueEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialCueEventBuilder();
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

class SocialCueEventEventEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'cue.completed')
  static const SocialCueEventEventEnum cuePeriodCompleted =
      _$socialCueEventEventEnum_cuePeriodCompleted;

  static Serializer<SocialCueEventEventEnum> get serializer =>
      _$socialCueEventEventEnumSerializer;

  const SocialCueEventEventEnum._(String name) : super(name);

  static BuiltSet<SocialCueEventEventEnum> get values =>
      _$socialCueEventEventEnumValues;
  static SocialCueEventEventEnum valueOf(String name) =>
      _$socialCueEventEventEnumValueOf(name);
}
