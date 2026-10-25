//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/llm_spend_window.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'llm_provider_budget_windows.g.dart';

/// LlmProviderBudgetWindows
///
/// Properties:
/// * [hour]
/// * [day]
/// * [month]
@BuiltValue()
abstract class LlmProviderBudgetWindows
    implements
        Built<LlmProviderBudgetWindows, LlmProviderBudgetWindowsBuilder> {
  @BuiltValueField(wireName: r'hour')
  LlmSpendWindow get hour;

  @BuiltValueField(wireName: r'day')
  LlmSpendWindow get day;

  @BuiltValueField(wireName: r'month')
  LlmSpendWindow get month;

  LlmProviderBudgetWindows._();

  factory LlmProviderBudgetWindows([
    void updates(LlmProviderBudgetWindowsBuilder b),
  ]) = _$LlmProviderBudgetWindows;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LlmProviderBudgetWindowsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LlmProviderBudgetWindows> get serializer =>
      _$LlmProviderBudgetWindowsSerializer();
}

class _$LlmProviderBudgetWindowsSerializer
    implements PrimitiveSerializer<LlmProviderBudgetWindows> {
  @override
  final Iterable<Type> types = const [
    LlmProviderBudgetWindows,
    _$LlmProviderBudgetWindows,
  ];

  @override
  final String wireName = r'LlmProviderBudgetWindows';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LlmProviderBudgetWindows object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'hour';
    yield serializers.serialize(
      object.hour,
      specifiedType: const FullType(LlmSpendWindow),
    );
    yield r'day';
    yield serializers.serialize(
      object.day,
      specifiedType: const FullType(LlmSpendWindow),
    );
    yield r'month';
    yield serializers.serialize(
      object.month,
      specifiedType: const FullType(LlmSpendWindow),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LlmProviderBudgetWindows object, {
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
    required LlmProviderBudgetWindowsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'hour':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(LlmSpendWindow),
                  )
                  as LlmSpendWindow;
          result.hour.replace(valueDes);
          break;
        case r'day':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(LlmSpendWindow),
                  )
                  as LlmSpendWindow;
          result.day.replace(valueDes);
          break;
        case r'month':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(LlmSpendWindow),
                  )
                  as LlmSpendWindow;
          result.month.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LlmProviderBudgetWindows deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LlmProviderBudgetWindowsBuilder();
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
