//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'llm_spend_window.g.dart';

/// Spend in one window against its cap (162).
///
/// Properties:
/// * [window]
/// * [start] - When the window began (UTC boundary)
/// * [resetsAt] - When it resets: the next hour, 00:00 UTC, or the 1st
/// * [spentUsd] - USD spent in the window: settled calls at the provider's prices, seeded from the stored usage after a restart
/// * [reservedUsd] - Estimated USD of the calls in flight, held against the cap until they settle
/// * [capUsd] - The cap, or null when this window has none
/// * [remainingUsd] - capUsd less spentUsd, never below 0; null without a cap
/// * [exhausted] - True when spent plus reserved has reached the cap: calls are refused until resetsAt
@BuiltValue()
abstract class LlmSpendWindow
    implements Built<LlmSpendWindow, LlmSpendWindowBuilder> {
  @BuiltValueField(wireName: r'window')
  LlmSpendWindowWindowEnum get window;
  // enum windowEnum {  hour,  day,  month,  };

  /// When the window began (UTC boundary)
  @BuiltValueField(wireName: r'start')
  DateTime get start;

  /// When it resets: the next hour, 00:00 UTC, or the 1st
  @BuiltValueField(wireName: r'resetsAt')
  DateTime get resetsAt;

  /// USD spent in the window: settled calls at the provider's prices, seeded from the stored usage after a restart
  @BuiltValueField(wireName: r'spentUsd')
  num get spentUsd;

  /// Estimated USD of the calls in flight, held against the cap until they settle
  @BuiltValueField(wireName: r'reservedUsd')
  num get reservedUsd;

  /// The cap, or null when this window has none
  @BuiltValueField(wireName: r'capUsd')
  num? get capUsd;

  /// capUsd less spentUsd, never below 0; null without a cap
  @BuiltValueField(wireName: r'remainingUsd')
  num? get remainingUsd;

  /// True when spent plus reserved has reached the cap: calls are refused until resetsAt
  @BuiltValueField(wireName: r'exhausted')
  bool get exhausted;

  LlmSpendWindow._();

  factory LlmSpendWindow([void updates(LlmSpendWindowBuilder b)]) =
      _$LlmSpendWindow;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LlmSpendWindowBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LlmSpendWindow> get serializer =>
      _$LlmSpendWindowSerializer();
}

class _$LlmSpendWindowSerializer
    implements PrimitiveSerializer<LlmSpendWindow> {
  @override
  final Iterable<Type> types = const [LlmSpendWindow, _$LlmSpendWindow];

  @override
  final String wireName = r'LlmSpendWindow';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LlmSpendWindow object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'window';
    yield serializers.serialize(
      object.window,
      specifiedType: const FullType(LlmSpendWindowWindowEnum),
    );
    yield r'start';
    yield serializers.serialize(
      object.start,
      specifiedType: const FullType(DateTime),
    );
    yield r'resetsAt';
    yield serializers.serialize(
      object.resetsAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'spentUsd';
    yield serializers.serialize(
      object.spentUsd,
      specifiedType: const FullType(num),
    );
    yield r'reservedUsd';
    yield serializers.serialize(
      object.reservedUsd,
      specifiedType: const FullType(num),
    );
    yield r'capUsd';
    yield object.capUsd == null
        ? null
        : serializers.serialize(
            object.capUsd,
            specifiedType: const FullType.nullable(num),
          );
    yield r'remainingUsd';
    yield object.remainingUsd == null
        ? null
        : serializers.serialize(
            object.remainingUsd,
            specifiedType: const FullType.nullable(num),
          );
    yield r'exhausted';
    yield serializers.serialize(
      object.exhausted,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LlmSpendWindow object, {
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
    required LlmSpendWindowBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'window':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(LlmSpendWindowWindowEnum),
                  )
                  as LlmSpendWindowWindowEnum;
          result.window = valueDes;
          break;
        case r'start':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.start = valueDes;
          break;
        case r'resetsAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.resetsAt = valueDes;
          break;
        case r'spentUsd':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.spentUsd = valueDes;
          break;
        case r'reservedUsd':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.reservedUsd = valueDes;
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
        case r'exhausted':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.exhausted = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LlmSpendWindow deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LlmSpendWindowBuilder();
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

class LlmSpendWindowWindowEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'hour')
  static const LlmSpendWindowWindowEnum hour = _$llmSpendWindowWindowEnum_hour;
  @BuiltValueEnumConst(wireName: r'day')
  static const LlmSpendWindowWindowEnum day = _$llmSpendWindowWindowEnum_day;
  @BuiltValueEnumConst(wireName: r'month')
  static const LlmSpendWindowWindowEnum month =
      _$llmSpendWindowWindowEnum_month;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const LlmSpendWindowWindowEnum unknownDefaultOpenApi =
      _$llmSpendWindowWindowEnum_unknownDefaultOpenApi;

  static Serializer<LlmSpendWindowWindowEnum> get serializer =>
      _$llmSpendWindowWindowEnumSerializer;

  const LlmSpendWindowWindowEnum._(String name) : super(name);

  static BuiltSet<LlmSpendWindowWindowEnum> get values =>
      _$llmSpendWindowWindowEnumValues;
  static LlmSpendWindowWindowEnum valueOf(String name) =>
      _$llmSpendWindowWindowEnumValueOf(name);
}
