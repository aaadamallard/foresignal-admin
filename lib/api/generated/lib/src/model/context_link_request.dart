//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/workspace_context.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'context_link_request.g.dart';

/// An ad-hoc context to validate and encode
///
/// Properties:
/// * [context]
/// * [workspaceId] - ULID identifier
@BuiltValue()
abstract class ContextLinkRequest
    implements Built<ContextLinkRequest, ContextLinkRequestBuilder> {
  @BuiltValueField(wireName: r'context')
  WorkspaceContext get context;

  /// ULID identifier
  @BuiltValueField(wireName: r'workspaceId')
  String? get workspaceId;

  ContextLinkRequest._();

  factory ContextLinkRequest([void updates(ContextLinkRequestBuilder b)]) =
      _$ContextLinkRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ContextLinkRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ContextLinkRequest> get serializer =>
      _$ContextLinkRequestSerializer();
}

class _$ContextLinkRequestSerializer
    implements PrimitiveSerializer<ContextLinkRequest> {
  @override
  final Iterable<Type> types = const [ContextLinkRequest, _$ContextLinkRequest];

  @override
  final String wireName = r'ContextLinkRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ContextLinkRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'context';
    yield serializers.serialize(
      object.context,
      specifiedType: const FullType(WorkspaceContext),
    );
    if (object.workspaceId != null) {
      yield r'workspaceId';
      yield serializers.serialize(
        object.workspaceId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ContextLinkRequest object, {
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
    required ContextLinkRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'context':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WorkspaceContext),
          ) as WorkspaceContext;
          result.context.replace(valueDes);
          break;
        case r'workspaceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.workspaceId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ContextLinkRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ContextLinkRequestBuilder();
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
