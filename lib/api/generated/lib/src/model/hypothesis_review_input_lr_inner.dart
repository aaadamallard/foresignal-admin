//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/indicator_likelihood.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hypothesis_review_input_lr_inner.g.dart';

/// LR change
///
/// Properties:
/// * [indicatorId] - ULID identifier
/// * [hypothesisId] - ULID identifier
/// * [likelihood]
@BuiltValue()
abstract class HypothesisReviewInputLrInner
    implements
        Built<HypothesisReviewInputLrInner,
            HypothesisReviewInputLrInnerBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'indicatorId')
  String get indicatorId;

  /// ULID identifier
  @BuiltValueField(wireName: r'hypothesisId')
  String get hypothesisId;

  @BuiltValueField(wireName: r'likelihood')
  IndicatorLikelihood get likelihood;

  HypothesisReviewInputLrInner._();

  factory HypothesisReviewInputLrInner(
          [void updates(HypothesisReviewInputLrInnerBuilder b)]) =
      _$HypothesisReviewInputLrInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HypothesisReviewInputLrInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HypothesisReviewInputLrInner> get serializer =>
      _$HypothesisReviewInputLrInnerSerializer();
}

class _$HypothesisReviewInputLrInnerSerializer
    implements PrimitiveSerializer<HypothesisReviewInputLrInner> {
  @override
  final Iterable<Type> types = const [
    HypothesisReviewInputLrInner,
    _$HypothesisReviewInputLrInner
  ];

  @override
  final String wireName = r'HypothesisReviewInputLrInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HypothesisReviewInputLrInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'indicatorId';
    yield serializers.serialize(
      object.indicatorId,
      specifiedType: const FullType(String),
    );
    yield r'hypothesisId';
    yield serializers.serialize(
      object.hypothesisId,
      specifiedType: const FullType(String),
    );
    yield r'likelihood';
    yield serializers.serialize(
      object.likelihood,
      specifiedType: const FullType(IndicatorLikelihood),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    HypothesisReviewInputLrInner object, {
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
    required HypothesisReviewInputLrInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'indicatorId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.indicatorId = valueDes;
          break;
        case r'hypothesisId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.hypothesisId = valueDes;
          break;
        case r'likelihood':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IndicatorLikelihood),
          ) as IndicatorLikelihood;
          result.likelihood.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HypothesisReviewInputLrInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HypothesisReviewInputLrInnerBuilder();
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
