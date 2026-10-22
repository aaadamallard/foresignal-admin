//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/rule_quality_daily_signals.dart';
import 'package:foresignal_api/src/model/date.dart';
import 'package:foresignal_api/src/model/rule_quality_daily_feedback.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rule_quality_daily.g.dart';

/// Daily alert-quality trend row for a rule (retained 400 days) (115)
///
/// Properties:
/// * [ruleId]
/// * [day]
/// * [fired]
/// * [feedback]
/// * [signals]
/// * [medianAckSeconds]
/// * [flaps]
/// * [suppressedByCooldown]
/// * [suppressedByRateCap]
@BuiltValue()
abstract class RuleQualityDaily
    implements Built<RuleQualityDaily, RuleQualityDailyBuilder> {
  @BuiltValueField(wireName: r'ruleId')
  String get ruleId;

  @BuiltValueField(wireName: r'day')
  Date get day;

  @BuiltValueField(wireName: r'fired')
  int get fired;

  @BuiltValueField(wireName: r'feedback')
  RuleQualityDailyFeedback? get feedback;

  @BuiltValueField(wireName: r'signals')
  RuleQualityDailySignals? get signals;

  @BuiltValueField(wireName: r'medianAckSeconds')
  num? get medianAckSeconds;

  @BuiltValueField(wireName: r'flaps')
  int? get flaps;

  @BuiltValueField(wireName: r'suppressedByCooldown')
  int? get suppressedByCooldown;

  @BuiltValueField(wireName: r'suppressedByRateCap')
  int? get suppressedByRateCap;

  RuleQualityDaily._();

  factory RuleQualityDaily([void updates(RuleQualityDailyBuilder b)]) =
      _$RuleQualityDaily;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuleQualityDailyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuleQualityDaily> get serializer =>
      _$RuleQualityDailySerializer();
}

class _$RuleQualityDailySerializer
    implements PrimitiveSerializer<RuleQualityDaily> {
  @override
  final Iterable<Type> types = const [RuleQualityDaily, _$RuleQualityDaily];

  @override
  final String wireName = r'RuleQualityDaily';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuleQualityDaily object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ruleId';
    yield serializers.serialize(
      object.ruleId,
      specifiedType: const FullType(String),
    );
    yield r'day';
    yield serializers.serialize(
      object.day,
      specifiedType: const FullType(Date),
    );
    yield r'fired';
    yield serializers.serialize(
      object.fired,
      specifiedType: const FullType(int),
    );
    if (object.feedback != null) {
      yield r'feedback';
      yield serializers.serialize(
        object.feedback,
        specifiedType: const FullType(RuleQualityDailyFeedback),
      );
    }
    if (object.signals != null) {
      yield r'signals';
      yield serializers.serialize(
        object.signals,
        specifiedType: const FullType(RuleQualityDailySignals),
      );
    }
    if (object.medianAckSeconds != null) {
      yield r'medianAckSeconds';
      yield serializers.serialize(
        object.medianAckSeconds,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.flaps != null) {
      yield r'flaps';
      yield serializers.serialize(
        object.flaps,
        specifiedType: const FullType(int),
      );
    }
    if (object.suppressedByCooldown != null) {
      yield r'suppressedByCooldown';
      yield serializers.serialize(
        object.suppressedByCooldown,
        specifiedType: const FullType(int),
      );
    }
    if (object.suppressedByRateCap != null) {
      yield r'suppressedByRateCap';
      yield serializers.serialize(
        object.suppressedByRateCap,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RuleQualityDaily object, {
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
    required RuleQualityDailyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ruleId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ruleId = valueDes;
          break;
        case r'day':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Date),
                  )
                  as Date;
          result.day = valueDes;
          break;
        case r'fired':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.fired = valueDes;
          break;
        case r'feedback':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      RuleQualityDailyFeedback,
                    ),
                  )
                  as RuleQualityDailyFeedback?;
          if (valueDes == null) continue;
          result.feedback.replace(valueDes);
          break;
        case r'signals':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      RuleQualityDailySignals,
                    ),
                  )
                  as RuleQualityDailySignals?;
          if (valueDes == null) continue;
          result.signals.replace(valueDes);
          break;
        case r'medianAckSeconds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.medianAckSeconds = valueDes;
          break;
        case r'flaps':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.flaps = valueDes;
          break;
        case r'suppressedByCooldown':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.suppressedByCooldown = valueDes;
          break;
        case r'suppressedByRateCap':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.suppressedByRateCap = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuleQualityDaily deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuleQualityDailyBuilder();
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
