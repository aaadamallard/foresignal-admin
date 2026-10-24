import 'package:built_value/serializer.dart';

import '../../api/api.dart';

/// The provider types (`LlmProviderInput.type`), by wire name.
const List<String> llmProviderTypes = <String>['anthropic', 'openai-compatible', 'ollama'];

/// The LM Studio preset: an `openai-compatible` provider at LM Studio's local
/// server, treated as local for LLM egress. Not a wire type.
const String lmStudioPreset = 'lm-studio';

/// LM Studio's local server, as the backend reaches it by default.
const String lmStudioBaseUrl = 'http://localhost:1234/v1';

/// The choices of the add form's Type dropdown, in order: the wire types,
/// with the LM Studio preset after the OpenAI-compatible type it fills in.
const List<String> llmProviderChoices = <String>[
  'anthropic',
  'openai-compatible',
  lmStudioPreset,
  'ollama',
];

/// The label of a Type choice.
String llmProviderChoiceLabel(String choice) => switch (choice) {
  'anthropic' => 'Anthropic',
  'openai-compatible' => 'OpenAI-compatible',
  lmStudioPreset => 'LM Studio',
  _ => 'Ollama',
};

/// The effort levels (`options.effort`), by wire name.
const List<String> llmEffortLevels = <String>['low', 'medium', 'high', 'xhigh', 'max'];

/// The headers a provider may not set itself (`options.extraHeaders`).
bool isReservedHeader(String name) {
  final n = name.toLowerCase();
  return n == 'authorization' ||
      n == 'x-api-key' ||
      n == 'content-type' ||
      n.startsWith('anthropic-');
}

final RegExp _idPattern = RegExp(r'^[a-z0-9-]+$');
final RegExp _datePattern = RegExp(r'^\d{4}-\d{2}-\d{2}$');

/// The add / edit form of an LLM provider (`LlmProviderInput`).
///
/// `updateLlmProvider` replaces the provider, so every member is sent
/// whenever it has a value, and an emptied member is left out, which takes
/// the contract's default. **The API key is write-only**: it is sent only
/// when typed, and an edit that leaves it empty keeps the stored key.
class ProviderDraft {
  /// A draft for a new provider.
  ProviderDraft.create() : stored = null, type = 'anthropic', enabled = true, local = false;

  /// A draft of [provider], as last read.
  ProviderDraft.edit(LlmProvider provider)
    : stored = provider,
      type = provider.type.name == 'openaiCompatible' ? 'openai-compatible' : provider.type.name,
      enabled = provider.enabled,
      local = _option(provider, 'local') == true {
    text['id'] = provider.id;
    text['baseUrl'] = provider.baseUrl ?? '';
    text['chatModel'] = provider.chatModel ?? '';
    text['embeddingModel'] = provider.embeddingModel ?? '';
    text['embeddingDimensions'] = provider.embeddingDimensions?.toString() ?? '';
    text['requestsPerMinute'] = provider.requestsPerMinute?.toString() ?? '';
    text['tokensPerDay'] = provider.tokensPerDay?.toString() ?? '';
    text['knowledgeCutoff'] = provider.knowledgeCutoff?.toString() ?? '';
    text['maxTokens'] = _option(provider, 'maxTokens')?.toString() ?? '';
    text['temperature'] = _option(provider, 'temperature')?.toString() ?? '';
    text['ttsModel'] = _option(provider, 'ttsModel')?.toString() ?? '';
    text['ttsCharactersPerDay'] = _option(provider, 'ttsCharactersPerDay')?.toString() ?? '';
    final effort = _option(provider, 'effort');
    this.effort = effort is String && llmEffortLevels.contains(effort) ? effort : null;
    final headers = _option(provider, 'extraHeaders');
    text['extraHeaders'] = headers is Map
        ? headers.entries.map((e) => '${e.key}: ${e.value}').join('\n')
        : '';
  }

  static Object? _option(LlmProvider provider, String name) => provider.options?[name]?.value;

  /// The provider as last read; `null` while adding one.
  final LlmProvider? stored;

  /// Whether this adds a provider.
  bool get creating => stored == null;

  /// The provider type, by wire name. Fixed once the provider exists.
  String type;

  /// The preset chosen over [type] while adding ([lmStudioPreset]), or `null`.
  String? preset;

  /// The Type dropdown's value: the preset when one is chosen, else [type].
  String get choice => preset ?? type;

