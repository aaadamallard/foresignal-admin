//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'provenance_chain_entry.g.dart';

/// One hop of an analytic product's provenance chain, from origin to now (134)
///
/// Properties:
/// * [instanceId]
/// * [principal] - Principal handle on that instance
/// * [productRef] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [manifestId] - ULID identifier
/// * [role]
/// * [at]
@BuiltValue()
abstract class ProvenanceChainEntry
    implements Built<ProvenanceChainEntry, ProvenanceChainEntryBuilder> {
  @BuiltValueField(wireName: r'instanceId')
  String get instanceId;

  /// Principal handle on that instance
  @BuiltValueField(wireName: r'principal')
  String get principal;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'productRef')
  String get productRef;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String? get manifestId;

  @BuiltValueField(wireName: r'role')
  ProvenanceChainEntryRoleEnum? get role;
  // enum roleEnum {  origin,  author,  forwarder,  importer,  };

  @BuiltValueField(wireName: r'at')
  DateTime? get at;

  ProvenanceChainEntry._();

  factory ProvenanceChainEntry([void updates(ProvenanceChainEntryBuilder b)]) =
      _$ProvenanceChainEntry;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProvenanceChainEntryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProvenanceChainEntry> get serializer =>
      _$ProvenanceChainEntrySerializer();
}

class _$ProvenanceChainEntrySerializer
    implements PrimitiveSerializer<ProvenanceChainEntry> {
  @override
  final Iterable<Type> types = const [
    ProvenanceChainEntry,
    _$ProvenanceChainEntry
  ];

  @override
  final String wireName = r'ProvenanceChainEntry';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProvenanceChainEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'instanceId';
    yield serializers.serialize(
      object.instanceId,
      specifiedType: const FullType(String),
    );
    yield r'principal';
    yield serializers.serialize(
      object.principal,
      specifiedType: const FullType(String),
    );
    yield r'productRef';
    yield serializers.serialize(
      object.productRef,
      specifiedType: const FullType(String),
    );
    if (object.manifestId != null) {
      yield r'manifestId';
      yield serializers.serialize(
        object.manifestId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(ProvenanceChainEntryRoleEnum),
      );
    }
    if (object.at != null) {
      yield r'at';
      yield serializers.serialize(
        object.at,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProvenanceChainEntry object, {
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
    required ProvenanceChainEntryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'instanceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.instanceId = valueDes;
          break;
        case r'principal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.principal = valueDes;
          break;
        case r'productRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.productRef = valueDes;
          break;
        case r'manifestId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.manifestId = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(ProvenanceChainEntryRoleEnum),
          ) as ProvenanceChainEntryRoleEnum?;
          if (valueDes == null) continue;
          result.role = valueDes;
          break;
        case r'at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
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
  ProvenanceChainEntry deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProvenanceChainEntryBuilder();
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

class ProvenanceChainEntryRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'origin')
  static const ProvenanceChainEntryRoleEnum origin =
      _$provenanceChainEntryRoleEnum_origin;
  @BuiltValueEnumConst(wireName: r'author')
  static const ProvenanceChainEntryRoleEnum author =
      _$provenanceChainEntryRoleEnum_author;
  @BuiltValueEnumConst(wireName: r'forwarder')
  static const ProvenanceChainEntryRoleEnum forwarder =
      _$provenanceChainEntryRoleEnum_forwarder;
  @BuiltValueEnumConst(wireName: r'importer')
  static const ProvenanceChainEntryRoleEnum importer =
      _$provenanceChainEntryRoleEnum_importer;

  static Serializer<ProvenanceChainEntryRoleEnum> get serializer =>
      _$provenanceChainEntryRoleEnumSerializer;

  const ProvenanceChainEntryRoleEnum._(String name) : super(name);

  static BuiltSet<ProvenanceChainEntryRoleEnum> get values =>
      _$provenanceChainEntryRoleEnumValues;
  static ProvenanceChainEntryRoleEnum valueOf(String name) =>
      _$provenanceChainEntryRoleEnumValueOf(name);
}
