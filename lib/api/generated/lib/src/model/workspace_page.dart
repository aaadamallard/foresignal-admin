//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/workspace.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workspace_page.g.dart';

/// Page of the caller's own and member workspaces (layout omitted)
///
/// Properties:
/// * [items]
/// * [nextCursor]
@BuiltValue()
abstract class WorkspacePage
    implements Built<WorkspacePage, WorkspacePageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<Workspace> get items;

  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  WorkspacePage._();

  factory WorkspacePage([void updates(WorkspacePageBuilder b)]) =
      _$WorkspacePage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkspacePageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkspacePage> get serializer =>
      _$WorkspacePageSerializer();
}

class _$WorkspacePageSerializer implements PrimitiveSerializer<WorkspacePage> {
  @override
  final Iterable<Type> types = const [WorkspacePage, _$WorkspacePage];

  @override
  final String wireName = r'WorkspacePage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkspacePage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(Workspace)]),
    );
    if (object.nextCursor != null) {
      yield r'nextCursor';
      yield serializers.serialize(
        object.nextCursor,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WorkspacePage object, {
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
    required WorkspacePageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Workspace)]),
          ) as BuiltList<Workspace>;
          result.items.replace(valueDes);
          break;
        case r'nextCursor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.nextCursor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WorkspacePage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkspacePageBuilder();
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
