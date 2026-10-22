//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'context_link.g.dart';

/// Deep-link payload (Client-Contract §6): `{v, ws, ctx}` as base64url JSON, ≤ 2 KB
///
/// Properties:
/// * [version]
/// * [workspaceId] - ULID identifier
/// * [payload] - base64url JSON `{\"v\":1,\"ws\":…,\"ctx\":{…}}`
/// * [fragment]
/// * [bytes]
@BuiltValue()
abstract class ContextLink implements Built<ContextLink, ContextLinkBuilder> {
  @BuiltValueField(wireName: r'version')
  ContextLinkVersionEnum get version;
  // enum versionEnum {  1,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'workspaceId')
  String? get workspaceId;

  /// base64url JSON `{\"v\":1,\"ws\":…,\"ctx\":{…}}`
  @BuiltValueField(wireName: r'payload')
  String get payload;

  @BuiltValueField(wireName: r'fragment')
  String get fragment;

  @BuiltValueField(wireName: r'bytes')
  int get bytes;

  ContextLink._();

  factory ContextLink([void updates(ContextLinkBuilder b)]) = _$ContextLink;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ContextLinkBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ContextLink> get serializer => _$ContextLinkSerializer();
}

class _$ContextLinkSerializer implements PrimitiveSerializer<ContextLink> {
  @override
  final Iterable<Type> types = const [ContextLink, _$ContextLink];

  @override
  final String wireName = r'ContextLink';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ContextLink object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(ContextLinkVersionEnum),
    );
    if (object.workspaceId != null) {
      yield r'workspaceId';
      yield serializers.serialize(
        object.workspaceId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'payload';
    yield serializers.serialize(
      object.payload,
      specifiedType: const FullType(String),
    );
    yield r'fragment';
    yield serializers.serialize(
      object.fragment,
      specifiedType: const FullType(String),
    );
    yield r'bytes';
    yield serializers.serialize(
      object.bytes,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ContextLink object, {
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
    required ContextLinkBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ContextLinkVersionEnum),
          ) as ContextLinkVersionEnum;
          result.version = valueDes;
          break;
        case r'workspaceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.workspaceId = valueDes;
          break;
        case r'payload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.payload = valueDes;
          break;
        case r'fragment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fragment = valueDes;
          break;
        case r'bytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.bytes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ContextLink deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ContextLinkBuilder();
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

class ContextLinkVersionEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 1)
  static const ContextLinkVersionEnum number1 =
      _$contextLinkVersionEnum_number1;

  static Serializer<ContextLinkVersionEnum> get serializer =>
      _$contextLinkVersionEnumSerializer;

  const ContextLinkVersionEnum._(String name) : super(name);

  static BuiltSet<ContextLinkVersionEnum> get values =>
      _$contextLinkVersionEnumValues;
  static ContextLinkVersionEnum valueOf(String name) =>
      _$contextLinkVersionEnumValueOf(name);
}
