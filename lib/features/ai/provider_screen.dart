import 'package:built_value/serializer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/format/instant_text.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../sources/source_widgets.dart';
import 'ai_providers.dart';
import 'ai_screen.dart';
import 'provider_draft.dart';

/// Adds or edits one LLM provider (Screens §D "LLM providers") as a guided
/// flow: Local LLM or Online API, a provider preset that fills the backend
/// type and base URL, a key, **Test** before anything is saved
/// (`probeLlmProvider`), chat and embedding models picked from what the
/// provider lists, pricing and USD caps with spend per window, generation
/// options and limits, and delete. Save and Cancel sit in the page header.
///
/// **The API key goes straight to the backend and is never stored, logged or
/// read back**: Test forwards it to the backend for that one call, the field
/// is cleared once Save sends it, and the page shows only whether a key is set
/// (`apiKeySet`).
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
        if (id == null)
          ProviderForm(
            draft: ProviderDraft.create(),
            header: (actions) => PageHeader(
              title: 'Add provider',
              crumbs: const <Crumb>[Crumb('AI', aiPath), Crumb('Add provider')],
              actions: actions,
            ),
          )
        else
          AsyncView<LlmProvider>(
            value: ref.watch(llmProviderProvider(id)),
            onRetry: () => ref.invalidate(llmProviderProvider(id)),
            data: (p) => ProviderForm(
              key: ValueKey<LlmProvider>(p),
              draft: ProviderDraft.edit(p),
              header: (actions) => PageHeader(
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
                actions: actions,
              ),
            ),
          ),
      ],
    );
  }
}

/// The provider form with its page header, test, model pickers, budget and
/// delete.
class ProviderForm extends ConsumerStatefulWidget {
  /// Creates the form over [draft]; [header] builds the page header around
  /// the form's Save and Cancel actions.
  const ProviderForm({super.key, required this.draft, required this.header});

  /// The draft edited.
  final ProviderDraft draft;

  /// The page header, given the actions to place top-right.
  final Widget Function(List<Widget> actions) header;

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
  bool _probing = false;
  LlmProbeResult? _probe;
  Object? _probeError;
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

  /// Copies the fields into the draft.
  void _pull() {
    for (final entry in _text.entries) {
      _d.text[entry.key] = entry.value.text;
    }
  }

  /// Copies the draft into the fields (after a preset filled some).
  void _push() {
    for (final entry in _text.entries) {
      if (entry.value.text != _d.text[entry.key]) {
        entry.value.text = _d.text[entry.key]!;
      }
    }
  }

  /// The models to pick from: the last successful Test's, else (for a saved
  /// provider) what the provider lists; `null` while there are none.
  List<LlmModelInfo>? _models() {
    if (_probe case final p? when p.test.success && p.models.isNotEmpty) {
      return p.models.toList();
    }
    final stored = _d.stored;
    if (_probe == null && stored != null) {
      final listed = ref.watch(llmModelsProvider(stored.id));
      return switch (listed) {
        AsyncData(:final value) when value.isNotEmpty => value,
        _ => null,
      };
    }
    return null;
  }

