//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/provenance_chain_entry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/package_manifest_authors_inner.dart';
import 'package:foresignal_api/src/model/package_manifest_sender.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'package_manifest.g.dart';

/// `manifest.json` of a signed intelligence package; `signature.jws` is a detached JWS over it with the instance key (109)
///
/// Properties:
/// * [packageId] - ULID identifier
/// * [type]
/// * [objectRef] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [sender]
/// * [authors]
/// * [tlp] - Traffic Light Protocol 2.0 label
/// * [createdAt]
/// * [recipients] - Named recipients, or `*` for GREEN/CLEAR
/// * [contentHashes] - Path under `content/` → sha256
/// * [message]
/// * [provenanceChain]
/// * [title] - The packaged object's title
@BuiltValue()
abstract class PackageManifest
    implements Built<PackageManifest, PackageManifestBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'packageId')
  String get packageId;

  @BuiltValueField(wireName: r'type')
  PackageManifestTypeEnum get type;
  // enum typeEnum {  report,  investigation,  chronicle-extract,  evidence,  };

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'objectRef')
  String get objectRef;

  @BuiltValueField(wireName: r'sender')
  PackageManifestSender get sender;

  @BuiltValueField(wireName: r'authors')
  BuiltList<PackageManifestAuthorsInner> get authors;

  /// Traffic Light Protocol 2.0 label
  @BuiltValueField(wireName: r'tlp')
  String get tlp;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  /// Named recipients, or `*` for GREEN/CLEAR
  @BuiltValueField(wireName: r'recipients')
  JsonObject? get recipients;

  /// Path under `content/` → sha256
  @BuiltValueField(wireName: r'contentHashes')
  BuiltMap<String, String> get contentHashes;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'provenanceChain')
  BuiltList<ProvenanceChainEntry>? get provenanceChain;

  /// The packaged object's title
  @BuiltValueField(wireName: r'title')
  String? get title;

  PackageManifest._();

  factory PackageManifest([void updates(PackageManifestBuilder b)]) =
      _$PackageManifest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PackageManifestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PackageManifest> get serializer =>
      _$PackageManifestSerializer();
}

class _$PackageManifestSerializer
    implements PrimitiveSerializer<PackageManifest> {
  @override
  final Iterable<Type> types = const [PackageManifest, _$PackageManifest];

  @override
  final String wireName = r'PackageManifest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PackageManifest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'packageId';
    yield serializers.serialize(
      object.packageId,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(PackageManifestTypeEnum),
    );
    yield r'objectRef';
    yield serializers.serialize(
      object.objectRef,
      specifiedType: const FullType(String),
    );
    yield r'sender';
    yield serializers.serialize(
      object.sender,
      specifiedType: const FullType(PackageManifestSender),
    );
    yield r'authors';
    yield serializers.serialize(
      object.authors,
      specifiedType:
          const FullType(BuiltList, [FullType(PackageManifestAuthorsInner)]),
    );
    yield r'tlp';
    yield serializers.serialize(
      object.tlp,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'recipients';
    yield object.recipients == null
        ? null
        : serializers.serialize(
            object.recipients,
            specifiedType: const FullType.nullable(JsonObject),
          );
    yield r'contentHashes';
    yield serializers.serialize(
      object.contentHashes,
      specifiedType:
          const FullType(BuiltMap, [FullType(String), FullType(String)]),
    );
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.provenanceChain != null) {
      yield r'provenanceChain';
      yield serializers.serialize(
        object.provenanceChain,
        specifiedType:
            const FullType(BuiltList, [FullType(ProvenanceChainEntry)]),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PackageManifest object, {
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
    required PackageManifestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'packageId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.packageId = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PackageManifestTypeEnum),
          ) as PackageManifestTypeEnum;
          result.type = valueDes;
          break;
        case r'objectRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.objectRef = valueDes;
          break;
        case r'sender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PackageManifestSender),
          ) as PackageManifestSender;
          result.sender.replace(valueDes);
          break;
        case r'authors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(PackageManifestAuthorsInner)]),
          ) as BuiltList<PackageManifestAuthorsInner>;
          result.authors.replace(valueDes);
          break;
        case r'tlp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tlp = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'recipients':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.recipients = valueDes;
          break;
        case r'contentHashes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.contentHashes.replace(valueDes);
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'provenanceChain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(ProvenanceChainEntry)]),
          ) as BuiltList<ProvenanceChainEntry>?;
          if (valueDes == null) continue;
          result.provenanceChain.replace(valueDes);
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PackageManifest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PackageManifestBuilder();
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

class PackageManifestTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'report')
  static const PackageManifestTypeEnum report =
      _$packageManifestTypeEnum_report;
  @BuiltValueEnumConst(wireName: r'investigation')
  static const PackageManifestTypeEnum investigation =
      _$packageManifestTypeEnum_investigation;
  @BuiltValueEnumConst(wireName: r'chronicle-extract')
  static const PackageManifestTypeEnum chronicleExtract =
      _$packageManifestTypeEnum_chronicleExtract;
  @BuiltValueEnumConst(wireName: r'evidence')
  static const PackageManifestTypeEnum evidence =
      _$packageManifestTypeEnum_evidence;

  static Serializer<PackageManifestTypeEnum> get serializer =>
      _$packageManifestTypeEnumSerializer;

  const PackageManifestTypeEnum._(String name) : super(name);

  static BuiltSet<PackageManifestTypeEnum> get values =>
      _$packageManifestTypeEnumValues;
  static PackageManifestTypeEnum valueOf(String name) =>
      _$packageManifestTypeEnumValueOf(name);
}
