//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'investigation_patch.g.dart';

/// Changes to an investigation (editor); owner, visibility, TLP and grants change through PUT /v1/objects/{ref}/acl
///
/// Properties:
/// * [title]
/// * [status]
/// * [summary]
/// * [tags]
/// * [workspaceId] - Linked 129 workspace (130)
/// * [hypothesisSetIds] - Linked 125 hypothesis sets (130)
/// * [questionIds] - Linked 122 forecast questions (130)
/// * [chronicleIds] - Linked chronicles (131)
/// * [reportIds] - Linked reports (132)
@BuiltValue()
abstract class InvestigationPatch
    implements Built<InvestigationPatch, InvestigationPatchBuilder> {
  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'status')
  InvestigationPatchStatusEnum? get status;
  // enum statusEnum {  open,  active,  closed,  archived,  };

  @BuiltValueField(wireName: r'summary')
  String? get summary;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  /// Linked 129 workspace (130)
  @BuiltValueField(wireName: r'workspaceId')
  String? get workspaceId;

  /// Linked 125 hypothesis sets (130)
  @BuiltValueField(wireName: r'hypothesisSetIds')
  BuiltList<String>? get hypothesisSetIds;

  /// Linked 122 forecast questions (130)
  @BuiltValueField(wireName: r'questionIds')
  BuiltList<String>? get questionIds;

  /// Linked chronicles (131)
  @BuiltValueField(wireName: r'chronicleIds')
  BuiltList<String>? get chronicleIds;

  /// Linked reports (132)
  @BuiltValueField(wireName: r'reportIds')
  BuiltList<String>? get reportIds;

  InvestigationPatch._();

  factory InvestigationPatch([void updates(InvestigationPatchBuilder b)]) =
      _$InvestigationPatch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvestigationPatchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InvestigationPatch> get serializer =>
      _$InvestigationPatchSerializer();
}

class _$InvestigationPatchSerializer
    implements PrimitiveSerializer<InvestigationPatch> {
  @override
  final Iterable<Type> types = const [InvestigationPatch, _$InvestigationPatch];

  @override
  final String wireName = r'InvestigationPatch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InvestigationPatch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(InvestigationPatchStatusEnum),
      );
    }
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
    InvestigationPatch object, {
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
    required InvestigationPatchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      InvestigationPatchStatusEnum,
                    ),
                  )
                  as InvestigationPatchStatusEnum?;
          if (valueDes == null) continue;
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
  InvestigationPatch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvestigationPatchBuilder();
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

class InvestigationPatchStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'open')
  static const InvestigationPatchStatusEnum open =
      _$investigationPatchStatusEnum_open;
  @BuiltValueEnumConst(wireName: r'active')
  static const InvestigationPatchStatusEnum active =
      _$investigationPatchStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'closed')
  static const InvestigationPatchStatusEnum closed =
      _$investigationPatchStatusEnum_closed;
  @BuiltValueEnumConst(wireName: r'archived')
  static const InvestigationPatchStatusEnum archived =
      _$investigationPatchStatusEnum_archived;

  static Serializer<InvestigationPatchStatusEnum> get serializer =>
      _$investigationPatchStatusEnumSerializer;

  const InvestigationPatchStatusEnum._(String name) : super(name);

  static BuiltSet<InvestigationPatchStatusEnum> get values =>
      _$investigationPatchStatusEnumValues;
  static InvestigationPatchStatusEnum valueOf(String name) =>
      _$investigationPatchStatusEnumValueOf(name);
}
