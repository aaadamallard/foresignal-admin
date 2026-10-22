//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/social_platform_id.dart';
import 'package:foresignal_api/src/model/social_spend.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_platform_state_event.g.dart';

/// SSE `social.platform.state` (topic `social`): an adapter became enabled, disabled, degraded, budget-exhausted, credentials-required or unavailable (135)
///
/// Properties:
/// * [event]
/// * [platformId]
/// * [state]
/// * [previousState]
/// * [reason]
/// * [spend]
/// * [at]
@BuiltValue()
abstract class SocialPlatformStateEvent
    implements
        Built<SocialPlatformStateEvent, SocialPlatformStateEventBuilder> {
  @BuiltValueField(wireName: r'event')
  SocialPlatformStateEventEventEnum get event;
  // enum eventEnum {  social.platform.state,  };

  @BuiltValueField(wireName: r'platformId')
  SocialPlatformId get platformId;
  // enum platformIdEnum {  bluesky-jetstream,  bluesky-search,  mastodon,  reddit,  youtube,  x,  threads,  instagram-hashtags,  };

  @BuiltValueField(wireName: r'state')
  String get state;

  @BuiltValueField(wireName: r'previousState')
  String? get previousState;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  @BuiltValueField(wireName: r'spend')
  SocialSpend? get spend;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  SocialPlatformStateEvent._();

  factory SocialPlatformStateEvent([
    void updates(SocialPlatformStateEventBuilder b),
  ]) = _$SocialPlatformStateEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialPlatformStateEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialPlatformStateEvent> get serializer =>
      _$SocialPlatformStateEventSerializer();
}

class _$SocialPlatformStateEventSerializer
    implements PrimitiveSerializer<SocialPlatformStateEvent> {
  @override
  final Iterable<Type> types = const [
    SocialPlatformStateEvent,
    _$SocialPlatformStateEvent,
  ];

  @override
  final String wireName = r'SocialPlatformStateEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialPlatformStateEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(SocialPlatformStateEventEventEnum),
    );
    yield r'platformId';
    yield serializers.serialize(
      object.platformId,
      specifiedType: const FullType(SocialPlatformId),
    );
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(String),
    );
    if (object.previousState != null) {
      yield r'previousState';
      yield serializers.serialize(
        object.previousState,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.spend != null) {
      yield r'spend';
      yield serializers.serialize(
        object.spend,
        specifiedType: const FullType.nullable(SocialSpend),
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
    SocialPlatformStateEvent object, {
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
    required SocialPlatformStateEventBuilder result,
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
                    specifiedType: const FullType(
                      SocialPlatformStateEventEventEnum,
                    ),
                  )
                  as SocialPlatformStateEventEventEnum;
          result.event = valueDes;
          break;
        case r'platformId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SocialPlatformId),
                  )
                  as SocialPlatformId;
          result.platformId = valueDes;
          break;
        case r'state':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.state = valueDes;
          break;
        case r'previousState':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.previousState = valueDes;
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        case r'spend':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SocialSpend),
                  )
                  as SocialSpend?;
          if (valueDes == null) continue;
          result.spend.replace(valueDes);
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
  SocialPlatformStateEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialPlatformStateEventBuilder();
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

class SocialPlatformStateEventEventEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'social.platform.state')
  static const SocialPlatformStateEventEventEnum
  socialPeriodPlatformPeriodState =
      _$socialPlatformStateEventEventEnum_socialPeriodPlatformPeriodState;

  static Serializer<SocialPlatformStateEventEventEnum> get serializer =>
      _$socialPlatformStateEventEventEnumSerializer;

  const SocialPlatformStateEventEventEnum._(String name) : super(name);

  static BuiltSet<SocialPlatformStateEventEventEnum> get values =>
      _$socialPlatformStateEventEventEnumValues;
  static SocialPlatformStateEventEventEnum valueOf(String name) =>
      _$socialPlatformStateEventEventEnumValueOf(name);
}
