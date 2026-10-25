//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/object_envelope.dart';
import 'package:foresignal_api/src/model/severity.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/principal_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inbox_item.g.dart';

/// One item in the caller's personal inbox (mentions, shares, received reports, chronicle proposals, assessments, replies)
///
/// Properties:
/// * [id]
/// * [event] - Event type, e.g. `mention`, `share.received`, `report.received`, `package.received`, `chronicle.proposed`, `chronicle.cap_warning`, `chronicle.gap`, `chronicle.link.found`, `chronicle.access.requested`, `chronicle.access.granted`, `chronicle.access.declined`, `chronicle.discoverability_lowered`, `saved-search.matches`, `assessment.published`, `comment.reply`
/// * [category]
/// * [severity]
/// * [title]
/// * [body]
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [envelope]
/// * [actor]
/// * [tlp] - Traffic Light Protocol 2.0 label
/// * [createdAt]
/// * [read]
@BuiltValue()
abstract class InboxItem implements Built<InboxItem, InboxItemBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  /// Event type, e.g. `mention`, `share.received`, `report.received`, `package.received`, `chronicle.proposed`, `chronicle.cap_warning`, `chronicle.gap`, `chronicle.link.found`, `chronicle.access.requested`, `chronicle.access.granted`, `chronicle.access.declined`, `chronicle.discoverability_lowered`, `saved-search.matches`, `assessment.published`, `comment.reply`
  @BuiltValueField(wireName: r'event')
  String get event;

  @BuiltValueField(wireName: r'category')
  InboxItemCategoryEnum get category;
  // enum categoryEnum {  mention,  share,  report,  chronicle,  assessment,  comment-reply,  access-request,  saved-search,  system,  };

  @BuiltValueField(wireName: r'severity')
  Severity? get severity;
  // enum severityEnum {  info,  warning,  critical,  };

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'body')
  String? get body;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String? get ref;

  @BuiltValueField(wireName: r'envelope')
  ObjectEnvelope? get envelope;

  @BuiltValueField(wireName: r'actor')
  PrincipalSummary? get actor;

  /// Traffic Light Protocol 2.0 label
  @BuiltValueField(wireName: r'tlp')
  String? get tlp;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'read')
  bool get read;

  InboxItem._();

  factory InboxItem([void updates(InboxItemBuilder b)]) = _$InboxItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InboxItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InboxItem> get serializer => _$InboxItemSerializer();
}

class _$InboxItemSerializer implements PrimitiveSerializer<InboxItem> {
  @override
  final Iterable<Type> types = const [InboxItem, _$InboxItem];

  @override
  final String wireName = r'InboxItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InboxItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(object.id, specifiedType: const FullType(int));
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(String),
    );
    yield r'category';
    yield serializers.serialize(
      object.category,
      specifiedType: const FullType(InboxItemCategoryEnum),
    );
    if (object.severity != null) {
      yield r'severity';
      yield serializers.serialize(
        object.severity,
        specifiedType: const FullType(Severity),
      );
    }
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.body != null) {
      yield r'body';
      yield serializers.serialize(
        object.body,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.ref != null) {
      yield r'ref';
      yield serializers.serialize(
        object.ref,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.envelope != null) {
      yield r'envelope';
      yield serializers.serialize(
        object.envelope,
        specifiedType: const FullType.nullable(ObjectEnvelope),
      );
    }
    if (object.actor != null) {
      yield r'actor';
      yield serializers.serialize(
        object.actor,
        specifiedType: const FullType.nullable(PrincipalSummary),
      );
    }
    if (object.tlp != null) {
      yield r'tlp';
      yield serializers.serialize(
        object.tlp,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'read';
    yield serializers.serialize(
      object.read,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InboxItem object, {
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
    required InboxItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.id = valueDes;
          break;
        case r'event':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.event = valueDes;
          break;
        case r'category':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(InboxItemCategoryEnum),
                  )
                  as InboxItemCategoryEnum;
          result.category = valueDes;
          break;
        case r'severity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Severity),
                  )
                  as Severity?;
          if (valueDes == null) continue;
          result.severity = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.title = valueDes;
          break;
        case r'body':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.body = valueDes;
          break;
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
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
        case r'actor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(PrincipalSummary),
                  )
                  as PrincipalSummary?;
          if (valueDes == null) continue;
          result.actor.replace(valueDes);
          break;
        case r'tlp':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.tlp = valueDes;
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.createdAt = valueDes;
          break;
        case r'read':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.read = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InboxItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InboxItemBuilder();
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

class InboxItemCategoryEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'mention')
  static const InboxItemCategoryEnum mention = _$inboxItemCategoryEnum_mention;
  @BuiltValueEnumConst(wireName: r'share')
  static const InboxItemCategoryEnum share = _$inboxItemCategoryEnum_share;
  @BuiltValueEnumConst(wireName: r'report')
  static const InboxItemCategoryEnum report = _$inboxItemCategoryEnum_report;
  @BuiltValueEnumConst(wireName: r'chronicle')
  static const InboxItemCategoryEnum chronicle =
      _$inboxItemCategoryEnum_chronicle;
  @BuiltValueEnumConst(wireName: r'assessment')
  static const InboxItemCategoryEnum assessment =
      _$inboxItemCategoryEnum_assessment;
  @BuiltValueEnumConst(wireName: r'comment-reply')
  static const InboxItemCategoryEnum commentReply =
      _$inboxItemCategoryEnum_commentReply;
  @BuiltValueEnumConst(wireName: r'access-request')
  static const InboxItemCategoryEnum accessRequest =
      _$inboxItemCategoryEnum_accessRequest;
  @BuiltValueEnumConst(wireName: r'saved-search')
  static const InboxItemCategoryEnum savedSearch =
      _$inboxItemCategoryEnum_savedSearch;
  @BuiltValueEnumConst(wireName: r'system')
  static const InboxItemCategoryEnum system = _$inboxItemCategoryEnum_system;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const InboxItemCategoryEnum unknownDefaultOpenApi =
      _$inboxItemCategoryEnum_unknownDefaultOpenApi;

  static Serializer<InboxItemCategoryEnum> get serializer =>
      _$inboxItemCategoryEnumSerializer;

  const InboxItemCategoryEnum._(String name) : super(name);

  static BuiltSet<InboxItemCategoryEnum> get values =>
      _$inboxItemCategoryEnumValues;
  static InboxItemCategoryEnum valueOf(String name) =>
      _$inboxItemCategoryEnumValueOf(name);
}
