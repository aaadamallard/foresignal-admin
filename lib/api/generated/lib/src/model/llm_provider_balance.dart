//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/llm_provider_balance_amounts_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'llm_provider_balance.g.dart';

/// A balance the provider itself reports for the account behind the key (162). Information only: it is shown beside the caps and never enforced; the caps count Foresignal's own metered spend. Reported by DeepSeek (GET /user/balance, `total_balance` per currency) and OpenRouter (GET /api/v1/credits, total_credits less total_usage, which only a management key may read; otherwise GET /api/v1/key, the key's `limit_remaining`). Other providers expose no balance to the inference key, so they have none. Fetched at most once a minute.
///
/// Properties:
/// * [provider] - Who reported it
/// * [kind] - `account`: the account's balance or credits; `key-limit`: what is left of this key's own spending limit
/// * [amounts] - One amount per currency; empty when it could not be fetched
/// * [fetchedAt]
/// * [error] - Why it could not be fetched, or null
@BuiltValue()
abstract class LlmProviderBalance
    implements Built<LlmProviderBalance, LlmProviderBalanceBuilder> {
  /// Who reported it
  @BuiltValueField(wireName: r'provider')
  String get provider;

  /// `account`: the account's balance or credits; `key-limit`: what is left of this key's own spending limit
  @BuiltValueField(wireName: r'kind')
  String get kind;

  /// One amount per currency; empty when it could not be fetched
  @BuiltValueField(wireName: r'amounts')
  BuiltList<LlmProviderBalanceAmountsInner> get amounts;

  @BuiltValueField(wireName: r'fetchedAt')
  DateTime get fetchedAt;

  /// Why it could not be fetched, or null
  @BuiltValueField(wireName: r'error')
  String? get error;

  LlmProviderBalance._();

  factory LlmProviderBalance([void updates(LlmProviderBalanceBuilder b)]) =
      _$LlmProviderBalance;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LlmProviderBalanceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LlmProviderBalance> get serializer =>
      _$LlmProviderBalanceSerializer();
}

class _$LlmProviderBalanceSerializer
    implements PrimitiveSerializer<LlmProviderBalance> {
  @override
  final Iterable<Type> types = const [LlmProviderBalance, _$LlmProviderBalance];

  @override
  final String wireName = r'LlmProviderBalance';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LlmProviderBalance object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'provider';
    yield serializers.serialize(
      object.provider,
      specifiedType: const FullType(String),
    );
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(String),
    );
    yield r'amounts';
    yield serializers.serialize(
      object.amounts,
      specifiedType: const FullType(BuiltList, [
        FullType(LlmProviderBalanceAmountsInner),
      ]),
    );
    yield r'fetchedAt';
    yield serializers.serialize(
      object.fetchedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LlmProviderBalance object, {
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
    required LlmProviderBalanceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'provider':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.provider = valueDes;
          break;
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.kind = valueDes;
          break;
        case r'amounts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(LlmProviderBalanceAmountsInner),
                    ]),
                  )
                  as BuiltList<LlmProviderBalanceAmountsInner>;
          result.amounts.replace(valueDes);
          break;
        case r'fetchedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.fetchedAt = valueDes;
          break;
        case r'error':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LlmProviderBalance deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LlmProviderBalanceBuilder();
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
