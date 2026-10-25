//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'llm_provider_balance_amounts_inner.g.dart';

/// LlmProviderBalanceAmountsInner
///
/// Properties:
/// * [amount]
/// * [currency] - ISO 4217 code
@BuiltValue()
abstract class LlmProviderBalanceAmountsInner
    implements
        Built<
          LlmProviderBalanceAmountsInner,
          LlmProviderBalanceAmountsInnerBuilder
        > {
  @BuiltValueField(wireName: r'amount')
  num get amount;

  /// ISO 4217 code
  @BuiltValueField(wireName: r'currency')
  String get currency;

  LlmProviderBalanceAmountsInner._();

  factory LlmProviderBalanceAmountsInner([
    void updates(LlmProviderBalanceAmountsInnerBuilder b),
  ]) = _$LlmProviderBalanceAmountsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LlmProviderBalanceAmountsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LlmProviderBalanceAmountsInner> get serializer =>
      _$LlmProviderBalanceAmountsInnerSerializer();
}

class _$LlmProviderBalanceAmountsInnerSerializer
    implements PrimitiveSerializer<LlmProviderBalanceAmountsInner> {
  @override
  final Iterable<Type> types = const [
    LlmProviderBalanceAmountsInner,
    _$LlmProviderBalanceAmountsInner,
  ];

  @override
  final String wireName = r'LlmProviderBalanceAmountsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LlmProviderBalanceAmountsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'amount';
    yield serializers.serialize(
      object.amount,
      specifiedType: const FullType(num),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LlmProviderBalanceAmountsInner object, {
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
    required LlmProviderBalanceAmountsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'amount':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.amount = valueDes;
          break;
        case r'currency':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.currency = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LlmProviderBalanceAmountsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LlmProviderBalanceAmountsInnerBuilder();
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
