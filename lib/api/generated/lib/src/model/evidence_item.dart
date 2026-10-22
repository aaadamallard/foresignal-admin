//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:foresignal_api/src/model/provenance_chain_entry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/caveat.dart';
import 'package:foresignal_api/src/model/principal_summary.dart';
import 'package:foresignal_api/src/model/visibility.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'evidence_item.g.dart';

/// User-contributed evidence graded with the Admiralty system; usable in investigations, situations, ACH (125) and relations (129)
///
/// Properties:
/// * [id] - ULID identifier
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [title]
/// * [description] - Markdown
/// * [attachmentIds]
/// * [url] - Link evidence; stored as metadata only and never fetched
/// * [sourceDescription]
/// * [sourceReliability] - Admiralty source reliability (A completely reliable … F cannot be judged)
/// * [informationCredibility] - Admiralty information credibility (1 confirmed … 6 cannot be judged)
/// * [grade]
/// * [citedSourceId] - Catalogued source this evidence cites; otherwise the originator is `operator:{principal}` for 116 independence
/// * [originator]
/// * [citedRefs] - Objects this evidence cites, e.g. a report
/// * [provenanceChain]
/// * [geometry]
/// * [eventTime]
/// * [tags] - Tag names visible to the caller
/// * [owner]
/// * [createdBy]
/// * [visibility]
/// * [tlp] - Traffic Light Protocol 2.0 label
/// * [caveats]
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class EvidenceItem
    implements Built<EvidenceItem, EvidenceItemBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String get ref;

  @BuiltValueField(wireName: r'title')
  String get title;

  /// Markdown
  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'attachmentIds')
  BuiltList<String>? get attachmentIds;

  /// Link evidence; stored as metadata only and never fetched
  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'sourceDescription')
  String? get sourceDescription;

  /// Admiralty source reliability (A completely reliable … F cannot be judged)
  @BuiltValueField(wireName: r'sourceReliability')
  EvidenceItemSourceReliabilityEnum get sourceReliability;
  // enum sourceReliabilityEnum {  A,  B,  C,  D,  E,  F,  };

  /// Admiralty information credibility (1 confirmed … 6 cannot be judged)
  @BuiltValueField(wireName: r'informationCredibility')
  int get informationCredibility;

  @BuiltValueField(wireName: r'grade')
  String? get grade;

  /// Catalogued source this evidence cites; otherwise the originator is `operator:{principal}` for 116 independence
  @BuiltValueField(wireName: r'citedSourceId')
  String? get citedSourceId;

  @BuiltValueField(wireName: r'originator')
  String get originator;

  /// Objects this evidence cites, e.g. a report
  @BuiltValueField(wireName: r'citedRefs')
  BuiltList<String>? get citedRefs;

  @BuiltValueField(wireName: r'provenanceChain')
  BuiltList<ProvenanceChainEntry>? get provenanceChain;

  @BuiltValueField(wireName: r'geometry')
  Geometry? get geometry;

  @BuiltValueField(wireName: r'eventTime')
  DateTime? get eventTime;

  /// Tag names visible to the caller
  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'owner')
  PrincipalSummary? get owner;

  @BuiltValueField(wireName: r'createdBy')
  PrincipalSummary get createdBy;

  @BuiltValueField(wireName: r'visibility')
  Visibility? get visibility;
  // enum visibilityEnum {  private,  shared,  instance,  };

  /// Traffic Light Protocol 2.0 label
  @BuiltValueField(wireName: r'tlp')
  String get tlp;

  @BuiltValueField(wireName: r'caveats')
  BuiltList<Caveat>? get caveats;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  EvidenceItem._();

  factory EvidenceItem([void updates(EvidenceItemBuilder b)]) = _$EvidenceItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EvidenceItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EvidenceItem> get serializer => _$EvidenceItemSerializer();
}

class _$EvidenceItemSerializer implements PrimitiveSerializer<EvidenceItem> {
  @override
  final Iterable<Type> types = const [EvidenceItem, _$EvidenceItem];

