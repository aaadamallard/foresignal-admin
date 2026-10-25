/// Where a provider runs: on this machine or network, or an online API.
enum LlmCategory {
  /// A model server on this machine or network (`options.local`).
  local,

  /// A hosted API.
  online,
}

/// The label of a [LlmCategory] radio.
String llmCategoryLabel(LlmCategory category) => switch (category) {
  LlmCategory.local => 'Local LLM',
  LlmCategory.online => 'Online API',
};

/// One entry of the provider picker: the backend type it maps to and the base
/// URL it fills in, both still editable.
///
/// Every base URL was checked against the provider's own documentation on
/// 2026-10-25 (the [source] of each); none is guessed.
class LlmPreset {
  /// Creates a preset.
  const LlmPreset({
    required this.id,
    required this.label,
    required this.category,
    required this.type,
    this.baseUrl,
    this.note,
    this.source,
    this.placeholder,
    this.listsModels = true,
  });

  /// The preset's id; not a wire value.
  final String id;

  /// The name shown in the picker.
  final String label;

  /// Local or online.
  final LlmCategory category;

  /// The backend type (`LlmProviderInput.type`).
  final String type;

  /// The base URL filled in, or `null` to type one.
  final String? baseUrl;

  /// A line shown under the base URL: what more the provider needs.
  final String? note;

  /// The documentation the base URL was checked against.
  final String? source;

  /// Text in [baseUrl] that must be replaced before the provider can work.
  final String? placeholder;

  /// Whether the provider is known to list its models at this base URL; when
  /// not, the model fields stay free text after a test.
  final bool listsModels;

  /// Whether this is a Custom entry (no base URL of its own).
  bool get custom => baseUrl == null;
}

/// The id of the LM Studio preset.
const String lmStudioPreset = 'lm-studio';

/// LM Studio's local server, as the backend reaches it by default.
const String lmStudioBaseUrl = 'http://localhost:1234/v1';

const String _localNote =
    'As the backend reaches it: localhost is the machine the backend runs on.';

