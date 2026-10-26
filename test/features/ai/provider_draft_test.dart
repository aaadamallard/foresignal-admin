import 'package:built_value/serializer.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/api.dart';
import 'package:foresignal_admin/features/ai/provider_draft.dart';

import '../../../tool/preview/preview_llm.dart';

LlmProvider provider(String id) =>
    standardSerializers.deserialize(
          PreviewLlm().providers[id],
          specifiedType: const FullType(LlmProvider),
        )!
        as LlmProvider;

void main() {
  group('a new provider', () {
    test('the LM Studio preset is an OpenAI-compatible, local provider at its local server', () {
      final draft = ProviderDraft.create()..text['id'] = 'lm-studio';
      draft.choose(lmStudioPreset);
      expect(draft.choice, lmStudioPreset);
      expect(draft.category, LlmCategory.local);
      expect(draft.type, 'openai-compatible');
      expect(draft.validate(), isEmpty);
      final json = draft.toJson();
      expect(json['type'], 'openai-compatible');
      expect(json['baseUrl'], 'http://localhost:1234/v1');
      expect(json['options'], <String, Object?>{'local': true});
    });

    test('a preset fills the base URL it owns and keeps one that was typed', () {
      final draft = ProviderDraft.create()..choose('openai');
      expect(draft.text['baseUrl'], 'https://api.openai.com/v1');
      // Another preset replaces a preset's URL.
      draft.choose('deepseek');
      expect(draft.text['baseUrl'], 'https://api.deepseek.com');
      expect(draft.type, 'openai-compatible');
      // A typed URL stays, whatever is chosen next.
      draft
        ..text['baseUrl'] = 'https://gateway.example.org/v1'
        ..choose('groq');
      expect(draft.text['baseUrl'], 'https://gateway.example.org/v1');
      // Custom has no URL of its own: it empties a preset's.
      draft
        ..choose('mistral')
        ..text['baseUrl'] = 'https://api.mistral.ai/v1'
        ..choose('custom-online');
      expect(draft.text['baseUrl'], isEmpty);
    });

    test('the category picks its first preset and sets the local flag', () {
      final draft = ProviderDraft.create();
      expect(draft.category, LlmCategory.online);
      expect(draft.choice, 'anthropic');
      draft.chooseCategory(LlmCategory.local);
      expect(draft.choice, 'ollama');
      expect(draft.type, 'ollama');
      expect(draft.local, isTrue);
      expect(draft.text['baseUrl'], 'http://localhost:11434');
      draft.chooseCategory(LlmCategory.online);
      expect(draft.choice, 'openai');
      expect(draft.local, isFalse);
      expect(draft.text['baseUrl'], 'https://api.openai.com/v1');
    });

    test('Anthropic drops the embedding fields and refuses an embedding price', () {
      final draft = ProviderDraft.create()
        ..choose('openai')
        ..text['embeddingModel'] = 'text-embedding-3-small'
        ..text['priceEmbedding'] = '0.02'
        ..choose('anthropic');
      expect(draft.takesEmbeddings, isFalse);
      expect(draft.text['embeddingModel'], isEmpty);
      expect(draft.text['priceEmbedding'], isEmpty);
      draft
        ..text['id'] = 'claude-2'
        ..text['apiKey'] = 'sk-test'
        ..text['priceEmbedding'] = '0.02';
      expect(draft.validate().keys, contains('priceEmbedding'));
    });

    test('Azure needs its resource name in place of the placeholder', () {
      final draft = ProviderDraft.create()
        ..text['id'] = 'azure'
        ..choose('azure-openai');
      expect(draft.validate().keys, contains('baseUrl'));
      draft.text['baseUrl'] = 'https://contoso.openai.azure.com/openai/v1';
      expect(draft.validate(), isEmpty);
    });

    test(
      'every preset URL is https online and http locally, and every online one names its source',
      () {
        for (final p in llmPresets.where((p) => !p.custom)) {
          expect(
            Uri.parse(p.baseUrl!).scheme,
            p.category == LlmCategory.online ? 'https' : 'http',
            reason: p.id,
          );
          expect(p.source, isNotNull, reason: p.id);
        }
        expect(llmPresetsOf(LlmCategory.local).last.custom, isTrue);
        expect(llmPresetsOf(LlmCategory.online).last.custom, isTrue);
      },
    );

    test('pricing and caps are sent as numbers, and a cap needs a price', () {
      final draft = ProviderDraft.create()
        ..choose('deepseek')
        ..text['id'] = 'deepseek'
        ..text['apiKey'] = 'sk-test'
        ..text['dailyCapUsd'] = '5';
      expect(draft.validate().keys, contains('dailyCapUsd'));
      draft
        ..text['priceInput'] = '0.27'
        ..text['priceOutput'] = '1.10'
        ..text['monthlyCapUsd'] = '100';
      expect(draft.validate(), isEmpty);
      final json = draft.toJson();
      expect(json['pricing'], <String, num>{
        'inputUsdPerMillionTokens': 0.27,
        'outputUsdPerMillionTokens': 1.1,
      });
      expect(json['dailyCapUsd'], 5);
      expect(json['monthlyCapUsd'], 100);
      expect(json.containsKey('hourlyCapUsd'), isFalse);
    });

    test('a price or cap that is not a positive amount is refused', () {
      final draft = ProviderDraft.create()
        ..choose('openai')
        ..text['id'] = 'openai'
        ..text['priceInput'] = '-1'
        ..text['priceOutput'] = 'abc'
        ..text['hourlyCapUsd'] = '0';
      expect(
        draft.validate().keys,
        containsAll(<String>['priceInput', 'priceOutput', 'hourlyCapUsd']),
      );
    });

    test('needs a valid id, and Anthropic needs a key', () {
      final draft = ProviderDraft.create()..text['id'] = 'Bad Id';
      final errors = draft.validate();
      expect(errors.keys, containsAll(<String>['id', 'apiKey']));
    });

    test('an OpenAI-compatible provider needs its base URL', () {
      final draft = ProviderDraft.create()
        ..type = 'openai-compatible'
        ..text['id'] = 'openrouter';
      expect(draft.validate().keys, contains('baseUrl'));
      draft.text['baseUrl'] = 'https://user:pw@openrouter.ai/api/v1';
      expect(draft.validate().keys, contains('baseUrl'));
      draft.text['baseUrl'] = 'https://openrouter.ai/api/v1';
      expect(draft.validate(), isEmpty);
    });

    test('sends the key, options and limits, leaving empty members out', () {
      final draft = ProviderDraft.create()
        ..text['id'] = 'claude-2'
        ..text['apiKey'] = 'sk-test'
        ..text['maxTokens'] = '8000'
        ..text['tokensPerDay'] = '500000'
        ..effort = 'high';
      expect(draft.validate(), isEmpty);
      final json = draft.toJson();
      expect(json, <String, Object?>{
        'id': 'claude-2',
        'type': 'anthropic',
        'apiKey': 'sk-test',
        'options': <String, Object?>{'effort': 'high', 'maxTokens': 8000},
        'tokensPerDay': 500000,
        'enabled': true,
        // On create the kind is named: shared unless the draft is personal.
        'shared': true,
      });
      expect(draft.toModel(standardSerializers).apiKey, 'sk-test');
    });
  });

  group('an existing provider', () {
    test('starts from what was read, with no key', () {
      final draft = ProviderDraft.edit(provider('claude'));
      expect(draft.type, 'anthropic');
      expect(draft.text['chatModel'], 'claude-opus-5-5');
      expect(draft.text['maxTokens'], '16000');
      expect(draft.effort, 'medium');
      expect(draft.text['apiKey'], '');
      expect(draft.text['knowledgeCutoff'], '2026-01-31');
      expect(draft.text['priceInput'], '5');
      expect(draft.text['priceCachedInput'], '0.5');
      expect(draft.text['monthlyCapUsd'], '300');
      expect(draft.category, LlmCategory.online);
      expect(draft.choice, 'anthropic');
      // A key is set, so leaving the field empty keeps it.
      expect(draft.validate(), isEmpty);
      expect(draft.toJson().containsKey('apiKey'), isFalse);
    });

    test('infers the category and preset it came from, and sends its pricing back unchanged', () {
      final ollama = ProviderDraft.edit(provider('ollama-local'));
      expect(ollama.category, LlmCategory.local);
      expect(ollama.choice, 'ollama');
      final kokoro = ProviderDraft.edit(provider('kokoro'));
      expect(kokoro.category, LlmCategory.online);
      expect(kokoro.choice, 'custom-online');
      final claude = ProviderDraft.edit(provider('claude')).toJson();
      expect(claude['pricing'], <String, num>{
        'inputUsdPerMillionTokens': 5,
        'outputUsdPerMillionTokens': 25,
        'cachedInputUsdPerMillionTokens': 0.5,
      });
      expect(
        <Object?>[claude['hourlyCapUsd'], claude['dailyCapUsd'], claude['monthlyCapUsd']],
        <Object?>[2, 20, 300],
      );
    });

    test('reads the OpenAI-compatible type and its speech options', () {
      final draft = ProviderDraft.edit(provider('kokoro'));
      expect(draft.type, 'openai-compatible');
      expect(draft.text['ttsModel'], 'kokoro');
      expect(draft.takesSpeech, isTrue);
    });

    test('Anthropic refuses a temperature', () {
      final draft = ProviderDraft.edit(provider('claude'))..text['temperature'] = '0.3';
      expect(draft.validate().keys, contains('temperature'));
      expect((draft.toJson()['options']! as Map).containsKey('temperature'), isFalse);
    });

    test('checks ranges, dates and reserved headers', () {
      final draft = ProviderDraft.edit(provider('ollama-local'))
        ..text['embeddingDimensions'] = '4'
        ..text['tokensPerDay'] = '10'
        ..text['knowledgeCutoff'] = '2026-02-30'
        ..text['extraHeaders'] = 'Authorization: Bearer x'
        ..text['ttsModel'] = 'kokoro';
      expect(
        draft.validate().keys,
        containsAll(<String>[
          'embeddingDimensions',
          'tokensPerDay',
          'knowledgeCutoff',
          'extraHeaders',
          'ttsModel',
        ]),
      );
    });

    test('parses extra headers into a map', () {
      final draft = ProviderDraft.edit(provider('kokoro'))
        ..text['extraHeaders'] = 'HTTP-Referer: https://example.org\nX-Title: ForeSignal';
      expect(draft.validate(), isEmpty);
      expect((draft.toJson()['options']! as Map)['extraHeaders'], <String, String>{
        'HTTP-Referer': 'https://example.org',
        'X-Title': 'ForeSignal',
      });
    });

    test('confirm names what the re-read does not hold', () {
      final stored = provider('claude');
      final draft = ProviderDraft.edit(stored)..text['chatModel'] = 'claude-sonnet-5-5';
      final sent = draft.toJson();
      expect(draft.confirm(stored, sent), contains('Chat model'));
      final updated = stored.rebuild((b) => b.chatModel = 'claude-sonnet-5-5');
      expect(draft.confirm(updated, sent), isNull);
    });

    test('confirm checks that a sent key is now set', () {
      final stored = provider('kokoro');
      final draft = ProviderDraft.edit(stored)..text['apiKey'] = 'k';
      final sent = draft.toJson();
      expect(draft.confirm(stored, sent), contains('API key'));
      expect(draft.confirm(stored.rebuild((b) => b.apiKeySet = true), sent), isNull);
    });
  });
}
