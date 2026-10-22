//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/principal_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'comment_event.g.dart';

/// SSE `mention` and `comment.reply` on the `me` topic
///
/// Properties:
/// * [reason]
/// * [annotationId] - ULID identifier
/// * [parentId] - ULID identifier
/// * [targetRef] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [author]
/// * [excerpt]
/// * [at]
@BuiltValue()
abstract class CommentEvent
    implements Built<CommentEvent, CommentEventBuilder> {
  @BuiltValueField(wireName: r'reason')
  CommentEventReasonEnum get reason;
  // enum reasonEnum {  mention,  reply,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'annotationId')
  String get annotationId;

  /// ULID identifier
  @BuiltValueField(wireName: r'parentId')
  String? get parentId;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'targetRef')
  String get targetRef;

  @BuiltValueField(wireName: r'author')
  PrincipalSummary get author;

  @BuiltValueField(wireName: r'excerpt')
  String? get excerpt;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  CommentEvent._();

  factory CommentEvent([void updates(CommentEventBuilder b)]) = _$CommentEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CommentEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CommentEvent> get serializer => _$CommentEventSerializer();
}

class _$CommentEventSerializer implements PrimitiveSerializer<CommentEvent> {
  @override
  final Iterable<Type> types = const [CommentEvent, _$CommentEvent];

  @override
  final String wireName = r'CommentEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CommentEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(CommentEventReasonEnum),
    );
    yield r'annotationId';
    yield serializers.serialize(
      object.annotationId,
      specifiedType: const FullType(String),
    );
    if (object.parentId != null) {
      yield r'parentId';
      yield serializers.serialize(
        object.parentId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'targetRef';
    yield serializers.serialize(
      object.targetRef,
      specifiedType: const FullType(String),
    );
    yield r'author';
    yield serializers.serialize(
      object.author,
      specifiedType: const FullType(PrincipalSummary),
    );
    if (object.excerpt != null) {
      yield r'excerpt';
      yield serializers.serialize(
        object.excerpt,
        specifiedType: const FullType(String),
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
    CommentEvent object, {
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
    required CommentEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CommentEventReasonEnum),
          ) as CommentEventReasonEnum;
          result.reason = valueDes;
          break;
        case r'annotationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.annotationId = valueDes;
          break;
        case r'parentId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.parentId = valueDes;
          break;
        case r'targetRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.targetRef = valueDes;
          break;
        case r'author':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PrincipalSummary),
          ) as PrincipalSummary;
          result.author.replace(valueDes);
          break;
        case r'excerpt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.excerpt = valueDes;
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
  CommentEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CommentEventBuilder();
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

class CommentEventReasonEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'mention')
  static const CommentEventReasonEnum mention =
      _$commentEventReasonEnum_mention;
  @BuiltValueEnumConst(wireName: r'reply')
  static const CommentEventReasonEnum reply = _$commentEventReasonEnum_reply;

  static Serializer<CommentEventReasonEnum> get serializer =>
      _$commentEventReasonEnumSerializer;

  const CommentEventReasonEnum._(String name) : super(name);

  static BuiltSet<CommentEventReasonEnum> get values =>
      _$commentEventReasonEnumValues;
  static CommentEventReasonEnum valueOf(String name) =>
      _$commentEventReasonEnumValueOf(name);
}
