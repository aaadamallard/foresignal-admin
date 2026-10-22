//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/presence_event_clients_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/presence_event_change.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'presence_event.g.dart';

/// SSE payload for `workspace.presence` (topic `workspace`): connected clients
///
/// Properties:
/// * [workspaceId] - ULID identifier
/// * [clients]
/// * [change]
/// * [at]
@BuiltValue()
abstract class PresenceEvent
    implements Built<PresenceEvent, PresenceEventBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'workspaceId')
  String get workspaceId;

  @BuiltValueField(wireName: r'clients')
  BuiltList<PresenceEventClientsInner> get clients;

  @BuiltValueField(wireName: r'change')
  PresenceEventChange? get change;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  PresenceEvent._();

  factory PresenceEvent([void updates(PresenceEventBuilder b)]) =
      _$PresenceEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PresenceEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PresenceEvent> get serializer =>
      _$PresenceEventSerializer();
}

class _$PresenceEventSerializer implements PrimitiveSerializer<PresenceEvent> {
  @override
  final Iterable<Type> types = const [PresenceEvent, _$PresenceEvent];

  @override
  final String wireName = r'PresenceEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PresenceEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'workspaceId';
    yield serializers.serialize(
      object.workspaceId,
      specifiedType: const FullType(String),
    );
    yield r'clients';
    yield serializers.serialize(
      object.clients,
      specifiedType: const FullType(BuiltList, [
        FullType(PresenceEventClientsInner),
      ]),
    );
    if (object.change != null) {
      yield r'change';
      yield serializers.serialize(
        object.change,
        specifiedType: const FullType.nullable(PresenceEventChange),
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
    PresenceEvent object, {
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
    required PresenceEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'workspaceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.workspaceId = valueDes;
          break;
        case r'clients':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(PresenceEventClientsInner),
                    ]),
                  )
                  as BuiltList<PresenceEventClientsInner>;
          result.clients.replace(valueDes);
          break;
        case r'change':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(PresenceEventChange),
                  )
                  as PresenceEventChange?;
          if (valueDes == null) continue;
          result.change.replace(valueDes);
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
  PresenceEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PresenceEventBuilder();
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
