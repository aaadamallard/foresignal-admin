//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/translation_settings_input_budget.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'translation_settings_input.g.dart';

/// News translation settings (settings key `translation`, NP-002). Replaces the settings: an omitted member takes its default; the read-only `spend` of a GET may be sent back and is ignored.
///
/// Properties:
/// * [enabled] - Master switch: off, no article or story is translated and reads carry the originals only
/// * [targetLanguages] - Languages foreign news is translated into; an article already in a target language is not translated into it
/// * [fields] - Which fields are translated: `title` (the article or story title) and `excerpt` (the article's feed summary). Expected to grow (`x-extensible-enum`).
/// * [engine] - The translation engine: `llm` uses the 026 LLM layer under the `translation` feature, budget-governed. Expected to grow (`x-extensible-enum`).
/// * [budget]
/// * [minSourceLanguageConfidence] - The least confidence in the detected source language at which an article is translated; below it the article is left as is
@BuiltValue()
abstract class TranslationSettingsInput
    implements
        Built<TranslationSettingsInput, TranslationSettingsInputBuilder> {
  /// Master switch: off, no article or story is translated and reads carry the originals only
  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  /// Languages foreign news is translated into; an article already in a target language is not translated into it
  @BuiltValueField(wireName: r'targetLanguages')
  BuiltSet<String>? get targetLanguages;

  /// Which fields are translated: `title` (the article or story title) and `excerpt` (the article's feed summary). Expected to grow (`x-extensible-enum`).
  @BuiltValueField(wireName: r'fields')
  BuiltSet<String>? get fields;

  /// The translation engine: `llm` uses the 026 LLM layer under the `translation` feature, budget-governed. Expected to grow (`x-extensible-enum`).
  @BuiltValueField(wireName: r'engine')
  String? get engine;

  @BuiltValueField(wireName: r'budget')
  TranslationSettingsInputBudget? get budget;

  /// The least confidence in the detected source language at which an article is translated; below it the article is left as is
  @BuiltValueField(wireName: r'minSourceLanguageConfidence')
  num? get minSourceLanguageConfidence;

  TranslationSettingsInput._();

  factory TranslationSettingsInput([
    void updates(TranslationSettingsInputBuilder b),
  ]) = _$TranslationSettingsInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TranslationSettingsInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TranslationSettingsInput> get serializer =>
      _$TranslationSettingsInputSerializer();
}

class _$TranslationSettingsInputSerializer
    implements PrimitiveSerializer<TranslationSettingsInput> {
  @override
  final Iterable<Type> types = const [
    TranslationSettingsInput,
    _$TranslationSettingsInput,
  ];

  @override
  final String wireName = r'TranslationSettingsInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TranslationSettingsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    if (object.targetLanguages != null) {
      yield r'targetLanguages';
      yield serializers.serialize(
        object.targetLanguages,
        specifiedType: const FullType(BuiltSet, [FullType(String)]),
      );
    }
    if (object.fields != null) {
      yield r'fields';
      yield serializers.serialize(
        object.fields,
        specifiedType: const FullType(BuiltSet, [FullType(String)]),
      );
    }
    if (object.engine != null) {
      yield r'engine';
      yield serializers.serialize(
        object.engine,
        specifiedType: const FullType(String),
      );
    }
    if (object.budget != null) {
      yield r'budget';
      yield serializers.serialize(
        object.budget,
        specifiedType: const FullType(TranslationSettingsInputBudget),
      );
    }
    if (object.minSourceLanguageConfidence != null) {
      yield r'minSourceLanguageConfidence';
      yield serializers.serialize(
        object.minSourceLanguageConfidence,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TranslationSettingsInput object, {
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
    required TranslationSettingsInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.enabled = valueDes;
          break;
        case r'targetLanguages':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltSet, [
                      FullType(String),
                    ]),
                  )
                  as BuiltSet<String>?;
          if (valueDes == null) continue;
          result.targetLanguages.replace(valueDes);
          break;
        case r'fields':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltSet, [
                      FullType(String),
                    ]),
                  )
                  as BuiltSet<String>?;
          if (valueDes == null) continue;
          result.fields.replace(valueDes);
          break;
        case r'engine':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.engine = valueDes;
          break;
        case r'budget':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      TranslationSettingsInputBudget,
                    ),
                  )
                  as TranslationSettingsInputBudget?;
          if (valueDes == null) continue;
          result.budget.replace(valueDes);
          break;
        case r'minSourceLanguageConfidence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.minSourceLanguageConfidence = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TranslationSettingsInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TranslationSettingsInputBuilder();
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