/// The provider picker's entries, Local first, then Online, each ending with
/// Custom.
const List<LlmPreset> llmPresets = <LlmPreset>[
  LlmPreset(
    id: 'ollama',
    label: 'Ollama',
    category: LlmCategory.local,
    type: 'ollama',
    baseUrl: 'http://localhost:11434',
    note: '$_localNote In the Docker Compose stack it is http://ollama:11434.',
    source: 'docs.ollama.com/api/introduction',
  ),
  LlmPreset(
    id: lmStudioPreset,
    label: 'LM Studio',
    category: LlmCategory.local,
    type: 'openai-compatible',
    baseUrl: lmStudioBaseUrl,
    note: "LM Studio's local server. $_localNote",
    source: 'lmstudio.ai/docs/developer/openai-compat',
  ),
  LlmPreset(
    id: 'llama-cpp',
    label: 'llama.cpp',
    category: LlmCategory.local,
    type: 'openai-compatible',
    baseUrl: 'http://localhost:9931/v1',
    note:
        "llama-server's default port is 9931 in current releases; older builds and its Docker "
        'examples use 8080, which the ForeSignal backend itself uses. $_localNote',
    source: 'github.com/ggml-org/llama.cpp tools/server/README.md',
  ),
  LlmPreset(
    id: 'vllm',
    label: 'vLLM',
    category: LlmCategory.local,
    type: 'openai-compatible',
    baseUrl: 'http://localhost:8000/v1',
    note: '`vllm serve` listens on port 8000. $_localNote',
    source: 'docs.vllm.ai/en/latest/cli/serve/',
  ),
  LlmPreset(
    id: 'text-generation-webui',
    label: 'text-generation-webui',
    category: LlmCategory.local,
    type: 'openai-compatible',
    baseUrl: 'http://localhost:5000/v1',
    note: 'Start it with --api (port 5000, or --api-port). $_localNote',
    source: 'github.com/oobabooga/text-generation-webui/wiki/12-‐-OpenAI-API',
  ),
  LlmPreset(
    id: 'custom-local',
    label: 'Custom (OpenAI-compatible)',
    category: LlmCategory.local,
    type: 'openai-compatible',
    note:
        'Any local server with an OpenAI-compatible API: its base URL ends before /chat/completions.',
  ),
  LlmPreset(
    id: 'openai',
    label: 'OpenAI',
    category: LlmCategory.online,
    type: 'openai-compatible',
    baseUrl: 'https://api.openai.com/v1',
    source: 'developers.openai.com/api/reference',
  ),
  LlmPreset(
    id: 'anthropic',
    label: 'Anthropic',
    category: LlmCategory.online,
    type: 'anthropic',
    baseUrl: 'https://api.anthropic.com',
    note: 'Claude through the native Anthropic API. It has no embeddings.',
    source: 'platform.claude.com/docs/en/api/overview',
  ),
  LlmPreset(
    id: 'gemini',
    label: 'Google Gemini',
    category: LlmCategory.online,
    type: 'openai-compatible',
    baseUrl: 'https://generativelanguage.googleapis.com/v1beta/openai',
    note: "Gemini's OpenAI-compatible endpoint, with a Gemini API key.",
    source: 'ai.google.dev/gemini-api/docs/openai',
  ),
  LlmPreset(
    id: 'xai',
    label: 'xAI (Grok)',
    category: LlmCategory.online,
    type: 'openai-compatible',
    baseUrl: 'https://api.x.ai/v1',
    source: 'docs.x.ai/docs/api-reference',
  ),
  LlmPreset(
    id: 'deepseek',
    label: 'DeepSeek',
    category: LlmCategory.online,
    type: 'openai-compatible',
    baseUrl: 'https://api.deepseek.com',
    note: 'DeepSeek reports the account balance, shown in the Budget card once saved.',
    source: 'api-docs.deepseek.com',
  ),
  LlmPreset(
    id: 'mistral',
    label: 'Mistral',
    category: LlmCategory.online,
    type: 'openai-compatible',
    baseUrl: 'https://api.mistral.ai/v1',
    source: 'docs.mistral.ai/api/',
  ),
  LlmPreset(
    id: 'groq',
    label: 'Groq',
    category: LlmCategory.online,
    type: 'openai-compatible',
    baseUrl: 'https://api.groq.com/openai/v1',
    source: 'console.groq.com/docs/openai',
  ),
  LlmPreset(
    id: 'together',
    label: 'Together AI',
    category: LlmCategory.online,
    type: 'openai-compatible',
    baseUrl: 'https://api.together.ai/v1',
    source: 'docs.together.ai/docs/openai-api-compatibility',
  ),
  LlmPreset(
    id: 'fireworks',
    label: 'Fireworks AI',
    category: LlmCategory.online,
    type: 'openai-compatible',
    baseUrl: 'https://api.fireworks.ai/inference/v1',
    note:
        'Its documented model list is a different endpoint, so type the model id '
        '(accounts/fireworks/models/…) if the test loads none.',
    source: 'docs.fireworks.ai/tools-sdks/openai-compatibility',
    listsModels: false,
  ),
  LlmPreset(
    id: 'openrouter',
    label: 'OpenRouter',
    category: LlmCategory.online,
    type: 'openai-compatible',
    baseUrl: 'https://openrouter.ai/api/v1',
    note:
        "OpenRouter reports the key's remaining limit, or the account's credits for a "
        'management key, shown in the Budget card once saved.',
    source: 'openrouter.ai/docs/quickstart',
  ),
  LlmPreset(
    id: 'perplexity',
    label: 'Perplexity',
    category: LlmCategory.online,
    type: 'openai-compatible',
    baseUrl: 'https://api.perplexity.ai/orchestrator/v1',
    note: "Perplexity's Chat Completions API is its Orchestrator API, under /orchestrator/v1.",
    source: 'docs.perplexity.ai/api-reference/gateway-chat-completions-post',
  ),
  LlmPreset(
    id: 'cohere',
    label: 'Cohere',
    category: LlmCategory.online,
    type: 'openai-compatible',
    baseUrl: 'https://api.cohere.ai/compatibility/v1',
    note: "Cohere's Compatibility API.",
    source: 'docs.cohere.com/docs/compatibility-api',
    listsModels: false,
  ),
  LlmPreset(
    id: 'azure-openai',
    label: 'Azure OpenAI',
    category: LlmCategory.online,
    type: 'openai-compatible',
    baseUrl: 'https://YOUR-RESOURCE.openai.azure.com/openai/v1',
    placeholder: 'YOUR-RESOURCE',
    note:
        'Replace YOUR-RESOURCE with your Azure resource name. The v1 API needs no api-version; '
        'the chat model is your deployment name. The key is sent as Authorization: Bearer.',
    source: 'learn.microsoft.com/en-us/azure/ai-foundry/openai/api-version-lifecycle',
  ),
  LlmPreset(
    id: 'custom-online',
    label: 'Custom (OpenAI-compatible)',
    category: LlmCategory.online,
    type: 'openai-compatible',
    note: 'Any API with an OpenAI-compatible surface: its base URL ends before /chat/completions.',
  ),
];

/// The preset with [id], or `null`.
LlmPreset? llmPresetById(String? id) {
  for (final p in llmPresets) {
    if (p.id == id) {
      return p;
    }
  }
  return null;
}

/// The presets of [category], in picker order.
List<LlmPreset> llmPresetsOf(LlmCategory category) => <LlmPreset>[
  for (final p in llmPresets)
    if (p.category == category) p,
];

/// The preset a saved provider most likely came from: one whose type and base
/// URL match, else the Custom entry of its [category].
LlmPreset llmPresetFor({
  required String type,
  required String? baseUrl,
  required LlmCategory category,
}) {
  final url = _normalize(baseUrl);
  for (final p in llmPresetsOf(category)) {
    if (p.type == type && p.baseUrl != null && _normalize(p.baseUrl) == url) {
      return p;
    }
  }
  if (type == 'anthropic') {
    return llmPresetById('anthropic')!;
  }
  if (type == 'ollama') {
    return llmPresetById('ollama')!;
  }
  return llmPresetById(category == LlmCategory.local ? 'custom-local' : 'custom-online')!;
}

String? _normalize(String? url) {
  var u = url?.trim().toLowerCase();
  while (u != null && u.endsWith('/')) {
    u = u.substring(0, u.length - 1);
  }
  return u;
}
