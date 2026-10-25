//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'llm_provider_budget_rate_limits.g.dart';

/// LlmProviderBudgetRateLimits
///
/// Properties:
/// * [requestsPerMinute]
/// * [tokensPerDay]
/// * [tokensToday]
@BuiltValue()
abstract class LlmProviderBudgetRateLimits
    implements
        Built<LlmProviderBudgetRateLimits, LlmProviderBudgetRateLimitsBuilder> {
  @BuiltValueField(wireName: r'requestsPerMinute')
  int get requestsPerMinute;

  @BuiltValueField(wireName: r'tokensPerDay')
  int get tokensPerDay;

  @BuiltValueField(wireName: r'tokensToday')
  int get tokensToday;

  LlmProviderBudgetRateLimits._();

  factory LlmProviderBudgetRateLimits([
    void updates(LlmProviderBudgetRateLimitsBuilder b),
  ]) = _$LlmProviderBudgetRateLimits;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LlmProviderBudgetRateLimitsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LlmProviderBudgetRateLimits> get serializer =>
      _$LlmProviderBudgetRateLimitsSerializer();
}

class _$LlmProviderBudgetRateLimitsSerializer
    implements PrimitiveSerializer<LlmProviderBudgetRateLimits> {
  @override
  final Iterable<Type> types = const [
    LlmProviderBudgetRateLimits,
    _$LlmProviderBudgetRateLimits,
  ];

  @override
  final String wireName = r'LlmProviderBudgetRateLimits';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LlmProviderBudgetRateLimits object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'requestsPerMinute';
    yield serializers.serialize(
      object.requestsPerMinute,
      specifiedType: const FullType(int),
    );
    yield r'tokensPerDay';
    yield serializers.serialize(
      object.tokensPerDay,
      specifiedType: const FullType(int),
    );
    yield r'tokensToday';
    yield serializers.serialize(
      object.tokensToday,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LlmProviderBudgetRateLimits object, {
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
    required LlmProviderBudgetRateLimitsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'requestsPerMinute':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.requestsPerMinute = valueDes;
          break;
        case r'tokensPerDay':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.tokensPerDay = valueDes;
          break;
        case r'tokensToday':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.tokensToday = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LlmProviderBudgetRateLimits deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LlmProviderBudgetRateLimitsBuilder();
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
