//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workspace_patch.g.dart';

/// JSON merge patch for workspace metadata (context and layout have their own operations)
///
/// Properties:
/// * [name]
/// * [members] - Principal id → role
/// * [savedViewIds]
/// * [investigationId]
/// * [private]
@BuiltValue()
abstract class WorkspacePatch
    implements Built<WorkspacePatch, WorkspacePatchBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Principal id → role
  @BuiltValueField(wireName: r'members')
  BuiltMap<String, WorkspacePatchMembersEnum>? get members;
  // enum membersEnum {  viewer,  editor,  };

  @BuiltValueField(wireName: r'savedViewIds')
  BuiltList<String>? get savedViewIds;

  @BuiltValueField(wireName: r'investigationId')
  String? get investigationId;

  @BuiltValueField(wireName: r'private')
  bool? get private;

  WorkspacePatch._();

  factory WorkspacePatch([void updates(WorkspacePatchBuilder b)]) =
      _$WorkspacePatch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkspacePatchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkspacePatch> get serializer =>
      _$WorkspacePatchSerializer();
}

class _$WorkspacePatchSerializer
    implements PrimitiveSerializer<WorkspacePatch> {
  @override
  final Iterable<Type> types = const [WorkspacePatch, _$WorkspacePatch];

  @override
  final String wireName = r'WorkspacePatch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkspacePatch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.members != null) {
      yield r'members';
      yield serializers.serialize(
        object.members,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType(WorkspacePatchMembersEnum)]),
      );
    }
    if (object.savedViewIds != null) {
      yield r'savedViewIds';
      yield serializers.serialize(
        object.savedViewIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.investigationId != null) {
      yield r'investigationId';
      yield serializers.serialize(
        object.investigationId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.private != null) {
      yield r'private';
      yield serializers.serialize(
        object.private,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WorkspacePatch object, {
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
    required WorkspacePatchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'members':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap,
                [FullType(String), FullType(WorkspacePatchMembersEnum)]),
          ) as BuiltMap<String, WorkspacePatchMembersEnum>?;
          if (valueDes == null) continue;
          result.members.replace(valueDes);
          break;
        case r'savedViewIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.savedViewIds.replace(valueDes);
          break;
        case r'investigationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.investigationId = valueDes;
          break;
        case r'private':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.private = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WorkspacePatch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkspacePatchBuilder();
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

class WorkspacePatchMembersEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'viewer')
  static const WorkspacePatchMembersEnum viewer =
      _$workspacePatchMembersEnum_viewer;
  @BuiltValueEnumConst(wireName: r'editor')
  static const WorkspacePatchMembersEnum editor =
      _$workspacePatchMembersEnum_editor;

  static Serializer<WorkspacePatchMembersEnum> get serializer =>
      _$workspacePatchMembersEnumSerializer;

  const WorkspacePatchMembersEnum._(String name) : super(name);

  static BuiltSet<WorkspacePatchMembersEnum> get values =>
      _$workspacePatchMembersEnumValues;
  static WorkspacePatchMembersEnum valueOf(String name) =>
      _$workspacePatchMembersEnumValueOf(name);
}
