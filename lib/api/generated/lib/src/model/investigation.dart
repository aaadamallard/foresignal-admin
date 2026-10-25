//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/investigation_item.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/object_acl_entry.dart';
import 'package:foresignal_api/src/model/principal_summary.dart';
import 'package:foresignal_api/src/model/visibility.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'investigation.g.dart';

/// An operator case file (renamed from 'case'); 130 adds owners, access lists, TLP and links
///
/// Properties:
/// * [id] - ULID identifier
/// * [displayId]
/// * [title]
/// * [status]
/// * [summary] - Operator-authored markdown
/// * [tags]
/// * [itemCount]
/// * [items] - Present on getInvestigation
/// * [createdBy]
/// * [createdAt]
/// * [updatedAt]
/// * [owner]
/// * [visibility]
/// * [tlp] - Traffic Light Protocol 2.0 label
/// * [members] - Access-list grants (viewer, commenter, editor, owner)
/// * [workspaceId] - ULID identifier
/// * [hypothesisSetIds]
/// * [questionIds]
/// * [chronicleIds]
/// * [reportIds]
@BuiltValue()
abstract class Investigation
    implements Built<Investigation, InvestigationBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'displayId')
  String get displayId;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'status')
  InvestigationStatusEnum get status;
  // enum statusEnum {  open,  closed,  active,  archived,  };

  /// Operator-authored markdown
  @BuiltValueField(wireName: r'summary')
  String? get summary;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'itemCount')
  int? get itemCount;

  /// Present on getInvestigation
  @BuiltValueField(wireName: r'items')
  BuiltList<InvestigationItem>? get items;

  @BuiltValueField(wireName: r'createdBy')
  String get createdBy;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  @BuiltValueField(wireName: r'owner')
  PrincipalSummary? get owner;

  @BuiltValueField(wireName: r'visibility')
  Visibility? get visibility;
  // enum visibilityEnum {  private,  shared,  instance,  };

  /// Traffic Light Protocol 2.0 label
  @BuiltValueField(wireName: r'tlp')
  String? get tlp;

  /// Access-list grants (viewer, commenter, editor, owner)
  @BuiltValueField(wireName: r'members')
  BuiltList<ObjectAclEntry>? get members;

  /// ULID identifier
  @BuiltValueField(wireName: r'workspaceId')
  String? get workspaceId;

  @BuiltValueField(wireName: r'hypothesisSetIds')
  BuiltList<String>? get hypothesisSetIds;

  @BuiltValueField(wireName: r'questionIds')
  BuiltList<String>? get questionIds;

  @BuiltValueField(wireName: r'chronicleIds')
  BuiltList<String>? get chronicleIds;

  @BuiltValueField(wireName: r'reportIds')
  BuiltList<String>? get reportIds;

  Investigation._();

  factory Investigation([void updates(InvestigationBuilder b)]) =
      _$Investigation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvestigationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Investigation> get serializer =>
      _$InvestigationSerializer();
}

class _$InvestigationSerializer implements PrimitiveSerializer<Investigation> {
  @override
  final Iterable<Type> types = const [Investigation, _$Investigation];

  @override
  final String wireName = r'Investigation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Investigation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'displayId';
    yield serializers.serialize(
      object.displayId,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(InvestigationStatusEnum),
    );
    if (object.summary != null) {
      yield r'summary';
      yield serializers.serialize(
        object.summary,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.itemCount != null) {
      yield r'itemCount';
      yield serializers.serialize(
        object.itemCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType(BuiltList, [FullType(InvestigationItem)]),
      );
    }
    yield r'createdBy';
    yield serializers.serialize(
      object.createdBy,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.owner != null) {
      yield r'owner';
      yield serializers.serialize(
        object.owner,
        specifiedType: const FullType(PrincipalSummary),
      );
    }
    if (object.visibility != null) {
      yield r'visibility';
      yield serializers.serialize(
        object.visibility,
        specifiedType: const FullType(Visibility),
      );
    }
    if (object.tlp != null) {
      yield r'tlp';
      yield serializers.serialize(
        object.tlp,
        specifiedType: const FullType(String),
      );
    }
    if (object.members != null) {
      yield r'members';
      yield serializers.serialize(
        object.members,
        specifiedType: const FullType(BuiltList, [FullType(ObjectAclEntry)]),
      );
    }
    if (object.workspaceId != null) {
      yield r'workspaceId';
      yield serializers.serialize(
        object.workspaceId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.hypothesisSetIds != null) {
      yield r'hypothesisSetIds';
      yield serializers.serialize(
        object.hypothesisSetIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.questionIds != null) {
      yield r'questionIds';
      yield serializers.serialize(
        object.questionIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.chronicleIds != null) {
      yield r'chronicleIds';
      yield serializers.serialize(
        object.chronicleIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.reportIds != null) {
      yield r'reportIds';
      yield serializers.serialize(
        object.reportIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Investigation object, {
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
    required InvestigationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'displayId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.displayId = valueDes;
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
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(InvestigationStatusEnum),
                  )
                  as InvestigationStatusEnum;
          result.status = valueDes;
          break;
        case r'summary':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.summary = valueDes;
          break;
        case r'tags':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        case r'itemCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.itemCount = valueDes;
          break;
        case r'items':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(InvestigationItem),
                    ]),
                  )
                  as BuiltList<InvestigationItem>?;
          if (valueDes == null) continue;
          result.items.replace(valueDes);
          break;
        case r'createdBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.createdBy = valueDes;
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
        case r'updatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'owner':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(PrincipalSummary),
                  )
                  as PrincipalSummary?;
          if (valueDes == null) continue;
          result.owner.replace(valueDes);
          break;
        case r'visibility':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Visibility),
                  )
                  as Visibility?;
          if (valueDes == null) continue;
          result.visibility = valueDes;
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
        case r'members':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ObjectAclEntry),
                    ]),
                  )
                  as BuiltList<ObjectAclEntry>?;
          if (valueDes == null) continue;
          result.members.replace(valueDes);
          break;
        case r'workspaceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.workspaceId = valueDes;
          break;
        case r'hypothesisSetIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.hypothesisSetIds.replace(valueDes);
          break;
        case r'questionIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.questionIds.replace(valueDes);
          break;
        case r'chronicleIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.chronicleIds.replace(valueDes);
          break;
        case r'reportIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.reportIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Investigation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvestigationBuilder();
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

class InvestigationStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'open')
  static const InvestigationStatusEnum open = _$investigationStatusEnum_open;
  @BuiltValueEnumConst(wireName: r'closed')
  static const InvestigationStatusEnum closed =
      _$investigationStatusEnum_closed;
  @BuiltValueEnumConst(wireName: r'active')
  static const InvestigationStatusEnum active =
      _$investigationStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'archived')
  static const InvestigationStatusEnum archived =
      _$investigationStatusEnum_archived;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const InvestigationStatusEnum unknownDefaultOpenApi =
      _$investigationStatusEnum_unknownDefaultOpenApi;

  static Serializer<InvestigationStatusEnum> get serializer =>
      _$investigationStatusEnumSerializer;

  const InvestigationStatusEnum._(String name) : super(name);

  static BuiltSet<InvestigationStatusEnum> get values =>
      _$investigationStatusEnumValues;
  static InvestigationStatusEnum valueOf(String name) =>
      _$investigationStatusEnumValueOf(name);
}
