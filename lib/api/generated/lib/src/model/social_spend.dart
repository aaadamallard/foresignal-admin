//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_spend.g.dart';

/// Money spend of a paid platform this calendar month (005 budget in money as well as calls)
///
/// Properties:
/// * [currency]
/// * [spentThisMonth] - US dollars
/// * [monthlyCapUsd] - Calls are refused with BUDGET_EXCEEDED when spent + estimate would exceed it
/// * [projectedThisMonth] - Projected month-end spend at the current rate
/// * [standingCountsEstimateMonthly] - X: monthly cost of hourly counts for the current standing topics, shown before they are enabled
/// * [pricesAsOf] - Date the seeded or edited prices were taken from the pricing page
/// * [refusedThisMonth]
@BuiltValue()
abstract class SocialSpend implements Built<SocialSpend, SocialSpendBuilder> {
  @BuiltValueField(wireName: r'currency')
  SocialSpendCurrencyEnum get currency;
  // enum currencyEnum {  USD,  };

  /// US dollars
  @BuiltValueField(wireName: r'spentThisMonth')
  num get spentThisMonth;

  /// Calls are refused with BUDGET_EXCEEDED when spent + estimate would exceed it
  @BuiltValueField(wireName: r'monthlyCapUsd')
  num? get monthlyCapUsd;

  /// Projected month-end spend at the current rate
  @BuiltValueField(wireName: r'projectedThisMonth')
  num? get projectedThisMonth;

  /// X: monthly cost of hourly counts for the current standing topics, shown before they are enabled
  @BuiltValueField(wireName: r'standingCountsEstimateMonthly')
  num? get standingCountsEstimateMonthly;

  /// Date the seeded or edited prices were taken from the pricing page
  @BuiltValueField(wireName: r'pricesAsOf')
  Date? get pricesAsOf;

  @BuiltValueField(wireName: r'refusedThisMonth')
  int? get refusedThisMonth;

  SocialSpend._();

  factory SocialSpend([void updates(SocialSpendBuilder b)]) = _$SocialSpend;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialSpendBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialSpend> get serializer => _$SocialSpendSerializer();
}

class _$SocialSpendSerializer implements PrimitiveSerializer<SocialSpend> {
  @override
  final Iterable<Type> types = const [SocialSpend, _$SocialSpend];

  @override
  final String wireName = r'SocialSpend';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialSpend object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(SocialSpendCurrencyEnum),
    );
    yield r'spentThisMonth';
    yield serializers.serialize(
      object.spentThisMonth,
      specifiedType: const FullType(num),
    );
    if (object.monthlyCapUsd != null) {
      yield r'monthlyCapUsd';
      yield serializers.serialize(
        object.monthlyCapUsd,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.projectedThisMonth != null) {
      yield r'projectedThisMonth';
      yield serializers.serialize(
        object.projectedThisMonth,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.standingCountsEstimateMonthly != null) {
      yield r'standingCountsEstimateMonthly';
      yield serializers.serialize(
        object.standingCountsEstimateMonthly,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.pricesAsOf != null) {
      yield r'pricesAsOf';
      yield serializers.serialize(
        object.pricesAsOf,
        specifiedType: const FullType.nullable(Date),
      );
    }
    if (object.refusedThisMonth != null) {
      yield r'refusedThisMonth';
      yield serializers.serialize(
        object.refusedThisMonth,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialSpend object, {
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
    required SocialSpendBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'currency':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SocialSpendCurrencyEnum),
                  )
                  as SocialSpendCurrencyEnum;
          result.currency = valueDes;
          break;
        case r'spentThisMonth':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.spentThisMonth = valueDes;
          break;
        case r'monthlyCapUsd':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.monthlyCapUsd = valueDes;
          break;
        case r'projectedThisMonth':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.projectedThisMonth = valueDes;
          break;
        case r'standingCountsEstimateMonthly':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.standingCountsEstimateMonthly = valueDes;
          break;
        case r'pricesAsOf':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Date),
                  )
                  as Date?;
          if (valueDes == null) continue;
          result.pricesAsOf = valueDes;
          break;
        case r'refusedThisMonth':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.refusedThisMonth = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialSpend deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialSpendBuilder();
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

class SocialSpendCurrencyEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'USD')
  static const SocialSpendCurrencyEnum USD = _$socialSpendCurrencyEnum_USD;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SocialSpendCurrencyEnum unknownDefaultOpenApi =
      _$socialSpendCurrencyEnum_unknownDefaultOpenApi;

  static Serializer<SocialSpendCurrencyEnum> get serializer =>
      _$socialSpendCurrencyEnumSerializer;

  const SocialSpendCurrencyEnum._(String name) : super(name);

  static BuiltSet<SocialSpendCurrencyEnum> get values =>
      _$socialSpendCurrencyEnumValues;
  static SocialSpendCurrencyEnum valueOf(String name) =>
      _$socialSpendCurrencyEnumValueOf(name);
}
