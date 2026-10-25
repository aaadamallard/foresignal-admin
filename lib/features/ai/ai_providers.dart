import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../sources/source_validate.dart';
import '../usage/usage_summary.dart';

/// Every LLM provider (`listLlmProviders`). API keys are never returned.
final llmProvidersProvider = FutureProvider<List<LlmProvider>>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  final providers = await callApiRequired(() => api.getLLMApi().listLlmProviders());
  return providers.toList()..sort((a, b) => a.id.compareTo(b.id));
});

/// One LLM provider (`getLlmProvider`).
final llmProviderProvider = FutureProvider.family<LlmProvider, String>((ref, id) async {
  final api = ref.watch(foresignalApiProvider);
  return callApiRequired(() => api.getLLMApi().getLlmProvider(providerId: id));
});

/// The models a provider offers (`listLlmProviderModels`). This queries the
/// provider itself, so it runs only when asked for.
final llmModelsProvider = FutureProvider.autoDispose.family<List<LlmModelInfo>, String>((
  ref,
  id,
) async {
  final api = ref.watch(foresignalApiProvider);
  final models = await callApiRequired(() => api.getLLMApi().listLlmProviderModels(providerId: id));
  return models.toList()..sort((a, b) => a.id.compareTo(b.id));
});

/// A provider's spend against its USD caps, its token limits and any
/// balance the provider reports (`getLlmProviderBudget`).
final llmBudgetProvider = FutureProvider.autoDispose.family<LlmProviderBudget, String>((
  ref,
  id,
) async {
  final api = ref.watch(foresignalApiProvider);
  return callApiRequired(() => api.getLLMApi().getLlmProviderBudget(providerId: id));
});

/// The LLM roles and options (`getLlmSettings`).
final llmSettingsProvider = FutureProvider<LlmSettings>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  return callApiRequired(() => api.getLLMApi().getLlmSettings());
});

/// LLM usage over a window, per provider (`getLlmUsage` once per provider),
/// for the stacked token chart and the per-provider table. A provider whose
/// usage cannot be read is listed in [LlmUsage.failed].
final llmUsageProvider = FutureProvider.family<LlmUsage, UsageWindow>((ref, window) async {
  final api = ref.watch(foresignalApiProvider);
  final providers = await ref.watch(llmProvidersProvider.future);
  final to = DateTime.now().toUtc();
  final from = to.subtract(window.span);
  final results = await Future.wait(<Future<(String, LlmUsageSeries?)>>[
    for (final p in providers)
      callApiRequired(
        () => api.getLLMApi().getLlmUsage(
          provider: p.id,
          from: from,
          to: to,
          resolution: window.resolution,
        ),
      ).then<(String, LlmUsageSeries?)>((s) => (p.id, s), onError: (Object _) => (p.id, null)),
  ]);
  return LlmUsage(
    <String, LlmUsageSeries>{
      for (final (id, series) in results) id: ?series,
    },
    failed: <String>[
      for (final (id, series) in results)
        if (series == null) id,
    ],
  );
});

/// The bundled prompt templates, by id (`listPromptTemplates`).
final promptTemplatesProvider = FutureProvider.autoDispose<List<PromptTemplateSummary>>((
  ref,
) async {
  final api = ref.watch(foresignalApiProvider);
  final list = await callApiRequired(() => api.getLLMApi().listPromptTemplates());
  return list.items.toList();
});

/// A prompt template by id and optional version (`getPromptTemplate`).
final promptTemplateProvider = FutureProvider.autoDispose.family<PromptTemplate, (String, String?)>(
  (ref, key) async {
    final (id, version) = key;
    final api = ref.watch(foresignalApiProvider);
    return callApiRequired(
      () => api.getLLMApi().getPromptTemplate(templateId: id, version: version),
    );
  },
);

/// The totals of one provider's usage over a window.
class LlmUsageTotals {
  /// Creates the totals.
  const LlmUsageTotals({
    this.requests = 0,
    this.inputTokens = 0,
    this.outputTokens = 0,
    this.cachedTokens = 0,
    this.errors = 0,
    this.refused = 0,
  });

  /// Sums [points].
  factory LlmUsageTotals.of(Iterable<LlmUsagePoint> points) => points.fold(
    const LlmUsageTotals(),
    (t, p) =>
        t +
        LlmUsageTotals(
          requests: p.requests,
          inputTokens: p.inputTokens,
          outputTokens: p.outputTokens,
          cachedTokens: p.cachedTokens ?? 0,
          errors: p.errors ?? 0,
          refused: p.refused ?? 0,
        ),
  );

  /// Requests sent.
  final int requests;

  /// Prompt tokens.
  final int inputTokens;

  /// Completion tokens.
  final int outputTokens;

  /// Prompt tokens served from the provider's cache.
  final int cachedTokens;

  /// Failed requests.
  final int errors;

  /// Requests the LLM budget refused.
  final int refused;

  /// Input and output tokens.
  int get tokens => inputTokens + outputTokens;

  /// The sum of two totals.
  LlmUsageTotals operator +(LlmUsageTotals o) => LlmUsageTotals(
    requests: requests + o.requests,
    inputTokens: inputTokens + o.inputTokens,
    outputTokens: outputTokens + o.outputTokens,
    cachedTokens: cachedTokens + o.cachedTokens,
    errors: errors + o.errors,
    refused: refused + o.refused,
  );
}

/// LLM usage per provider over a window.
class LlmUsage {
  /// Creates the usage from per-provider series.
  LlmUsage(this.byProvider, {this.failed = const <String>[]});

  /// Each readable provider's series.
  final Map<String, LlmUsageSeries> byProvider;

  /// Providers whose usage could not be read.
  final List<String> failed;

  /// Each provider's totals over the window, from its points.
  Map<String, LlmUsageTotals> get totals => <String, LlmUsageTotals>{
    for (final entry in byProvider.entries) entry.key: LlmUsageTotals.of(entry.value.points),
  };

  /// Every provider's totals together.
  LlmUsageTotals get total => totals.values.fold(const LlmUsageTotals(), (sum, t) => sum + t);

  /// Tokens (input and output) per bucket, stacked by provider.
  StackedUsage get stackedTokens => StackedUsage.fromPoints(
    <String, Map<DateTime, int>>{
      for (final entry in byProvider.entries)
        entry.key: <DateTime, int>{
          for (final p in entry.value.points) p.t.toUtc(): p.inputTokens + p.outputTokens,
        },
    },
    step: byProvider.isEmpty
        ? null
        : usageStep(
            wireOf(byProvider.values.first.resolution, byProvider.values.first, 'resolution'),
          ),
  );
}
