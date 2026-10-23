// The preview's fake answers for the LLM operations. Bodies follow their
// schemas in openapi/OpenAPI.json (LlmProvider, LlmProviderInput,
// LlmTestResult, LlmModelInfo, LlmSettings, LlmUsageSeries, PromptTemplate).

/// A fake reply.
typedef LlmReply = ({int status, Object? body});

/// The LLM state the fake keeps. The API key is never kept: only whether
/// one was sent (`apiKeySet`).
class PreviewLlm {
  /// LlmProvider objects, by id.
  final Map<String, Map<String, Object?>> providers = <String, Map<String, Object?>>{
    'claude': <String, Object?>{
      'id': 'claude',
      'type': 'anthropic',
      'baseUrl': 'https://api.anthropic.com',
      'chatModel': 'claude-opus-5-5',
      'apiKeySet': true,
      'options': <String, Object?>{'effort': 'medium', 'maxTokens': 16000},
      'requestsPerMinute': 30,
      'tokensPerDay': 2000000,
      'enabled': true,
      'status': 'healthy',
      'tokensToday': 412800,
      'updatedAt': '2026-10-20T09:12:00Z',
      'supportsTools': true,
      'knowledgeCutoff': '2026-01-31',
      'lastSuccessAt': '2026-10-22T16:28:41Z',
      'consecutiveFailures': 0,
      'local': false,
    },
    'ollama-local': <String, Object?>{
      'id': 'ollama-local',
      'type': 'ollama',
      'baseUrl': 'http://ollama:11434',
      'embeddingModel': 'nomic-embed-text',
      'embeddingDimensions': 768,
      'apiKeySet': false,
      'options': <String, Object?>{},
      'requestsPerMinute': 120,
      'tokensPerDay': 20000000,
      'enabled': true,
      'status': 'healthy',
      'tokensToday': 1840200,
      'updatedAt': '2026-10-18T14:00:00Z',
      'lastSuccessAt': '2026-10-22T16:29:58Z',
      'consecutiveFailures': 0,
      'local': true,
    },
    'kokoro': <String, Object?>{
      'id': 'kokoro',
      'type': 'openai-compatible',
      'baseUrl': 'http://kokoro:8880/v1',
      'apiKeySet': false,
      'options': <String, Object?>{'ttsModel': 'kokoro', 'ttsCharactersPerDay': 100000},
      'requestsPerMinute': 30,
      'tokensPerDay': 2000000,
      'enabled': true,
      'status': 'failing',
      'tokensToday': 0,
      'updatedAt': '2026-10-21T08:00:00Z',
      'lastError': 'connect timed out: kokoro:8880',
      'lastErrorAt': '2026-10-22T15:02:10Z',
      'consecutiveFailures': 4,
      'local': false,
    },
  };

  /// LlmSettings.
  Map<String, Object?> settings = <String, Object?>{
    'chatProvider': 'claude',
    'embeddingProvider': 'ollama-local',
    'askEnabled': true,
    'enrichmentEnabled': true,
    'logContent': false,
    'askMaxTokens': 200000,
    'allowPrivateLocal': false,
  };
}

Map<String, Object?> _problem(int status, String title, String code, [String? detail]) =>
    <String, Object?>{'title': title, 'status': status, 'code': code, 'detail': ?detail};

List<String> _roles(PreviewLlm llm, String id) => <String>[
  if (llm.settings['chatProvider'] == id) 'chat',
  if (llm.settings['embeddingProvider'] == id) 'embedding',
  if (llm.settings['ttsProvider'] == id) 'tts',
];

Map<String, Object?> _withRoles(PreviewLlm llm, Map<String, Object?> p) => <String, Object?>{
  ...p,
  'roles': _roles(llm, p['id']! as String),
};

