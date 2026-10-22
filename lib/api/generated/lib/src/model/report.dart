//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:foresignal_api/src/model/provenance_chain_entry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/principal_summary.dart';
import 'package:foresignal_api/src/model/time_range.dart';
import 'package:foresignal_api/src/model/visibility.dart';
import 'package:foresignal_api/src/model/report_source.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report.g.dart';

/// An analyst report built from a source, edited by its authors and published as immutable revisions
///
/// Properties:
/// * [id] - ULID identifier
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [displayId]
/// * [title]
/// * [subtitle]
/// * [status]
/// * [owner]
/// * [authors]
/// * [tlp] - Traffic Light Protocol 2.0 label
/// * [visibility]
/// * [source_]
/// * [template]
/// * [timeWindow]
/// * [area]
/// * [blocks] - Ordered blocks (stored as `sections`)
/// * [machineGenerated] - Any block is deterministic-generated or LLM
/// * [version] - Optimistic-lock version of the draft
/// * [publishedRevision]
/// * [publishedAt]
/// * [manifestId] - ULID identifier
/// * [provenanceChain] - 134 circular-reporting chain
/// * [tags]
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class Report implements Built<Report, ReportBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String get ref;

  @BuiltValueField(wireName: r'displayId')
  String get displayId;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'subtitle')
  String? get subtitle;

  @BuiltValueField(wireName: r'status')
  ReportStatusEnum get status;
  // enum statusEnum {  draft,  review,  published,  retracted,  };

  @BuiltValueField(wireName: r'owner')
  PrincipalSummary get owner;

  @BuiltValueField(wireName: r'authors')
  BuiltList<PrincipalSummary> get authors;

  /// Traffic Light Protocol 2.0 label
  @BuiltValueField(wireName: r'tlp')
  String get tlp;

  @BuiltValueField(wireName: r'visibility')
  Visibility get visibility;
  // enum visibilityEnum {  private,  shared,  instance,  };

  @BuiltValueField(wireName: r'source')
  ReportSource get source_;

  @BuiltValueField(wireName: r'template')
  ReportTemplateEnum? get template;
  // enum templateEnum {  situation-brief,  investigation-summary,  chronicle-recap,  weekly-assessment,  custom,  };

  @BuiltValueField(wireName: r'timeWindow')
  TimeRange? get timeWindow;

  @BuiltValueField(wireName: r'area')
  Geometry? get area;

  /// Ordered blocks (stored as `sections`)
  @BuiltValueField(wireName: r'blocks')
  BuiltList<JsonObject?> get blocks;

  /// Any block is deterministic-generated or LLM
  @BuiltValueField(wireName: r'machineGenerated')
  bool? get machineGenerated;

  /// Optimistic-lock version of the draft
  @BuiltValueField(wireName: r'version')
  int get version;

  @BuiltValueField(wireName: r'publishedRevision')
  int? get publishedRevision;

  @BuiltValueField(wireName: r'publishedAt')
  DateTime? get publishedAt;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String? get manifestId;

  /// 134 circular-reporting chain
  @BuiltValueField(wireName: r'provenanceChain')
  BuiltList<ProvenanceChainEntry>? get provenanceChain;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  Report._();

  factory Report([void updates(ReportBuilder b)]) = _$Report;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Report> get serializer => _$ReportSerializer();
}

class _$ReportSerializer implements PrimitiveSerializer<Report> {
  @override
  final Iterable<Type> types = const [Report, _$Report];

