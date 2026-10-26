import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/permissions.dart';
import 'package:foresignal_admin/core/routes.dart';

import '../../support/actions.dart';
import '../../support/fake_adapter.dart';
import '../scoping/per_user_scoping_test.dart'
    show mePrincipal, meBody, openSignedIn, scopedBackend, threeChannels;

/// An LlmProvider body; [owner] `null` is a shared provider.
Map<String, Object?> providerBody(String id, String? owner, {bool apiKeySet = true}) =>
    <String, Object?>{
      'id': id,
      'type': 'anthropic',
      'chatModel': 'claude-opus-5-5',
      'apiKeySet': apiKeySet,
      'enabled': true,
      'status': 'idle',
      'shared': owner == null,
      'ownerPrincipalId': owner,
      'monthlyCapUsd': owner == null ? 500 : 20,
      'perUserMonthlyCapUsd': owner == null ? 10 : null,
    };

/// An LLM backend for a user holding [permissions]: one shared and one
/// personal provider, `createLlmProvider` storing a personal provider with
/// its key set, and the user's budget.
FakeAdapter llmBackend(Set<String> permissions) {
  final providers = <String, Map<String, Object?>>{
    'claude-shared': providerBody('claude-shared', null),
    'my-claude': providerBody('my-claude', mePrincipal),
  };
  return FakeAdapter((request) {
    final path = request.uri.path;
    if (path == '/v1/me') {
      return FakeResponse.json(meBody(permissions));
    }
    if (path == '/v1/llm/providers' && request.method == 'GET') {
      return FakeResponse.json(providers.values.toList());
    }
    if (path == '/v1/llm/providers' && request.method == 'POST') {
      final body = request.body! as Map<String, Object?>;
      final id = '${body['id']}';
      final shared = body['shared'] == true;
      providers[id] = providerBody(
        id,
        shared ? null : mePrincipal,
        apiKeySet: body['apiKey'] != null,
      );
      return FakeResponse.json(providers[id], status: 201);
    }
    final one = RegExp(r'^/v1/llm/providers/([^/]+)$').firstMatch(path);
    if (one != null && request.method == 'GET') {
      final p = providers[one.group(1)];
      if (p != null) {
        return FakeResponse.json(p);
      }
    }
    if (path == '/v1/me/llm/budget') {
      return FakeResponse.json(<String, Object?>{
        'totalSpentUsd': 4.25,
        'providers': <Object?>[
          <String, Object?>{
            'providerId': 'claude-shared',
            'name': 'claude-shared',
            'shared': true,
            'capUsd': 10,
            'spentUsd': 2.5,
            'remainingUsd': 7.5,
          },
          <String, Object?>{
            'providerId': 'my-claude',
            'name': 'my-claude',
            'shared': false,
            'capUsd': 20,
            'spentUsd': 1.75,
            'remainingUsd': 18.25,
          },
        ],
      });
    }
    return FakeResponse.problem(<String, Object?>{
      'title': 'Not found',
      'status': 404,
    }, status: 404);
  });
}

/// The permission gate around [control], when it is closed: the gate shows
/// what was needed as a tooltip and lets no tap through.
Finder gated(Finder control) => find.ancestor(
  of: control,
  matching: find.byWidgetPredicate(
    (w) => w is Tooltip && (w.message ?? '').startsWith('Needs llm.shared.manage'),
  ),
);

/// An Editor: self-service (`self.llm` included) and data, no platform
/// permissions.
final Set<String> editor = RoleTier.editor.permissions;