/// Answers the LLM operations, or `null` for any other request.
LlmReply? answerLlm(
  String method,
  String path,
  Map<String, List<String>> query,
  Object? body,
  PreviewLlm llm,
) {
  if (path == '/v1/llm/providers') {
    if (method == 'GET') {
      return (
        status: 200,
        body: <Object?>[for (final p in llm.providers.values) _withRoles(llm, p)],
      );
    }
    if (method == 'POST') {
      final input = (body! as Map).cast<String, Object?>();
      final id = input['id']! as String;
      if (llm.providers.containsKey(id)) {
        return (status: 409, body: _problem(409, 'Exists', 'LLM_PROVIDER_EXISTS'));
      }
      llm.providers[id] = _store(input, null);
      return (status: 201, body: _withRoles(llm, llm.providers[id]!));
    }
  }
  if (path == '/v1/llm/settings') {
    if (method == 'GET') {
      return (status: 200, body: llm.settings);
    }
    if (method == 'PUT') {
      final input = (body! as Map).cast<String, Object?>();
      for (final role in const <String>['chatProvider', 'embeddingProvider', 'ttsProvider']) {
        final id = input[role];
        if (id != null && !llm.providers.containsKey(id)) {
          return (status: 400, body: _problem(400, 'Invalid', 'VALIDATION_FAILED', 'Unknown $id'));
        }
      }
      if (input['allowPrivateLocal'] == true) {
        return (
          status: 400,
          body: _problem(400, 'Invalid', 'VALIDATION_FAILED', 'allowPrivateLocal must be false'),
        );
      }
      llm.settings = <String, Object?>{
        'askEnabled': true,
        'enrichmentEnabled': true,
        'logContent': false,
        'askMaxTokens': 200000,
        'allowPrivateLocal': false,
        ...input,
      };
      return (status: 200, body: llm.settings);
    }
  }
  if (path == '/v1/llm/usage' && method == 'GET') {
    return (status: 200, body: _usage(query));
  }
  if (path == '/v1/prompt-templates' && method == 'GET') {
    return (
      status: 200,
      body: <String, Object?>{
        'items': <Object?>[
          for (final id in <String>['ask', 'assessment'])
            <String, Object?>{
              'id': id,
              'role': id,
              'version': '3',
              'versions': <String>['1', '2', '3'],
            },
        ],
      },
    );
  }
  final template = RegExp(r'^/v1/prompt-templates/([^/]+)$').firstMatch(path);
  if (template != null && method == 'GET') {
    final id = Uri.decodeComponent(template.group(1)!);
    if (id != 'assessment' && id != 'ask') {
      return (status: 404, body: _problem(404, 'Not found', 'NOT_FOUND'));
    }
    final version = query['version']?.first ?? '3';
    return (
      status: 200,
      body: <String, Object?>{
        'id': id,
        'version': version,
        'role': id,
        'sha256': 'b7e1f0c2a9d84e1f6c3a5b2d9e0f1a7c4b8d2e6f0a9c3b5d7e1f2a4c6b8d0e9f',
        'versions': <String>['1', '2', '3'],
        'text':
            'You are the $id role of an open-source intelligence engine (template v$version).\n\n'
            'Use only the records provided. Cite every claim with its record id.\n'
            'Say plainly when the records do not support an answer.',
      },
    );
  }
  final match = RegExp(r'^/v1/llm/providers/([^/]+)(/test|/models)?$').firstMatch(path);
  if (match == null) {
    return null;
  }
  final id = Uri.decodeComponent(match.group(1)!);
  final provider = llm.providers[id];
  if (provider == null) {
    return (status: 404, body: _problem(404, 'Not found', 'NOT_FOUND'));
  }
  switch ((method, match.group(2))) {
    case ('GET', null):
      return (status: 200, body: _withRoles(llm, provider));
    case ('PUT', null):
      llm.providers[id] = _store((body! as Map).cast<String, Object?>(), provider);
      return (status: 200, body: _withRoles(llm, llm.providers[id]!));
    case ('DELETE', null):
      if (_roles(llm, id).isNotEmpty) {
        return (
          status: 409,
          body: _problem(409, 'In use', 'LLM_PROVIDER_IN_USE', '$id is assigned to a role.'),
        );
      }
      llm.providers.remove(id);
      return (status: 204, body: null);
    case ('POST', '/test'):
      if (provider['status'] == 'failing') {
        return (
          status: 200,
          body: <String, Object?>{
            'success': false,
            'error': 'connect timed out: ${Uri.parse(provider['baseUrl']! as String).authority}',
          },
        );
      }
      return (
        status: 200,
        body: <String, Object?>{
          'success': true,
          if (provider['chatModel'] != null)
            'chat': <String, Object?>{
              'model': provider['chatModel'],
              'latencyMs': 842,
              'inputTokens': 14,
              'outputTokens': 2,
              'cachedTokens': 0,
              'text': 'ok',
              'stopReason': 'end',
            },
          if (provider['embeddingModel'] != null)
            'embedding': <String, Object?>{
              'model': provider['embeddingModel'],
              'dimensions': provider['embeddingDimensions'],
              'latencyMs': 38,
            },
        },
      );
    case ('GET', '/models'):
      return (
        status: 200,
        body: switch (provider['type']) {
          'anthropic' => <Object?>[
            <String, Object?>{
              'id': 'claude-opus-5-5',
              'displayName': 'Claude Opus 5.5',
              'contextWindow': 200000,
              'supportsTools': true,
              'supportsEmbeddings': false,
            },
            <String, Object?>{
              'id': 'claude-sonnet-5-5',
              'displayName': 'Claude Sonnet 5.5',
              'contextWindow': 200000,
              'supportsTools': true,
              'supportsEmbeddings': false,
            },
            <String, Object?>{
              'id': 'claude-haiku-5-5',
              'displayName': 'Claude Haiku 5.5',
              'contextWindow': 200000,
              'supportsTools': true,
              'supportsEmbeddings': false,
            },
          ],
          'ollama' => <Object?>[
            <String, Object?>{'id': 'nomic-embed-text', 'supportsEmbeddings': true},
            <String, Object?>{'id': 'llama3.1:8b', 'contextWindow': 131072},
          ],
          _ => <Object?>[
            <String, Object?>{'id': 'kokoro'},
          ],
        },
      );
  }
  return null;
}

