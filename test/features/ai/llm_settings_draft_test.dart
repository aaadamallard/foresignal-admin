import 'package:built_value/serializer.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/api.dart';
import 'package:foresignal_admin/features/ai/llm_settings_draft.dart';

import '../../../tool/preview/preview_llm.dart';

void main() {
  final fake = PreviewLlm();
  final providers = <LlmProvider>[
    for (final p in fake.providers.values)
      standardSerializers.deserialize(p, specifiedType: const FullType(LlmProvider))!
          as LlmProvider,
  ];
  final stored =
      standardSerializers.deserialize(fake.settings, specifiedType: const FullType(LlmSettings))!
          as LlmSettings;

  test('reads the roles and options, absent members as their defaults', () {
    final draft = LlmSettingsDraft(LlmSettings());
    expect(draft.roles.values, everyElement(isNull));
    expect(draft.askEnabled, isTrue);
    expect(draft.logContent, isFalse);
    expect(draft.askMaxTokens, '200000');
  });

  test('accepts providers that can serve their roles', () {
    final draft = LlmSettingsDraft(stored);
    expect(draft.roles[LlmRole.chat], 'claude');
    expect(draft.validate(providers), isEmpty);
  });

  test('refuses a provider that cannot serve a role', () {
    final draft = LlmSettingsDraft(stored)
      ..roles[LlmRole.embedding] = 'claude'
      ..roles[LlmRole.tts] = 'ollama-local'
      ..roles[LlmRole.chat] = 'missing';
    final errors = draft.validate(providers);
    expect(errors['embedding'], contains('Anthropic has no embeddings'));
    expect(errors['tts'], contains('not OpenAI-compatible'));
    expect(errors['chat'], contains('no such provider'));
  });

  test('refuses an Ask budget under 1000', () {
    final draft = LlmSettingsDraft(stored)..askMaxTokens = '500';
    expect(draft.validate(providers).keys, contains('askMaxTokens'));
  });

  test('sends every member, and confirms against the re-read', () {
    final draft = LlmSettingsDraft(stored)
      ..roles[LlmRole.tts] = 'kokoro'
      ..logContent = true;
    final body = draft.toModel();
    expect(body.ttsProvider, 'kokoro');
    expect(body.logContent, isTrue);
    expect(body.askMaxTokens, 200000);
    expect(draft.confirm(body), isNull);
    expect(draft.confirm(stored), contains('Speech provider'));
  });
}
