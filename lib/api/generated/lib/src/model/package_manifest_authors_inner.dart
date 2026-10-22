//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'package_manifest_authors_inner.g.dart';

/// Author or forwarder
///
/// Properties:
/// * [handle]
/// * [displayName]
/// * [instanceId]
/// * [role]
@BuiltValue()
abstract class PackageManifestAuthorsInner
    implements
        Built<PackageManifestAuthorsInner, PackageManifestAuthorsInnerBuilder> {
  @BuiltValueField(wireName: r'handle')
  String get handle;

  @BuiltValueField(wireName: r'displayName')
  String? get displayName;

  @BuiltValueField(wireName: r'instanceId')
  String get instanceId;

  @BuiltValueField(wireName: r'role')
  PackageManifestAuthorsInnerRoleEnum get role;
  // enum roleEnum {  author,  forwarder,  };

  PackageManifestAuthorsInner._();

  factory PackageManifestAuthorsInner(
          [void updates(PackageManifestAuthorsInnerBuilder b)]) =
      _$PackageManifestAuthorsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PackageManifestAuthorsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PackageManifestAuthorsInner> get serializer =>
      _$PackageManifestAuthorsInnerSerializer();
}

class _$PackageManifestAuthorsInnerSerializer
    implements PrimitiveSerializer<PackageManifestAuthorsInner> {
  @override
  final Iterable<Type> types = const [
    PackageManifestAuthorsInner,
    _$PackageManifestAuthorsInner
  ];

  @override
  final String wireName = r'PackageManifestAuthorsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PackageManifestAuthorsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'handle';
    yield serializers.serialize(
      object.handle,
      specifiedType: const FullType(String),
    );
    if (object.displayName != null) {
      yield r'displayName';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType(String),
      );
    }
    yield r'instanceId';
    yield serializers.serialize(
      object.instanceId,
      specifiedType: const FullType(String),
    );
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(PackageManifestAuthorsInnerRoleEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PackageManifestAuthorsInner object, {
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
    required PackageManifestAuthorsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'handle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.handle = valueDes;
          break;
        case r'displayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.displayName = valueDes;
          break;
        case r'instanceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.instanceId = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PackageManifestAuthorsInnerRoleEnum),
          ) as PackageManifestAuthorsInnerRoleEnum;
          result.role = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PackageManifestAuthorsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PackageManifestAuthorsInnerBuilder();
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

class PackageManifestAuthorsInnerRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'author')
  static const PackageManifestAuthorsInnerRoleEnum author =
      _$packageManifestAuthorsInnerRoleEnum_author;
  @BuiltValueEnumConst(wireName: r'forwarder')
  static const PackageManifestAuthorsInnerRoleEnum forwarder =
      _$packageManifestAuthorsInnerRoleEnum_forwarder;

  static Serializer<PackageManifestAuthorsInnerRoleEnum> get serializer =>
      _$packageManifestAuthorsInnerRoleEnumSerializer;

  const PackageManifestAuthorsInnerRoleEnum._(String name) : super(name);

  static BuiltSet<PackageManifestAuthorsInnerRoleEnum> get values =>
      _$packageManifestAuthorsInnerRoleEnumValues;
  static PackageManifestAuthorsInnerRoleEnum valueOf(String name) =>
      _$packageManifestAuthorsInnerRoleEnumValueOf(name);
}