  /// Applies a Type [choice] while adding. The LM Studio preset sets the type
  /// to `openai-compatible`, turns [local] on and fills an empty (or
  /// preset-filled) base URL with [lmStudioBaseUrl]; leaving it undoes what
  /// it filled in. Every value stays editable.
  void choose(String choice) {
    final wasPreset = preset == lmStudioPreset;
    if (choice == lmStudioPreset) {
      preset = lmStudioPreset;
      type = 'openai-compatible';
      local = true;
      if (text['baseUrl']!.trim().isEmpty) {
        text['baseUrl'] = lmStudioBaseUrl;
      }
      return;
    }
    preset = null;
    type = choice;
    if (wasPreset) {
      local = false;
      if (text['baseUrl']!.trim() == lmStudioBaseUrl) {
        text['baseUrl'] = '';
      }
    }
  }

  /// Whether the provider may be used.
  bool enabled;

  /// `options.local`: treat the provider as local for LLM egress.
  bool local;

  /// `options.effort`; `null` leaves it to the default.
  String? effort;

  /// The text members, by name: `id`, `baseUrl`, `chatModel`,
  /// `embeddingModel`, `embeddingDimensions`, `apiKey`,
  /// `requestsPerMinute`, `tokensPerDay`, `knowledgeCutoff`, `maxTokens`,
  /// `temperature`, `ttsModel`, `ttsCharactersPerDay`, `extraHeaders`.
  final Map<String, String> text = <String, String>{
    for (final k in const <String>[
      'id',
      'baseUrl',
      'chatModel',
      'embeddingModel',
      'embeddingDimensions',
      'apiKey',
      'requestsPerMinute',
      'tokensPerDay',
      'knowledgeCutoff',
      'maxTokens',
      'temperature',
      'ttsModel',
      'ttsCharactersPerDay',
      'extraHeaders',
    ])
      k: '',
  };

  String _t(String key) => text[key]!.trim();

  /// Whether the type takes a sampling temperature (Anthropic refuses one).
  bool get takesTemperature => type != 'anthropic';

  /// Whether the type can serve the `tts` role.
  bool get takesSpeech => type == 'openai-compatible';

  /// The base URL the backend uses when none is given, or `null` when the
  /// type requires one.
  String? get defaultBaseUrl => switch (type) {
    'anthropic' => 'https://api.anthropic.com',
    'ollama' => 'http://ollama:11434',
    _ => null,
  };

  /// Field problems by name; empty when the draft can be sent.
  Map<String, String> validate() {
    final errors = <String, String>{};
    final id = _t('id');
    if (id.isEmpty || id.length > 64 || !_idPattern.hasMatch(id)) {
      errors['id'] = 'Lowercase letters, digits and hyphens, at most 64.';
    }
    final baseUrl = _t('baseUrl');
    if (baseUrl.isEmpty) {
      if (defaultBaseUrl == null) {
        errors['baseUrl'] = 'An OpenAI-compatible provider needs its base URL.';
      }
    } else {
      final uri = Uri.tryParse(baseUrl);
      if (uri == null ||
          !(uri.scheme == 'http' || uri.scheme == 'https') ||
          uri.host.isEmpty ||
          uri.userInfo.isNotEmpty ||
          uri.hasFragment) {
        errors['baseUrl'] = 'An http or https URL with a host, and no user info or fragment.';
      }
    }
    if (type == 'anthropic' && _t('apiKey').isEmpty && !(stored?.apiKeySet ?? false)) {
      errors['apiKey'] = 'Anthropic needs an API key.';
    }
    _int(errors, 'embeddingDimensions', min: 8, max: 4096);
    _int(errors, 'requestsPerMinute', min: 1);
    _int(errors, 'tokensPerDay', min: 1000);
    _int(errors, 'maxTokens', min: 256, max: 128000);
    _int(errors, 'ttsCharactersPerDay', min: 1000, max: 100000000);
    final temperature = _t('temperature');
    if (temperature.isNotEmpty) {
      final t = num.tryParse(temperature);
      if (!takesTemperature) {
        errors['temperature'] = 'Anthropic takes effort, not a temperature; leave this empty.';
      } else if (t == null || t < 0 || t > 2) {
        errors['temperature'] = 'A number from 0 to 2.';
      }
    }
    final ttsModel = _t('ttsModel');
    if (ttsModel.isNotEmpty && !takesSpeech) {
      errors['ttsModel'] = 'Only an OpenAI-compatible provider serves speech.';
    } else if (ttsModel.length > 200) {
      errors['ttsModel'] = 'At most 200 characters.';
    }
    if (_t('ttsCharactersPerDay').isNotEmpty && !takesSpeech) {
      errors['ttsCharactersPerDay'] = 'Only an OpenAI-compatible provider serves speech.';
    }
    final cutoff = _t('knowledgeCutoff');
    if (cutoff.isNotEmpty) {
      final parsed = DateTime.tryParse(cutoff);
      if (!_datePattern.hasMatch(cutoff) ||
          parsed == null ||
          parsed.toIso8601String().substring(0, 10) != cutoff) {
        errors['knowledgeCutoff'] = 'A date as YYYY-MM-DD.';
      }
    }
    final headers = _headers(errors);
    if (headers != null) {
      final reserved = headers.keys.where(isReservedHeader).toList();
      if (reserved.isNotEmpty) {
        errors['extraHeaders'] = '${reserved.join(', ')} cannot be set here.';
      }
    }
    return errors;
  }

