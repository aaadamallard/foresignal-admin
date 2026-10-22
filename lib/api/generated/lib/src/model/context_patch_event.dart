//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'context_patch_event.g.dart';

/// SSE payload for `workspace.context` (topic `workspace`)
///
/// Properties:
/// * [workspaceId] - ULID identifier
/// * [version]
/// * [patch_] - JSON merge patch applied
/// * [originClientId]
/// * [principal]
/// * [at]
@BuiltValue()
abstract class ContextPatchEvent
    implements Built<ContextPatchEvent, ContextPatchEventBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'workspaceId')
  String get workspaceId;

  @BuiltValueField(wireName: r'version')
  int get version;

  /// JSON merge patch applied
  @BuiltValueField(wireName: r'patch')
  BuiltMap<String, JsonObject?> get patch_;

  @BuiltValueField(wireName: r'originClientId')
  String? get originClientId;

  @BuiltValueField(wireName: r'principal')
  String? get principal;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  ContextPatchEvent._();

  factory ContextPatchEvent([void updates(ContextPatchEventBuilder b)]) =
      _$ContextPatchEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ContextPatchEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ContextPatchEvent> get serializer =>
      _$ContextPatchEventSerializer();
}

class _$ContextPatchEventSerializer
    implements PrimitiveSerializer<ContextPatchEvent> {
  @override
  final Iterable<Type> types = const [ContextPatchEvent, _$ContextPatchEvent];

  @override
  final String wireName = r'ContextPatchEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ContextPatchEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'workspaceId';
    yield serializers.serialize(
      object.workspaceId,
      specifiedType: const FullType(String),
    );
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(int),
    );
    yield r'patch';
    yield serializers.serialize(
      object.patch_,
      specifiedType: const FullType(
          BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
    );
    if (object.originClientId != null) {
      yield r'originClientId';
      yield serializers.serialize(
        object.originClientId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.principal != null) {
      yield r'principal';
      yield serializers.serialize(
        object.principal,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ContextPatchEvent object, {
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
    required ContextPatchEventBuilder result,
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
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.version = valueDes;
          break;
        case r'patch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.patch_.replace(valueDes);
          break;
        case r'originClientId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.originClientId = valueDes;
          break;
        case r'principal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.principal = valueDes;
          break;
        case r'at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.at = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ContextPatchEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ContextPatchEventBuilder();
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
