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
      expect(draft.type, 'openai-compatible');
      expect(draft.validate(), isEmpty);
      final json = draft.toJson();
      expect(json['type'], 'openai-compatible');
      expect(json['baseUrl'], 'http://localhost:1234/v1');
      expect(json['options'], <String, Object?>{'local': true});

      // The base URL stays editable, and leaving the preset undoes what it filled in.
      draft.text['baseUrl'] = 'http://gpu-box:1234/v1';
      draft.choose('ollama');
      expect(draft.choice, 'ollama');
      expect(draft.local, isFalse);
      expect(draft.text['baseUrl'], 'http://gpu-box:1234/v1');
      draft
        ..choose(lmStudioPreset)
        ..choose('anthropic');
      expect(draft.text['baseUrl'], 'http://gpu-box:1234/v1');
      draft
        ..text['baseUrl'] = ''
        ..choose(lmStudioPreset)
        ..choose('openai-compatible');
      expect(draft.text['baseUrl'], isEmpty);
      expect(draft.local, isFalse);
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
      // A key is set, so leaving the field empty keeps it.
      expect(draft.validate(), isEmpty);
      expect(draft.toJson().containsKey('apiKey'), isFalse);
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
