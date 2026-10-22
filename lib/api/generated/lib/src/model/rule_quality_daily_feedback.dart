//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rule_quality_daily_feedback.g.dart';

/// Counts per feedback value
///
/// Properties:
/// * [useful]
/// * [noise]
/// * [late_]
/// * [falsePositive]
@BuiltValue()
abstract class RuleQualityDailyFeedback
    implements
        Built<RuleQualityDailyFeedback, RuleQualityDailyFeedbackBuilder> {
  @BuiltValueField(wireName: r'useful')
  int? get useful;

  @BuiltValueField(wireName: r'noise')
  int? get noise;

  @BuiltValueField(wireName: r'late')
  int? get late_;

  @BuiltValueField(wireName: r'false_positive')
  int? get falsePositive;

  RuleQualityDailyFeedback._();

  factory RuleQualityDailyFeedback([
    void updates(RuleQualityDailyFeedbackBuilder b),
  ]) = _$RuleQualityDailyFeedback;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuleQualityDailyFeedbackBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuleQualityDailyFeedback> get serializer =>
      _$RuleQualityDailyFeedbackSerializer();
}

class _$RuleQualityDailyFeedbackSerializer
    implements PrimitiveSerializer<RuleQualityDailyFeedback> {
  @override
  final Iterable<Type> types = const [
    RuleQualityDailyFeedback,
    _$RuleQualityDailyFeedback,
  ];

  @override
  final String wireName = r'RuleQualityDailyFeedback';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuleQualityDailyFeedback object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.useful != null) {
      yield r'useful';
      yield serializers.serialize(
        object.useful,
        specifiedType: const FullType(int),
      );
    }
    if (object.noise != null) {
      yield r'noise';
      yield serializers.serialize(
        object.noise,
        specifiedType: const FullType(int),
      );
    }
    if (object.late_ != null) {
      yield r'late';
      yield serializers.serialize(
        object.late_,
        specifiedType: const FullType(int),
      );
    }
    if (object.falsePositive != null) {
      yield r'false_positive';
      yield serializers.serialize(
        object.falsePositive,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RuleQualityDailyFeedback object, {
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
    required RuleQualityDailyFeedbackBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'useful':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.useful = valueDes;
          break;
        case r'noise':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.noise = valueDes;
          break;
        case r'late':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.late_ = valueDes;
          break;
        case r'false_positive':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.falsePositive = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuleQualityDailyFeedback deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuleQualityDailyFeedbackBuilder();
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