  void _int(Map<String, String> errors, String key, {required int min, int? max}) {
    final value = _t(key);
    if (value.isEmpty) {
      return;
    }
    final n = int.tryParse(value);
    if (n == null || n < min || (max != null && n > max)) {
      errors[key] = max == null
          ? 'A whole number of at least $min.'
          : 'A whole number from $min to $max.';
    }
  }

  Map<String, String>? _headers([Map<String, String>? errors]) {
    final map = <String, String>{};
    for (final raw in text['extraHeaders']!.split('\n')) {
      final line = raw.trim();
      if (line.isEmpty) {
        continue;
      }
      final colon = line.indexOf(':');
      final name = colon <= 0 ? '' : line.substring(0, colon).trim();
      if (name.isEmpty) {
        errors?['extraHeaders'] = 'Write one "Name: value" per line ("$line").';
        return null;
      }
      map[name] = line.substring(colon + 1).trim();
    }
    return map;
  }

  /// The request body as JSON (`LlmProviderInput`). Call [validate] first.
  Map<String, Object?> toJson() {
    int? n(String key) => int.tryParse(_t(key));
    String? s(String key) => _t(key).isEmpty ? null : _t(key);
    final headers = _headers() ?? const <String, String>{};
    final options = <String, Object?>{
      'effort': ?effort,
      'maxTokens': ?n('maxTokens'),
      if (takesTemperature) 'temperature': ?num.tryParse(_t('temperature')),
      if (headers.isNotEmpty) 'extraHeaders': headers,
      // Sent only when on: off is the default.
      if (local) 'local': true,
      if (takesSpeech) 'ttsModel': ?s('ttsModel'),
      if (takesSpeech) 'ttsCharactersPerDay': ?n('ttsCharactersPerDay'),
    };
    return <String, Object?>{
      'id': _t('id'),
      'type': type,
      'baseUrl': ?s('baseUrl'),
      'chatModel': ?s('chatModel'),
      'embeddingModel': ?s('embeddingModel'),
      'embeddingDimensions': ?n('embeddingDimensions'),
      'apiKey': ?s('apiKey'),
      if (options.isNotEmpty) 'options': options,
      'requestsPerMinute': ?n('requestsPerMinute'),
      'tokensPerDay': ?n('tokensPerDay'),
      'enabled': enabled,
      'knowledgeCutoff': ?s('knowledgeCutoff'),
    };
  }

  /// The request body as the generated model.
  LlmProviderInput toModel(Serializers serializers) =>
      serializers.deserialize(toJson(), specifiedType: const FullType(LlmProviderInput))!
          as LlmProviderInput;

  /// `null` when [reread] holds every member that was sent, or what differs.
  /// The key itself is never read back; only that one is set.
  String? confirm(LlmProvider reread, Map<String, Object?> sent) {
    final differs = <String>[];
    void check(String label, Object? want, Object? got) {
      if (want != null && want != got) {
        differs.add('$label: sent $want, read back ${got ?? 'nothing'}');
      }
    }

    check('Base URL', sent['baseUrl'], reread.baseUrl);
    check('Chat model', sent['chatModel'], reread.chatModel);
    check('Embedding model', sent['embeddingModel'], reread.embeddingModel);
    check('Embedding dimensions', sent['embeddingDimensions'], reread.embeddingDimensions);
    check('Requests per minute', sent['requestsPerMinute'], reread.requestsPerMinute);
    check('Tokens per day', sent['tokensPerDay'], reread.tokensPerDay);
    check('Enabled', sent['enabled'], reread.enabled);
    check('Knowledge cutoff', sent['knowledgeCutoff'], reread.knowledgeCutoff?.toString());
    final options = (sent['options'] as Map<String, Object?>?) ?? const <String, Object?>{};
    for (final name in const <String>['effort', 'maxTokens', 'ttsModel', 'ttsCharactersPerDay']) {
      check(name, options[name], reread.options?[name]?.value);
    }
    if (options['temperature'] case final num t) {
      final got = reread.options?['temperature']?.value;
      if (got is! num || (got - t).abs() > 1e-9) {
        differs.add('temperature: sent $t, read back ${got ?? 'nothing'}');
      }
    }
    if (sent.containsKey('apiKey') && reread.apiKeySet != true) {
      differs.add('the API key is still not set');
    }
    return differs.isEmpty ? null : differs.join('; ');
  }
}
