//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analysis_request_submission.g.dart';

/// Requests an on-demand forecast of a ledger question from an external forecaster (155).
///
/// Properties:
/// * [forecasterId] - The external forecaster id, edp:{sourceId}:{streamId}.
/// * [questionId] - The ledger question to forecast; must be open.
/// * [orientation] - Whether the provider's probability is for the question as stated (same) or its negation (inverse).
/// * [horizon] - Optional forecast horizon passed to the provider (for example an ISO-8601 duration).
@BuiltValue()
abstract class AnalysisRequestSubmission
    implements
        Built<AnalysisRequestSubmission, AnalysisRequestSubmissionBuilder> {
  /// The external forecaster id, edp:{sourceId}:{streamId}.
  @BuiltValueField(wireName: r'forecasterId')
  String get forecasterId;

  /// The ledger question to forecast; must be open.
  @BuiltValueField(wireName: r'questionId')
  String get questionId;

  /// Whether the provider's probability is for the question as stated (same) or its negation (inverse).
  @BuiltValueField(wireName: r'orientation')
  AnalysisRequestSubmissionOrientationEnum? get orientation;
  // enum orientationEnum {  same,  inverse,  };

  /// Optional forecast horizon passed to the provider (for example an ISO-8601 duration).
  @BuiltValueField(wireName: r'horizon')
  String? get horizon;

  AnalysisRequestSubmission._();

  factory AnalysisRequestSubmission([
    void updates(AnalysisRequestSubmissionBuilder b),
  ]) = _$AnalysisRequestSubmission;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalysisRequestSubmissionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalysisRequestSubmission> get serializer =>
      _$AnalysisRequestSubmissionSerializer();
}

class _$AnalysisRequestSubmissionSerializer
    implements PrimitiveSerializer<AnalysisRequestSubmission> {
  @override
  final Iterable<Type> types = const [
    AnalysisRequestSubmission,
    _$AnalysisRequestSubmission,
  ];

  @override
  final String wireName = r'AnalysisRequestSubmission';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalysisRequestSubmission object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'forecasterId';
    yield serializers.serialize(
      object.forecasterId,
      specifiedType: const FullType(String),
    );
    yield r'questionId';
    yield serializers.serialize(
      object.questionId,
      specifiedType: const FullType(String),
    );
    if (object.orientation != null) {
      yield r'orientation';
      yield serializers.serialize(
        object.orientation,
        specifiedType: const FullType(AnalysisRequestSubmissionOrientationEnum),
      );
    }
    if (object.horizon != null) {
      yield r'horizon';
      yield serializers.serialize(
        object.horizon,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalysisRequestSubmission object, {
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
    required AnalysisRequestSubmissionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'forecasterId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.forecasterId = valueDes;
          break;
        case r'questionId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.questionId = valueDes;
          break;
        case r'orientation':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      AnalysisRequestSubmissionOrientationEnum,
                    ),
                  )
                  as AnalysisRequestSubmissionOrientationEnum?;
          if (valueDes == null) continue;
          result.orientation = valueDes;
          break;
        case r'horizon':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.horizon = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalysisRequestSubmission deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalysisRequestSubmissionBuilder();
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

/// Whether the provider's probability is for the question as stated (same) or its negation (inverse).
class AnalysisRequestSubmissionOrientationEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'same')
  static const AnalysisRequestSubmissionOrientationEnum same =
      _$analysisRequestSubmissionOrientationEnum_same;
  @BuiltValueEnumConst(wireName: r'inverse')
  static const AnalysisRequestSubmissionOrientationEnum inverse =
      _$analysisRequestSubmissionOrientationEnum_inverse;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AnalysisRequestSubmissionOrientationEnum unknownDefaultOpenApi =
      _$analysisRequestSubmissionOrientationEnum_unknownDefaultOpenApi;

  static Serializer<AnalysisRequestSubmissionOrientationEnum> get serializer =>
      _$analysisRequestSubmissionOrientationEnumSerializer;

  const AnalysisRequestSubmissionOrientationEnum._(String name) : super(name);

  static BuiltSet<AnalysisRequestSubmissionOrientationEnum> get values =>
      _$analysisRequestSubmissionOrientationEnumValues;
  static AnalysisRequestSubmissionOrientationEnum valueOf(String name) =>
      _$analysisRequestSubmissionOrientationEnumValueOf(name);
}
