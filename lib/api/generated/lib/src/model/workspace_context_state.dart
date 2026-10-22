//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/workspace_context.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workspace_context_state.g.dart';

/// A workspace's context with its version (Client-Contract §5)
///
/// Properties:
/// * [workspaceId] - ULID identifier
/// * [contextVersion]
/// * [context]
@BuiltValue()
abstract class WorkspaceContextState
    implements Built<WorkspaceContextState, WorkspaceContextStateBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'workspaceId')
  String get workspaceId;

  @BuiltValueField(wireName: r'contextVersion')
  int get contextVersion;

  @BuiltValueField(wireName: r'context')
  WorkspaceContext get context;

  WorkspaceContextState._();

  factory WorkspaceContextState(
      [void updates(WorkspaceContextStateBuilder b)]) = _$WorkspaceContextState;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkspaceContextStateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkspaceContextState> get serializer =>
      _$WorkspaceContextStateSerializer();
}

class _$WorkspaceContextStateSerializer
    implements PrimitiveSerializer<WorkspaceContextState> {
  @override
  final Iterable<Type> types = const [
    WorkspaceContextState,
    _$WorkspaceContextState
  ];

  @override
  final String wireName = r'WorkspaceContextState';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkspaceContextState object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'workspaceId';
    yield serializers.serialize(
      object.workspaceId,
      specifiedType: const FullType(String),
    );
    yield r'contextVersion';
    yield serializers.serialize(
      object.contextVersion,
      specifiedType: const FullType(int),
    );
    yield r'context';
    yield serializers.serialize(
      object.context,
      specifiedType: const FullType(WorkspaceContext),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WorkspaceContextState object, {
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
    required WorkspaceContextStateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'workspaceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.workspaceId = valueDes;
          break;
        case r'contextVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.contextVersion = valueDes;
          break;
        case r'context':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WorkspaceContext),
          ) as WorkspaceContext;
          result.context.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WorkspaceContextState deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkspaceContextStateBuilder();
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
