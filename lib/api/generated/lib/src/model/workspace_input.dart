//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/workspace_context.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workspace_input.g.dart';

/// A new workspace; the caller becomes owner
///
/// Properties:
/// * [name]
/// * [members] - Principal id → role
/// * [context]
/// * [layout]
/// * [savedViewIds]
/// * [investigationId]
/// * [private]
@BuiltValue()
abstract class WorkspaceInput
    implements Built<WorkspaceInput, WorkspaceInputBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Principal id → role
  @BuiltValueField(wireName: r'members')
  BuiltMap<String, WorkspaceInputMembersEnum>? get members;
  // enum membersEnum {  viewer,  editor,  };

  @BuiltValueField(wireName: r'context')
  WorkspaceContext? get context;

  @BuiltValueField(wireName: r'layout')
  BuiltMap<String, JsonObject?>? get layout;

  @BuiltValueField(wireName: r'savedViewIds')
  BuiltList<String>? get savedViewIds;

  @BuiltValueField(wireName: r'investigationId')
  String? get investigationId;

  @BuiltValueField(wireName: r'private')
  bool? get private;

  WorkspaceInput._();

  factory WorkspaceInput([void updates(WorkspaceInputBuilder b)]) =
      _$WorkspaceInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkspaceInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkspaceInput> get serializer =>
      _$WorkspaceInputSerializer();
}

class _$WorkspaceInputSerializer
    implements PrimitiveSerializer<WorkspaceInput> {
  @override
  final Iterable<Type> types = const [WorkspaceInput, _$WorkspaceInput];

  @override
  final String wireName = r'WorkspaceInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkspaceInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.members != null) {
      yield r'members';
      yield serializers.serialize(
        object.members,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(WorkspaceInputMembersEnum),
        ]),
      );
    }
    if (object.context != null) {
      yield r'context';
      yield serializers.serialize(
        object.context,
        specifiedType: const FullType(WorkspaceContext),
      );
    }
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
    WorkspaceInput object, {
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
    required WorkspaceInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'members':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(WorkspaceInputMembersEnum),
                    ]),
                  )
                  as BuiltMap<String, WorkspaceInputMembersEnum>?;
          if (valueDes == null) continue;
          result.members.replace(valueDes);
          break;
        case r'context':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(WorkspaceContext),
                  )
                  as WorkspaceContext?;
          if (valueDes == null) continue;
          result.context.replace(valueDes);
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
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
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
  WorkspaceInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkspaceInputBuilder();
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

class WorkspaceInputMembersEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'viewer')
  static const WorkspaceInputMembersEnum viewer =
      _$workspaceInputMembersEnum_viewer;
  @BuiltValueEnumConst(wireName: r'editor')
  static const WorkspaceInputMembersEnum editor =
      _$workspaceInputMembersEnum_editor;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const WorkspaceInputMembersEnum unknownDefaultOpenApi =
      _$workspaceInputMembersEnum_unknownDefaultOpenApi;

  static Serializer<WorkspaceInputMembersEnum> get serializer =>
      _$workspaceInputMembersEnumSerializer;

  const WorkspaceInputMembersEnum._(String name) : super(name);

  static BuiltSet<WorkspaceInputMembersEnum> get values =>
      _$workspaceInputMembersEnumValues;
  static WorkspaceInputMembersEnum valueOf(String name) =>
      _$workspaceInputMembersEnumValueOf(name);
}
