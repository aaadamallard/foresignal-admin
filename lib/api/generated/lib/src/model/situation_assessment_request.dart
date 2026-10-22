//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_assessment_request.g.dart';

/// Options for an on-demand situation assessment
///
/// Properties:
/// * [roles] - Default analyst and red-team
/// * [effort] - LLM effort
@BuiltValue()
abstract class SituationAssessmentRequest
    implements
        Built<SituationAssessmentRequest, SituationAssessmentRequestBuilder> {
  /// Default analyst and red-team
  @BuiltValueField(wireName: r'roles')
  BuiltSet<SituationAssessmentRequestRolesEnum>? get roles;
  // enum rolesEnum {  analyst,  red-team,  forecaster,  proposer,  };

  /// LLM effort
  @BuiltValueField(wireName: r'effort')
  SituationAssessmentRequestEffortEnum? get effort;
  // enum effortEnum {  low,  medium,  high,  };

  SituationAssessmentRequest._();

  factory SituationAssessmentRequest(
          [void updates(SituationAssessmentRequestBuilder b)]) =
      _$SituationAssessmentRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationAssessmentRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationAssessmentRequest> get serializer =>
      _$SituationAssessmentRequestSerializer();
}

class _$SituationAssessmentRequestSerializer
    implements PrimitiveSerializer<SituationAssessmentRequest> {
  @override
  final Iterable<Type> types = const [
    SituationAssessmentRequest,
    _$SituationAssessmentRequest
  ];

  @override
  final String wireName = r'SituationAssessmentRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationAssessmentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.roles != null) {
      yield r'roles';
      yield serializers.serialize(
        object.roles,
        specifiedType: const FullType(
            BuiltSet, [FullType(SituationAssessmentRequestRolesEnum)]),
      );
    }
    if (object.effort != null) {
      yield r'effort';
      yield serializers.serialize(
        object.effort,
        specifiedType: const FullType(SituationAssessmentRequestEffortEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SituationAssessmentRequest object, {
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
    required SituationAssessmentRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'roles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltSet, [FullType(SituationAssessmentRequestRolesEnum)]),
          ) as BuiltSet<SituationAssessmentRequestRolesEnum>?;
          if (valueDes == null) continue;
          result.roles.replace(valueDes);
          break;
        case r'effort':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(SituationAssessmentRequestEffortEnum),
          ) as SituationAssessmentRequestEffortEnum?;
          if (valueDes == null) continue;
          result.effort = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SituationAssessmentRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationAssessmentRequestBuilder();
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

class SituationAssessmentRequestRolesEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'analyst')
  static const SituationAssessmentRequestRolesEnum analyst =
      _$situationAssessmentRequestRolesEnum_analyst;
  @BuiltValueEnumConst(wireName: r'red-team')
  static const SituationAssessmentRequestRolesEnum redTeam =
      _$situationAssessmentRequestRolesEnum_redTeam;
  @BuiltValueEnumConst(wireName: r'forecaster')
  static const SituationAssessmentRequestRolesEnum forecaster =
      _$situationAssessmentRequestRolesEnum_forecaster;
  @BuiltValueEnumConst(wireName: r'proposer')
  static const SituationAssessmentRequestRolesEnum proposer =
      _$situationAssessmentRequestRolesEnum_proposer;

  static Serializer<SituationAssessmentRequestRolesEnum> get serializer =>
      _$situationAssessmentRequestRolesEnumSerializer;

  const SituationAssessmentRequestRolesEnum._(String name) : super(name);

  static BuiltSet<SituationAssessmentRequestRolesEnum> get values =>
      _$situationAssessmentRequestRolesEnumValues;
  static SituationAssessmentRequestRolesEnum valueOf(String name) =>
      _$situationAssessmentRequestRolesEnumValueOf(name);
}

/// LLM effort
class SituationAssessmentRequestEffortEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'low')
  static const SituationAssessmentRequestEffortEnum low =
      _$situationAssessmentRequestEffortEnum_low;
  @BuiltValueEnumConst(wireName: r'medium')
  static const SituationAssessmentRequestEffortEnum medium =
      _$situationAssessmentRequestEffortEnum_medium;
  @BuiltValueEnumConst(wireName: r'high')
  static const SituationAssessmentRequestEffortEnum high =
      _$situationAssessmentRequestEffortEnum_high;

  static Serializer<SituationAssessmentRequestEffortEnum> get serializer =>
      _$situationAssessmentRequestEffortEnumSerializer;

  const SituationAssessmentRequestEffortEnum._(String name) : super(name);

  static BuiltSet<SituationAssessmentRequestEffortEnum> get values =>
      _$situationAssessmentRequestEffortEnumValues;
  static SituationAssessmentRequestEffortEnum valueOf(String name) =>
      _$situationAssessmentRequestEffortEnumValueOf(name);
}
