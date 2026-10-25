//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/principal_summary.dart';
import 'package:foresignal_api/src/model/report_revision_renditions.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_revision.g.dart';

/// An immutable published revision with pinned refs, stored snapshots and renditions
///
/// Properties:
/// * [reportId] - ULID identifier
/// * [revision]
/// * [title]
/// * [tlp] - Traffic Light Protocol 2.0 label
/// * [status]
/// * [publishedAt]
/// * [publishedBy]
/// * [retractedAt]
/// * [retractionReason]
/// * [manifestId] - ULID identifier
/// * [pinnedRefs]
/// * [bundleSha256]
/// * [renditions]
@BuiltValue()
abstract class ReportRevision
    implements Built<ReportRevision, ReportRevisionBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'reportId')
  String get reportId;

  @BuiltValueField(wireName: r'revision')
  int get revision;

  @BuiltValueField(wireName: r'title')
  String get title;

  /// Traffic Light Protocol 2.0 label
  @BuiltValueField(wireName: r'tlp')
  String get tlp;

  @BuiltValueField(wireName: r'status')
  ReportRevisionStatusEnum get status;
  // enum statusEnum {  published,  retracted,  };

  @BuiltValueField(wireName: r'publishedAt')
  DateTime get publishedAt;

  @BuiltValueField(wireName: r'publishedBy')
  PrincipalSummary? get publishedBy;

  @BuiltValueField(wireName: r'retractedAt')
  DateTime? get retractedAt;

  @BuiltValueField(wireName: r'retractionReason')
  String? get retractionReason;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String? get manifestId;

  @BuiltValueField(wireName: r'pinnedRefs')
  BuiltList<String>? get pinnedRefs;

  @BuiltValueField(wireName: r'bundleSha256')
  String? get bundleSha256;

  @BuiltValueField(wireName: r'renditions')
  ReportRevisionRenditions? get renditions;

  ReportRevision._();

  factory ReportRevision([void updates(ReportRevisionBuilder b)]) =
      _$ReportRevision;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportRevisionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportRevision> get serializer =>
      _$ReportRevisionSerializer();
}

class _$ReportRevisionSerializer
    implements PrimitiveSerializer<ReportRevision> {
  @override
  final Iterable<Type> types = const [ReportRevision, _$ReportRevision];

  @override
  final String wireName = r'ReportRevision';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportRevision object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'reportId';
    yield serializers.serialize(
      object.reportId,
      specifiedType: const FullType(String),
    );
    yield r'revision';
    yield serializers.serialize(
      object.revision,
      specifiedType: const FullType(int),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'tlp';
    yield serializers.serialize(
      object.tlp,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ReportRevisionStatusEnum),
    );
    yield r'publishedAt';
    yield serializers.serialize(
      object.publishedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.publishedBy != null) {
      yield r'publishedBy';
      yield serializers.serialize(
        object.publishedBy,
        specifiedType: const FullType(PrincipalSummary),
      );
    }
    if (object.retractedAt != null) {
      yield r'retractedAt';
      yield serializers.serialize(
        object.retractedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.retractionReason != null) {
      yield r'retractionReason';
      yield serializers.serialize(
        object.retractionReason,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.manifestId != null) {
      yield r'manifestId';
      yield serializers.serialize(
        object.manifestId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.pinnedRefs != null) {
      yield r'pinnedRefs';
      yield serializers.serialize(
        object.pinnedRefs,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.bundleSha256 != null) {
      yield r'bundleSha256';
      yield serializers.serialize(
        object.bundleSha256,
        specifiedType: const FullType(String),
      );
    }
    if (object.renditions != null) {
      yield r'renditions';
      yield serializers.serialize(
        object.renditions,
        specifiedType: const FullType(ReportRevisionRenditions),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportRevision object, {
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
    required ReportRevisionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'reportId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.reportId = valueDes;
          break;
        case r'revision':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.revision = valueDes;
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
        case r'tlp':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.tlp = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ReportRevisionStatusEnum),
                  )
                  as ReportRevisionStatusEnum;
          result.status = valueDes;
          break;
        case r'publishedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.publishedAt = valueDes;
          break;
        case r'publishedBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(PrincipalSummary),
                  )
                  as PrincipalSummary?;
          if (valueDes == null) continue;
          result.publishedBy.replace(valueDes);
          break;
        case r'retractedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.retractedAt = valueDes;
          break;
        case r'retractionReason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.retractionReason = valueDes;
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
        case r'pinnedRefs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.pinnedRefs.replace(valueDes);
          break;
        case r'bundleSha256':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.bundleSha256 = valueDes;
          break;
        case r'renditions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ReportRevisionRenditions,
                    ),
                  )
                  as ReportRevisionRenditions?;
          if (valueDes == null) continue;
          result.renditions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReportRevision deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportRevisionBuilder();
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

class ReportRevisionStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'published')
  static const ReportRevisionStatusEnum published =
      _$reportRevisionStatusEnum_published;
  @BuiltValueEnumConst(wireName: r'retracted')
  static const ReportRevisionStatusEnum retracted =
      _$reportRevisionStatusEnum_retracted;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ReportRevisionStatusEnum unknownDefaultOpenApi =
      _$reportRevisionStatusEnum_unknownDefaultOpenApi;

  static Serializer<ReportRevisionStatusEnum> get serializer =>
      _$reportRevisionStatusEnumSerializer;

  const ReportRevisionStatusEnum._(String name) : super(name);

  static BuiltSet<ReportRevisionStatusEnum> get values =>
      _$reportRevisionStatusEnumValues;
  static ReportRevisionStatusEnum valueOf(String name) =>
      _$reportRevisionStatusEnumValueOf(name);
}
