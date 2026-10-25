//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/llm_provider_budget_rate_limits.dart';
import 'package:foresignal_api/src/model/llm_provider_budget_windows.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/llm_provider_balance.dart';
import 'package:foresignal_api/src/model/llm_pricing.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'llm_provider_budget.g.dart';

/// A provider's spend against its USD caps, its token and request limits, and the balance it reports, when it reports one (162).
///
/// Properties:
/// * [providerId]
/// * [currency]
/// * [priced] - Whether any price is set; without prices spend stays 0
/// * [pricing]
/// * [windows]
/// * [rateLimits]
/// * [providerBalance] - The provider-reported balance, or null when the provider reports none
@BuiltValue()
abstract class LlmProviderBudget
    implements Built<LlmProviderBudget, LlmProviderBudgetBuilder> {
  @BuiltValueField(wireName: r'providerId')
  String get providerId;

  @BuiltValueField(wireName: r'currency')
  LlmProviderBudgetCurrencyEnum get currency;
  // enum currencyEnum {  USD,  };

  /// Whether any price is set; without prices spend stays 0
  @BuiltValueField(wireName: r'priced')
  bool get priced;

  @BuiltValueField(wireName: r'pricing')
  LlmPricing get pricing;

  @BuiltValueField(wireName: r'windows')
  LlmProviderBudgetWindows get windows;

  @BuiltValueField(wireName: r'rateLimits')
  LlmProviderBudgetRateLimits get rateLimits;

  /// The provider-reported balance, or null when the provider reports none
  @BuiltValueField(wireName: r'providerBalance')
  LlmProviderBalance? get providerBalance;

  LlmProviderBudget._();

  factory LlmProviderBudget([void updates(LlmProviderBudgetBuilder b)]) =
      _$LlmProviderBudget;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LlmProviderBudgetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LlmProviderBudget> get serializer =>
      _$LlmProviderBudgetSerializer();
}

class _$LlmProviderBudgetSerializer
    implements PrimitiveSerializer<LlmProviderBudget> {
  @override
  final Iterable<Type> types = const [LlmProviderBudget, _$LlmProviderBudget];

  @override
  final String wireName = r'LlmProviderBudget';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LlmProviderBudget object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'providerId';
    yield serializers.serialize(
      object.providerId,
      specifiedType: const FullType(String),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(LlmProviderBudgetCurrencyEnum),
    );
    yield r'priced';
    yield serializers.serialize(
      object.priced,
      specifiedType: const FullType(bool),
    );
    yield r'pricing';
    yield serializers.serialize(
      object.pricing,
      specifiedType: const FullType(LlmPricing),
    );
    yield r'windows';
    yield serializers.serialize(
      object.windows,
      specifiedType: const FullType(LlmProviderBudgetWindows),
    );
    yield r'rateLimits';
    yield serializers.serialize(
      object.rateLimits,
      specifiedType: const FullType(LlmProviderBudgetRateLimits),
    );
    yield r'providerBalance';
    yield object.providerBalance == null
        ? null
        : serializers.serialize(
            object.providerBalance,
            specifiedType: const FullType.nullable(LlmProviderBalance),
          );
  }

  @override
  Object serialize(
    Serializers serializers,
    LlmProviderBudget object, {
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
    required LlmProviderBudgetBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'providerId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.providerId = valueDes;
          break;
        case r'currency':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      LlmProviderBudgetCurrencyEnum,
                    ),
                  )
                  as LlmProviderBudgetCurrencyEnum;
          result.currency = valueDes;
          break;
        case r'priced':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.priced = valueDes;
          break;
        case r'pricing':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(LlmPricing),
                  )
                  as LlmPricing;
          result.pricing.replace(valueDes);
          break;
        case r'windows':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(LlmProviderBudgetWindows),
                  )
                  as LlmProviderBudgetWindows;
          result.windows.replace(valueDes);
          break;
        case r'rateLimits':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(LlmProviderBudgetRateLimits),
                  )
                  as LlmProviderBudgetRateLimits;
          result.rateLimits.replace(valueDes);
          break;
        case r'providerBalance':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(LlmProviderBalance),
                  )
                  as LlmProviderBalance?;
          if (valueDes == null) continue;
          result.providerBalance.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LlmProviderBudget deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LlmProviderBudgetBuilder();
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

class LlmProviderBudgetCurrencyEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'USD')
  static const LlmProviderBudgetCurrencyEnum USD =
      _$llmProviderBudgetCurrencyEnum_USD;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const LlmProviderBudgetCurrencyEnum unknownDefaultOpenApi =
      _$llmProviderBudgetCurrencyEnum_unknownDefaultOpenApi;

  static Serializer<LlmProviderBudgetCurrencyEnum> get serializer =>
      _$llmProviderBudgetCurrencyEnumSerializer;

  const LlmProviderBudgetCurrencyEnum._(String name) : super(name);

  static BuiltSet<LlmProviderBudgetCurrencyEnum> get values =>
      _$llmProviderBudgetCurrencyEnumValues;
  static LlmProviderBudgetCurrencyEnum valueOf(String name) =>
      _$llmProviderBudgetCurrencyEnumValueOf(name);
}
