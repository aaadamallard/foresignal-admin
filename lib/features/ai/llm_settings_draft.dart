import '../../api/api.dart';

/// One LLM role: which provider serves it (`LlmSettings`).
enum LlmRole {
  /// `chatProvider`: chat completions.
  chat('Chat', 'Chat completions.'),

  /// `embeddingProvider`: embeddings.
  embedding('Embedding', 'Embeddings. Changing the provider starts a reindex.'),

  /// `ttsProvider`: speech.
  tts('Text to speech', 'Audio briefings, through an OpenAI-compatible /audio/speech.');

  const LlmRole(this.label, this.help);

  /// The row label.
  final String label;

  /// What the role does.
  final String help;

  /// Whether [provider] can serve this role, or why not.
  String? refusal(LlmProvider provider) {
    if (!provider.enabled) {
      return 'disabled';
    }
    return switch (this) {
      LlmRole.chat => provider.chatModel == null ? 'no chat model' : null,
      LlmRole.embedding =>
        provider.type == LlmProviderTypeEnum.anthropic
            ? 'Anthropic has no embeddings'
            : provider.embeddingModel == null || provider.embeddingDimensions == null
            ? 'no embedding model and dimensions'
            : null,
      LlmRole.tts =>
        provider.type == LlmProviderTypeEnum.openaiCompatible ? null : 'not OpenAI-compatible',
    };
  }
}

/// The roles and options form (`LlmSettings`). `updateLlmSettings` replaces
/// the whole object and an omitted member takes its default, so every member
/// is sent; a role with no provider is left out, which unassigns it.
class LlmSettingsDraft {
  /// A draft of [stored], reading absent members as their defaults.
  LlmSettingsDraft(LlmSettings stored)
    : roles = <LlmRole, String?>{
        LlmRole.chat: stored.chatProvider,
        LlmRole.embedding: stored.embeddingProvider,
        LlmRole.tts: stored.ttsProvider,
      },
      askEnabled = stored.askEnabled ?? true,
      enrichmentEnabled = stored.enrichmentEnabled ?? true,
      logContent = stored.logContent ?? false,
      allowPrivateLocal = stored.allowPrivateLocal ?? false,
      askMaxTokens = (stored.askMaxTokens ?? 200000).toString();

  /// The provider of each role; `null` when unassigned.
  final Map<LlmRole, String?> roles;

  /// Whether Ask is on.
  bool askEnabled;

  /// Whether LLM enrichment is on.
  bool enrichmentEnabled;

  /// Whether prompt and completion text is logged.
  bool logContent;

  /// Whether private-source records may go to local providers.
  bool allowPrivateLocal;

  /// The token budget of one Ask, as typed.
  String askMaxTokens;

  /// Problems by member (a role's name, or `askMaxTokens`); empty when the
  /// draft can be sent. A role's provider must exist and be able to serve it.
  Map<String, String> validate(List<LlmProvider> providers) {
    final errors = <String, String>{};
    for (final entry in roles.entries) {
      final id = entry.value;
      if (id == null) {
        continue;
      }
      final provider = providers.where((p) => p.id == id).firstOrNull;
      final why = provider == null ? 'no such provider' : entry.key.refusal(provider);
      if (why != null) {
        errors[entry.key.name] = '$id cannot serve this role: $why.';
      }
    }
    final n = int.tryParse(askMaxTokens.trim());
    if (n == null || n < 1000) {
      errors['askMaxTokens'] = 'A whole number of at least 1000.';
    }
    return errors;
  }

  /// The request body. Call [validate] first.
  LlmSettings toModel() => LlmSettings(
    (b) => b
      ..chatProvider = roles[LlmRole.chat]
      ..embeddingProvider = roles[LlmRole.embedding]
      ..ttsProvider = roles[LlmRole.tts]
      ..askEnabled = askEnabled
      ..enrichmentEnabled = enrichmentEnabled
      ..logContent = logContent
      ..allowPrivateLocal = allowPrivateLocal
      ..askMaxTokens = int.parse(askMaxTokens.trim()),
  );

  /// `null` when [reread] holds what was sent, or what differs.
  String? confirm(LlmSettings reread) {
    final sent = toModel();
    final pairs = <String, (Object?, Object?)>{
      'Chat provider': (sent.chatProvider, reread.chatProvider),
      'Embedding provider': (sent.embeddingProvider, reread.embeddingProvider),
      'Speech provider': (sent.ttsProvider, reread.ttsProvider),
      'Ask': (sent.askEnabled, reread.askEnabled ?? true),
      'Enrichment': (sent.enrichmentEnabled, reread.enrichmentEnabled ?? true),
      'Log content': (sent.logContent, reread.logContent ?? false),
      'Private records to local providers': (
        sent.allowPrivateLocal,
        reread.allowPrivateLocal ?? false,
      ),
      'Ask token budget': (sent.askMaxTokens, reread.askMaxTokens ?? 200000),
    };
    final differs = <String>[
      for (final entry in pairs.entries)
        if (entry.value.$1 != entry.value.$2)
          '${entry.key}: sent ${entry.value.$1 ?? 'none'}, read back ${entry.value.$2 ?? 'none'}',
    ];
    return differs.isEmpty ? null : differs.join('; ');
  }
}
