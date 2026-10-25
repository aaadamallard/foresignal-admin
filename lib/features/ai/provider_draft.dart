import 'package:built_value/serializer.dart';

import '../../api/api.dart';
import 'provider_presets.dart';

export 'provider_presets.dart';

/// The provider types (`LlmProviderInput.type`), by wire name.
const List<String> llmProviderTypes = <String>['anthropic', 'openai-compatible', 'ollama'];

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
  /// A draft for a new provider: an online Anthropic provider until a preset
  /// is chosen.
  ProviderDraft.create()
    : stored = null,
      type = 'anthropic',
      enabled = true,
      local = false,
      category = LlmCategory.online,
      preset = 'anthropic';

  /// A draft of [provider], as last read.
  ProviderDraft.edit(LlmProvider provider)
    : stored = provider,
      type = wireOf(provider.type, provider, 'type'),
      enabled = provider.enabled,
      local = _option(provider, 'local') == true,
      category =
          wireOf(provider.type, provider, 'type') == 'ollama' || _option(provider, 'local') == true
          ? LlmCategory.local
          : LlmCategory.online,
      preset = llmPresetFor(
        type: wireOf(provider.type, provider, 'type'),
        baseUrl: provider.baseUrl,
        category:
            wireOf(provider.type, provider, 'type') == 'ollama' ||
                _option(provider, 'local') == true
            ? LlmCategory.local
            : LlmCategory.online,
      ).id {
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
    final pricing = provider.pricing;
    text['priceInput'] = _money(pricing?.inputUsdPerMillionTokens);
    text['priceOutput'] = _money(pricing?.outputUsdPerMillionTokens);
    text['priceCachedInput'] = _money(pricing?.cachedInputUsdPerMillionTokens);
    text['priceEmbedding'] = _money(pricing?.embeddingUsdPerMillionTokens);
    text['hourlyCapUsd'] = _money(provider.hourlyCapUsd);
    text['dailyCapUsd'] = _money(provider.dailyCapUsd);
    text['monthlyCapUsd'] = _money(provider.monthlyCapUsd);
  }

  /// [n] as typed back into a field: no exponent, no trailing `.0`.
  static String _money(num? n) {
    if (n == null) {
      return '';
    }
    if (n == n.roundToDouble()) {
      return n.toInt().toString();
    }
    var text = n.toStringAsFixed(6);
    while (text.endsWith('0')) {
      text = text.substring(0, text.length - 1);
    }
    return text;
  }

  static Object? _option(LlmProvider provider, String name) => provider.options?[name]?.value;

  /// The provider as last read; `null` while adding one.
  final LlmProvider? stored;

  /// Whether this adds a provider.
  bool get creating => stored == null;

  /// The provider type, by wire name. Fixed once the provider exists.
  String type;

  /// Local LLM or Online API: the radio above the provider picker. Choosing
  /// it sets [local], the egress flag.
  LlmCategory category;

  /// The picker's entry ([LlmPreset.id]).
  String preset;

  /// The picker's entry.
  LlmPreset get presetInfo => llmPresetById(preset) ?? llmPresetsOf(category).last;

  /// The picker's value; kept for the callers that read it as before.
  String get choice => preset;

  /// Chooses [next] as the category while adding: its first preset is
  /// chosen, and [local] follows it.
  void chooseCategory(LlmCategory next) {
    if (next == category) {
      return;
    }
    category = next;
    choose(llmPresetsOf(next).first.id);
  }

  /// Applies a preset while adding: its type, its base URL (when the field is
  /// empty or holds another preset's URL, so a typed URL is kept), and the
  /// local flag of its category. Every value stays editable.
  void choose(String presetId) {
    final next = llmPresetById(presetId);
    if (next == null) {
      return;
    }
    final url = text['baseUrl']!.trim();
    final filled = url.isEmpty || llmPresets.any((p) => p.baseUrl == url);
    preset = next.id;
    category = next.category;
    type = next.type;
    local = next.category == LlmCategory.local;
    if (filled) {
      text['baseUrl'] = next.baseUrl ?? '';
    }
    if (!takesEmbeddings) {
      text['embeddingModel'] = '';
      text['embeddingDimensions'] = '';
      text['priceEmbedding'] = '';
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
  /// `temperature`, `ttsModel`, `ttsCharactersPerDay`, `extraHeaders`, the
  /// prices `priceInput`, `priceOutput`, `priceCachedInput`, `priceEmbedding`
  /// (USD per million tokens) and the caps `hourlyCapUsd`, `dailyCapUsd`,
  /// `monthlyCapUsd`.
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
      'priceInput',
      'priceOutput',
      'priceCachedInput',
      'priceEmbedding',
      'hourlyCapUsd',
      'dailyCapUsd',
      'monthlyCapUsd',
    ])
      k: '',
  };

  String _t(String key) => text[key]!.trim();

  /// Whether the type takes a sampling temperature (Anthropic refuses one).
  bool get takesTemperature => type != 'anthropic';

  /// Whether the type has an embeddings endpoint (Anthropic has none).
  bool get takesEmbeddings => type != 'anthropic';

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
      } else if (presetInfo.placeholder case final p? when baseUrl.contains(p)) {
        errors['baseUrl'] = 'Replace $p with your own value.';
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
    for (final key in const <String>[
      'priceInput',
      'priceOutput',
      'priceCachedInput',
      'priceEmbedding',
    ]) {
      _decimal(errors, key, min: 0, max: 100000, places: 6, inclusiveMin: true);
    }
    if (!takesEmbeddings && _t('priceEmbedding').isNotEmpty) {
      errors['priceEmbedding'] = 'Anthropic has no embeddings, so no embedding price.';
    }
    for (final key in const <String>['hourlyCapUsd', 'dailyCapUsd', 'monthlyCapUsd']) {
      _decimal(errors, key, min: 0, max: 10000000000, places: 4, inclusiveMin: false);
    }
    final priced = _pricing().isNotEmpty;
    for (final key in const <String>['hourlyCapUsd', 'dailyCapUsd', 'monthlyCapUsd']) {
      if (_t(key).isNotEmpty && !priced && !errors.containsKey(key)) {
        errors[key] = 'Set a price first: spend is the metered tokens at these prices.';
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

  void _decimal(
    Map<String, String> errors,
    String key, {
    required num min,
    required num max,
    required int places,
    required bool inclusiveMin,
  }) {
    final value = _t(key);
    if (value.isEmpty) {
      return;
    }
    final n = num.tryParse(value);
    final dot = value.indexOf('.');
    final decimals = dot < 0 ? 0 : value.length - dot - 1;
    final low = n != null && (inclusiveMin ? n >= min : n > min);
    if (n == null ||
        !low ||
        n > max ||
        decimals > places ||
        value.contains('e') ||
        value.contains('E')) {
      errors[key] = inclusiveMin
          ? 'A number from $min to $max, at most $places decimal places.'
          : 'A number above $min, at most $places decimal places.';
    }
  }

  /// The `pricing` members that have a value.
  Map<String, num> _pricing() => <String, num>{
    'inputUsdPerMillionTokens': ?num.tryParse(_t('priceInput')),
    'outputUsdPerMillionTokens': ?num.tryParse(_t('priceOutput')),
    'cachedInputUsdPerMillionTokens': ?num.tryParse(_t('priceCachedInput')),
    if (takesEmbeddings) 'embeddingUsdPerMillionTokens': ?num.tryParse(_t('priceEmbedding')),
  };

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
    num? d(String key) => num.tryParse(_t(key));
    final pricing = _pricing();
    return <String, Object?>{
      'id': _t('id'),
      'type': type,
      'baseUrl': ?s('baseUrl'),
      'chatModel': ?s('chatModel'),
      if (takesEmbeddings) 'embeddingModel': ?s('embeddingModel'),
      if (takesEmbeddings) 'embeddingDimensions': ?n('embeddingDimensions'),
      'apiKey': ?s('apiKey'),
      if (options.isNotEmpty) 'options': options,
      'requestsPerMinute': ?n('requestsPerMinute'),
      'tokensPerDay': ?n('tokensPerDay'),
      'enabled': enabled,
      'knowledgeCutoff': ?s('knowledgeCutoff'),
      if (pricing.isNotEmpty) 'pricing': pricing,
      'hourlyCapUsd': ?d('hourlyCapUsd'),
      'dailyCapUsd': ?d('dailyCapUsd'),
      'monthlyCapUsd': ?d('monthlyCapUsd'),
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
    void money(String label, Object? want, num? got) {
      if (want is num && (got == null || (got - want).abs() > 1e-9)) {
        differs.add('$label: sent $want, read back ${got ?? 'nothing'}');
      }
    }

    final pricing = (sent['pricing'] as Map<String, num>?) ?? const <String, num>{};
    money(
      'Input price',
      pricing['inputUsdPerMillionTokens'],
      reread.pricing?.inputUsdPerMillionTokens,
    );
    money(
      'Output price',
      pricing['outputUsdPerMillionTokens'],
      reread.pricing?.outputUsdPerMillionTokens,
    );
    money(
      'Cached input price',
      pricing['cachedInputUsdPerMillionTokens'],
      reread.pricing?.cachedInputUsdPerMillionTokens,
    );
    money(
      'Embedding price',
      pricing['embeddingUsdPerMillionTokens'],
      reread.pricing?.embeddingUsdPerMillionTokens,
    );
    money('Hourly cap', sent['hourlyCapUsd'], reread.hourlyCapUsd);
    money('Daily cap', sent['dailyCapUsd'], reread.dailyCapUsd);
    money('Monthly cap', sent['monthlyCapUsd'], reread.monthlyCapUsd);
    if (sent.containsKey('apiKey') && reread.apiKeySet != true) {
      differs.add('the API key is still not set');
    }
    return differs.isEmpty ? null : differs.join('; ');
  }
}
