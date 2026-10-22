//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rule_quality_daily_signals.g.dart';

/// Counts per implicit signal
///
/// Properties:
/// * [ACK_FAST]
/// * [SNOOZED]
/// * [FLAP]
/// * [UNOPENED]
@BuiltValue()
abstract class RuleQualityDailySignals
    implements Built<RuleQualityDailySignals, RuleQualityDailySignalsBuilder> {
  @BuiltValueField(wireName: r'ACK_FAST')
  int? get ACK_FAST;

  @BuiltValueField(wireName: r'SNOOZED')
  int? get SNOOZED;

  @BuiltValueField(wireName: r'FLAP')
  int? get FLAP;

  @BuiltValueField(wireName: r'UNOPENED')
  int? get UNOPENED;

  RuleQualityDailySignals._();

  factory RuleQualityDailySignals([
    void updates(RuleQualityDailySignalsBuilder b),
  ]) = _$RuleQualityDailySignals;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuleQualityDailySignalsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuleQualityDailySignals> get serializer =>
      _$RuleQualityDailySignalsSerializer();
}

class _$RuleQualityDailySignalsSerializer
    implements PrimitiveSerializer<RuleQualityDailySignals> {
  @override
  final Iterable<Type> types = const [
    RuleQualityDailySignals,
    _$RuleQualityDailySignals,
  ];

  @override
  final String wireName = r'RuleQualityDailySignals';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuleQualityDailySignals object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ACK_FAST != null) {
      yield r'ACK_FAST';
      yield serializers.serialize(
        object.ACK_FAST,
        specifiedType: const FullType(int),
      );
    }
    if (object.SNOOZED != null) {
      yield r'SNOOZED';
      yield serializers.serialize(
        object.SNOOZED,
        specifiedType: const FullType(int),
      );
    }
    if (object.FLAP != null) {
      yield r'FLAP';
      yield serializers.serialize(
        object.FLAP,
        specifiedType: const FullType(int),
      );
    }
    if (object.UNOPENED != null) {
      yield r'UNOPENED';
      yield serializers.serialize(
        object.UNOPENED,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RuleQualityDailySignals object, {
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
    required RuleQualityDailySignalsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ACK_FAST':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.ACK_FAST = valueDes;
          break;
        case r'SNOOZED':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.SNOOZED = valueDes;
          break;
        case r'FLAP':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.FLAP = valueDes;
          break;
        case r'UNOPENED':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.UNOPENED = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuleQualityDailySignals deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuleQualityDailySignalsBuilder();
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
