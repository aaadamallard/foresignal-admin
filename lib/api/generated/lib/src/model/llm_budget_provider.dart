//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'llm_budget_provider.g.dart';

/// The caller's spend and budget on one provider (per-user-per-provider metering, 174)
///
/// Properties:
/// * [providerId] - The provider id (an `LlmProvider.id`)
/// * [name]
/// * [shared] - True for an admin-managed shared provider, false for the user's personal provider
/// * [capUsd] - The caller's monthly USD cap, if set
/// * [spentUsd] - Spent this UTC month
/// * [remainingUsd] - cap minus spend; null when uncapped
@BuiltValue()
abstract class LlmBudgetProvider
    implements Built<LlmBudgetProvider, LlmBudgetProviderBuilder> {
  /// The provider id (an `LlmProvider.id`)
  @BuiltValueField(wireName: r'providerId')
  String get providerId;

  @BuiltValueField(wireName: r'name')
  String get name;

  /// True for an admin-managed shared provider, false for the user's personal provider
  @BuiltValueField(wireName: r'shared')
  bool get shared;

  /// The caller's monthly USD cap, if set
  @BuiltValueField(wireName: r'capUsd')
  num? get capUsd;

  /// Spent this UTC month
  @BuiltValueField(wireName: r'spentUsd')
  num get spentUsd;

  /// cap minus spend; null when uncapped
  @BuiltValueField(wireName: r'remainingUsd')
  num? get remainingUsd;

  LlmBudgetProvider._();

  factory LlmBudgetProvider([void updates(LlmBudgetProviderBuilder b)]) =
      _$LlmBudgetProvider;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LlmBudgetProviderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LlmBudgetProvider> get serializer =>
      _$LlmBudgetProviderSerializer();
}

class _$LlmBudgetProviderSerializer
    implements PrimitiveSerializer<LlmBudgetProvider> {
  @override
  final Iterable<Type> types = const [LlmBudgetProvider, _$LlmBudgetProvider];

  @override
  final String wireName = r'LlmBudgetProvider';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LlmBudgetProvider object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'providerId';
    yield serializers.serialize(
      object.providerId,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'shared';
    yield serializers.serialize(
      object.shared,
      specifiedType: const FullType(bool),
    );
    if (object.capUsd != null) {
      yield r'capUsd';
      yield serializers.serialize(
        object.capUsd,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'spentUsd';
    yield serializers.serialize(
      object.spentUsd,
      specifiedType: const FullType(num),
    );
    if (object.remainingUsd != null) {
      yield r'remainingUsd';
      yield serializers.serialize(
        object.remainingUsd,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LlmBudgetProvider object, {
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
    required LlmBudgetProviderBuilder result,
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
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'shared':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.shared = valueDes;
          break;
        case r'capUsd':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.capUsd = valueDes;
          break;
        case r'spentUsd':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.spentUsd = valueDes;
          break;
        case r'remainingUsd':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.remainingUsd = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LlmBudgetProvider deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LlmBudgetProviderBuilder();
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
