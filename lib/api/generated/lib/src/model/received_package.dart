//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/provenance_chain_entry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/package_manifest_authors_inner.dart';
import 'package:foresignal_api/src/model/received_package_contents_inner.dart';
import 'package:foresignal_api/src/model/received_package_sender.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'received_package.g.dart';

/// A package imported read-only from another instance, with sender, authors, signature status and TLP
///
/// Properties:
/// * [id] - ULID identifier
/// * [packageId] - ULID identifier
/// * [type]
/// * [objectRef] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [title]
/// * [sender]
/// * [authors]
/// * [tlp] - Traffic Light Protocol 2.0 label
/// * [signatureStatus]
/// * [keySource]
/// * [hashesVerified]
/// * [receivedVia]
/// * [receivedAt]
/// * [recipients] - Local principal handles
/// * [message]
/// * [acknowledgedAt]
/// * [provenanceChain]
/// * [contents]
@BuiltValue()
abstract class ReceivedPackage
    implements Built<ReceivedPackage, ReceivedPackageBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// ULID identifier
  @BuiltValueField(wireName: r'packageId')
  String get packageId;

  @BuiltValueField(wireName: r'type')
  ReceivedPackageTypeEnum get type;
  // enum typeEnum {  report,  investigation,  chronicle-extract,  evidence,  };

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'objectRef')
  String get objectRef;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'sender')
  ReceivedPackageSender get sender;

  @BuiltValueField(wireName: r'authors')
  BuiltList<PackageManifestAuthorsInner> get authors;

  /// Traffic Light Protocol 2.0 label
  @BuiltValueField(wireName: r'tlp')
  String get tlp;

  @BuiltValueField(wireName: r'signatureStatus')
  ReceivedPackageSignatureStatusEnum get signatureStatus;
  // enum signatureStatusEnum {  valid,  invalid,  unknown-key,  };

  @BuiltValueField(wireName: r'keySource')
  ReceivedPackageKeySourceEnum? get keySource;
  // enum keySourceEnum {  peer-jwks,  pinned,  };

  @BuiltValueField(wireName: r'hashesVerified')
  bool get hashesVerified;

  @BuiltValueField(wireName: r'receivedVia')
  ReceivedPackageReceivedViaEnum get receivedVia;
  // enum receivedViaEnum {  peer,  import,  };

  @BuiltValueField(wireName: r'receivedAt')
  DateTime get receivedAt;

  /// Local principal handles
  @BuiltValueField(wireName: r'recipients')
  BuiltList<String>? get recipients;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'acknowledgedAt')
  DateTime? get acknowledgedAt;

  @BuiltValueField(wireName: r'provenanceChain')
  BuiltList<ProvenanceChainEntry>? get provenanceChain;

  @BuiltValueField(wireName: r'contents')
  BuiltList<ReceivedPackageContentsInner>? get contents;

  ReceivedPackage._();

  factory ReceivedPackage([void updates(ReceivedPackageBuilder b)]) =
      _$ReceivedPackage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReceivedPackageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReceivedPackage> get serializer =>
      _$ReceivedPackageSerializer();
}