  @override
  final String wireName = r'EvidenceItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EvidenceItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.attachmentIds != null) {
      yield r'attachmentIds';
      yield serializers.serialize(
        object.attachmentIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sourceDescription != null) {
      yield r'sourceDescription';
      yield serializers.serialize(
        object.sourceDescription,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'sourceReliability';
    yield serializers.serialize(
      object.sourceReliability,
      specifiedType: const FullType(EvidenceItemSourceReliabilityEnum),
    );
    yield r'informationCredibility';
    yield serializers.serialize(
      object.informationCredibility,
      specifiedType: const FullType(int),
    );
    if (object.grade != null) {
      yield r'grade';
      yield serializers.serialize(
        object.grade,
        specifiedType: const FullType(String),
      );
    }
    if (object.citedSourceId != null) {
      yield r'citedSourceId';
      yield serializers.serialize(
        object.citedSourceId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'originator';
    yield serializers.serialize(
      object.originator,
      specifiedType: const FullType(String),
    );
    if (object.citedRefs != null) {
      yield r'citedRefs';
      yield serializers.serialize(
        object.citedRefs,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
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
    if (object.geometry != null) {
      yield r'geometry';
      yield serializers.serialize(
        object.geometry,
        specifiedType: const FullType.nullable(Geometry),
      );
    }
    if (object.eventTime != null) {
      yield r'eventTime';
      yield serializers.serialize(
        object.eventTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.owner != null) {
      yield r'owner';
      yield serializers.serialize(
        object.owner,
        specifiedType: const FullType(PrincipalSummary),
      );
    }
    yield r'createdBy';
    yield serializers.serialize(
      object.createdBy,
      specifiedType: const FullType(PrincipalSummary),
    );
    if (object.visibility != null) {
      yield r'visibility';
      yield serializers.serialize(
        object.visibility,
        specifiedType: const FullType(Visibility),
      );
    }
    yield r'tlp';
    yield serializers.serialize(
      object.tlp,
      specifiedType: const FullType(String),
    );
    if (object.caveats != null) {
      yield r'caveats';
      yield serializers.serialize(
        object.caveats,
        specifiedType: const FullType(BuiltList, [FullType(Caveat)]),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EvidenceItem object, {
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
    required EvidenceItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'ref':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ref = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'attachmentIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.attachmentIds.replace(valueDes);
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'sourceDescription':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sourceDescription = valueDes;
          break;
        case r'sourceReliability':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EvidenceItemSourceReliabilityEnum),
          ) as EvidenceItemSourceReliabilityEnum;
          result.sourceReliability = valueDes;
          break;
        case r'informationCredibility':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.informationCredibility = valueDes;
          break;
        case r'grade':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.grade = valueDes;
          break;
        case r'citedSourceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.citedSourceId = valueDes;
          break;
        case r'originator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.originator = valueDes;
          break;
        case r'citedRefs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.citedRefs.replace(valueDes);
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
        case r'geometry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Geometry),
          ) as Geometry?;
          if (valueDes == null) continue;
          result.geometry.replace(valueDes);
          break;
        case r'eventTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.eventTime = valueDes;
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        case r'owner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PrincipalSummary),
          ) as PrincipalSummary?;
          if (valueDes == null) continue;
          result.owner.replace(valueDes);
          break;
        case r'createdBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PrincipalSummary),
          ) as PrincipalSummary;
          result.createdBy.replace(valueDes);
          break;
        case r'visibility':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Visibility),
          ) as Visibility?;
          if (valueDes == null) continue;
          result.visibility = valueDes;
          break;
        case r'tlp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tlp = valueDes;
          break;
        case r'caveats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(Caveat)]),
          ) as BuiltList<Caveat>?;
          if (valueDes == null) continue;
          result.caveats.replace(valueDes);
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EvidenceItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EvidenceItemBuilder();
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

/// Admiralty source reliability (A completely reliable … F cannot be judged)
class EvidenceItemSourceReliabilityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'A')
  static const EvidenceItemSourceReliabilityEnum A =
      _$evidenceItemSourceReliabilityEnum_A;
  @BuiltValueEnumConst(wireName: r'B')
  static const EvidenceItemSourceReliabilityEnum B =
      _$evidenceItemSourceReliabilityEnum_B;
  @BuiltValueEnumConst(wireName: r'C')
  static const EvidenceItemSourceReliabilityEnum C =
      _$evidenceItemSourceReliabilityEnum_C;
  @BuiltValueEnumConst(wireName: r'D')
  static const EvidenceItemSourceReliabilityEnum D =
      _$evidenceItemSourceReliabilityEnum_D;
  @BuiltValueEnumConst(wireName: r'E')
  static const EvidenceItemSourceReliabilityEnum E =
      _$evidenceItemSourceReliabilityEnum_E;
  @BuiltValueEnumConst(wireName: r'F')
  static const EvidenceItemSourceReliabilityEnum F =
      _$evidenceItemSourceReliabilityEnum_F;

  static Serializer<EvidenceItemSourceReliabilityEnum> get serializer =>
      _$evidenceItemSourceReliabilityEnumSerializer;

  const EvidenceItemSourceReliabilityEnum._(String name) : super(name);

  static BuiltSet<EvidenceItemSourceReliabilityEnum> get values =>
      _$evidenceItemSourceReliabilityEnumValues;
  static EvidenceItemSourceReliabilityEnum valueOf(String name) =>
      _$evidenceItemSourceReliabilityEnumValueOf(name);
}
