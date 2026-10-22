//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/finding_severity.dart';
import 'package:foresignal_api/src/model/social_velocity_event_scope.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_velocity_event.g.dart';

/// SSE `social.velocity` (topic `social`): a `social-velocity` finding was created (135)
///
/// Properties:
/// * [event]
/// * [findingId] - ULID identifier
/// * [scope]
/// * [platform] - Social network: `bluesky`, `mastodon`, `reddit`, `youtube`, `x`, `threads`, `instagram`, or the platform an EDP provider (024, 138) declares
/// * [language]
/// * [velocityRatio]
/// * [uniqueAuthors]
/// * [zRobust]
/// * [severity]
/// * [detectedAt]
@BuiltValue()
abstract class SocialVelocityEvent
    implements Built<SocialVelocityEvent, SocialVelocityEventBuilder> {
  @BuiltValueField(wireName: r'event')
  SocialVelocityEventEventEnum get event;
  // enum eventEnum {  social.velocity,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'findingId')
  String get findingId;

  @BuiltValueField(wireName: r'scope')
  SocialVelocityEventScope get scope;

  /// Social network: `bluesky`, `mastodon`, `reddit`, `youtube`, `x`, `threads`, `instagram`, or the platform an EDP provider (024, 138) declares
  @BuiltValueField(wireName: r'platform')
  String get platform;

  @BuiltValueField(wireName: r'language')
  String? get language;

  @BuiltValueField(wireName: r'velocityRatio')
  num get velocityRatio;

  @BuiltValueField(wireName: r'uniqueAuthors')
  int get uniqueAuthors;

  @BuiltValueField(wireName: r'zRobust')
  num? get zRobust;

  @BuiltValueField(wireName: r'severity')
  FindingSeverity get severity;
  // enum severityEnum {  info,  notable,  significant,  };

  @BuiltValueField(wireName: r'detectedAt')
  DateTime get detectedAt;

  SocialVelocityEvent._();

  factory SocialVelocityEvent([void updates(SocialVelocityEventBuilder b)]) =
      _$SocialVelocityEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialVelocityEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialVelocityEvent> get serializer =>
      _$SocialVelocityEventSerializer();
}

class _$SocialVelocityEventSerializer
    implements PrimitiveSerializer<SocialVelocityEvent> {
  @override
  final Iterable<Type> types = const [
    SocialVelocityEvent,
    _$SocialVelocityEvent,
  ];

  @override
  final String wireName = r'SocialVelocityEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialVelocityEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(SocialVelocityEventEventEnum),
    );
    yield r'findingId';
    yield serializers.serialize(
      object.findingId,
      specifiedType: const FullType(String),
    );
    yield r'scope';
    yield serializers.serialize(
      object.scope,
      specifiedType: const FullType(SocialVelocityEventScope),
    );
    yield r'platform';
    yield serializers.serialize(
      object.platform,
      specifiedType: const FullType(String),
    );
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'velocityRatio';
    yield serializers.serialize(
      object.velocityRatio,
      specifiedType: const FullType(num),
    );
    yield r'uniqueAuthors';
    yield serializers.serialize(
      object.uniqueAuthors,
      specifiedType: const FullType(int),
    );
    if (object.zRobust != null) {
      yield r'zRobust';
      yield serializers.serialize(
        object.zRobust,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'severity';
    yield serializers.serialize(
      object.severity,
      specifiedType: const FullType(FindingSeverity),
    );
    yield r'detectedAt';
    yield serializers.serialize(
      object.detectedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialVelocityEvent object, {
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
    required SocialVelocityEventBuilder result,
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
                    specifiedType: const FullType(SocialVelocityEventEventEnum),
                  )
                  as SocialVelocityEventEventEnum;
          result.event = valueDes;
          break;
        case r'findingId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.findingId = valueDes;
          break;
        case r'scope':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SocialVelocityEventScope),
                  )
                  as SocialVelocityEventScope;
          result.scope.replace(valueDes);
          break;
        case r'platform':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.platform = valueDes;
          break;
        case r'language':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.language = valueDes;
          break;
        case r'velocityRatio':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.velocityRatio = valueDes;
          break;
        case r'uniqueAuthors':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.uniqueAuthors = valueDes;
          break;
        case r'zRobust':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.zRobust = valueDes;
          break;
        case r'severity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(FindingSeverity),
                  )
                  as FindingSeverity;
          result.severity = valueDes;
          break;
        case r'detectedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.detectedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialVelocityEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialVelocityEventBuilder();
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

class SocialVelocityEventEventEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'social.velocity')
  static const SocialVelocityEventEventEnum socialPeriodVelocity =
      _$socialVelocityEventEventEnum_socialPeriodVelocity;

  static Serializer<SocialVelocityEventEventEnum> get serializer =>
      _$socialVelocityEventEventEnumSerializer;

  const SocialVelocityEventEventEnum._(String name) : super(name);

  static BuiltSet<SocialVelocityEventEventEnum> get values =>
      _$socialVelocityEventEventEnumValues;
  static SocialVelocityEventEventEnum valueOf(String name) =>
      _$socialVelocityEventEventEnumValueOf(name);
}