class _$ReceivedPackageSerializer
    implements PrimitiveSerializer<ReceivedPackage> {
  @override
  final Iterable<Type> types = const [ReceivedPackage, _$ReceivedPackage];

  @override
  final String wireName = r'ReceivedPackage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReceivedPackage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'packageId';
    yield serializers.serialize(
      object.packageId,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ReceivedPackageTypeEnum),
    );
    yield r'objectRef';
    yield serializers.serialize(
      object.objectRef,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'sender';
    yield serializers.serialize(
      object.sender,
      specifiedType: const FullType(ReceivedPackageSender),
    );
    yield r'authors';
    yield serializers.serialize(
      object.authors,
      specifiedType: const FullType(BuiltList, [
        FullType(PackageManifestAuthorsInner),
      ]),
    );
    yield r'tlp';
    yield serializers.serialize(
      object.tlp,
      specifiedType: const FullType(String),
    );
    yield r'signatureStatus';
    yield serializers.serialize(
      object.signatureStatus,
      specifiedType: const FullType(ReceivedPackageSignatureStatusEnum),
    );
    if (object.keySource != null) {
      yield r'keySource';
      yield serializers.serialize(
        object.keySource,
        specifiedType: const FullType(ReceivedPackageKeySourceEnum),
      );
    }
    yield r'hashesVerified';
    yield serializers.serialize(
      object.hashesVerified,
      specifiedType: const FullType(bool),
    );
    yield r'receivedVia';
    yield serializers.serialize(
      object.receivedVia,
      specifiedType: const FullType(ReceivedPackageReceivedViaEnum),
    );
    yield r'receivedAt';
    yield serializers.serialize(
      object.receivedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.recipients != null) {
      yield r'recipients';
      yield serializers.serialize(
        object.recipients,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.acknowledgedAt != null) {
      yield r'acknowledgedAt';
      yield serializers.serialize(
        object.acknowledgedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.provenanceChain != null) {
      yield r'provenanceChain';
      yield serializers.serialize(
        object.provenanceChain,
        specifiedType: const FullType(BuiltList, [
          FullType(ProvenanceChainEntry),
        ]),
      );
    }
    if (object.contents != null) {
      yield r'contents';
      yield serializers.serialize(
        object.contents,
        specifiedType: const FullType(BuiltList, [
          FullType(ReceivedPackageContentsInner),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReceivedPackage object, {
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
    required ReceivedPackageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'packageId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.packageId = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ReceivedPackageTypeEnum),
                  )
                  as ReceivedPackageTypeEnum;
          result.type = valueDes;
          break;
        case r'objectRef':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.objectRef = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.title = valueDes;
          break;
        case r'sender':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ReceivedPackageSender),
                  )
                  as ReceivedPackageSender;
          result.sender.replace(valueDes);
          break;
        case r'authors':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(PackageManifestAuthorsInner),
                    ]),
                  )
                  as BuiltList<PackageManifestAuthorsInner>;
          result.authors.replace(valueDes);
          break;
        case r'tlp':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.tlp = valueDes;
          break;
        case r'signatureStatus':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      ReceivedPackageSignatureStatusEnum,
                    ),
                  )
                  as ReceivedPackageSignatureStatusEnum;
          result.signatureStatus = valueDes;
          break;
        case r'keySource':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ReceivedPackageKeySourceEnum,
                    ),
                  )
                  as ReceivedPackageKeySourceEnum?;
          if (valueDes == null) continue;
          result.keySource = valueDes;
          break;
        case r'hashesVerified':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.hashesVerified = valueDes;
          break;
        case r'receivedVia':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      ReceivedPackageReceivedViaEnum,
                    ),
                  )
                  as ReceivedPackageReceivedViaEnum;
          result.receivedVia = valueDes;
          break;
        case r'receivedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.receivedAt = valueDes;
          break;
        case r'recipients':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.recipients.replace(valueDes);
          break;
        case r'message':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'acknowledgedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.acknowledgedAt = valueDes;
          break;
        case r'provenanceChain':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ProvenanceChainEntry),
                    ]),
                  )
                  as BuiltList<ProvenanceChainEntry>?;
          if (valueDes == null) continue;
          result.provenanceChain.replace(valueDes);
          break;
        case r'contents':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ReceivedPackageContentsInner),
                    ]),
                  )
                  as BuiltList<ReceivedPackageContentsInner>?;
          if (valueDes == null) continue;
          result.contents.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReceivedPackage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReceivedPackageBuilder();
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

class ReceivedPackageTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'report')
  static const ReceivedPackageTypeEnum report =
      _$receivedPackageTypeEnum_report;
  @BuiltValueEnumConst(wireName: r'investigation')
  static const ReceivedPackageTypeEnum investigation =
      _$receivedPackageTypeEnum_investigation;
  @BuiltValueEnumConst(wireName: r'chronicle-extract')
  static const ReceivedPackageTypeEnum chronicleExtract =
      _$receivedPackageTypeEnum_chronicleExtract;
  @BuiltValueEnumConst(wireName: r'evidence')
  static const ReceivedPackageTypeEnum evidence =
      _$receivedPackageTypeEnum_evidence;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ReceivedPackageTypeEnum unknownDefaultOpenApi =
      _$receivedPackageTypeEnum_unknownDefaultOpenApi;

  static Serializer<ReceivedPackageTypeEnum> get serializer =>
      _$receivedPackageTypeEnumSerializer;

  const ReceivedPackageTypeEnum._(String name) : super(name);

  static BuiltSet<ReceivedPackageTypeEnum> get values =>
      _$receivedPackageTypeEnumValues;
  static ReceivedPackageTypeEnum valueOf(String name) =>
      _$receivedPackageTypeEnumValueOf(name);
}

class ReceivedPackageSignatureStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'valid')
  static const ReceivedPackageSignatureStatusEnum valid =
      _$receivedPackageSignatureStatusEnum_valid;
  @BuiltValueEnumConst(wireName: r'invalid')
  static const ReceivedPackageSignatureStatusEnum invalid =
      _$receivedPackageSignatureStatusEnum_invalid;
  @BuiltValueEnumConst(wireName: r'unknown-key')
  static const ReceivedPackageSignatureStatusEnum unknownKey =
      _$receivedPackageSignatureStatusEnum_unknownKey;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ReceivedPackageSignatureStatusEnum unknownDefaultOpenApi =
      _$receivedPackageSignatureStatusEnum_unknownDefaultOpenApi;

  static Serializer<ReceivedPackageSignatureStatusEnum> get serializer =>
      _$receivedPackageSignatureStatusEnumSerializer;

  const ReceivedPackageSignatureStatusEnum._(String name) : super(name);

  static BuiltSet<ReceivedPackageSignatureStatusEnum> get values =>
      _$receivedPackageSignatureStatusEnumValues;
  static ReceivedPackageSignatureStatusEnum valueOf(String name) =>
      _$receivedPackageSignatureStatusEnumValueOf(name);
}

class ReceivedPackageKeySourceEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'peer-jwks')
  static const ReceivedPackageKeySourceEnum peerJwks =
      _$receivedPackageKeySourceEnum_peerJwks;
  @BuiltValueEnumConst(wireName: r'pinned')
  static const ReceivedPackageKeySourceEnum pinned =
      _$receivedPackageKeySourceEnum_pinned;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ReceivedPackageKeySourceEnum unknownDefaultOpenApi =
      _$receivedPackageKeySourceEnum_unknownDefaultOpenApi;

  static Serializer<ReceivedPackageKeySourceEnum> get serializer =>
      _$receivedPackageKeySourceEnumSerializer;

  const ReceivedPackageKeySourceEnum._(String name) : super(name);

  static BuiltSet<ReceivedPackageKeySourceEnum> get values =>
      _$receivedPackageKeySourceEnumValues;
  static ReceivedPackageKeySourceEnum valueOf(String name) =>
      _$receivedPackageKeySourceEnumValueOf(name);
}

class ReceivedPackageReceivedViaEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'peer')
  static const ReceivedPackageReceivedViaEnum peer =
      _$receivedPackageReceivedViaEnum_peer;
  @BuiltValueEnumConst(wireName: r'import')
  static const ReceivedPackageReceivedViaEnum import_ =
      _$receivedPackageReceivedViaEnum_import_;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ReceivedPackageReceivedViaEnum unknownDefaultOpenApi =
      _$receivedPackageReceivedViaEnum_unknownDefaultOpenApi;

  static Serializer<ReceivedPackageReceivedViaEnum> get serializer =>
      _$receivedPackageReceivedViaEnumSerializer;

  const ReceivedPackageReceivedViaEnum._(String name) : super(name);

  static BuiltSet<ReceivedPackageReceivedViaEnum> get values =>
      _$receivedPackageReceivedViaEnumValues;
  static ReceivedPackageReceivedViaEnum valueOf(String name) =>
      _$receivedPackageReceivedViaEnumValueOf(name);
}
