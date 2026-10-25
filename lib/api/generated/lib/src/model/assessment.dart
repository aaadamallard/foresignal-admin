//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/cycle_run_roles_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/assessment_coverage.dart';
import 'package:foresignal_api/src/model/assessment_sections_inner.dart';
import 'package:foresignal_api/src/model/key_judgment.dart';
import 'package:foresignal_api/src/model/assessment_prompt_templates_inner.dart';
import 'package:foresignal_api/src/model/social_versus_observed.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'assessment.g.dart';

/// ICD 203-structured assessment that builds on the previous one of its cadence
///
/// Properties:
/// * [id] - ULID identifier
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [cycleId] - ULID identifier
/// * [situationId] - ULID identifier
/// * [cadence]
/// * [periodStart]
/// * [periodEnd]
/// * [previousAssessmentId] - ULID identifier
/// * [status]
/// * [bluf]
/// * [headline] - First BLUF judgment or top deterministic change
/// * [sections]
/// * [markdown] - Full rendering (omitted in lists)
/// * [html] - Full rendering (omitted in lists)
/// * [packetRef] - ULID identifier
/// * [roles] - Per role
/// * [model]
/// * [effort] - LLM effort
/// * [manifestId] - ULID identifier
/// * [promptTemplates]
/// * [citations]
/// * [lintWarnings]
/// * [footer]
/// * [private]
/// * [createdAt]
/// * [coverage]
/// * [social] - \"What people are saying versus what we observe\" (137)
@BuiltValue()
abstract class Assessment implements Built<Assessment, AssessmentBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String? get ref;

  /// ULID identifier
  @BuiltValueField(wireName: r'cycleId')
  String? get cycleId;

  /// ULID identifier
  @BuiltValueField(wireName: r'situationId')
  String? get situationId;

  @BuiltValueField(wireName: r'cadence')
  AssessmentCadenceEnum get cadence;
  // enum cadenceEnum {  daily,  weekly,  monthly,  on-demand,  };

  @BuiltValueField(wireName: r'periodStart')
  DateTime get periodStart;

  @BuiltValueField(wireName: r'periodEnd')
  DateTime get periodEnd;

  /// ULID identifier
  @BuiltValueField(wireName: r'previousAssessmentId')
  String? get previousAssessmentId;

  @BuiltValueField(wireName: r'status')
  AssessmentStatusEnum get status;
  // enum statusEnum {  ok,  partial,  digest-only,  failed,  };

  @BuiltValueField(wireName: r'bluf')
  BuiltList<KeyJudgment> get bluf;

  /// First BLUF judgment or top deterministic change
  @BuiltValueField(wireName: r'headline')
  String? get headline;

  @BuiltValueField(wireName: r'sections')
  BuiltList<AssessmentSectionsInner> get sections;

  /// Full rendering (omitted in lists)
  @BuiltValueField(wireName: r'markdown')
  String? get markdown;

  /// Full rendering (omitted in lists)
  @BuiltValueField(wireName: r'html')
  String? get html;

  /// ULID identifier
  @BuiltValueField(wireName: r'packetRef')
  String? get packetRef;

  /// Per role
  @BuiltValueField(wireName: r'roles')
  BuiltMap<String, CycleRunRolesInner>? get roles;

  @BuiltValueField(wireName: r'model')
  String? get model;

  /// LLM effort
  @BuiltValueField(wireName: r'effort')
  AssessmentEffortEnum? get effort;
  // enum effortEnum {  low,  medium,  high,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String? get manifestId;

  @BuiltValueField(wireName: r'promptTemplates')
  BuiltList<AssessmentPromptTemplatesInner>? get promptTemplates;

  @BuiltValueField(wireName: r'citations')
  BuiltList<String>? get citations;

  @BuiltValueField(wireName: r'lintWarnings')
  BuiltList<String>? get lintWarnings;

  @BuiltValueField(wireName: r'footer')
  String? get footer;

  @BuiltValueField(wireName: r'private')
  bool get private;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'coverage')
  AssessmentCoverage? get coverage;

  /// \"What people are saying versus what we observe\" (137)
  @BuiltValueField(wireName: r'social')
  SocialVersusObserved? get social;

  Assessment._();

  factory Assessment([void updates(AssessmentBuilder b)]) = _$Assessment;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AssessmentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Assessment> get serializer => _$AssessmentSerializer();
}

class _$AssessmentSerializer implements PrimitiveSerializer<Assessment> {
  @override
  final Iterable<Type> types = const [Assessment, _$Assessment];

