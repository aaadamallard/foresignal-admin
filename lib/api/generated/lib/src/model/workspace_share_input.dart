//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workspace_share_input.g.dart';

/// Options for a read-only share link to a workspace context
///
/// Properties:
/// * [expiresAt]
/// * [maxUses]
@BuiltValue()
abstract class WorkspaceShareInput
    implements Built<WorkspaceShareInput, WorkspaceShareInputBuilder> {
  @BuiltValueField(wireName: r'expiresAt')
  DateTime? get expiresAt;

  @BuiltValueField(wireName: r'maxUses')
  int? get maxUses;

  WorkspaceShareInput._();

  factory WorkspaceShareInput([void updates(WorkspaceShareInputBuilder b)]) =
      _$WorkspaceShareInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkspaceShareInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkspaceShareInput> get serializer =>
      _$WorkspaceShareInputSerializer();
}

class _$WorkspaceShareInputSerializer
    implements PrimitiveSerializer<WorkspaceShareInput> {
  @override
  final Iterable<Type> types = const [
    WorkspaceShareInput,
    _$WorkspaceShareInput
  ];

  @override
  final String wireName = r'WorkspaceShareInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkspaceShareInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.expiresAt != null) {
      yield r'expiresAt';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.maxUses != null) {
      yield r'maxUses';
      yield serializers.serialize(
        object.maxUses,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WorkspaceShareInput object, {
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
    required WorkspaceShareInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'expiresAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.expiresAt = valueDes;
          break;
        case r'maxUses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxUses = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WorkspaceShareInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkspaceShareInputBuilder();
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
