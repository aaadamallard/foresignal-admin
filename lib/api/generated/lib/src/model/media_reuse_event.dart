//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'media_reuse_event.g.dart';

/// SSE `media.reuse` (topic `social`): a `media-reuse` finding (136)
///
/// Properties:
/// * [event]
/// * [findingId] - ULID identifier
/// * [fingerprintId] - ULID identifier
/// * [narrativeId] - ULID identifier
/// * [earlierNarrativeId] - ULID identifier
/// * [firstSeenAt]
/// * [reason] - First seen ≥ 7 days earlier, or attached to an earlier narrative in a different place
/// * [at]
@BuiltValue()
abstract class MediaReuseEvent
    implements Built<MediaReuseEvent, MediaReuseEventBuilder> {
  @BuiltValueField(wireName: r'event')
  MediaReuseEventEventEnum get event;
  // enum eventEnum {  media.reuse,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'findingId')
  String get findingId;

  /// ULID identifier
  @BuiltValueField(wireName: r'fingerprintId')
  String get fingerprintId;

  /// ULID identifier
  @BuiltValueField(wireName: r'narrativeId')
  String get narrativeId;

  /// ULID identifier
  @BuiltValueField(wireName: r'earlierNarrativeId')
  String? get earlierNarrativeId;

  @BuiltValueField(wireName: r'firstSeenAt')
  DateTime get firstSeenAt;

  /// First seen ≥ 7 days earlier, or attached to an earlier narrative in a different place
  @BuiltValueField(wireName: r'reason')
  MediaReuseEventReasonEnum get reason;
  // enum reasonEnum {  earlier,  elsewhere,  };

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  MediaReuseEvent._();

  factory MediaReuseEvent([void updates(MediaReuseEventBuilder b)]) =
      _$MediaReuseEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MediaReuseEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MediaReuseEvent> get serializer =>
      _$MediaReuseEventSerializer();
}

class _$MediaReuseEventSerializer
    implements PrimitiveSerializer<MediaReuseEvent> {
  @override
  final Iterable<Type> types = const [MediaReuseEvent, _$MediaReuseEvent];

  @override
  final String wireName = r'MediaReuseEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MediaReuseEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(MediaReuseEventEventEnum),
    );
    yield r'findingId';
    yield serializers.serialize(
      object.findingId,
      specifiedType: const FullType(String),
    );
    yield r'fingerprintId';
    yield serializers.serialize(
      object.fingerprintId,
      specifiedType: const FullType(String),
    );
    yield r'narrativeId';
    yield serializers.serialize(
      object.narrativeId,
      specifiedType: const FullType(String),
    );
    if (object.earlierNarrativeId != null) {
      yield r'earlierNarrativeId';
      yield serializers.serialize(
        object.earlierNarrativeId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'firstSeenAt';
    yield serializers.serialize(
      object.firstSeenAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(MediaReuseEventReasonEnum),
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
    MediaReuseEvent object, {
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
    required MediaReuseEventBuilder result,
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
                    specifiedType: const FullType(MediaReuseEventEventEnum),
                  )
                  as MediaReuseEventEventEnum;
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
        case r'fingerprintId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.fingerprintId = valueDes;
          break;
        case r'narrativeId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.narrativeId = valueDes;
          break;
        case r'earlierNarrativeId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.earlierNarrativeId = valueDes;
          break;
        case r'firstSeenAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.firstSeenAt = valueDes;
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(MediaReuseEventReasonEnum),
                  )
                  as MediaReuseEventReasonEnum;
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
  MediaReuseEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MediaReuseEventBuilder();
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

class MediaReuseEventEventEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'media.reuse')
  static const MediaReuseEventEventEnum mediaPeriodReuse =
      _$mediaReuseEventEventEnum_mediaPeriodReuse;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const MediaReuseEventEventEnum unknownDefaultOpenApi =
      _$mediaReuseEventEventEnum_unknownDefaultOpenApi;

  static Serializer<MediaReuseEventEventEnum> get serializer =>
      _$mediaReuseEventEventEnumSerializer;

  const MediaReuseEventEventEnum._(String name) : super(name);

  static BuiltSet<MediaReuseEventEventEnum> get values =>
      _$mediaReuseEventEventEnumValues;
  static MediaReuseEventEventEnum valueOf(String name) =>
      _$mediaReuseEventEventEnumValueOf(name);
}

/// First seen ≥ 7 days earlier, or attached to an earlier narrative in a different place
class MediaReuseEventReasonEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'earlier')
  static const MediaReuseEventReasonEnum earlier =
      _$mediaReuseEventReasonEnum_earlier;
  @BuiltValueEnumConst(wireName: r'elsewhere')
  static const MediaReuseEventReasonEnum elsewhere =
      _$mediaReuseEventReasonEnum_elsewhere;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const MediaReuseEventReasonEnum unknownDefaultOpenApi =
      _$mediaReuseEventReasonEnum_unknownDefaultOpenApi;

  static Serializer<MediaReuseEventReasonEnum> get serializer =>
      _$mediaReuseEventReasonEnumSerializer;

  const MediaReuseEventReasonEnum._(String name) : super(name);

  static BuiltSet<MediaReuseEventReasonEnum> get values =>
      _$mediaReuseEventReasonEnumValues;
  static MediaReuseEventReasonEnum valueOf(String name) =>
      _$mediaReuseEventReasonEnumValueOf(name);
}
