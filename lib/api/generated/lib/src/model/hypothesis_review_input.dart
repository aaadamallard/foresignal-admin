//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/hypothesis_review_input_assumptions_inner.dart';
import 'package:foresignal_api/src/model/hypothesis_review_input_lr_inner.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hypothesis_review_input.g.dart';

/// A review revision (cause `review` or `operator`)
///
/// Properties:
/// * [cause] - default `review`
/// * [rationale]
/// * [proposalId] - ULID identifier
/// * [probabilities] - Direct probability changes per hypothesis id (logged)
/// * [lr]
/// * [assumptions]
/// * [exceedCap]
/// * [citations]
/// * [version] - Set version (optimistic lock)
@BuiltValue()
abstract class HypothesisReviewInput
    implements Built<HypothesisReviewInput, HypothesisReviewInputBuilder> {
  /// default `review`
  @BuiltValueField(wireName: r'cause')
  HypothesisReviewInputCauseEnum? get cause;
  // enum causeEnum {  review,  operator,  };

  @BuiltValueField(wireName: r'rationale')
  String get rationale;

  /// ULID identifier
  @BuiltValueField(wireName: r'proposalId')
  String? get proposalId;

  /// Direct probability changes per hypothesis id (logged)
  @BuiltValueField(wireName: r'probabilities')
  JsonObject? get probabilities;

  @BuiltValueField(wireName: r'lr')
  BuiltList<HypothesisReviewInputLrInner>? get lr;

  @BuiltValueField(wireName: r'assumptions')
  BuiltList<HypothesisReviewInputAssumptionsInner>? get assumptions;

  @BuiltValueField(wireName: r'exceedCap')
  bool? get exceedCap;

  @BuiltValueField(wireName: r'citations')
  BuiltList<String>? get citations;

  /// Set version (optimistic lock)
  @BuiltValueField(wireName: r'version')
  int? get version;

  HypothesisReviewInput._();

  factory HypothesisReviewInput(
      [void updates(HypothesisReviewInputBuilder b)]) = _$HypothesisReviewInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HypothesisReviewInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HypothesisReviewInput> get serializer =>
      _$HypothesisReviewInputSerializer();
}

class _$HypothesisReviewInputSerializer
    implements PrimitiveSerializer<HypothesisReviewInput> {
  @override
  final Iterable<Type> types = const [
    HypothesisReviewInput,
    _$HypothesisReviewInput
  ];

  @override
  final String wireName = r'HypothesisReviewInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HypothesisReviewInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.cause != null) {
      yield r'cause';
      yield serializers.serialize(
        object.cause,
        specifiedType: const FullType(HypothesisReviewInputCauseEnum),
      );
    }
    yield r'rationale';
    yield serializers.serialize(
      object.rationale,
      specifiedType: const FullType(String),
    );
    if (object.proposalId != null) {
      yield r'proposalId';
      yield serializers.serialize(
        object.proposalId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.probabilities != null) {
      yield r'probabilities';
      yield serializers.serialize(
        object.probabilities,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.lr != null) {
      yield r'lr';
      yield serializers.serialize(
        object.lr,
        specifiedType:
            const FullType(BuiltList, [FullType(HypothesisReviewInputLrInner)]),
      );
    }
    if (object.assumptions != null) {
      yield r'assumptions';
      yield serializers.serialize(
        object.assumptions,
        specifiedType: const FullType(
            BuiltList, [FullType(HypothesisReviewInputAssumptionsInner)]),
      );
    }
    if (object.exceedCap != null) {
      yield r'exceedCap';
      yield serializers.serialize(
        object.exceedCap,
        specifiedType: const FullType(bool),
      );
    }
    if (object.citations != null) {
      yield r'citations';
      yield serializers.serialize(
        object.citations,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HypothesisReviewInput object, {
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
    required HypothesisReviewInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cause':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(HypothesisReviewInputCauseEnum),
          ) as HypothesisReviewInputCauseEnum?;
          if (valueDes == null) continue;
          result.cause = valueDes;
          break;
        case r'rationale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rationale = valueDes;
          break;
        case r'proposalId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.proposalId = valueDes;
          break;
        case r'probabilities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.probabilities = valueDes;
          break;
        case r'lr':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(HypothesisReviewInputLrInner)]),
          ) as BuiltList<HypothesisReviewInputLrInner>?;
          if (valueDes == null) continue;
          result.lr.replace(valueDes);
          break;
        case r'assumptions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(HypothesisReviewInputAssumptionsInner)]),
          ) as BuiltList<HypothesisReviewInputAssumptionsInner>?;
          if (valueDes == null) continue;
          result.assumptions.replace(valueDes);
          break;
        case r'exceedCap':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.exceedCap = valueDes;
          break;
        case r'citations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.citations.replace(valueDes);
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HypothesisReviewInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HypothesisReviewInputBuilder();
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

/// default `review`
class HypothesisReviewInputCauseEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'review')
  static const HypothesisReviewInputCauseEnum review =
      _$hypothesisReviewInputCauseEnum_review;
  @BuiltValueEnumConst(wireName: r'operator')
  static const HypothesisReviewInputCauseEnum operator_ =
      _$hypothesisReviewInputCauseEnum_operator_;

  static Serializer<HypothesisReviewInputCauseEnum> get serializer =>
      _$hypothesisReviewInputCauseEnumSerializer;

  const HypothesisReviewInputCauseEnum._(String name) : super(name);

  static BuiltSet<HypothesisReviewInputCauseEnum> get values =>
      _$hypothesisReviewInputCauseEnumValues;
  static HypothesisReviewInputCauseEnum valueOf(String name) =>
      _$hypothesisReviewInputCauseEnumValueOf(name);
}
