import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/routes.dart';

import '../../../tool/preview/preview_llm.dart';
import '../../support/actions.dart';
import '../../support/fake_adapter.dart';
import '../sources/sources_screens_test.dart' show openAt, sourcesBackend;

/// A fake backend answering the LLM operations from [llm], then the source
/// operations.
FakeAdapter aiBackend(PreviewLlm llm) {
  final fallback = sourcesBackend();
  return FakeAdapter((request) {
    final reply = answerLlm(
      request.method,
      request.uri.path,
      request.uri.queryParametersAll,
      request.body,
      llm,
    );
    if (reply == null) {
      return fallback.handler(request);
    }
    if (reply.status == 204) {
      return FakeResponse.empty();
    }
    return reply.status >= 400
        ? FakeResponse.problem(reply.body! as Map<String, Object?>, status: reply.status)
        : FakeResponse.json(reply.body, status: reply.status);
  });
}

void main() {
  testWidgets('the providers table lists every provider with its status', (tester) async {
    await openAt(tester, aiPath, adapter: aiBackend(PreviewLlm()));
    expect(find.byKey(const Key('ai.providers')), findsOneWidget);
    expect(find.text('claude'), findsOneWidget);
    expect(find.text('ollama-local'), findsOneWidget);
    expect(find.text('Failing'), findsOneWidget);
  });

  testWidgets('adding a provider sends the key once and clears it', (tester) async {
    final llm = PreviewLlm();
    final adapter = await openAt(tester, aiNewProviderPath, adapter: aiBackend(llm));
    await tester.enterText(find.byKey(const Key('provider.id')), 'claude-b');
    await tester.enterText(find.byKey(const Key('provider.apiKey')), 'sk-secret');
    await tapVisible(tester, find.byKey(const Key('form.save')));

    final post = adapter.requests.singleWhere((r) => r.method == 'POST');
    expect(post.uri.path, '/v1/llm/providers');
    expect((post.body! as Map)['apiKey'], 'sk-secret');
    expect(llm.providers['claude-b']?['apiKeySet'], isTrue);
    // Now on the provider's page, with no key anywhere on screen.
    expect(find.text('sk-secret'), findsNothing);
    expect(find.byKey(const Key('provider.keyState')), findsOneWidget);
  });

  testWidgets('LM Studio is a Local LLM preset that creates a local OpenAI-compatible provider', (
    tester,
  ) async {
    final llm = PreviewLlm();
    final adapter = await openAt(tester, aiNewProviderPath, adapter: aiBackend(llm));
    await tapVisible(tester, find.byKey(const Key('provider.category.local')));
    expect(find.text('http://localhost:11434'), findsOneWidget);
    await tester.enterText(find.byKey(const Key('provider.id')), 'lm-studio');
    await tapVisible(tester, find.byKey(const Key('provider.type')));
    await tester.tap(find.text('LM Studio').last);
    await tester.pumpAndSettle();
    expect(find.text('http://localhost:1234/v1'), findsOneWidget);
    expect(tester.widget<Switch>(find.byKey(const Key('provider.local'))).value, isTrue);
    await tapVisible(tester, find.byKey(const Key('form.save')));

    final post = adapter.requests.singleWhere((r) => r.method == 'POST');
    expect(post.uri.path, '/v1/llm/providers');
    final body = (post.body! as Map).cast<String, Object?>();
    expect(body['type'], 'openai-compatible');
    expect(body['baseUrl'], 'http://localhost:1234/v1');
    expect(body['options'], <String, Object?>{'local': true});
    expect(llm.providers['lm-studio']?['type'], 'openai-compatible');
  });

  testWidgets(
    'Save is in the header, once: Add Provider while adding, Save Changes while editing',
    (tester) async {
      await openAt(tester, aiNewProviderPath, adapter: aiBackend(PreviewLlm()));
      expect(find.byKey(const Key('form.save')), findsOneWidget);
      expect(find.widgetWithText(FilledButton, 'Add Provider'), findsOneWidget);
      expect(find.byKey(const Key('form.cancel')), findsOneWidget);
      // Top-right: level with the title, right of it.
      final title = tester.getCenter(find.text('Add provider').last);
      final save = tester.getCenter(find.byKey(const Key('form.save')));
      expect(save.dx, greaterThan(title.dx));
      expect((save.dy - title.dy).abs(), lessThan(40));
    },
  );

  testWidgets('editing, the header action is Save Changes', (tester) async {
    await openAt(tester, aiProviderPath('claude'), adapter: aiBackend(PreviewLlm()));
    expect(find.byKey(const Key('form.save')), findsOneWidget);
    expect(find.widgetWithText(FilledButton, 'Save Changes'), findsOneWidget);
  });

  testWidgets('Cancel discards the edits and goes back, sending nothing', (tester) async {
    final llm = PreviewLlm();
    final adapter = await openAt(tester, aiNewProviderPath, adapter: aiBackend(llm));
    await tester.enterText(find.byKey(const Key('provider.id')), 'never-saved');
    await tester.enterText(find.byKey(const Key('provider.apiKey')), 'sk-discarded');
    await tapVisible(tester, find.byKey(const Key('form.cancel')));

    expect(find.byKey(const Key('ai.providers')), findsOneWidget);
    expect(adapter.requests.where((r) => r.method != 'GET'), isEmpty);
    expect(llm.providers.containsKey('never-saved'), isFalse);
    expect(find.text('sk-discarded'), findsNothing);

    // Editing: the change is gone when the page is opened again.
    await openAt(tester, aiProviderPath('claude'), adapter: aiBackend(llm));
    await tester.enterText(find.byKey(const Key('provider.priceInput')), '99');
    await tapVisible(tester, find.byKey(const Key('form.cancel')));
    expect(find.byKey(const Key('ai.providers')), findsOneWidget);
    expect((llm.providers['claude']!['pricing']! as Map)['inputUsdPerMillionTokens'], 5);
  });

  testWidgets(
    'Test before saving loads the models, one is picked, and the whole form round-trips',
    (tester) async {
      final llm = PreviewLlm();
      final adapter = await openAt(tester, aiNewProviderPath, adapter: aiBackend(llm));
      await tapVisible(tester, find.byKey(const Key('provider.type')));
      await tester.tap(find.text('DeepSeek').last);
      await tester.pumpAndSettle();
      expect(find.text('https://api.deepseek.com'), findsOneWidget);
      expect(find.text('Test the connection to load models.'), findsNWidgets(2));
      await tester.enterText(find.byKey(const Key('provider.id')), 'deepseek');
      await tester.enterText(find.byKey(const Key('provider.apiKey')), 'sk-deepseek');
      await tapVisible(tester, find.byKey(const Key('provider.probe')));

      final probe = adapter.requests.singleWhere((r) => r.uri.path == '/v1/llm/probe');
      final sent = (probe.body! as Map).cast<String, Object?>();
      expect(sent['baseUrl'], 'https://api.deepseek.com');
      expect(sent['apiKey'], 'sk-deepseek');
      expect(find.text('Connection OK'), findsOneWidget);
      expect(llm.providers.containsKey('deepseek'), isFalse);

      await tapVisible(tester, find.byKey(const Key('provider.chatModel')));
      expect(find.text('deepseek-reasoner'), findsWidgets);
      await tester.tap(find.text('deepseek-chat').last);
      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(const Key('provider.priceInput')), '0.27');
      await tester.enterText(find.byKey(const Key('provider.priceOutput')), '1.1');
      await tester.enterText(find.byKey(const Key('provider.dailyCapUsd')), '5');
      await tapVisible(tester, find.byKey(const Key('form.save')));

      final post = adapter.requests.singleWhere(
        (r) => r.method == 'POST' && r.uri.path == '/v1/llm/providers',
      );
      final body = (post.body! as Map).cast<String, Object?>();
      expect(body['chatModel'], 'deepseek-chat');
      expect(body['pricing'], <String, Object?>{
        'inputUsdPerMillionTokens': 0.27,
        'outputUsdPerMillionTokens': 1.1,
      });
      expect(body['dailyCapUsd'], 5);

      // The saved provider's page shows it all back, with the reported balance.
      expect(find.text('deepseek-chat'), findsOneWidget);
      expect(
        tester.widget<TextField>(find.byKey(const Key('provider.priceInput'))).controller!.text,
        '0.27',
      );
      expect(
        tester.widget<TextField>(find.byKey(const Key('provider.dailyCapUsd'))).controller!.text,
        '5',
      );
      expect(find.byKey(const Key('budget.balance')), findsOneWidget);
      expect(find.textContaining('as reported by DeepSeek'), findsOneWidget);
      expect(find.textContaining('not a cap'), findsOneWidget);
      expect(find.text('sk-deepseek'), findsNothing);
    },
  );

  testWidgets('a failed Test shows the provider\'s own error, not a generic one', (tester) async {
    final adapter = await openAt(tester, aiNewProviderPath, adapter: aiBackend(PreviewLlm()));
    // Anthropic needs a key before there is anything to test.
    await tapVisible(tester, find.byKey(const Key('provider.probe')));
    expect(adapter.requests.where((r) => r.uri.path == '/v1/llm/probe'), isEmpty);
    expect(find.text('Anthropic needs an API key.'), findsOneWidget);

    await tapVisible(tester, find.byKey(const Key('provider.type')));
    await tester.tap(find.text('Custom (OpenAI-compatible)').last);
    await tester.pumpAndSettle();
    await tester.enterText(
      find.byKey(const Key('provider.baseUrl')),
      'https://unreachable.example.org/v1',
    );
    await tapVisible(tester, find.byKey(const Key('provider.probe')));
    expect(find.text('Connection failed'), findsOneWidget);
    expect(find.text('connect timed out: unreachable.example.org'), findsOneWidget);
  });

  testWidgets('Anthropic has no embedding fields', (tester) async {
    await openAt(tester, aiNewProviderPath, adapter: aiBackend(PreviewLlm()));
    expect(find.byKey(const Key('provider.embeddingModel')), findsNothing);
    expect(find.byKey(const Key('provider.priceEmbedding')), findsNothing);
    await tapVisible(tester, find.byKey(const Key('provider.type')));
    await tester.tap(find.text('OpenAI').last);
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('provider.embeddingModel')), findsOneWidget);
    expect(find.byKey(const Key('provider.priceEmbedding')), findsOneWidget);
  });

  testWidgets('a saved provider shows its spend per window against its caps, and its rate limits', (
    tester,
  ) async {
    await openAt(tester, aiProviderPath('claude'), adapter: aiBackend(PreviewLlm()));
    expect(find.byKey(const Key('budget.window.hour')), findsOneWidget);
    expect(find.textContaining(r'$1.62 of $2.00'), findsOneWidget);
    expect(find.textContaining(r'$9.40 of $20.00'), findsOneWidget);
    expect(find.textContaining(r'$141.25 of $300.00'), findsOneWidget);
    expect(find.byKey(const Key('budget.rateLimits')), findsOneWidget);
    // Claude lists its models, so the chat model is a picker already.
    expect(find.byType(DropdownMenu<String>), findsOneWidget);
    expect(find.byKey(const Key('budget.balance')), findsNothing);
  });

  testWidgets('testing a provider shows the probe result', (tester) async {
    await openAt(tester, aiProviderPath('claude'), adapter: aiBackend(PreviewLlm()));
    await tapVisible(tester, find.byKey(const Key('provider.test')));
    expect(find.byKey(const Key('provider.testResult')), findsOneWidget);
    expect(find.text('Provider answered'), findsOneWidget);
  });

  testWidgets('a failing provider reports the failure in the result', (tester) async {
    await openAt(tester, aiProviderPath('kokoro'), adapter: aiBackend(PreviewLlm()));
    await tapVisible(tester, find.byKey(const Key('provider.test')));
    expect(find.text('Provider test failed'), findsOneWidget);
  });

  testWidgets('deleting a provider in use is refused with the reason', (tester) async {
    final llm = PreviewLlm();
    await openAt(tester, aiProviderPath('claude'), adapter: aiBackend(llm));
    await tapVisible(tester, find.byKey(const Key('provider.delete')));
    await tapVisible(tester, find.byKey(const Key('provider.confirmDelete')));
    expect(find.text('Could not delete'), findsOneWidget);
    expect(llm.providers.containsKey('claude'), isTrue);
  });

  testWidgets('a role is reassigned and confirmed by re-reading', (tester) async {
    final llm = PreviewLlm();
    final adapter = await openAt(tester, aiPath, adapter: aiBackend(llm));
    await tapVisible(tester, find.byKey(const Key('ai.tab.roles')));

    await tapVisible(tester, find.byKey(const Key('ai.role.tts')));
    await tester.tap(find.text('kokoro').last);
    await tester.pumpAndSettle();
    await tapVisible(tester, find.byKey(const Key('form.save')));

    final put = adapter.requests.singleWhere((r) => r.method == 'PUT');
    expect(put.uri.path, '/v1/llm/settings');
    expect((put.body! as Map)['ttsProvider'], 'kokoro');
    expect((put.body! as Map)['chatProvider'], 'claude');
    expect(llm.settings['ttsProvider'], 'kokoro');
    expect(find.textContaining('Saved and confirmed'), findsOneWidget);
  });

  testWidgets('a prompt template loads by id, and its versions switch', (tester) async {
    await openAt(tester, aiPath, adapter: aiBackend(PreviewLlm()));
    await tapVisible(tester, find.byKey(const Key('ai.tab.templates')));
    await tester.enterText(find.byKey(const Key('ai.template.id')), 'assessment');
    await tapVisible(tester, find.byKey(const Key('ai.template.load')));
    expect(find.text('assessment @ 3'), findsOneWidget);

    await tapVisible(tester, find.byKey(const Key('ai.template.version.1')));
    expect(find.text('assessment @ 1'), findsOneWidget);
  });

  testWidgets('the bundled templates are listed, and choosing one loads it', (tester) async {
    await openAt(tester, aiPath, adapter: aiBackend(PreviewLlm()));
    await tapVisible(tester, find.byKey(const Key('ai.tab.templates')));
    expect(find.byKey(const Key('ai.templates.ask')), findsOneWidget);
    await tapVisible(tester, find.byKey(const Key('ai.templates.assessment')));
    expect(find.text('assessment @ 3'), findsOneWidget);
  });

  testWidgets('usage shows totals, the token chart and the provider table', (tester) async {
    await openAt(tester, aiPath, adapter: aiBackend(PreviewLlm()));
    await tapVisible(tester, find.byKey(const Key('ai.tab.usage')));
    expect(find.byKey(const Key('ai.usage.requests')), findsOneWidget);
    expect(find.byKey(const Key('ai.usage.chart')), findsOneWidget);
    expect(find.byKey(const Key('ai.usage.table')), findsOneWidget);
  });
}
