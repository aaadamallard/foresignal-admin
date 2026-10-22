//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tuning_suggestion_expected_effect.g.dart';

/// From a backtest of the patched variant when simulated
///
/// Properties:
/// * [wouldFire]
/// * [removedNegatives]
/// * [keptPositives]
/// * [backtestId] - ULID identifier
@BuiltValue()
abstract class TuningSuggestionExpectedEffect
    implements
        Built<
          TuningSuggestionExpectedEffect,
          TuningSuggestionExpectedEffectBuilder
        > {
  @BuiltValueField(wireName: r'wouldFire')
  int? get wouldFire;

  @BuiltValueField(wireName: r'removedNegatives')
  int? get removedNegatives;

  @BuiltValueField(wireName: r'keptPositives')
  int? get keptPositives;

  /// ULID identifier
  @BuiltValueField(wireName: r'backtestId')
  String? get backtestId;

  TuningSuggestionExpectedEffect._();

  factory TuningSuggestionExpectedEffect([
    void updates(TuningSuggestionExpectedEffectBuilder b),
  ]) = _$TuningSuggestionExpectedEffect;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TuningSuggestionExpectedEffectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TuningSuggestionExpectedEffect> get serializer =>
      _$TuningSuggestionExpectedEffectSerializer();
}

class _$TuningSuggestionExpectedEffectSerializer
    implements PrimitiveSerializer<TuningSuggestionExpectedEffect> {
  @override
  final Iterable<Type> types = const [
    TuningSuggestionExpectedEffect,
    _$TuningSuggestionExpectedEffect,
  ];

  @override
  final String wireName = r'TuningSuggestionExpectedEffect';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TuningSuggestionExpectedEffect object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.wouldFire != null) {
      yield r'wouldFire';
      yield serializers.serialize(
        object.wouldFire,
        specifiedType: const FullType(int),
      );
    }
    if (object.removedNegatives != null) {
      yield r'removedNegatives';
      yield serializers.serialize(
        object.removedNegatives,
        specifiedType: const FullType(int),
      );
    }
    if (object.keptPositives != null) {
      yield r'keptPositives';
      yield serializers.serialize(
        object.keptPositives,
        specifiedType: const FullType(int),
      );
    }
    if (object.backtestId != null) {
      yield r'backtestId';
      yield serializers.serialize(
        object.backtestId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TuningSuggestionExpectedEffect object, {
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
    required TuningSuggestionExpectedEffectBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'wouldFire':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.wouldFire = valueDes;
          break;
        case r'removedNegatives':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.removedNegatives = valueDes;
          break;
        case r'keptPositives':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.keptPositives = valueDes;
          break;
        case r'backtestId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.backtestId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TuningSuggestionExpectedEffect deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TuningSuggestionExpectedEffectBuilder();
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
