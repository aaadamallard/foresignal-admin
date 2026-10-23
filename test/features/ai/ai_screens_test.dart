import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/routes.dart';

import '../../../tool/preview/preview_llm.dart';
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
    await tester.ensureVisible(find.byKey(const Key('form.save')));
    await tester.tap(find.byKey(const Key('form.save')));
    await tester.pumpAndSettle();

    final post = adapter.requests.singleWhere((r) => r.method == 'POST');
    expect(post.uri.path, '/v1/llm/providers');
    expect((post.body! as Map)['apiKey'], 'sk-secret');
    expect(llm.providers['claude-b']?['apiKeySet'], isTrue);
    // Now on the provider's page, with no key anywhere on screen.
    expect(find.text('sk-secret'), findsNothing);
    expect(find.byKey(const Key('provider.keyState')), findsOneWidget);
  });

  testWidgets('testing a provider shows the probe result', (tester) async {
    await openAt(tester, aiProviderPath('claude'), adapter: aiBackend(PreviewLlm()));
    await tester.ensureVisible(find.byKey(const Key('provider.test')));
    await tester.tap(find.byKey(const Key('provider.test')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('provider.testResult')), findsOneWidget);
    expect(find.text('Provider answered'), findsOneWidget);
  });

  testWidgets('a failing provider reports the failure in the result', (tester) async {
    await openAt(tester, aiProviderPath('kokoro'), adapter: aiBackend(PreviewLlm()));
    await tester.ensureVisible(find.byKey(const Key('provider.test')));
    await tester.tap(find.byKey(const Key('provider.test')));
    await tester.pumpAndSettle();
    expect(find.text('Provider test failed'), findsOneWidget);
  });

  testWidgets('deleting a provider in use is refused with the reason', (tester) async {
    final llm = PreviewLlm();
    await openAt(tester, aiProviderPath('claude'), adapter: aiBackend(llm));
    await tester.ensureVisible(find.byKey(const Key('provider.delete')));
    await tester.tap(find.byKey(const Key('provider.delete')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('provider.confirmDelete')));
    await tester.pumpAndSettle();
    expect(find.text('Could not delete'), findsOneWidget);
    expect(llm.providers.containsKey('claude'), isTrue);
  });

  testWidgets('a role is reassigned and confirmed by re-reading', (tester) async {
    final llm = PreviewLlm();
    final adapter = await openAt(tester, aiPath, adapter: aiBackend(llm));
    await tester.tap(find.byKey(const Key('ai.tab.roles')));
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(const Key('ai.role.tts')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('kokoro').last);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('form.save')));
    await tester.pumpAndSettle();

    final put = adapter.requests.singleWhere((r) => r.method == 'PUT');
    expect(put.uri.path, '/v1/llm/settings');
    expect((put.body! as Map)['ttsProvider'], 'kokoro');
    expect((put.body! as Map)['chatProvider'], 'claude');
    expect(llm.settings['ttsProvider'], 'kokoro');
    expect(find.textContaining('Saved and confirmed'), findsOneWidget);
  });

  testWidgets('a prompt template loads by id, and its versions switch', (tester) async {
    await openAt(tester, aiPath, adapter: aiBackend(PreviewLlm()));
    await tester.tap(find.byKey(const Key('ai.tab.templates')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('ai.template.id')), 'assessment');
    await tester.tap(find.byKey(const Key('ai.template.load')));
    await tester.pumpAndSettle();
    expect(find.text('assessment @ 3'), findsOneWidget);

    await tester.tap(find.byKey(const Key('ai.template.version.1')));
    await tester.pumpAndSettle();
    expect(find.text('assessment @ 1'), findsOneWidget);
  });

  testWidgets('usage shows totals, the token chart and the provider table', (tester) async {
    await openAt(tester, aiPath, adapter: aiBackend(PreviewLlm()));
    await tester.tap(find.byKey(const Key('ai.tab.usage')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('ai.usage.requests')), findsOneWidget);
    expect(find.byKey(const Key('ai.usage.chart')), findsOneWidget);
    expect(find.byKey(const Key('ai.usage.table')), findsOneWidget);
  });
}