void main() {
  testWidgets('the provider list separates shared from personal; shared is read-only', (
    tester,
  ) async {
    await openSignedIn(tester, llmBackend(editor), editor, aiPath);

    final shared = find.byKey(const Key('ai.shared'));
    final personal = find.byKey(const Key('ai.personal'));
    expect(find.descendant(of: shared, matching: find.text('claude-shared')), findsOneWidget);
    expect(find.descendant(of: shared, matching: find.text('my-claude')), findsNothing);
    expect(find.descendant(of: personal, matching: find.text('my-claude')), findsOneWidget);
    // Read-only without llm.shared.manage: View, not Edit, and no Add Shared.
    expect(
      find.descendant(
        of: find.byKey(const Key('ai.edit.claude-shared')),
        matching: find.text('View'),
      ),
      findsOneWidget,
    );
    expect(
      find.descendant(of: find.byKey(const Key('ai.edit.my-claude')), matching: find.text('Edit')),
      findsOneWidget,
    );
    expect(gated(find.byKey(const Key('ai.addProvider'))), findsOneWidget);
    // The shared configuration's tabs are not mounted.
    expect(find.byKey(const Key('ai.tab.roles')), findsNothing);
    expect(find.byKey(const Key('ai.tab.usage')), findsNothing);
  });

  testWidgets('a shared provider opened without llm.shared.manage is read-only', (tester) async {
    await openSignedIn(tester, llmBackend(editor), editor, aiProviderPath('claude-shared'));

    expect(find.byKey(const Key('provider.sharedReadOnly')), findsOneWidget);
    expect(gated(find.byKey(const Key('form.save'))), findsOneWidget);
    expect(gated(find.byKey(const Key('provider.delete'))), findsOneWidget);
  });

  testWidgets('creating a personal provider sends the key to the backend and shows apiKeySet', (
    tester,
  ) async {
    final adapter = llmBackend(editor);
    await openSignedIn(tester, adapter, editor, aiNewProviderPath);

    expect(find.text('Add personal provider'), findsOneWidget);
    await tester.enterText(find.byKey(const Key('provider.id')), 'claude-mine');
    await tester.enterText(find.byKey(const Key('provider.apiKey')), 'sk-mine');
    await tapVisible(tester, find.byKey(const Key('form.save')));

    final post = adapter.requests.singleWhere(
      (r) => r.method == 'POST' && r.uri.path == '/v1/llm/providers',
    );
    final body = post.body! as Map<String, Object?>;
    expect(body['shared'], isFalse);
    expect(body['apiKey'], 'sk-mine');
    expect(
      adapter.requests.any(
        (r) => r.method == 'GET' && r.uri.path == '/v1/llm/providers/claude-mine',
      ),
      isTrue,
    );
    // The provider's page: the key is set, and never shown.
    expect(find.byKey(const Key('provider.keyState')), findsOneWidget);
    expect(find.text('sk-mine'), findsNothing);
    expect(
      find.descendant(of: find.byKey(const Key('provider.kindChip')), matching: find.text('Yours')),
      findsOneWidget,
    );
  });

  testWidgets('getMyLlmBudget drives the balance', (tester) async {
    final adapter = llmBackend(editor);
    await openSignedIn(tester, adapter, editor, aiPath);

    expect(adapter.requests.any((r) => r.uri.path == '/v1/me/llm/budget'), isTrue);
    expect(find.byKey(const Key('ai.myBudget')), findsOneWidget);
    expect(find.text(r'Spent this month: $4.25'), findsOneWidget);
    expect(
      find.descendant(
        of: find.byKey(const Key('ai.myBudget.remaining.claude-shared')),
        matching: find.text(r'$7.50'),
      ),
      findsOneWidget,
    );
    expect(find.text(r'$18.25'), findsOneWidget);
  });

  testWidgets('a non-operator\'s channel list omits globals', (tester) async {
    final adapter = scopedBackend(editor, channels: threeChannels());
    await openSignedIn(tester, adapter, editor, alertChannelsPath);

    expect(find.text('My hook'), findsOneWidget);
    expect(find.text('Ops hook'), findsNothing);
  });

  testWidgets('an operator\'s channel list shows the global channels, labeled', (tester) async {
    final operator = RoleTier.operator.permissions;
    final adapter = scopedBackend(operator, channels: threeChannels());
    await openSignedIn(tester, adapter, operator, alertChannelsPath);

    expect(find.text('Ops hook'), findsOneWidget);
    expect(
      find.descendant(
        of: find.byKey(const Key('channels.owner.c-global')),
        matching: find.text('Global'),
      ),
      findsOneWidget,
    );
    // Another user's personal channel is not an operator's to see.
    expect(find.text('Their hook'), findsNothing);
  });
}
