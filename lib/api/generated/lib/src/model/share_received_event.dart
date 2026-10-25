//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/object_envelope.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/principal_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'share_received_event.g.dart';

/// SSE `share.received` on the `me` topic: an object was shared with the caller
///
/// Properties:
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [envelope]
/// * [role]
/// * [sharedBy]
/// * [message]
/// * [at]
@BuiltValue()
abstract class ShareReceivedEvent
    implements Built<ShareReceivedEvent, ShareReceivedEventBuilder> {
  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String get ref;

  @BuiltValueField(wireName: r'envelope')
  ObjectEnvelope? get envelope;

  @BuiltValueField(wireName: r'role')
  ShareReceivedEventRoleEnum get role;
  // enum roleEnum {  viewer,  commenter,  editor,  owner,  };

  @BuiltValueField(wireName: r'sharedBy')
  PrincipalSummary get sharedBy;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  ShareReceivedEvent._();

  factory ShareReceivedEvent([void updates(ShareReceivedEventBuilder b)]) =
      _$ShareReceivedEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ShareReceivedEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ShareReceivedEvent> get serializer =>
      _$ShareReceivedEventSerializer();
}

class _$ShareReceivedEventSerializer
    implements PrimitiveSerializer<ShareReceivedEvent> {
  @override
  final Iterable<Type> types = const [ShareReceivedEvent, _$ShareReceivedEvent];

  @override
  final String wireName = r'ShareReceivedEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ShareReceivedEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    if (object.envelope != null) {
      yield r'envelope';
      yield serializers.serialize(
        object.envelope,
        specifiedType: const FullType(ObjectEnvelope),
      );
    }
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(ShareReceivedEventRoleEnum),
    );
    yield r'sharedBy';
    yield serializers.serialize(
      object.sharedBy,
      specifiedType: const FullType(PrincipalSummary),
    );
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
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
    ShareReceivedEvent object, {
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
    required ShareReceivedEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ref = valueDes;
          break;
        case r'envelope':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ObjectEnvelope),
                  )
                  as ObjectEnvelope?;
          if (valueDes == null) continue;
          result.envelope.replace(valueDes);
          break;
        case r'role':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ShareReceivedEventRoleEnum),
                  )
                  as ShareReceivedEventRoleEnum;
          result.role = valueDes;
          break;
        case r'sharedBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PrincipalSummary),
                  )
                  as PrincipalSummary;
          result.sharedBy.replace(valueDes);
          break;
        case r'message':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
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
  ShareReceivedEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ShareReceivedEventBuilder();
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

class ShareReceivedEventRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'viewer')
  static const ShareReceivedEventRoleEnum viewer =
      _$shareReceivedEventRoleEnum_viewer;
  @BuiltValueEnumConst(wireName: r'commenter')
  static const ShareReceivedEventRoleEnum commenter =
      _$shareReceivedEventRoleEnum_commenter;
  @BuiltValueEnumConst(wireName: r'editor')
  static const ShareReceivedEventRoleEnum editor =
      _$shareReceivedEventRoleEnum_editor;
  @BuiltValueEnumConst(wireName: r'owner')
  static const ShareReceivedEventRoleEnum owner =
      _$shareReceivedEventRoleEnum_owner;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ShareReceivedEventRoleEnum unknownDefaultOpenApi =
      _$shareReceivedEventRoleEnum_unknownDefaultOpenApi;

  static Serializer<ShareReceivedEventRoleEnum> get serializer =>
      _$shareReceivedEventRoleEnumSerializer;

  const ShareReceivedEventRoleEnum._(String name) : super(name);

  static BuiltSet<ShareReceivedEventRoleEnum> get values =>
      _$shareReceivedEventRoleEnumValues;
  static ShareReceivedEventRoleEnum valueOf(String name) =>
      _$shareReceivedEventRoleEnumValueOf(name);
}