  @override
  final String wireName = r'Report';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Report object, {
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
    yield r'displayId';
    yield serializers.serialize(
      object.displayId,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.subtitle != null) {
      yield r'subtitle';
      yield serializers.serialize(
        object.subtitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ReportStatusEnum),
    );
    yield r'owner';
    yield serializers.serialize(
      object.owner,
      specifiedType: const FullType(PrincipalSummary),
    );
    yield r'authors';
    yield serializers.serialize(
      object.authors,
      specifiedType: const FullType(BuiltList, [FullType(PrincipalSummary)]),
    );
    yield r'tlp';
    yield serializers.serialize(
      object.tlp,
      specifiedType: const FullType(String),
    );
    yield r'visibility';
    yield serializers.serialize(
      object.visibility,
      specifiedType: const FullType(Visibility),
    );
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(ReportSource),
    );
    if (object.template != null) {
      yield r'template';
      yield serializers.serialize(
        object.template,
        specifiedType: const FullType(ReportTemplateEnum),
      );
    }
    if (object.timeWindow != null) {
      yield r'timeWindow';
      yield serializers.serialize(
        object.timeWindow,
        specifiedType: const FullType.nullable(TimeRange),
      );
    }
    if (object.area != null) {
      yield r'area';
      yield serializers.serialize(
        object.area,
        specifiedType: const FullType.nullable(Geometry),
      );
    }
    yield r'blocks';
    yield serializers.serialize(
      object.blocks,
      specifiedType: const FullType(BuiltList, [FullType.nullable(JsonObject)]),
    );
    if (object.machineGenerated != null) {
      yield r'machineGenerated';
      yield serializers.serialize(
        object.machineGenerated,
        specifiedType: const FullType(bool),
      );
    }
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(int),
    );
    if (object.publishedRevision != null) {
      yield r'publishedRevision';
      yield serializers.serialize(
        object.publishedRevision,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.publishedAt != null) {
      yield r'publishedAt';
      yield serializers.serialize(
        object.publishedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.manifestId != null) {
      yield r'manifestId';
      yield serializers.serialize(
        object.manifestId,
        specifiedType: const FullType.nullable(String),
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
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
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
    Report object, {
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
    required ReportBuilder result,
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
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ref = valueDes;
          break;
        case r'displayId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.displayId = valueDes;
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
        case r'subtitle':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.subtitle = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ReportStatusEnum),
                  )
                  as ReportStatusEnum;
          result.status = valueDes;
          break;
        case r'owner':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PrincipalSummary),
                  )
                  as PrincipalSummary;
          result.owner.replace(valueDes);
          break;
        case r'authors':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(PrincipalSummary),
                    ]),
                  )
                  as BuiltList<PrincipalSummary>;
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
        case r'visibility':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Visibility),
                  )
                  as Visibility;
          result.visibility = valueDes;
          break;
        case r'source':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ReportSource),
                  )
                  as ReportSource;
          result.source_.replace(valueDes);
          break;
        case r'template':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ReportTemplateEnum),
                  )
                  as ReportTemplateEnum?;
          if (valueDes == null) continue;
          result.template = valueDes;
          break;
        case r'timeWindow':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(TimeRange),
                  )
                  as TimeRange?;
          if (valueDes == null) continue;
          result.timeWindow.replace(valueDes);
          break;
        case r'area':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Geometry),
                  )
                  as Geometry?;
          if (valueDes == null) continue;
          result.area.replace(valueDes);
          break;
        case r'blocks':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltList<JsonObject?>;
          result.blocks.replace(valueDes);
          break;
        case r'machineGenerated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.machineGenerated = valueDes;
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.version = valueDes;
          break;
        case r'publishedRevision':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.publishedRevision = valueDes;
          break;
        case r'publishedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.publishedAt = valueDes;
          break;
        case r'manifestId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.manifestId = valueDes;
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
        case r'tags':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
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
  Report deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportBuilder();
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

class ReportStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'draft')
  static const ReportStatusEnum draft = _$reportStatusEnum_draft;
  @BuiltValueEnumConst(wireName: r'review')
  static const ReportStatusEnum review = _$reportStatusEnum_review;
  @BuiltValueEnumConst(wireName: r'published')
  static const ReportStatusEnum published = _$reportStatusEnum_published;
  @BuiltValueEnumConst(wireName: r'retracted')
  static const ReportStatusEnum retracted = _$reportStatusEnum_retracted;

  static Serializer<ReportStatusEnum> get serializer =>
      _$reportStatusEnumSerializer;

  const ReportStatusEnum._(String name) : super(name);

  static BuiltSet<ReportStatusEnum> get values => _$reportStatusEnumValues;
  static ReportStatusEnum valueOf(String name) =>
      _$reportStatusEnumValueOf(name);
}

class ReportTemplateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'situation-brief')
  static const ReportTemplateEnum situationBrief =
      _$reportTemplateEnum_situationBrief;
  @BuiltValueEnumConst(wireName: r'investigation-summary')
  static const ReportTemplateEnum investigationSummary =
      _$reportTemplateEnum_investigationSummary;
  @BuiltValueEnumConst(wireName: r'chronicle-recap')
  static const ReportTemplateEnum chronicleRecap =
      _$reportTemplateEnum_chronicleRecap;
  @BuiltValueEnumConst(wireName: r'weekly-assessment')
  static const ReportTemplateEnum weeklyAssessment =
      _$reportTemplateEnum_weeklyAssessment;
  @BuiltValueEnumConst(wireName: r'custom')
  static const ReportTemplateEnum custom = _$reportTemplateEnum_custom;

  static Serializer<ReportTemplateEnum> get serializer =>
      _$reportTemplateEnumSerializer;

  const ReportTemplateEnum._(String name) : super(name);

  static BuiltSet<ReportTemplateEnum> get values => _$reportTemplateEnumValues;
  static ReportTemplateEnum valueOf(String name) =>
      _$reportTemplateEnumValueOf(name);
}
