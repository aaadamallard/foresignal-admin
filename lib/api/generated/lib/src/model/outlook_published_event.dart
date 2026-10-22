//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/outlook_window.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'outlook_published_event.g.dart';

/// SSE payload for `outlook.published` (topic `analytics`)
///
/// Properties:
/// * [region]
/// * [family]
/// * [publishedAt]
/// * [windows]
/// * [recordRef] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
@BuiltValue()
abstract class OutlookPublishedEvent
    implements Built<OutlookPublishedEvent, OutlookPublishedEventBuilder> {
  @BuiltValueField(wireName: r'region')
  String get region;

  @BuiltValueField(wireName: r'family')
  String get family;

  @BuiltValueField(wireName: r'publishedAt')
  DateTime get publishedAt;

  @BuiltValueField(wireName: r'windows')
  BuiltList<OutlookWindow>? get windows;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'recordRef')
  String? get recordRef;

  OutlookPublishedEvent._();

  factory OutlookPublishedEvent([
    void updates(OutlookPublishedEventBuilder b),
  ]) = _$OutlookPublishedEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OutlookPublishedEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OutlookPublishedEvent> get serializer =>
      _$OutlookPublishedEventSerializer();
}

class _$OutlookPublishedEventSerializer
    implements PrimitiveSerializer<OutlookPublishedEvent> {
  @override
  final Iterable<Type> types = const [
    OutlookPublishedEvent,
    _$OutlookPublishedEvent,
  ];

  @override
  final String wireName = r'OutlookPublishedEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OutlookPublishedEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'region';
    yield serializers.serialize(
      object.region,
      specifiedType: const FullType(String),
    );
    yield r'family';
    yield serializers.serialize(
      object.family,
      specifiedType: const FullType(String),
    );
    yield r'publishedAt';
    yield serializers.serialize(
      object.publishedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.windows != null) {
      yield r'windows';
      yield serializers.serialize(
        object.windows,
        specifiedType: const FullType(BuiltList, [FullType(OutlookWindow)]),
      );
    }
    if (object.recordRef != null) {
      yield r'recordRef';
      yield serializers.serialize(
        object.recordRef,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OutlookPublishedEvent object, {
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
    required OutlookPublishedEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'region':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.region = valueDes;
          break;
        case r'family':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.family = valueDes;
          break;
        case r'publishedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.publishedAt = valueDes;
          break;
        case r'windows':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(OutlookWindow),
                    ]),
                  )
                  as BuiltList<OutlookWindow>?;
          if (valueDes == null) continue;
          result.windows.replace(valueDes);
          break;
        case r'recordRef':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.recordRef = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OutlookPublishedEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OutlookPublishedEventBuilder();
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
