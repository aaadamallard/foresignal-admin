//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/llm_budget_provider.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'me_llm_budget.g.dart';

/// The calling user's LLM budget and spend across shared and personal providers (R2-011)
///
/// Properties:
/// * [providers]
/// * [totalSpentUsd] - Total spend this UTC month across all providers
/// * [asOf]
@BuiltValue()
abstract class MeLlmBudget implements Built<MeLlmBudget, MeLlmBudgetBuilder> {
  @BuiltValueField(wireName: r'providers')
  BuiltList<LlmBudgetProvider> get providers;

  /// Total spend this UTC month across all providers
  @BuiltValueField(wireName: r'totalSpentUsd')
  num get totalSpentUsd;

  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  MeLlmBudget._();

  factory MeLlmBudget([void updates(MeLlmBudgetBuilder b)]) = _$MeLlmBudget;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MeLlmBudgetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MeLlmBudget> get serializer => _$MeLlmBudgetSerializer();
}

class _$MeLlmBudgetSerializer implements PrimitiveSerializer<MeLlmBudget> {
  @override
  final Iterable<Type> types = const [MeLlmBudget, _$MeLlmBudget];

  @override
  final String wireName = r'MeLlmBudget';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MeLlmBudget object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'providers';
    yield serializers.serialize(
      object.providers,
      specifiedType: const FullType(BuiltList, [FullType(LlmBudgetProvider)]),
    );
    yield r'totalSpentUsd';
    yield serializers.serialize(
      object.totalSpentUsd,
      specifiedType: const FullType(num),
    );
    if (object.asOf != null) {
      yield r'asOf';
      yield serializers.serialize(
        object.asOf,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MeLlmBudget object, {
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
    required MeLlmBudgetBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'providers':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(LlmBudgetProvider),
                    ]),
                  )
                  as BuiltList<LlmBudgetProvider>;
          result.providers.replace(valueDes);
          break;
        case r'totalSpentUsd':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.totalSpentUsd = valueDes;
          break;
        case r'asOf':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.asOf = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MeLlmBudget deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MeLlmBudgetBuilder();
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