Map<String, Object?> _store(Map<String, Object?> input, Map<String, Object?>? old) {
  final type = input['type']! as String;
  return <String, Object?>{
    'id': input['id'],
    'type': type,
    'baseUrl':
        input['baseUrl'] ??
        switch (type) {
          'anthropic' => 'https://api.anthropic.com',
          'ollama' => 'http://ollama:11434',
          _ => null,
        },
    'chatModel': input['chatModel'] ?? (type == 'anthropic' ? 'claude-opus-5-5' : null),
    'embeddingModel': ?input['embeddingModel'],
    'embeddingDimensions': ?input['embeddingDimensions'],
    // Omitting the key on a replace keeps the stored one.
    'apiKeySet': input['apiKey'] != null || (old?['apiKeySet'] == true),
    'options': input['options'] ?? <String, Object?>{},
    'requestsPerMinute': input['requestsPerMinute'] ?? 30,
    'tokensPerDay': input['tokensPerDay'] ?? 2000000,
    'enabled': input['enabled'] ?? true,
    'status': input['enabled'] == false ? 'disabled' : 'idle',
    'tokensToday': old?['tokensToday'] ?? 0,
    'updatedAt': '2026-10-22T16:30:00Z',
    'knowledgeCutoff': ?input['knowledgeCutoff'],
    'consecutiveFailures': 0,
    'local': type == 'ollama' || ((input['options'] as Map?)?['local'] == true),
  };
}

Map<String, Object?> _usage(Map<String, List<String>> query) {
  final provider = query['provider']?.first;
  final to = DateTime.parse(query['to']!.first).toUtc();
  final from = DateTime.parse(query['from']!.first).toUtc();
  final hourly = query['resolution']?.first != 'day';
  final step = hourly ? const Duration(hours: 1) : const Duration(days: 1);
  final scale = switch (provider) {
    'claude' => 1.0,
    'ollama-local' => 3.2,
    _ => 0.0,
  };
  final points = <Object?>[];
  var t = hourly
      ? DateTime.utc(from.year, from.month, from.day, from.hour)
      : DateTime.utc(from.year, from.month, from.day);
  for (var i = 0; t.isBefore(to); t = t.add(step), i++) {
    final base = ((hourly ? 18000 : 410000) * scale * (1 + (i * 5 % 7) / 10)).round();
    points.add(<String, Object?>{
      't': t.toIso8601String(),
      'requests': base == 0 ? 0 : base ~/ 900,
      'inputTokens': provider == 'ollama-local' ? base : base * 3 ~/ 4,
      'outputTokens': provider == 'ollama-local' ? 0 : base ~/ 4,
      'cachedTokens': provider == 'claude' ? base ~/ 3 : 0,
      'errors': provider == 'claude' && i == 3 ? 1 : 0,
      'refused': 0,
    });
  }
  return <String, Object?>{
    'provider': provider,
    'resolution': hourly ? 'hour' : 'day',
    'points': points,
  };
}
