import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../sources/source_widgets.dart';
import 'ai_providers.dart';
import 'ai_screen.dart';
import 'provider_draft.dart';

/// Adds or edits one LLM provider (Screens §D "LLM providers"): connection,
/// models, generation options and limits, a test, the provider's model list,
/// and delete.
///
/// **The API key goes straight to the backend and is never stored, logged or
/// read back**: the field is cleared once the request is sent, and the page
/// shows only whether a key is set (`apiKeySet`).
class ProviderScreen extends ConsumerWidget {
  /// Creates the page; a `null` [providerId] adds a provider.
  const ProviderScreen({super.key, this.providerId});

  /// The provider edited, or `null` to add one.
  final String? providerId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = providerId;
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        if (id == null) ...<Widget>[
          const PageHeader(
            title: 'Add provider',
            crumbs: <Crumb>[Crumb('AI', aiPath), Crumb('Add provider')],
          ),
          ProviderForm(draft: ProviderDraft.create()),
        ] else
          AsyncView<LlmProvider>(
            value: ref.watch(llmProviderProvider(id)),
            onRetry: () => ref.invalidate(llmProviderProvider(id)),
            data: (p) => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                PageHeader(
                  title: p.id,
                  crumbs: <Crumb>[const Crumb('AI', aiPath), Crumb(p.id)],
                  subtitle: llmTypeText(p.type),
                  titleTrailing: <Widget>[
                    StatusLabel(
                      key: const Key('provider.status'),
                      label: llmStatusText(p.status),
                      tone: llmStatusTone(p.status),
                    ),
                  ],
                ),
                ProviderForm(
                  key: ValueKey<LlmProvider>(p),
                  draft: ProviderDraft.edit(p),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

/// The provider form, its test, its model list and delete.
class ProviderForm extends ConsumerStatefulWidget {
  /// Creates the form over [draft].
  const ProviderForm({super.key, required this.draft});

  /// The draft edited.
  final ProviderDraft draft;

  @override
  ConsumerState<ProviderForm> createState() => _ProviderFormState();
}

class _ProviderFormState extends ConsumerState<ProviderForm> {
  late final ProviderDraft _d = widget.draft;
  late final Map<String, TextEditingController> _text = <String, TextEditingController>{
    for (final entry in _d.text.entries) entry.key: TextEditingController(text: entry.value),
  };
  Map<String, String> _errors = const <String, String>{};
  WriteState _write = const WriteIdle();
  bool _revealKey = false;
  bool _confirmDelete = false;
  bool _deleting = false;
  Object? _deleteError;
  bool _testing = false;
  LlmTestResult? _test;
  Object? _testError;
  bool _showModels = false;

  @override
  void dispose() {
    for (final controller in _text.values) {
      controller
        ..clear()
        ..dispose();
    }
    super.dispose();
  }

  void _changed() {
    if (_write is! WriteIdle) {
      setState(() => _write = const WriteIdle());
    }
  }

  Future<void> _save() async {
    for (final entry in _text.entries) {
      _d.text[entry.key] = entry.value.text;
    }
    final errors = _d.validate();
    setState(() => _errors = errors);
    if (errors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final llm = api.getLLMApi();
    final sent = _d.toJson();
    final body = _d.toModel(api.serializers);
    // The key leaves the form here; the field is cleared at once so it is
    // held for no longer than the request.
    _text['apiKey']!.clear();
    _d.text['apiKey'] = '';
    final id = sent['id']! as String;
    setState(() {
      _write = const WriteInProgress();
      _test = null;
      _testError = null;
    });
    try {
      await writeThenConfirm<LlmProvider>(
        write: () => _d.creating
            ? llm.createLlmProvider(llmProviderInput: body)
            : llm.updateLlmProvider(providerId: id, llmProviderInput: body),
        reread: () => callApiRequired(() => llm.getLlmProvider(providerId: id)),
        confirm: (p) => _d.confirm(p, sent),
      );
      sent.remove('apiKey');
      if (!mounted) {
        return;
      }
      setState(() => _write = WriteConfirmed(DateTime.now()));
      ref.invalidate(llmProvidersProvider);
      if (_d.creating) {
        context.go(aiProviderPath(id));
      } else {
        ref.invalidate(llmProviderProvider(id));
      }
    } on Object catch (error) {
      sent.remove('apiKey');
      if (mounted) {
        setState(() => _write = WriteFailed(error));
      }
    }
  }

  Future<void> _runTest() async {
    final id = _d.stored!.id;
    setState(() {
      _testing = true;
      _test = null;
      _testError = null;
    });
    try {
      final result = await callApiRequired(
        () => ref.read(foresignalApiProvider).getLLMApi().testLlmProvider(providerId: id),
      );
      if (mounted) {
        setState(() => _test = result);
      }
    } on Object catch (error) {
      if (mounted) {
        setState(() => _testError = error);
      }
    } finally {
      if (mounted) {
        setState(() => _testing = false);
        // Only the list: re-reading this provider would rebuild the form
        // and discard unsaved edits and the result just shown.
        ref.invalidate(llmProvidersProvider);
      }
    }
  }

  Future<void> _delete() async {
    final id = _d.stored!.id;
    final llm = ref.read(foresignalApiProvider).getLLMApi();
    setState(() {
      _confirmDelete = false;
      _deleting = true;
      _deleteError = null;
    });
    try {
      await writeThenConfirm<List<LlmProvider>>(
        write: () => llm.deleteLlmProvider(providerId: id),
        reread: () async => (await callApiRequired(llm.listLlmProviders)).toList(),
        confirm: (list) => list.any((p) => p.id == id) ? 'the provider is still listed' : null,
      );
      if (!mounted) {
        return;
      }
      ref.invalidate(llmProvidersProvider);
      context.go(aiPath);
    } on Object catch (error) {
      if (mounted) {
        setState(() {
          _deleting = false;
          _deleteError = error;
        });
      }
    }
  }

  Widget _field(
    String key,
    String label, {
    String? help,
    String? hint,
    bool number = false,
    bool enabled = true,
    int maxLines = 1,
  }) {
    return LabeledField(
      label: label,
      help: help,
      field: TextField(
        key: Key('provider.$key'),
        controller: _text[key],
        enabled: enabled,
        maxLines: maxLines,
        keyboardType: number ? TextInputType.number : null,
        style: maxLines > 1 ? const TextStyle(fontFamily: 'monospace', fontSize: 13) : null,
        decoration: InputDecoration(hintText: hint, errorText: _errors[key], errorMaxLines: 3),
        onChanged: (_) => _changed(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final stored = _d.stored;
    final palette = AdminPalette.of(context);
    final busy = _write is WriteInProgress;
    return Align(
      alignment: Alignment.topLeft,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 880),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SectionCard(
              title: 'Connection',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  _field(
                    'id',
                    'Name',
                    help: 'Lowercase letters, digits and hyphens. Fixed once added.',
                    enabled: _d.creating,
                  ),
                  LabeledField(
                    label: 'Type',
                    help: _d.creating ? null : 'Fixed once added.',
                    field: DropdownButtonFormField<String>(
                      key: const Key('provider.type'),
                      initialValue: _d.choice,
                      items: <DropdownMenuItem<String>>[
                        for (final c in llmProviderChoices)
                          DropdownMenuItem<String>(
                            value: c,
                            child: Text(llmProviderChoiceLabel(c)),
                          ),
                      ],
                      onChanged: _d.creating
                          ? (c) => setState(() {
                              if (c == null) {
                                return;
                              }
                              // The preset may fill or clear the base URL.
                              _d.text['baseUrl'] = _text['baseUrl']!.text;
                              _d.choose(c);
                              _text['baseUrl']!.text = _d.text['baseUrl']!;
                              _write = const WriteIdle();
                            })
                          : null,
                    ),
                  ),
                  _field(
                    'baseUrl',
                    'Base URL',
                    help: _d.preset == lmStudioPreset
                        ? "LM Studio's local server, as the backend reaches it. Change the host if "
                              'LM Studio runs on another machine.'
                        : null,
                    hint: _d.defaultBaseUrl == null
                        ? 'Required, such as https://api.openai.com/v1'
                        : 'Default ${_d.defaultBaseUrl}',
                  ),
                  LabeledField(
                    label: 'API key',
                    help:
                        'Write-only: sent to the backend, encrypted there, and never shown again.',
                    field: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextField(
                          key: const Key('provider.apiKey'),
                          controller: _text['apiKey'],
                          obscureText: !_revealKey,
                          autocorrect: false,
                          enableSuggestions: false,
                          enableIMEPersonalizedLearning: false,
                          decoration: InputDecoration(
                            hintText: stored?.apiKeySet == true
                                ? 'Set — enter a new key to replace it'
                                : _d.type == 'anthropic'
                                ? 'Required'
                                : 'Not set',
                            errorText: _errors['apiKey'],
                            suffixIcon: IconButton(
                              tooltip: _revealKey ? 'Hide' : 'Show',
                              icon: Icon(_revealKey ? Icons.visibility_off : Icons.visibility),
                              onPressed: () => setState(() => _revealKey = !_revealKey),
                            ),
                          ),
                          onChanged: (_) => _changed(),
                        ),
                        if (stored != null) ...<Widget>[
                          const SizedBox(height: 6),
                          StatusLabel(
                            key: const Key('provider.keyState'),
                            label: stored.apiKeySet == true ? 'Key set' : 'No key',
                            tone: stored.apiKeySet == true ? StatusTone.ok : StatusTone.neutral,
                          ),
                        ],
                      ],
                    ),
                  ),
                  LabeledField(
                    label: 'Enabled',
                    field: Align(
                      alignment: Alignment.centerLeft,
                      child: Switch(
                        key: const Key('provider.enabled'),
                        value: _d.enabled,
                        onChanged: (v) => setState(() {
                          _d.enabled = v;
                          _write = const WriteIdle();
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SectionCard(
              title: 'Models',
              actions: <Widget>[
                if (stored != null)
                  TonalButton(
                    key: const Key('provider.listModels'),
                    label: _showModels ? 'Hide Models' : 'List Models',
                    icon: Icons.list,
                    onPressed: () => setState(() => _showModels = !_showModels),
                  ),
              ],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  _field(
                    'chatModel',
                    'Chat model',
                    hint: _d.type == 'anthropic' ? 'Default claude-opus-5-5' : null,
                  ),
                  _field('embeddingModel', 'Embedding model'),
                  _field(
                    'embeddingDimensions',
                    'Embedding dimensions',
                    help: '8 to 4096',
                    number: true,
                  ),
                  _field(
                    'knowledgeCutoff',
                    'Knowledge cutoff',
                    help:
                        "The chat model's training-data cutoff, for leak-free evaluation of "
                        'forecasts',
                    hint: 'YYYY-MM-DD',
                  ),
                  if (_showModels && stored != null) ...<Widget>[
                    const SizedBox(height: 8),
                    _ModelList(
                      providerId: stored.id,
                      onUse: (model, embedding) => setState(() {
                        _text[embedding ? 'embeddingModel' : 'chatModel']!.text = model;
                        _write = const WriteIdle();
                      }),
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(height: 16),
            SectionCard(
              title: 'Generation',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  LabeledField(
                    label: 'Effort',
                    help: _d.type == 'anthropic' ? 'Default medium' : null,
                    field: DropdownButtonFormField<String?>(
                      key: const Key('provider.effort'),
                      initialValue: _d.effort,
                      items: <DropdownMenuItem<String?>>[
                        const DropdownMenuItem<String?>(value: null, child: Text('Default')),
                        for (final e in llmEffortLevels)
                          DropdownMenuItem<String?>(value: e, child: Text(e)),
                      ],
                      onChanged: (e) => setState(() {
                        _d.effort = e;
                        _write = const WriteIdle();
                      }),
                    ),
                  ),
                  _field(
                    'maxTokens',
                    'Max tokens',
                    help: '256 to 128,000${_d.type == 'anthropic' ? '. Default 16,000' : ''}',
                    number: true,
                  ),
                  _field(
                    'temperature',
                    'Temperature',
                    help: _d.takesTemperature ? '0 to 2' : 'Anthropic models take effort instead',
                    enabled: _d.takesTemperature,
                  ),
                  _field(
                    'extraHeaders',
                    'Extra headers',
                    help:
                        'One "Name: value" per line. Authorization, x-api-key, Content-Type and '
                        'anthropic-* are reserved.',
                    maxLines: 3,
                  ),
                  LabeledField(
                    label: 'Local',
                    help: _d.type == 'ollama'
                        ? 'Ollama is always local'
                        : 'Treat as local for LLM egress: private-source records may be sent to it',
                    field: Align(
                      alignment: Alignment.centerLeft,
                      child: Switch(
                        key: const Key('provider.local'),
                        value: _d.type == 'ollama' || _d.local,
                        onChanged: _d.type == 'ollama'
                            ? null
                            : (v) => setState(() {
                                _d.local = v;
                                _write = const WriteIdle();
                              }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SectionCard(
              title: 'Limits',
              child: Column(
                children: <Widget>[
                  _field(
                    'requestsPerMinute',
                    'Requests per minute',
                    hint: 'Default 30',
                    number: true,
                  ),
                  _field(
                    'tokensPerDay',
                    'Tokens per day',
                    help: 'At least 1,000',
                    hint: 'Default 2,000,000',
                    number: true,
                  ),
                ],
              ),
            ),
            if (_d.takesSpeech) ...<Widget>[
              const SizedBox(height: 16),
              SectionCard(
                title: 'Speech',
                subtitle: 'Used when this provider serves the text-to-speech role.',
                child: Column(
                  children: <Widget>[
                    _field('ttsModel', 'Speech model', hint: 'Default tts-1'),
                    _field(
                      'ttsCharactersPerDay',
                      'Characters per day',
                      help: '1,000 to 100,000,000, per UTC day',
                      hint: 'Default 100,000',
                      number: true,
                    ),
                  ],
                ),
              ),
            ],
            FormActions(
              busy: busy,
              saveLabel: _d.creating ? 'Add Provider' : 'Save Changes',
              onSave: _save,
              leading: <Widget>[WriteStatusLine(state: _write)],
            ),
            if (stored != null) ...<Widget>[
              const SizedBox(height: 24),
              SectionCard(
                title: 'Test',
                subtitle:
                    'Sends a tiny chat request, and an embedding when the provider has an '
                    'embedding model. It spends a little of the budget.',
                actions: <Widget>[
                  TonalButton(
                    key: const Key('provider.test'),
                    label: 'Test Provider',
                    icon: Icons.play_arrow,
                    onPressed: _testing || busy ? null : _runTest,
                  ),
                ],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    if (_testing) const LinearProgressIndicator(),
                    if (_testError case final e?)
                      ErrorBanner(error: e, title: 'The test was refused'),
                    if (_test case final t?) LlmTestResultView(result: t),
                    if (!_testing && _test == null && _testError == null)
                      Text('Not run yet.', style: TextStyle(color: palette.muted)),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              SectionCard(
                title: 'Health',
                child: KeyValueList(entries: providerHealthEntries(stored)),
              ),
              const SizedBox(height: 16),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: <Widget>[
                  if (!_confirmDelete)
                    DangerButton(
                      key: const Key('provider.delete'),
                      label: 'Delete Provider',
                      onPressed: _deleting ? null : () => setState(() => _confirmDelete = true),
                    )
                  else ...<Widget>[
                    DangerButton(
                      key: const Key('provider.confirmDelete'),
                      label: 'Delete ${stored.id}',
                      onPressed: _delete,
                    ),
                    TextButton(
                      onPressed: () => setState(() => _confirmDelete = false),
                      child: const Text('Cancel'),
                    ),
                  ],
                  if (_deleting)
                    const SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                ],
              ),
              if (_deleteError case final e?) ...<Widget>[
                const SizedBox(height: 12),
                ErrorBanner(error: e, title: 'Could not delete'),
              ],
            ],
          ],
        ),
      ),
    );
  }
}

/// A provider test's outcome (`LlmTestResult`).
class LlmTestResultView extends StatelessWidget {
  /// Creates the view.
  const LlmTestResultView({super.key, required this.result});

  /// The result.
  final LlmTestResult result;

  @override
  Widget build(BuildContext context) {
    final chat = result.chat;
    final embedding = result.embedding;
    return ResultPanel(
      key: const Key('provider.testResult'),
      title: result.success ? 'Provider answered' : 'Provider test failed',
      tone: result.success ? StatusTone.ok : StatusTone.error,
      message: result.error,
      details: <MapEntry<String, Object>>[
        if (result.refusalCategory case final r?) MapEntry<String, Object>('Refusal', r),
        if (chat != null) ...<MapEntry<String, Object>>[
          if (chat.model case final m?) MapEntry<String, Object>('Chat model', m),
          if (chat.latencyMs case final l?) MapEntry<String, Object>('Latency', '$l ms'),
          MapEntry<String, Object>(
            'Tokens',
            '${chat.inputTokens ?? 0} in · ${chat.outputTokens ?? 0} out'
                '${chat.cachedTokens == null ? '' : ' · ${chat.cachedTokens} cached'}',
          ),
          if (chat.stopReason case final s?) MapEntry<String, Object>('Stop reason', s.name),
          if (chat.text case final t?) MapEntry<String, Object>('Reply', t),
        ],
        if (embedding != null) ...<MapEntry<String, Object>>[
          if (embedding.model case final m?) MapEntry<String, Object>('Embedding model', m),
          if (embedding.dimensions case final d?) MapEntry<String, Object>('Dimensions', '$d'),
          if (embedding.latencyMs case final l?)
            MapEntry<String, Object>('Embedding latency', '$l ms'),
        ],
      ],
    );
  }
}

class _ModelList extends ConsumerWidget {
  const _ModelList({required this.providerId, required this.onUse});

  final String providerId;
  final void Function(String model, bool embedding) onUse;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final muted = AdminPalette.of(context).muted;
    String yesNo(bool? b) => b == null ? '—' : (b ? 'Yes' : 'No');
    return AsyncView<List<LlmModelInfo>>(
      value: ref.watch(llmModelsProvider(providerId)),
      onRetry: () => ref.invalidate(llmModelsProvider(providerId)),
      data: (models) => DataTableCard<LlmModelInfo>(
        key: const Key('provider.models'),
        rows: models,
        empty: 'The provider listed no models.',
        columns: <TableColumnSpec<LlmModelInfo>>[
          TableColumnSpec<LlmModelInfo>(
            label: 'Model',
            cell: (m) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(m.id),
                if (m.displayName case final n? when n != m.id)
                  Text(n, style: TextStyle(color: muted, fontSize: 12)),
              ],
            ),
          ),
          TableColumnSpec<LlmModelInfo>(
            label: 'Context',
            numeric: true,
            cell: (m) => Text(m.contextWindow == null ? '—' : compactCount(m.contextWindow!)),
          ),
          TableColumnSpec<LlmModelInfo>(
            label: 'Tools',
            cell: (m) => Text(yesNo(m.supportsTools)),
          ),
          TableColumnSpec<LlmModelInfo>(
            label: 'Embeddings',
            cell: (m) => Text(yesNo(m.supportsEmbeddings)),
          ),
          TableColumnSpec<LlmModelInfo>(
            label: 'Use',
            cell: (m) => Wrap(
              spacing: 8,
              children: <Widget>[
                if (m.supportsEmbeddings != true)
                  TextButton(
                    key: Key('provider.useChat.${m.id}'),
                    onPressed: () => onUse(m.id, false),
                    child: const Text('Chat'),
                  ),
                if (m.supportsEmbeddings != false)
                  TextButton(
                    key: Key('provider.useEmbedding.${m.id}'),
                    onPressed: () => onUse(m.id, true),
                    child: const Text('Embedding'),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