  Future<void> _save() async {
    _pull();
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
        ref
          ..invalidate(llmProviderProvider(id))
          ..invalidate(llmBudgetProvider(id));
      }
    } on Object catch (error) {
      sent.remove('apiKey');
      if (mounted) {
        setState(() => _write = WriteFailed(error));
      }
    }
  }

  /// Discards the unsaved edits by leaving the page: back to where it was
  /// opened from, or the AI page.
  void _cancel() {
    final router = GoRouter.of(context);
    BackLink.goBack(context, router.state.matchedLocation);
  }

  /// Test: the form as it stands, unsaved, through `probeLlmProvider`. For a
  /// saved provider an empty key field means its stored key.
  Future<void> _runProbe() async {
    _pull();
    const checked = <String>{'baseUrl', 'apiKey', 'embeddingDimensions'};
    final probeErrors = _d.validate()..removeWhere((k, _) => !checked.contains(k));
    setState(() => _errors = probeErrors);
    if (probeErrors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final json = _d.toJson();
    // The probe validates the body as a create would; a draft without a
    // valid name yet is tested under a placeholder.
    if (!RegExp(r'^[a-z0-9-]{1,64}$').hasMatch(json['id']! as String)) {
      json['id'] = 'probe';
    }
    final body =
        api.serializers.deserialize(json, specifiedType: const FullType(LlmProviderInput))!
            as LlmProviderInput;
    setState(() {
      _probing = true;
      _probe = null;
      _probeError = null;
    });
    try {
      final result = await callApiRequired(
        () => api.getLLMApi().probeLlmProvider(llmProviderInput: body),
      );
      if (mounted) {
        setState(() => _probe = result);
      }
    } on Object catch (error) {
      if (mounted) {
        setState(() => _probeError = error);
      }
    } finally {
      if (mounted) {
        setState(() => _probing = false);
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
        // Only the list and the budget: re-reading this provider would
        // rebuild the form and discard unsaved edits and the result shown.
        ref
          ..invalidate(llmProvidersProvider)
          ..invalidate(llmBudgetProvider(id));
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
    bool decimal = false,
    bool enabled = true,
    int maxLines = 1,
    String? prefix,
  }) {
    return LabeledField(
      label: label,
      help: help,
      field: TextField(
        key: Key('provider.$key'),
        controller: _text[key],
        enabled: enabled,
        maxLines: maxLines,
        keyboardType: decimal
            ? const TextInputType.numberWithOptions(decimal: true)
            : number
            ? TextInputType.number
            : null,
        style: maxLines > 1 ? const TextStyle(fontFamily: 'monospace', fontSize: 13) : null,
        decoration: InputDecoration(
          hintText: hint,
          prefixText: prefix,
          errorText: _errors[key],
          errorMaxLines: 3,
        ),
        onChanged: (_) => _changed(),
      ),
    );
  }

  /// A model field: an editable dropdown of [models] once there are some
  /// (any id may still be typed), a plain field before.
  Widget _modelField(
    String key,
    String label,
    List<LlmModelInfo>? models, {
    required bool embedding,
    String? hint,
  }) {
    final choices = <LlmModelInfo>[
      for (final m in models ?? const <LlmModelInfo>[])
        if (embedding ? m.supportsEmbeddings != false : m.supportsEmbeddings != true) m,
    ];
    if (choices.isEmpty) {
      return _field(
        key,
        label,
        hint:
            hint ??
            (_d.presetInfo.listsModels
                ? 'Test the connection to load models.'
                : 'Type the model id.'),
      );
    }
    final muted = AdminPalette.of(context).muted;
    return LabeledField(
      label: label,
      help: '${choices.length} listed by the provider; any other id may be typed.',
      field: DropdownMenu<String>(
        key: Key('provider.$key'),
        controller: _text[key],
        expandedInsets: EdgeInsets.zero,
        enableFilter: true,
        requestFocusOnTap: true,
        menuHeight: 320,
        hintText: hint ?? 'Choose or type a model',
        errorText: _errors[key],
        onSelected: (_) => _changed(),
        dropdownMenuEntries: <DropdownMenuEntry<String>>[
          for (final m in choices)
            DropdownMenuEntry<String>(
              value: m.id,
              label: m.id,
              labelWidget: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(m.displayName ?? m.id, overflow: TextOverflow.ellipsis),
                  Text(
                    <String>[
                      if (m.displayName != null && m.displayName != m.id) m.id,
                      if (m.contextWindow case final c?) '${compactCount(c)} context',
                    ].join(' · '),
                    style: TextStyle(color: muted, fontSize: 12),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final stored = _d.stored;
    final palette = AdminPalette.of(context);
    final busy = _write is WriteInProgress;
    final preset = _d.presetInfo;
    final models = _models();
    final actions = <Widget>[
      OutlinedButton(
        key: const Key('form.cancel'),
        onPressed: busy ? null : _cancel,
        child: const Text('Cancel'),
      ),
      FilledButton(
        key: const Key('form.save'),
        onPressed: busy || _probing || _testing ? null : _save,
        child: busy
            ? const SizedBox(
                width: 16,
                height: 16,
                child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
              )
            : Text(_d.creating ? 'Add Provider' : 'Save Changes'),
      ),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        widget.header(actions),
        Align(
          alignment: Alignment.topLeft,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 880),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                if (_write is! WriteIdle) ...<Widget>[
                  WriteStatusLine(state: _write),
                  const SizedBox(height: 12),
                ],
                SectionCard(
                  title: 'Connection',
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      LabeledField(
                        label: 'Runs',
                        help: _d.creating
                            ? 'Local LLM is treated as local for LLM egress (options.local).'
                            : 'Fixed once added.',
                        field: RadioGroup<LlmCategory>(
                          groupValue: _d.category,
                          onChanged: (c) {
                            if (!_d.creating || c == null) {
                              return;
                            }
                            setState(() {
                              _pull();
                              _d.chooseCategory(c);
                              _push();
                              _probe = null;
                              _write = const WriteIdle();
                            });
                          },
                          child: Wrap(
                            spacing: 24,
                            children: <Widget>[
                              for (final c in LlmCategory.values)
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Radio<LlmCategory>(
                                      key: Key('provider.category.${c.name}'),
                                      value: c,
                                      enabled: _d.creating,
                                    ),
                                    Text(llmCategoryLabel(c)),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ),
                      LabeledField(
                        label: 'Provider',
                        help: _d.creating
                            ? 'Fills the type and base URL; both stay editable.'
                            : 'Fixed once added.',
                        field: DropdownButtonFormField<String>(
                          key: const Key('provider.type'),
                          initialValue: _d.preset,
                          isExpanded: true,
                          items: withCurrentItem(<DropdownMenuItem<String>>[
                            for (final p in llmPresetsOf(_d.category))
                              DropdownMenuItem<String>(value: p.id, child: Text(p.label)),
                          ], _d.preset),
                          onChanged: _d.creating
                              ? (id) => setState(() {
                                  if (id == null) {
                                    return;
                                  }
                                  _pull();
                                  _d.choose(id);
                                  _push();
                                  _probe = null;
                                  _write = const WriteIdle();
                                })
                              : null,
                        ),
                      ),
                      _field(
                        'id',
                        'Name',
                        help: 'Lowercase letters, digits and hyphens. Fixed once added.',
                        enabled: _d.creating,
                      ),
                      _field(
                        'baseUrl',
                        'Base URL',
                        help: <String>[
                          'Backend type: ${llmTypeLabel(_d.type)}.',
                          ?preset.note,
                        ].join(' '),
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
                                    : _d.category == LlmCategory.local
                                    ? 'Usually not needed'
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
                        field: Wrap(
                          spacing: 16,
                          runSpacing: 8,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: <Widget>[
                            Switch(
                              key: const Key('provider.enabled'),
                              value: _d.enabled,
                              onChanged: (v) => setState(() {
                                _d.enabled = v;
                                _write = const WriteIdle();
                              }),
                            ),
                            TonalButton(
                              key: const Key('provider.probe'),
                              label: 'Test',
                              icon: Icons.bolt,
                              onPressed: _probing || busy ? null : _runProbe,
                            ),
                            if (_probing)
                              const SizedBox(
                                width: 16,
                                height: 16,
                                child: CircularProgressIndicator(strokeWidth: 2),
                              ),
                          ],
                        ),
                      ),
                      if (_probeError case final e?)
                        ErrorBanner(
                          key: const Key('provider.probeError'),
                          error: e,
                          title: 'The test was refused',
                        ),
                      if (_probe case final p?) ProbeResultView(result: p),
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
                      _modelField(
                        'chatModel',
                        'Chat model',
                        models,
                        embedding: false,
                        hint: models == null && _d.type == 'anthropic'
                            ? 'Default claude-opus-5-5'
                            : null,
                      ),
                      if (_d.takesEmbeddings) ...<Widget>[
                        _modelField('embeddingModel', 'Embedding model', models, embedding: true),
                        _field(
                          'embeddingDimensions',
                          'Embedding dimensions',
                          help: '8 to 4096',
                          number: true,
                        ),
                      ],
                      _field(
                        'knowledgeCutoff',
                        'Knowledge cutoff',
                        help:
                            "The chat model's training-data cutoff, for leak-free evaluation of forecasts",
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
                  key: const Key('provider.budget'),
                  title: 'Budget',
                  subtitle:
                      "Spend is ForeSignal's own metered tokens at these prices. A call is refused once a "
                      "window's spend reaches its cap, until the window resets (UTC).",
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      if (stored != null) ...<Widget>[
                        BudgetStatusView(providerId: stored.id),
                        const SizedBox(height: 16),
                      ],
                      _field(
                        'priceInput',
                        'Input price',
                        hint: 'USD per million tokens',
                        decimal: true,
                        prefix: r'$',
                      ),
                      _field(
                        'priceOutput',
                        'Output price',
                        hint: 'USD per million tokens',
                        decimal: true,
                        prefix: r'$',
                      ),
                      _field(
                        'priceCachedInput',
                        'Cached input price',
                        help: 'Prompt-cache reads; the input price when empty',
                        hint: 'USD per million tokens',
                        decimal: true,
                        prefix: r'$',
                      ),
                      if (_d.takesEmbeddings)
                        _field(
                          'priceEmbedding',
                          'Embedding price',
                          hint: 'USD per million tokens',
                          decimal: true,
                          prefix: r'$',
                        ),
                      _field(
                        'hourlyCapUsd',
                        'Hourly cap',
                        help: 'Resets at the top of each UTC hour',
                        hint: 'No cap',
                        decimal: true,
                        prefix: r'$',
                      ),
                      _field(
                        'dailyCapUsd',
                        'Daily cap',
                        help: 'Resets at 00:00 UTC',
                        hint: 'No cap',
                        decimal: true,
                        prefix: r'$',
                      ),
                      _field(
                        'monthlyCapUsd',
                        'Monthly cap',
                        help: 'Resets on the 1st, 00:00 UTC',
                        hint: 'No cap',
                        decimal: true,
                        prefix: r'$',
                      ),
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
                          items: withCurrentItem(<DropdownMenuItem<String?>>[
                            const DropdownMenuItem<String?>(value: null, child: Text('Default')),
                            for (final e in llmEffortLevels)
                              DropdownMenuItem<String?>(value: e, child: Text(e)),
                          ], _d.effort),
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
                        help: _d.takesTemperature
                            ? '0 to 2'
                            : 'Anthropic models take effort instead',
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
                if (stored != null) ...<Widget>[
                  const SizedBox(height: 24),
                  SectionCard(
                    title: 'Saved provider test',
                    subtitle:
                        'Tests the provider as saved: a tiny chat request, and an embedding when it has an '
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
        ),
      ],
    );
  }
}

/// The label of a backend type, by wire name.
String llmTypeLabel(String type) => switch (type) {
  'anthropic' => 'Anthropic (native)',
  'openai-compatible' => 'OpenAI-compatible',
  'ollama' => 'Ollama',
  _ => type,
};

/// What Test found (`LlmProbeResult`): a green "Connection OK" or the
/// provider's own error, and how many models it lists.
class ProbeResultView extends StatelessWidget {
  /// Creates the view.
  const ProbeResultView({super.key, required this.result});

  /// The result.
  final LlmProbeResult result;

  @override
  Widget build(BuildContext context) {
    final t = result.test;
    final chat = t.chat;
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: ResultPanel(
        key: const Key('provider.probeResult'),
        title: t.success ? 'Connection OK' : 'Connection failed',
        tone: t.success ? StatusTone.ok : StatusTone.error,
        message: t.error,
        details: <MapEntry<String, Object>>[
          MapEntry<String, Object>(
            'Models',
            result.models.isNotEmpty
                ? '${result.models.length} listed; pick one below'
                : result.modelsError == null
                ? 'None listed; type the model id'
                : 'Not listed (${result.modelsError}); type the model id',
          ),
          if (t.refusalCategory case final r?) MapEntry<String, Object>('Refusal', r),
          if (chat != null) ...<MapEntry<String, Object>>[
            if (chat.model case final m?) MapEntry<String, Object>('Chat model', m),
            if (chat.latencyMs case final l?) MapEntry<String, Object>('Latency', '$l ms'),
            if (chat.text case final r?) MapEntry<String, Object>('Reply', r),
          ],
          if (t.embedding case final e?) ...<MapEntry<String, Object>>[
            if (e.model case final m?) MapEntry<String, Object>('Embedding model', m),
            if (e.dimensions case final d?) MapEntry<String, Object>('Dimensions', '$d'),
          ],
        ],
      ),
    );
  }
}

/// USD as shown: cents, or more places for a fraction of a cent.
String usdText(num value) {
  if (value == 0) {
    return r'$0';
  }
  if (value.abs() >= 0.01) {
    return '\$${value.toStringAsFixed(2)}';
  }
  var text = value.toStringAsFixed(6);
  while (text.endsWith('0')) {
    text = text.substring(0, text.length - 1);
  }
  return '\$$text';
}

/// A saved provider's spend in each window against its cap, and the balance
/// the provider reports, when it reports one (`getLlmProviderBudget`).
class BudgetStatusView extends ConsumerWidget {
  /// Creates the view.
  const BudgetStatusView({super.key, required this.providerId});

  /// The provider.
  final String providerId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final palette = AdminPalette.of(context);
    return AsyncView<LlmProviderBudget>(
      value: ref.watch(llmBudgetProvider(providerId)),
      onRetry: () => ref.invalidate(llmBudgetProvider(providerId)),
      data: (b) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (b.providerBalance case final balance?) _BalancePanel(balance: balance),
          if (!b.priced)
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                'Not priced: spend stays at \$0 and no cap can be reached until a price is set.',
                style: TextStyle(color: palette.muted),
              ),
            ),
          for (final w in <(String, LlmSpendWindow)>[
            ('This hour', b.windows.hour),
            ('Today', b.windows.day),
            ('This month', b.windows.month),
          ])
            _SpendMeter(label: w.$1, window: w.$2),
          const SizedBox(height: 4),
          Text(
            'Rate limits: ${b.rateLimits.requestsPerMinute} requests per minute · '
            '${compactCount(b.rateLimits.tokensToday)} of ${compactCount(b.rateLimits.tokensPerDay)} '
            'tokens today',
            key: const Key('budget.rateLimits'),
            style: TextStyle(color: palette.muted, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class _BalancePanel extends StatelessWidget {
  const _BalancePanel({required this.balance});

  final LlmProviderBalance balance;

  @override
  Widget build(BuildContext context) {
    final palette = AdminPalette.of(context);
    final kind = balance.kind == 'key-limit' ? "Remaining on this key's limit" : 'Account balance';
    final amounts = balance.amounts
        .map((a) => a.currency == 'USD' ? usdText(a.amount) : '${a.amount} ${a.currency}')
        .join(' · ');
    return Container(
      key: const Key('budget.balance'),
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: palette.info.withValues(alpha: 0.08),
        border: Border.all(color: palette.info.withValues(alpha: 0.4)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '$kind, as reported by ${balance.provider}',
            style: TextStyle(color: palette.muted, fontSize: 12),
          ),
          const SizedBox(height: 4),
          if (amounts.isNotEmpty)
            Text(
              amounts,
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w600),
            )
          else
            Text(balance.error ?? 'Not reported', style: TextStyle(color: palette.text)),
          const SizedBox(height: 4),
          Text(
            "The provider's own figure at ${instantText(balance.fetchedAt)}, not a cap: caps count "
            "ForeSignal's metered spend.",
            style: TextStyle(color: palette.muted, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class _SpendMeter extends StatelessWidget {
  const _SpendMeter({required this.label, required this.window});

  final String label;
  final LlmSpendWindow window;

  @override
  Widget build(BuildContext context) {
    final palette = AdminPalette.of(context);
    final cap = window.capUsd;
    final fraction = cap == null || cap <= 0 ? 0.0 : (window.spentUsd / cap).clamp(0, 1).toDouble();
    final color = window.exhausted
        ? palette.error
        : fraction >= 0.8
        ? palette.warning
        : palette.primary;
    final reset = 'resets ${instantText(window.resetsAt)}';
    final figures = cap == null
        ? '${usdText(window.spentUsd)} spent · no cap · $reset'
        : '${usdText(window.spentUsd)} of ${usdText(cap)} · ${usdText(window.remainingUsd ?? 0)} left · $reset';
    final w = wireShown(window.window, window, 'window');
    return Padding(
      key: Key('budget.window.$w'),
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Wrap(
            spacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: <Widget>[
              Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
              Text(figures, style: TextStyle(color: palette.muted, fontSize: 12)),
              if (window.exhausted) const StatusLabel(label: 'Cap reached', tone: StatusTone.error),
            ],
          ),
          const SizedBox(height: 6),
          Semantics(
            label: '$label: $figures',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: cap == null ? 0 : fraction,
                minHeight: 8,
                color: color,
                backgroundColor: palette.border,
              ),
            ),
          ),
        ],
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
          if (chat.stopReason case final s?)
            MapEntry<String, Object>('Stop reason', wireShown(s, chat, 'stopReason')),
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
