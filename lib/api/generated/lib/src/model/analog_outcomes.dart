//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/severity.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/analog_outcomes_hypothesis_outcome.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analog_outcomes.g.dart';

/// What happened next
///
/// Properties:
/// * [durationDays]
/// * [peakSeverity]
/// * [followOnFamilies7d]
/// * [followOnFamilies30d]
/// * [hypothesisOutcome]
/// * [targetOutcomeOccurred] - Whether the requested outcome occurred
@BuiltValue()
abstract class AnalogOutcomes
    implements Built<AnalogOutcomes, AnalogOutcomesBuilder> {
  @BuiltValueField(wireName: r'durationDays')
  num? get durationDays;

  @BuiltValueField(wireName: r'peakSeverity')
  Severity? get peakSeverity;
  // enum peakSeverityEnum {  info,  warning,  critical,  };

  @BuiltValueField(wireName: r'followOnFamilies7d')
  BuiltList<String>? get followOnFamilies7d;

  @BuiltValueField(wireName: r'followOnFamilies30d')
  BuiltList<String>? get followOnFamilies30d;

  @BuiltValueField(wireName: r'hypothesisOutcome')
  AnalogOutcomesHypothesisOutcome? get hypothesisOutcome;

  /// Whether the requested outcome occurred
  @BuiltValueField(wireName: r'targetOutcomeOccurred')
  bool? get targetOutcomeOccurred;

  AnalogOutcomes._();

  factory AnalogOutcomes([void updates(AnalogOutcomesBuilder b)]) =
      _$AnalogOutcomes;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalogOutcomesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalogOutcomes> get serializer =>
      _$AnalogOutcomesSerializer();
}

class _$AnalogOutcomesSerializer
    implements PrimitiveSerializer<AnalogOutcomes> {
  @override
  final Iterable<Type> types = const [AnalogOutcomes, _$AnalogOutcomes];

  @override
  final String wireName = r'AnalogOutcomes';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalogOutcomes object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.durationDays != null) {
      yield r'durationDays';
      yield serializers.serialize(
        object.durationDays,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.peakSeverity != null) {
      yield r'peakSeverity';
      yield serializers.serialize(
        object.peakSeverity,
        specifiedType: const FullType.nullable(Severity),
      );
    }
    if (object.followOnFamilies7d != null) {
      yield r'followOnFamilies7d';
      yield serializers.serialize(
        object.followOnFamilies7d,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.followOnFamilies30d != null) {
      yield r'followOnFamilies30d';
      yield serializers.serialize(
        object.followOnFamilies30d,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.hypothesisOutcome != null) {
      yield r'hypothesisOutcome';
      yield serializers.serialize(
        object.hypothesisOutcome,
        specifiedType: const FullType.nullable(AnalogOutcomesHypothesisOutcome),
      );
    }
    if (object.targetOutcomeOccurred != null) {
      yield r'targetOutcomeOccurred';
      yield serializers.serialize(
        object.targetOutcomeOccurred,
        specifiedType: const FullType.nullable(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalogOutcomes object, {
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
    required AnalogOutcomesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'durationDays':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.durationDays = valueDes;
          break;
        case r'peakSeverity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Severity),
          ) as Severity?;
          if (valueDes == null) continue;
          result.peakSeverity = valueDes;
          break;
        case r'followOnFamilies7d':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.followOnFamilies7d.replace(valueDes);
          break;
        case r'followOnFamilies30d':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.followOnFamilies30d.replace(valueDes);
          break;
        case r'hypothesisOutcome':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(AnalogOutcomesHypothesisOutcome),
          ) as AnalogOutcomesHypothesisOutcome?;
          if (valueDes == null) continue;
          result.hypothesisOutcome.replace(valueDes);
          break;
        case r'targetOutcomeOccurred':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.targetOutcomeOccurred = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalogOutcomes deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalogOutcomesBuilder();
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
