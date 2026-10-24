//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/time_range.dart';
import 'package:foresignal_api/src/model/report_source.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_draft_request.g.dart';

/// Build a deterministic draft report from a source
///
/// Properties:
/// * [source_]
/// * [template]
/// * [title]
/// * [timeWindow]
/// * [area]
/// * [narrative] - Add a labeled LLM narrative block (agent scope, budgeted)
/// * [assessmentId] - ULID identifier
@BuiltValue()
abstract class ReportDraftRequest
    implements Built<ReportDraftRequest, ReportDraftRequestBuilder> {
  @BuiltValueField(wireName: r'source')
  ReportSource get source_;

  @BuiltValueField(wireName: r'template')
  ReportDraftRequestTemplateEnum? get template;
  // enum templateEnum {  situation-brief,  investigation-summary,  chronicle-recap,  weekly-assessment,  custom,  };

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'timeWindow')
  TimeRange? get timeWindow;

  @BuiltValueField(wireName: r'area')
  Geometry? get area;

  /// Add a labeled LLM narrative block (agent scope, budgeted)
  @BuiltValueField(wireName: r'narrative')
  bool? get narrative;

  /// ULID identifier
  @BuiltValueField(wireName: r'assessmentId')
  String? get assessmentId;

  ReportDraftRequest._();

  factory ReportDraftRequest([void updates(ReportDraftRequestBuilder b)]) =
      _$ReportDraftRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportDraftRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportDraftRequest> get serializer =>
      _$ReportDraftRequestSerializer();
}

class _$ReportDraftRequestSerializer
    implements PrimitiveSerializer<ReportDraftRequest> {
  @override
  final Iterable<Type> types = const [ReportDraftRequest, _$ReportDraftRequest];

  @override
  final String wireName = r'ReportDraftRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportDraftRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(ReportSource),
    );
    if (object.template != null) {
      yield r'template';
      yield serializers.serialize(
        object.template,
        specifiedType: const FullType(ReportDraftRequestTemplateEnum),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
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
    if (object.narrative != null) {
      yield r'narrative';
      yield serializers.serialize(
        object.narrative,
        specifiedType: const FullType(bool),
      );
    }
    if (object.assessmentId != null) {
      yield r'assessmentId';
      yield serializers.serialize(
        object.assessmentId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportDraftRequest object, {
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
    required ReportDraftRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
                    specifiedType: const FullType.nullable(
                      ReportDraftRequestTemplateEnum,
                    ),
                  )
                  as ReportDraftRequestTemplateEnum?;
          if (valueDes == null) continue;
          result.template = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
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
        case r'narrative':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.narrative = valueDes;
          break;
        case r'assessmentId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.assessmentId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReportDraftRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportDraftRequestBuilder();
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

class ReportDraftRequestTemplateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'situation-brief')
  static const ReportDraftRequestTemplateEnum situationBrief =
      _$reportDraftRequestTemplateEnum_situationBrief;
  @BuiltValueEnumConst(wireName: r'investigation-summary')
  static const ReportDraftRequestTemplateEnum investigationSummary =
      _$reportDraftRequestTemplateEnum_investigationSummary;
  @BuiltValueEnumConst(wireName: r'chronicle-recap')
  static const ReportDraftRequestTemplateEnum chronicleRecap =
      _$reportDraftRequestTemplateEnum_chronicleRecap;
  @BuiltValueEnumConst(wireName: r'weekly-assessment')
  static const ReportDraftRequestTemplateEnum weeklyAssessment =
      _$reportDraftRequestTemplateEnum_weeklyAssessment;
  @BuiltValueEnumConst(wireName: r'custom')
  static const ReportDraftRequestTemplateEnum custom =
      _$reportDraftRequestTemplateEnum_custom;

  static Serializer<ReportDraftRequestTemplateEnum> get serializer =>
      _$reportDraftRequestTemplateEnumSerializer;

  const ReportDraftRequestTemplateEnum._(String name) : super(name);

  static BuiltSet<ReportDraftRequestTemplateEnum> get values =>
      _$reportDraftRequestTemplateEnumValues;
  static ReportDraftRequestTemplateEnum valueOf(String name) =>
      _$reportDraftRequestTemplateEnumValueOf(name);
}