  @override
  final String wireName = r'Assessment';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Assessment object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.ref != null) {
      yield r'ref';
      yield serializers.serialize(
        object.ref,
        specifiedType: const FullType(String),
      );
    }
    if (object.cycleId != null) {
      yield r'cycleId';
      yield serializers.serialize(
        object.cycleId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.situationId != null) {
      yield r'situationId';
      yield serializers.serialize(
        object.situationId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'cadence';
    yield serializers.serialize(
      object.cadence,
      specifiedType: const FullType(AssessmentCadenceEnum),
    );
    yield r'periodStart';
    yield serializers.serialize(
      object.periodStart,
      specifiedType: const FullType(DateTime),
    );
    yield r'periodEnd';
    yield serializers.serialize(
      object.periodEnd,
      specifiedType: const FullType(DateTime),
    );
    if (object.previousAssessmentId != null) {
      yield r'previousAssessmentId';
      yield serializers.serialize(
        object.previousAssessmentId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(AssessmentStatusEnum),
    );
    yield r'bluf';
    yield serializers.serialize(
      object.bluf,
      specifiedType: const FullType(BuiltList, [FullType(KeyJudgment)]),
    );
    if (object.headline != null) {
      yield r'headline';
      yield serializers.serialize(
        object.headline,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'sections';
    yield serializers.serialize(
      object.sections,
      specifiedType: const FullType(BuiltList, [
        FullType(AssessmentSectionsInner),
      ]),
    );
    if (object.markdown != null) {
      yield r'markdown';
      yield serializers.serialize(
        object.markdown,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.html != null) {
      yield r'html';
      yield serializers.serialize(
        object.html,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.packetRef != null) {
      yield r'packetRef';
      yield serializers.serialize(
        object.packetRef,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.roles != null) {
      yield r'roles';
      yield serializers.serialize(
        object.roles,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(CycleRunRolesInner),
        ]),
      );
    }
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.effort != null) {
      yield r'effort';
      yield serializers.serialize(
        object.effort,
        specifiedType: const FullType.nullable(AssessmentEffortEnum),
      );
    }
    if (object.manifestId != null) {
      yield r'manifestId';
      yield serializers.serialize(
        object.manifestId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.promptTemplates != null) {
      yield r'promptTemplates';
      yield serializers.serialize(
        object.promptTemplates,
        specifiedType: const FullType(BuiltList, [
          FullType(AssessmentPromptTemplatesInner),
        ]),
      );
    }
    if (object.citations != null) {
      yield r'citations';
      yield serializers.serialize(
        object.citations,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.lintWarnings != null) {
      yield r'lintWarnings';
      yield serializers.serialize(
        object.lintWarnings,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.footer != null) {
      yield r'footer';
      yield serializers.serialize(
        object.footer,
        specifiedType: const FullType(String),
      );
    }
    yield r'private';
    yield serializers.serialize(
      object.private,
      specifiedType: const FullType(bool),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.coverage != null) {
      yield r'coverage';
      yield serializers.serialize(
        object.coverage,
        specifiedType: const FullType.nullable(AssessmentCoverage),
      );
    }
    if (object.social != null) {
      yield r'social';
      yield serializers.serialize(
        object.social,
        specifiedType: const FullType.nullable(SocialVersusObserved),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Assessment object, {
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
    required AssessmentBuilder result,
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
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ref = valueDes;
          break;
        case r'cycleId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.cycleId = valueDes;
          break;
        case r'situationId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.situationId = valueDes;
          break;
        case r'cadence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AssessmentCadenceEnum),
                  )
                  as AssessmentCadenceEnum;
          result.cadence = valueDes;
          break;
        case r'periodStart':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.periodStart = valueDes;
          break;
        case r'periodEnd':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.periodEnd = valueDes;
          break;
        case r'previousAssessmentId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.previousAssessmentId = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AssessmentStatusEnum),
                  )
                  as AssessmentStatusEnum;
          result.status = valueDes;
          break;
        case r'bluf':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(KeyJudgment),
                    ]),
                  )
                  as BuiltList<KeyJudgment>;
          result.bluf.replace(valueDes);
          break;
        case r'headline':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.headline = valueDes;
          break;
        case r'sections':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(AssessmentSectionsInner),
                    ]),
                  )
                  as BuiltList<AssessmentSectionsInner>;
          result.sections.replace(valueDes);
          break;
        case r'markdown':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.markdown = valueDes;
          break;
        case r'html':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.html = valueDes;
          break;
        case r'packetRef':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.packetRef = valueDes;
          break;
        case r'roles':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(CycleRunRolesInner),
                    ]),
                  )
                  as BuiltMap<String, CycleRunRolesInner>?;
          if (valueDes == null) continue;
          result.roles.replace(valueDes);
          break;
        case r'model':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.model = valueDes;
          break;
        case r'effort':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      AssessmentEffortEnum,
                    ),
                  )
                  as AssessmentEffortEnum?;
          if (valueDes == null) continue;
          result.effort = valueDes;
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
        case r'promptTemplates':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(AssessmentPromptTemplatesInner),
                    ]),
                  )
                  as BuiltList<AssessmentPromptTemplatesInner>?;
          if (valueDes == null) continue;
          result.promptTemplates.replace(valueDes);
          break;
        case r'citations':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.citations.replace(valueDes);
          break;
        case r'lintWarnings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.lintWarnings.replace(valueDes);
          break;
        case r'footer':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.footer = valueDes;
          break;
        case r'private':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.private = valueDes;
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
        case r'coverage':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AssessmentCoverage),
                  )
                  as AssessmentCoverage?;
          if (valueDes == null) continue;
          result.coverage.replace(valueDes);
          break;
        case r'social':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SocialVersusObserved,
                    ),
                  )
                  as SocialVersusObserved?;
          if (valueDes == null) continue;
          result.social.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Assessment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssessmentBuilder();
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

class AssessmentCadenceEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'daily')
  static const AssessmentCadenceEnum daily = _$assessmentCadenceEnum_daily;
  @BuiltValueEnumConst(wireName: r'weekly')
  static const AssessmentCadenceEnum weekly = _$assessmentCadenceEnum_weekly;
  @BuiltValueEnumConst(wireName: r'monthly')
  static const AssessmentCadenceEnum monthly = _$assessmentCadenceEnum_monthly;
  @BuiltValueEnumConst(wireName: r'on-demand')
  static const AssessmentCadenceEnum onDemand =
      _$assessmentCadenceEnum_onDemand;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AssessmentCadenceEnum unknownDefaultOpenApi =
      _$assessmentCadenceEnum_unknownDefaultOpenApi;

  static Serializer<AssessmentCadenceEnum> get serializer =>
      _$assessmentCadenceEnumSerializer;

  const AssessmentCadenceEnum._(String name) : super(name);

  static BuiltSet<AssessmentCadenceEnum> get values =>
      _$assessmentCadenceEnumValues;
  static AssessmentCadenceEnum valueOf(String name) =>
      _$assessmentCadenceEnumValueOf(name);
}

class AssessmentStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const AssessmentStatusEnum ok = _$assessmentStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'partial')
  static const AssessmentStatusEnum partial = _$assessmentStatusEnum_partial;
  @BuiltValueEnumConst(wireName: r'digest-only')
  static const AssessmentStatusEnum digestOnly =
      _$assessmentStatusEnum_digestOnly;
  @BuiltValueEnumConst(wireName: r'failed')
  static const AssessmentStatusEnum failed = _$assessmentStatusEnum_failed;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AssessmentStatusEnum unknownDefaultOpenApi =
      _$assessmentStatusEnum_unknownDefaultOpenApi;

  static Serializer<AssessmentStatusEnum> get serializer =>
      _$assessmentStatusEnumSerializer;

  const AssessmentStatusEnum._(String name) : super(name);

  static BuiltSet<AssessmentStatusEnum> get values =>
      _$assessmentStatusEnumValues;
  static AssessmentStatusEnum valueOf(String name) =>
      _$assessmentStatusEnumValueOf(name);
}

/// LLM effort
class AssessmentEffortEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'low')
  static const AssessmentEffortEnum low = _$assessmentEffortEnum_low;
  @BuiltValueEnumConst(wireName: r'medium')
  static const AssessmentEffortEnum medium = _$assessmentEffortEnum_medium;
  @BuiltValueEnumConst(wireName: r'high')
  static const AssessmentEffortEnum high = _$assessmentEffortEnum_high;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AssessmentEffortEnum unknownDefaultOpenApi =
      _$assessmentEffortEnum_unknownDefaultOpenApi;

  static Serializer<AssessmentEffortEnum> get serializer =>
      _$assessmentEffortEnumSerializer;

  const AssessmentEffortEnum._(String name) : super(name);

  static BuiltSet<AssessmentEffortEnum> get values =>
      _$assessmentEffortEnumValues;
  static AssessmentEffortEnum valueOf(String name) =>
      _$assessmentEffortEnumValueOf(name);
}
