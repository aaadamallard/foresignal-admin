//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'translation_settings_input_budget.g.dart';

/// A spend cap for translation alone, inside the provider's own caps (162)
///
/// Properties:
/// * [window] - The UTC window the cap applies to
/// * [capUsd] - USD translation may spend per window, or null for no separate cap; once spent, articles are left untranslated (and recorded as skipped) until the window resets
@BuiltValue()
abstract class TranslationSettingsInputBudget
    implements
        Built<
          TranslationSettingsInputBudget,
          TranslationSettingsInputBudgetBuilder
        > {
  /// The UTC window the cap applies to
  @BuiltValueField(wireName: r'window')
  TranslationSettingsInputBudgetWindowEnum? get window;
  // enum windowEnum {  hour,  day,  month,  };

  /// USD translation may spend per window, or null for no separate cap; once spent, articles are left untranslated (and recorded as skipped) until the window resets
  @BuiltValueField(wireName: r'capUsd')
  num? get capUsd;

  TranslationSettingsInputBudget._();

  factory TranslationSettingsInputBudget([
    void updates(TranslationSettingsInputBudgetBuilder b),
  ]) = _$TranslationSettingsInputBudget;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TranslationSettingsInputBudgetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TranslationSettingsInputBudget> get serializer =>
      _$TranslationSettingsInputBudgetSerializer();
}

class _$TranslationSettingsInputBudgetSerializer
    implements PrimitiveSerializer<TranslationSettingsInputBudget> {
  @override
  final Iterable<Type> types = const [
    TranslationSettingsInputBudget,
    _$TranslationSettingsInputBudget,
  ];

  @override
  final String wireName = r'TranslationSettingsInputBudget';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TranslationSettingsInputBudget object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.window != null) {
      yield r'window';
      yield serializers.serialize(
        object.window,
        specifiedType: const FullType(TranslationSettingsInputBudgetWindowEnum),
      );
    }
    if (object.capUsd != null) {
      yield r'capUsd';
      yield serializers.serialize(
        object.capUsd,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TranslationSettingsInputBudget object, {
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
    required TranslationSettingsInputBudgetBuilder result,
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
                    specifiedType: const FullType.nullable(
                      TranslationSettingsInputBudgetWindowEnum,
                    ),
                  )
                  as TranslationSettingsInputBudgetWindowEnum?;
          if (valueDes == null) continue;
          result.window = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TranslationSettingsInputBudget deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TranslationSettingsInputBudgetBuilder();
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

/// The UTC window the cap applies to
class TranslationSettingsInputBudgetWindowEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'hour')
  static const TranslationSettingsInputBudgetWindowEnum hour =
      _$translationSettingsInputBudgetWindowEnum_hour;
  @BuiltValueEnumConst(wireName: r'day')
  static const TranslationSettingsInputBudgetWindowEnum day =
      _$translationSettingsInputBudgetWindowEnum_day;
  @BuiltValueEnumConst(wireName: r'month')
  static const TranslationSettingsInputBudgetWindowEnum month =
      _$translationSettingsInputBudgetWindowEnum_month;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const TranslationSettingsInputBudgetWindowEnum unknownDefaultOpenApi =
      _$translationSettingsInputBudgetWindowEnum_unknownDefaultOpenApi;

  static Serializer<TranslationSettingsInputBudgetWindowEnum> get serializer =>
      _$translationSettingsInputBudgetWindowEnumSerializer;

  const TranslationSettingsInputBudgetWindowEnum._(String name) : super(name);

  static BuiltSet<TranslationSettingsInputBudgetWindowEnum> get values =>
      _$translationSettingsInputBudgetWindowEnumValues;
  static TranslationSettingsInputBudgetWindowEnum valueOf(String name) =>
      _$translationSettingsInputBudgetWindowEnumValueOf(name);
}
