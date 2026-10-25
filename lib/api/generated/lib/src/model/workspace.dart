//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/workspace_context.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workspace.g.dart';

/// A shared investigation focus: versioned context plus opaque client layout
///
/// Properties:
/// * [id] - ULID identifier
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [name]
/// * [owner] - Principal id
/// * [members] - Principal id → role
/// * [callerRole]
/// * [context]
/// * [contextVersion]
/// * [layout] - Opaque client JSON (≤ 64 KB); never interpreted by Foresignal
/// * [savedViewIds]
/// * [investigationId]
/// * [private]
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class Workspace implements Built<Workspace, WorkspaceBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String? get ref;

  @BuiltValueField(wireName: r'name')
  String get name;

  /// Principal id
  @BuiltValueField(wireName: r'owner')
  String get owner;

  /// Principal id → role
  @BuiltValueField(wireName: r'members')
  BuiltMap<String, WorkspaceMembersEnum> get members;
  // enum membersEnum {  viewer,  editor,  };

  @BuiltValueField(wireName: r'callerRole')
  WorkspaceCallerRoleEnum? get callerRole;
  // enum callerRoleEnum {  owner,  editor,  viewer,  };

  @BuiltValueField(wireName: r'context')
  WorkspaceContext get context;

  @BuiltValueField(wireName: r'contextVersion')
  int get contextVersion;

  /// Opaque client JSON (≤ 64 KB); never interpreted by Foresignal
  @BuiltValueField(wireName: r'layout')
  BuiltMap<String, JsonObject?>? get layout;

  @BuiltValueField(wireName: r'savedViewIds')
  BuiltList<String>? get savedViewIds;

  @BuiltValueField(wireName: r'investigationId')
  String? get investigationId;

  @BuiltValueField(wireName: r'private')
  bool get private;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  Workspace._();

  factory Workspace([void updates(WorkspaceBuilder b)]) = _$Workspace;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkspaceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Workspace> get serializer => _$WorkspaceSerializer();
}

class _$WorkspaceSerializer implements PrimitiveSerializer<Workspace> {
  @override
  final Iterable<Type> types = const [Workspace, _$Workspace];

  @override
  final String wireName = r'Workspace';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Workspace object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.ref != null) {
      yield r'ref';
      yield serializers.serialize(
        object.ref,
        specifiedType: const FullType(String),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'owner';
    yield serializers.serialize(
      object.owner,
      specifiedType: const FullType(String),
    );
    yield r'members';
    yield serializers.serialize(
      object.members,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType(WorkspaceMembersEnum),
      ]),
    );
    if (object.callerRole != null) {
      yield r'callerRole';
      yield serializers.serialize(
        object.callerRole,
        specifiedType: const FullType(WorkspaceCallerRoleEnum),
      );
    }
    yield r'context';
    yield serializers.serialize(
      object.context,
      specifiedType: const FullType(WorkspaceContext),
    );
    yield r'contextVersion';
    yield serializers.serialize(
      object.contextVersion,
      specifiedType: const FullType(int),
    );
    if (object.layout != null) {
      yield r'layout';
      yield serializers.serialize(
        object.layout,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
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
    yield r'private';
    yield serializers.serialize(
      object.private,
      specifiedType: const FullType(bool),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    Workspace object, {
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
    required WorkspaceBuilder result,
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
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'owner':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.owner = valueDes;
          break;
        case r'members':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType(WorkspaceMembersEnum),
                    ]),
                  )
                  as BuiltMap<String, WorkspaceMembersEnum>;
          result.members.replace(valueDes);
          break;
        case r'callerRole':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      WorkspaceCallerRoleEnum,
                    ),
                  )
                  as WorkspaceCallerRoleEnum?;
          if (valueDes == null) continue;
          result.callerRole = valueDes;
          break;
        case r'context':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(WorkspaceContext),
                  )
                  as WorkspaceContext;
          result.context.replace(valueDes);
          break;
        case r'contextVersion':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.contextVersion = valueDes;
          break;
        case r'layout':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.layout.replace(valueDes);
          break;
        case r'savedViewIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.savedViewIds.replace(valueDes);
          break;
        case r'investigationId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.investigationId = valueDes;
          break;
        case r'private':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.private = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Workspace deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkspaceBuilder();
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

class WorkspaceMembersEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'viewer')
  static const WorkspaceMembersEnum viewer = _$workspaceMembersEnum_viewer;
  @BuiltValueEnumConst(wireName: r'editor')
  static const WorkspaceMembersEnum editor = _$workspaceMembersEnum_editor;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const WorkspaceMembersEnum unknownDefaultOpenApi =
      _$workspaceMembersEnum_unknownDefaultOpenApi;

  static Serializer<WorkspaceMembersEnum> get serializer =>
      _$workspaceMembersEnumSerializer;

  const WorkspaceMembersEnum._(String name) : super(name);

  static BuiltSet<WorkspaceMembersEnum> get values =>
      _$workspaceMembersEnumValues;
  static WorkspaceMembersEnum valueOf(String name) =>
      _$workspaceMembersEnumValueOf(name);
}

class WorkspaceCallerRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'owner')
  static const WorkspaceCallerRoleEnum owner = _$workspaceCallerRoleEnum_owner;
  @BuiltValueEnumConst(wireName: r'editor')
  static const WorkspaceCallerRoleEnum editor =
      _$workspaceCallerRoleEnum_editor;
  @BuiltValueEnumConst(wireName: r'viewer')
  static const WorkspaceCallerRoleEnum viewer =
      _$workspaceCallerRoleEnum_viewer;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const WorkspaceCallerRoleEnum unknownDefaultOpenApi =
      _$workspaceCallerRoleEnum_unknownDefaultOpenApi;

  static Serializer<WorkspaceCallerRoleEnum> get serializer =>
      _$workspaceCallerRoleEnumSerializer;

  const WorkspaceCallerRoleEnum._(String name) : super(name);

  static BuiltSet<WorkspaceCallerRoleEnum> get values =>
      _$workspaceCallerRoleEnumValues;
  static WorkspaceCallerRoleEnum valueOf(String name) =>
      _$workspaceCallerRoleEnumValueOf(name);
}
