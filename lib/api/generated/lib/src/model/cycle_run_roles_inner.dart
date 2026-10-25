//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/cycle_run_roles_inner_prompt_template.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cycle_run_roles_inner.g.dart';

/// Outcome of one role in a run
///
/// Properties:
/// * [role]
/// * [status]
/// * [reason]
/// * [provider]
/// * [model]
/// * [effort] - LLM effort
/// * [inputTokens]
/// * [outputTokens]
/// * [cachedTokens]
/// * [forecastsSubmitted]
/// * [proposalIds]
/// * [promptTemplate]
/// * [warnings]
@BuiltValue()
abstract class CycleRunRolesInner
    implements Built<CycleRunRolesInner, CycleRunRolesInnerBuilder> {
  @BuiltValueField(wireName: r'role')
  CycleRunRolesInnerRoleEnum get role;
  // enum roleEnum {  analyst,  red-team,  forecaster,  proposer,  };

  @BuiltValueField(wireName: r'status')
  CycleRunRolesInnerStatusEnum get status;
  // enum statusEnum {  ok,  skipped,  failed,  not-configured,  };

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  @BuiltValueField(wireName: r'provider')
  String? get provider;

  @BuiltValueField(wireName: r'model')
  String? get model;

  /// LLM effort
  @BuiltValueField(wireName: r'effort')
  CycleRunRolesInnerEffortEnum? get effort;
  // enum effortEnum {  low,  medium,  high,  };

  @BuiltValueField(wireName: r'inputTokens')
  int? get inputTokens;

  @BuiltValueField(wireName: r'outputTokens')
  int? get outputTokens;

  @BuiltValueField(wireName: r'cachedTokens')
  int? get cachedTokens;

  @BuiltValueField(wireName: r'forecastsSubmitted')
  int? get forecastsSubmitted;

  @BuiltValueField(wireName: r'proposalIds')
  BuiltList<String>? get proposalIds;

  @BuiltValueField(wireName: r'promptTemplate')
  CycleRunRolesInnerPromptTemplate? get promptTemplate;

  @BuiltValueField(wireName: r'warnings')
  BuiltList<String>? get warnings;

  CycleRunRolesInner._();

  factory CycleRunRolesInner([void updates(CycleRunRolesInnerBuilder b)]) =
      _$CycleRunRolesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CycleRunRolesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CycleRunRolesInner> get serializer =>
      _$CycleRunRolesInnerSerializer();
}

class _$CycleRunRolesInnerSerializer
    implements PrimitiveSerializer<CycleRunRolesInner> {
  @override
  final Iterable<Type> types = const [CycleRunRolesInner, _$CycleRunRolesInner];

  @override
  final String wireName = r'CycleRunRolesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CycleRunRolesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(CycleRunRolesInnerRoleEnum),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(CycleRunRolesInnerStatusEnum),
    );
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.provider != null) {
      yield r'provider';
      yield serializers.serialize(
        object.provider,
        specifiedType: const FullType.nullable(String),
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
        specifiedType: const FullType.nullable(CycleRunRolesInnerEffortEnum),
      );
    }
    if (object.inputTokens != null) {
      yield r'inputTokens';
      yield serializers.serialize(
        object.inputTokens,
        specifiedType: const FullType(int),
      );
    }
    if (object.outputTokens != null) {
      yield r'outputTokens';
      yield serializers.serialize(
        object.outputTokens,
        specifiedType: const FullType(int),
      );
    }
    if (object.cachedTokens != null) {
      yield r'cachedTokens';
      yield serializers.serialize(
        object.cachedTokens,
        specifiedType: const FullType(int),
      );
    }
    if (object.forecastsSubmitted != null) {
      yield r'forecastsSubmitted';
      yield serializers.serialize(
        object.forecastsSubmitted,
        specifiedType: const FullType(int),
      );
    }
    if (object.proposalIds != null) {
      yield r'proposalIds';
      yield serializers.serialize(
        object.proposalIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.promptTemplate != null) {
      yield r'promptTemplate';
      yield serializers.serialize(
        object.promptTemplate,
        specifiedType: const FullType.nullable(
          CycleRunRolesInnerPromptTemplate,
        ),
      );
    }
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CycleRunRolesInner object, {
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
    required CycleRunRolesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'role':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(CycleRunRolesInnerRoleEnum),
                  )
                  as CycleRunRolesInnerRoleEnum;
          result.role = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(CycleRunRolesInnerStatusEnum),
                  )
                  as CycleRunRolesInnerStatusEnum;
          result.status = valueDes;
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        case r'provider':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.provider = valueDes;
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
                      CycleRunRolesInnerEffortEnum,
                    ),
                  )
                  as CycleRunRolesInnerEffortEnum?;
          if (valueDes == null) continue;
          result.effort = valueDes;
          break;
        case r'inputTokens':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.inputTokens = valueDes;
          break;
        case r'outputTokens':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.outputTokens = valueDes;
          break;
        case r'cachedTokens':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.cachedTokens = valueDes;
          break;
        case r'forecastsSubmitted':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.forecastsSubmitted = valueDes;
          break;
        case r'proposalIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.proposalIds.replace(valueDes);
          break;
        case r'promptTemplate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      CycleRunRolesInnerPromptTemplate,
                    ),
                  )
                  as CycleRunRolesInnerPromptTemplate?;
          if (valueDes == null) continue;
          result.promptTemplate.replace(valueDes);
          break;
        case r'warnings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.warnings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CycleRunRolesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CycleRunRolesInnerBuilder();
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

class CycleRunRolesInnerRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'analyst')
  static const CycleRunRolesInnerRoleEnum analyst =
      _$cycleRunRolesInnerRoleEnum_analyst;
  @BuiltValueEnumConst(wireName: r'red-team')
  static const CycleRunRolesInnerRoleEnum redTeam =
      _$cycleRunRolesInnerRoleEnum_redTeam;
  @BuiltValueEnumConst(wireName: r'forecaster')
  static const CycleRunRolesInnerRoleEnum forecaster =
      _$cycleRunRolesInnerRoleEnum_forecaster;
  @BuiltValueEnumConst(wireName: r'proposer')
  static const CycleRunRolesInnerRoleEnum proposer =
      _$cycleRunRolesInnerRoleEnum_proposer;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const CycleRunRolesInnerRoleEnum unknownDefaultOpenApi =
      _$cycleRunRolesInnerRoleEnum_unknownDefaultOpenApi;

  static Serializer<CycleRunRolesInnerRoleEnum> get serializer =>
      _$cycleRunRolesInnerRoleEnumSerializer;

  const CycleRunRolesInnerRoleEnum._(String name) : super(name);

  static BuiltSet<CycleRunRolesInnerRoleEnum> get values =>
      _$cycleRunRolesInnerRoleEnumValues;
  static CycleRunRolesInnerRoleEnum valueOf(String name) =>
      _$cycleRunRolesInnerRoleEnumValueOf(name);
}

class CycleRunRolesInnerStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const CycleRunRolesInnerStatusEnum ok =
      _$cycleRunRolesInnerStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'skipped')
  static const CycleRunRolesInnerStatusEnum skipped =
      _$cycleRunRolesInnerStatusEnum_skipped;
  @BuiltValueEnumConst(wireName: r'failed')
  static const CycleRunRolesInnerStatusEnum failed =
      _$cycleRunRolesInnerStatusEnum_failed;
  @BuiltValueEnumConst(wireName: r'not-configured')
  static const CycleRunRolesInnerStatusEnum notConfigured =
      _$cycleRunRolesInnerStatusEnum_notConfigured;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const CycleRunRolesInnerStatusEnum unknownDefaultOpenApi =
      _$cycleRunRolesInnerStatusEnum_unknownDefaultOpenApi;

  static Serializer<CycleRunRolesInnerStatusEnum> get serializer =>
      _$cycleRunRolesInnerStatusEnumSerializer;

  const CycleRunRolesInnerStatusEnum._(String name) : super(name);

  static BuiltSet<CycleRunRolesInnerStatusEnum> get values =>
      _$cycleRunRolesInnerStatusEnumValues;
  static CycleRunRolesInnerStatusEnum valueOf(String name) =>
      _$cycleRunRolesInnerStatusEnumValueOf(name);
}

/// LLM effort
class CycleRunRolesInnerEffortEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'low')
  static const CycleRunRolesInnerEffortEnum low =
      _$cycleRunRolesInnerEffortEnum_low;
  @BuiltValueEnumConst(wireName: r'medium')
  static const CycleRunRolesInnerEffortEnum medium =
      _$cycleRunRolesInnerEffortEnum_medium;
  @BuiltValueEnumConst(wireName: r'high')
  static const CycleRunRolesInnerEffortEnum high =
      _$cycleRunRolesInnerEffortEnum_high;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const CycleRunRolesInnerEffortEnum unknownDefaultOpenApi =
      _$cycleRunRolesInnerEffortEnum_unknownDefaultOpenApi;

  static Serializer<CycleRunRolesInnerEffortEnum> get serializer =>
      _$cycleRunRolesInnerEffortEnumSerializer;

  const CycleRunRolesInnerEffortEnum._(String name) : super(name);

  static BuiltSet<CycleRunRolesInnerEffortEnum> get values =>
      _$cycleRunRolesInnerEffortEnumValues;
  static CycleRunRolesInnerEffortEnum valueOf(String name) =>
      _$cycleRunRolesInnerEffortEnumValueOf(name);
}
