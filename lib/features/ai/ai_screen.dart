import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/access.dart';
import '../../core/ownership.dart';
import '../../core/permissions.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../sources/source_test_results.dart';
import '../sources/source_validate.dart';
import '../sources/source_widgets.dart';
import '../usage/usage_screen.dart';
import '../usage/usage_summary.dart';
import 'ai_providers.dart';
import 'llm_settings_draft.dart';

/// The tabs of the AI section (mocks D1 and D2).
enum AiTab {
  /// LLM providers (mock D1).
  providers('Providers'),

  /// Which provider serves each role (mock D2).
  roles('Roles', sharedOnly: true),

  /// Ask, enrichment and content options.
  options('Options', sharedOnly: true),

  /// Versioned prompt templates.
  templates('Prompt Templates'),

  /// Requests and tokens over time, instance-wide.
  usage('Usage', sharedOnly: true);

  const AiTab(this.label, {this.sharedOnly = false});

  /// Whether the tab is the shared configuration's (`llm.shared.manage`):
  /// the instance roles, options and usage. A user without it manages only
  /// their personal providers and sees their own spend.
  final bool sharedOnly;

  /// The tab text.
  final String label;
}

/// The status tone of an LLM provider.
StatusTone llmStatusTone(LlmProviderStatusEnum status) => switch (status) {
  LlmProviderStatusEnum.healthy => StatusTone.ok,
  LlmProviderStatusEnum.degraded => StatusTone.warning,
  LlmProviderStatusEnum.failing => StatusTone.error,
  LlmProviderStatusEnum.idle => StatusTone.info,
  _ => StatusTone.neutral,
};

/// An LLM provider's status as words.
String llmStatusText(LlmProviderStatusEnum status) {
  final name = wireShown(status);
  return '${name[0].toUpperCase()}${name.substring(1)}';
}

/// A provider type as shown: `openai-compatible` → "OpenAI-compatible".
String llmTypeText(LlmProviderTypeEnum type) => switch (type) {
  LlmProviderTypeEnum.anthropic => 'Anthropic',
  LlmProviderTypeEnum.openaiCompatible => 'OpenAI-compatible',
  LlmProviderTypeEnum.ollama => 'Ollama',
  _ => wireShown(type),
};

/// AI configuration (Screens §D, desktop): providers, the roles they serve,
/// options, prompt templates and usage. Providers are shared (an operator's,
/// `llm.shared.manage`) or the signed-in user's personal ones (`self.llm`);
/// the roles, options and usage tabs are the shared configuration's.
class AiScreen extends ConsumerStatefulWidget {
  /// Creates the screen.
  const AiScreen({super.key});

  @override
  ConsumerState<AiScreen> createState() => _AiScreenState();
}

class _AiScreenState extends ConsumerState<AiScreen> {
  AiTab _tab = AiTab.providers;

  @override
  Widget build(BuildContext context) {
    final access = ref.watch(accessProvider);
    final tabs = <AiTab>[
      for (final tab in AiTab.values)
        if (!tab.sharedOnly || access.can(Permissions.llmSharedManage)) tab,
    ];
    final shown = tabs.contains(_tab) ? _tab : tabs.first;
    final mayOwn = access.kind == AccessKind.session && access.can(Permissions.selfLlm);
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        PageHeader(
          title: 'AI',
          subtitle:
              'The language models the engine uses, the jobs they do, and what they cost in '
              'tokens.',
          actions: <Widget>[
            if (shown == AiTab.providers) ...<Widget>[
              if (mayOwn)
                FilledButton.icon(
                  key: const Key('ai.addPersonalProvider'),
                  onPressed: () => context.go(aiNewProviderKindPath(shared: false)),
                  icon: const Icon(Icons.add),
                  label: const Text('Add Personal Provider'),
                ),
              PermissionGate(
                permission: Permissions.llmSharedManage,
                child: FilledButton.icon(
                  key: const Key('ai.addProvider'),
                  onPressed: () => context.go(
                    mayOwn ? aiNewProviderKindPath(shared: true) : aiNewProviderPath,
                  ),
                  icon: const Icon(Icons.add),
                  label: Text(mayOwn ? 'Add Shared Provider' : 'Add Provider'),
                ),
              ),
            ],
          ],
        ),
        DefaultTabController(
          key: ValueKey<int>(tabs.length),
          length: tabs.length,
          initialIndex: tabs.indexOf(shown),
          child: TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            onTap: (i) => setState(() => _tab = tabs[i]),
            tabs: <Widget>[
              for (final tab in tabs) Tab(key: Key('ai.tab.${tab.name}'), text: tab.label),
            ],
          ),
        ),
        const SizedBox(height: 20),
        switch (shown) {
          AiTab.providers => const ProvidersPanel(),
          AiTab.roles => const LlmSettingsPanel(section: LlmSettingsSection.roles),
          AiTab.options => const LlmSettingsPanel(section: LlmSettingsSection.options),
          AiTab.templates => const PromptTemplatePanel(),
          AiTab.usage => const LlmUsagePanel(),
        },
      ],
    );
  }
}

/// Whether [p] is shared (no owner) rather than a user's personal provider.
bool isSharedProvider(LlmProvider p) => p.shared ?? p.ownerPrincipalId == null;

/// USD as `$1.23`.
String usdText(num n) => '\$${n.toStringAsFixed(2)}';

/// The providers (mock D1), split into the **shared** ones (an operator's,
/// managed with `llm.shared.manage`, read-only for everyone else, who can
/// still use them) and the **personal** ones (the signed-in user's own,
/// `self.llm`; every user's for an admin who manages users). A signed-in
/// user with `self.llm` sees their own budget above them.
class ProvidersPanel extends ConsumerWidget {
  /// Creates the panel.
  const ProvidersPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final access = ref.watch(accessProvider);
    final mayOwn = access.kind == AccessKind.session && access.can(Permissions.selfLlm);
    final manageShared = access.can(Permissions.llmSharedManage);
    return AsyncView<List<LlmProvider>>(
      value: ref.watch(llmProvidersProvider),
      onRetry: () => ref.invalidate(llmProvidersProvider),
      data: (providers) {
        final shared = providers.where(isSharedProvider).toList();
        final personal = ownedByCaller(
          access,
          providers.where((p) => !isSharedProvider(p)),
          (p) => p.ownerPrincipalId,
        );
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            if (mayOwn) ...<Widget>[const MyLlmBudgetCard(), const SizedBox(height: 20)],
            SectionCard(
              key: const Key('ai.shared'),
              title: 'Shared providers',
              subtitle: manageShared
                  ? "The instance's providers, with the instance's keys; each user spends within "
                        'their share.'
                  : 'Managed by an operator for everyone. You can use them within your share; '
                        'they are read-only here.',
              child: _ProviderTable(
                key: const Key('ai.providers'),
                rows: shared,
                readOnly: !manageShared,
                empty: 'No shared providers yet.',
              ),
            ),
            if (mayOwn || personal.isNotEmpty) ...<Widget>[
              const SizedBox(height: 20),
              SectionCard(
                key: const Key('ai.personal'),
                title: seesEveryOwner(access) ? 'Personal providers' : 'Your personal providers',
                subtitle: 'Each uses its owner\'s own key, and only its owner\'s work runs on it.',
                child: _ProviderTable(
                  key: const Key('ai.personalProviders'),
                  rows: personal,
                  readOnly: !access.can(Permissions.selfLlm) && !seesEveryOwner(access),
                  owners: true,
                  empty: mayOwn
                      ? 'You have no personal providers. Add Personal Provider uses your own key.'
                      : 'No personal providers.',
                ),
              ),
            ],
          ],
        );
      },
    );
  }
}

/// One table of providers; a [readOnly] one offers View, not Edit.
class _ProviderTable extends ConsumerWidget {
  const _ProviderTable({
    super.key,
    required this.rows,
    required this.readOnly,
    required this.empty,
    this.owners = false,
  });

  final List<LlmProvider> rows;
  final bool readOnly;
  final String empty;
  final bool owners;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final muted = AdminPalette.of(context).muted;
    final access = ref.watch(accessProvider);
    return DataTableCard<LlmProvider>(
      rows: rows,
      empty: empty,
      onTap: (p) => context.go(aiProviderPath(p.id)),
      columns: <TableColumnSpec<LlmProvider>>[
        TableColumnSpec<LlmProvider>(
          label: 'Name',
          cell: (p) => Text(p.id, style: const TextStyle(fontWeight: FontWeight.w600)),
        ),
        if (owners)
          TableColumnSpec<LlmProvider>(
            label: 'Owner',
            cell: (p) => OwnershipChip(
              key: Key('ai.owner.${p.id}'),
              ownership: ownershipOf(access, p.ownerPrincipalId),
              ownerPrincipalId: p.ownerPrincipalId,
            ),
          ),
        TableColumnSpec<LlmProvider>(label: 'Type', cell: (p) => Text(llmTypeText(p.type))),
        TableColumnSpec<LlmProvider>(
          label: 'Models',
          cell: (p) => Text(
            _models(p).join(' · ').ifEmpty('—'),
            style: _models(p).isEmpty ? TextStyle(color: muted) : null,
          ),
        ),
        if (!owners)
          TableColumnSpec<LlmProvider>(
            label: 'Roles',
            cell: (p) => Text(
              wireListShown(p.roles ?? const <LlmProviderRolesEnum>[], p, 'roles').ifEmpty('—'),
            ),
          ),
        TableColumnSpec<LlmProvider>(
          label: 'Monthly cap',
          cell: (p) => Text(
            <String>[
              if (p.monthlyCapUsd case final cap?) usdText(cap),
              if (p.perUserMonthlyCapUsd case final each?) '${usdText(each)} each',
            ].join(' · ').ifEmpty('—'),
          ),
        ),
        TableColumnSpec<LlmProvider>(
          label: 'Tokens today',
          numeric: true,
          cell: (p) => Text(
            p.tokensPerDay == null
                ? compactCount(p.tokensToday ?? 0)
                : '${compactCount(p.tokensToday ?? 0)} / ${compactCount(p.tokensPerDay!)}',
          ),
        ),
        TableColumnSpec<LlmProvider>(
          label: 'Status',
          cell: (p) => StatusLabel(
            label: llmStatusText(p.status),
            tone: llmStatusTone(p.status),
            tooltip: p.lastError,
          ),
        ),
        TableColumnSpec<LlmProvider>(
          label: 'Actions',
          cell: (p) => TonalButton(
            key: Key('ai.edit.${p.id}'),
            label: readOnly ? 'View' : 'Edit',
            onPressed: () => context.go(aiProviderPath(p.id)),
          ),
        ),
      ],
    );
  }
}

/// The signed-in user's own LLM budget this UTC month (`getMyLlmBudget`):
/// the total spent and, per provider they can use, their cap (their share
/// of a shared provider, or a personal provider's own monthly cap), their
/// spend and what remains.
class MyLlmBudgetCard extends ConsumerWidget {
  /// Creates the card.
  const MyLlmBudgetCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SectionCard(
      key: const Key('ai.myBudget'),
      title: 'My LLM budget',
      subtitle: 'What your own work spent this UTC month, against your cap on each provider.',
      child: AsyncView<MeLlmBudget>(
        value: ref.watch(myLlmBudgetProvider),
        onRetry: () => ref.invalidate(myLlmBudgetProvider),
        data: (budget) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Spent this month: ${usdText(budget.totalSpentUsd)}',
              key: const Key('ai.myBudget.total'),
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 12),
            DataTableCard<LlmBudgetProvider>(
              key: const Key('ai.myBudget.table'),
              rows: budget.providers.toList(),
              empty: 'No provider is available to you yet.',
              columns: <TableColumnSpec<LlmBudgetProvider>>[
                TableColumnSpec<LlmBudgetProvider>(
                  label: 'Provider',
                  cell: (b) => Text(b.name.isEmpty ? b.providerId : b.name),
                ),
                TableColumnSpec<LlmBudgetProvider>(
                  label: 'Kind',
                  cell: (b) => StatusChip(
                    label: b.shared ? 'Shared' : 'Yours',
                    tone: b.shared ? StatusTone.neutral : StatusTone.info,
                  ),
                ),
                TableColumnSpec<LlmBudgetProvider>(
                  label: 'Cap',
                  numeric: true,
                  cell: (b) => Text(b.capUsd == null ? 'No cap' : usdText(b.capUsd!)),
                ),
                TableColumnSpec<LlmBudgetProvider>(
                  label: 'Spent',
                  numeric: true,
                  cell: (b) => Text(usdText(b.spentUsd)),
                ),
                TableColumnSpec<LlmBudgetProvider>(
                  label: 'Remaining',
                  numeric: true,
                  cell: (b) => Text(
                    b.remainingUsd == null ? '—' : usdText(b.remainingUsd!),
                    key: Key('ai.myBudget.remaining.${b.providerId}'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// The models [p] names: chat, embedding, and speech when it may serve it.
List<String> _models(LlmProvider p) => <String>[
  ?p.chatModel,
  ?p.embeddingModel,
  if (p.type == LlmProviderTypeEnum.openaiCompatible)
    if (p.options?['ttsModel']?.value case final String tts) tts,
];

String _plural(int n, String noun) => n == 1 ? '1 $noun' : '$n ${noun}s';

extension on String {
  String ifEmpty(String other) => isEmpty ? other : this;
}

/// Which members of `LlmSettings` a [LlmSettingsPanel] edits.
enum LlmSettingsSection {
  /// The three role assignments.
  roles,

  /// Ask, enrichment, logging, the Ask budget and private-local egress.
  options,
}

/// Roles (mock D2) or options: one form over `getLlmSettings` /
/// `updateLlmSettings`. Each sends the whole object, so the members the other
/// tab edits go back unchanged.
class LlmSettingsPanel extends ConsumerWidget {
  /// Creates the panel.
  const LlmSettingsPanel({super.key, required this.section});

  /// The members shown.
  final LlmSettingsSection section;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(llmSettingsProvider);
    final providers = ref.watch(llmProvidersProvider);
    return AsyncView<LlmSettings>(
      value: settings,
      onRetry: () => ref.invalidate(llmSettingsProvider),
      data: (stored) => AsyncView<List<LlmProvider>>(
        value: providers,
        onRetry: () => ref.invalidate(llmProvidersProvider),
        data: (list) => LlmSettingsForm(
          // Keyed by tab only: a re-read after a save updates [stored] (what
          // Reset returns to) without discarding the confirmed status.
          key: ValueKey<LlmSettingsSection>(section),
          section: section,
          stored: stored,
          providers: list,
        ),
      ),
    );
  }
}

/// The roles or options form.
class LlmSettingsForm extends ConsumerStatefulWidget {
  /// Creates the form.
  const LlmSettingsForm({
    super.key,
    required this.section,
    required this.stored,
    required this.providers,
  });

  /// The members shown.
  final LlmSettingsSection section;

  /// The settings as last read.
  final LlmSettings stored;

  /// Every provider, for the role choices.
  final List<LlmProvider> providers;

  @override
  ConsumerState<LlmSettingsForm> createState() => _LlmSettingsFormState();
}

class _LlmSettingsFormState extends ConsumerState<LlmSettingsForm> {
  late LlmSettingsDraft _draft = LlmSettingsDraft(widget.stored);
  Map<String, String> _errors = const <String, String>{};
  WriteState _write = const WriteIdle();

  void _changed(VoidCallback change) => setState(() {
    change();
    _write = const WriteIdle();
  });

  Future<void> _save() async {
    final errors = _draft.validate(widget.providers);
    setState(() => _errors = errors);
    if (errors.isNotEmpty) {
      return;
    }
    setState(() => _write = const WriteInProgress());
    final llm = ref.read(foresignalApiProvider).getLLMApi();
    try {
      final body = _draft.toModel();
      await writeThenConfirm<LlmSettings>(
        write: () => llm.updateLlmSettings(llmSettings: body),
        reread: () => callApiRequired(llm.getLlmSettings),
        confirm: _draft.confirm,
      );
      if (mounted) {
        setState(() => _write = WriteConfirmed(DateTime.now()));
        ref
          ..invalidate(llmSettingsProvider)
          ..invalidate(llmProvidersProvider);
      }
    } on Object catch (error) {
      if (mounted) {
        setState(() => _write = WriteFailed(error));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final form = switch (widget.section) {
      LlmSettingsSection.roles => _roles(context),
      LlmSettingsSection.options => _options(context),
    };
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        form,
        FormActions(
          busy: _write is WriteInProgress,
          onSave: _save,
          onReset: () => setState(() {
            _draft = LlmSettingsDraft(widget.stored);
            _errors = const <String, String>{};
            _write = const WriteIdle();
          }),
          leading: <Widget>[WriteStatusLine(state: _write)],
        ),
      ],
    );
  }

  Widget _roles(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    final byId = <String, LlmProvider>{for (final p in widget.providers) p.id: p};
    return DataTableCard<LlmRole>(
      key: const Key('ai.roles'),
      rows: LlmRole.values,
      columns: <TableColumnSpec<LlmRole>>[
        TableColumnSpec<LlmRole>(
          label: 'Role',
          cell: (role) => Tooltip(
            message: role.help,
            child: Text(role.label, style: const TextStyle(fontWeight: FontWeight.w600)),
          ),
        ),
        TableColumnSpec<LlmRole>(
          label: 'Provider',
          cell: (role) => SizedBox(
            width: 220,
            child: DropdownButton<String?>(
              key: Key('ai.role.${role.name}'),
              isExpanded: true,
              style: Theme.of(context).textTheme.bodyMedium,
              value: _draft.roles[role],
              underline: const SizedBox.shrink(),
              items: withCurrentItem(<DropdownMenuItem<String?>>[
                DropdownMenuItem<String?>(
                  value: null,
                  child: Text('Not assigned', style: TextStyle(color: muted)),
                ),
                // A stored id the list no longer holds is still shown.
                if (_draft.roles[role] case final id? when !byId.containsKey(id))
                  DropdownMenuItem<String?>(value: id, child: Text('$id (missing)')),
                for (final p in widget.providers)
                  DropdownMenuItem<String?>(
                    value: p.id,
                    child: Text(
                      role.refusal(p) == null ? p.id : '${p.id} — ${role.refusal(p)}',
                      overflow: TextOverflow.ellipsis,
                      style: role.refusal(p) == null ? null : TextStyle(color: muted),
                    ),
                  ),
              ], _draft.roles[role]),
              onChanged: (id) => _changed(() => _draft.roles[role] = id),
            ),
          ),
        ),
        TableColumnSpec<LlmRole>(
          label: 'Model',
          cell: (role) {
            final p = byId[_draft.roles[role]];
            final model = switch (role) {
              LlmRole.chat => p?.chatModel,
              LlmRole.embedding =>
                p?.embeddingModel == null
                    ? null
                    : '${p!.embeddingModel} (${p.embeddingDimensions ?? '?'} dims)',
              LlmRole.tts =>
                p == null ? null : (p.options?['ttsModel']?.value ?? 'tts-1').toString(),
            };
            return Text(model ?? '—', style: model == null ? TextStyle(color: muted) : null);
          },
        ),
        TableColumnSpec<LlmRole>(
          label: 'Settings',
          cell: (role) {
            final p = byId[_draft.roles[role]];
            final lines = p == null ? const <String>[] : _settingsLines(role, p);
            return lines.isEmpty
                ? Text('—', style: TextStyle(color: muted))
                : Text(lines.join('\n'), style: TextStyle(color: muted, fontSize: 12));
          },
        ),
        TableColumnSpec<LlmRole>(
          label: 'Problem',
          cell: (role) => _errors[role.name] == null
              ? const SizedBox.shrink()
              : Text(
                  _errors[role.name]!,
                  style: TextStyle(color: AdminPalette.of(context).error),
                ),
        ),
        TableColumnSpec<LlmRole>(
          label: 'Actions',
          cell: (role) => TonalButton(
            label: 'Edit Provider',
            onPressed: _draft.roles[role] == null || !byId.containsKey(_draft.roles[role])
                ? null
                : () => context.go(aiProviderPath(_draft.roles[role]!)),
          ),
        ),
      ],
    );
  }

  static List<String> _settingsLines(LlmRole role, LlmProvider p) {
    Object? o(String name) => p.options?[name]?.value;
    return switch (role) {
      LlmRole.chat => <String>[
        if (o('effort') case final e?) 'Effort $e',
        if (o('temperature') case final t?) 'Temperature $t',
        if (o('maxTokens') case final m?) 'Max tokens ${compactCount(m as num)}',
      ],
      LlmRole.embedding => const <String>[],
      LlmRole.tts => <String>[
        'Characters per day ${compactCount((o('ttsCharactersPerDay') ?? 100000) as num)}',
      ],
    };
  }

  Widget _options(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 760),
        child: SectionCard(
          title: 'Options',
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SwitchListTile(
                key: const Key('ai.option.askEnabled'),
                contentPadding: EdgeInsets.zero,
                title: const Text('Ask'),
                value: _draft.askEnabled,
                onChanged: (v) => _changed(() => _draft.askEnabled = v),
              ),
              SwitchListTile(
                key: const Key('ai.option.enrichmentEnabled'),
                contentPadding: EdgeInsets.zero,
                title: const Text('Enrichment'),
                value: _draft.enrichmentEnabled,
                onChanged: (v) => _changed(() => _draft.enrichmentEnabled = v),
              ),
              SwitchListTile(
                key: const Key('ai.option.logContent'),
                contentPadding: EdgeInsets.zero,
                title: const Text('Log content'),
                value: _draft.logContent,
                onChanged: (v) => _changed(() => _draft.logContent = v),
              ),
              SwitchListTile(
                key: const Key('ai.option.allowPrivateLocal'),
                contentPadding: EdgeInsets.zero,
                title: const Text('Private records to local providers'),
                subtitle: const Text(
                  'Allow private-source records in prompts to providers on loopback or private '
                  'addresses only, never remote ones. The backend accepts only off until '
                  'private-local egress ships.',
                ),
                value: _draft.allowPrivateLocal,
                onChanged: (v) => _changed(() => _draft.allowPrivateLocal = v),
              ),
              const Divider(height: 24),
              LabeledField(
                label: 'Ask token budget',
                help: 'Tokens one Ask may spend. Default 200,000',
                field: TextFormField(
                  key: const Key('ai.option.askMaxTokens'),
                  initialValue: _draft.askMaxTokens,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(errorText: _errors['askMaxTokens']),
                  onChanged: (v) => _changed(() => _draft.askMaxTokens = v),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Looks up a versioned prompt template by id (`getPromptTemplate`). The
/// contract has no list of templates; their ids come from assessment and
/// cycle-run manifests.
class PromptTemplatePanel extends ConsumerStatefulWidget {
  /// Creates the panel.
  const PromptTemplatePanel({super.key});

  @override
  ConsumerState<PromptTemplatePanel> createState() => _PromptTemplatePanelState();
}

class _PromptTemplatePanelState extends ConsumerState<PromptTemplatePanel> {
  final TextEditingController _id = TextEditingController();
  (String, String?)? _query;

  @override
  void dispose() {
    _id.dispose();
    super.dispose();
  }

  /// Fills the id field with [id] and loads its newest version.
  void _pick(String id) {
    _id.text = id;
    _load();
  }

  void _load([String? version]) {
    final id = _id.text.trim();
    if (id.isEmpty) {
      return;
    }
    setState(() => _query = (id, version));
  }

  @override
  Widget build(BuildContext context) {
    final palette = AdminPalette.of(context);
    final query = _query;
    return Align(
      alignment: Alignment.topLeft,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 960),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SectionCard(
              title: 'Prompt template',
              subtitle:
                  'The versioned system prompt of an LLM role. Template ids and versions are '
                  'recorded in each assessment and cycle-run manifest.',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          key: const Key('ai.template.id'),
                          controller: _id,
                          decoration: const InputDecoration(hintText: 'Template id'),
                          onSubmitted: (_) => _load(),
                        ),
                      ),
                      const SizedBox(width: 12),
                      FilledButton(
                        key: const Key('ai.template.load'),
                        onPressed: _load,
                        child: const Text('Load'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  AsyncView<List<PromptTemplateSummary>>(
                    value: ref.watch(promptTemplatesProvider),
                    onRetry: () => ref.invalidate(promptTemplatesProvider),
                    data: (templates) => templates.isEmpty
                        ? Text('No templates are bundled.', style: TextStyle(color: palette.muted))
                        : Wrap(
                            key: const Key('ai.templates'),
                            spacing: 8,
                            runSpacing: 6,
                            children: <Widget>[
                              for (final t in templates)
                                ChoiceChip(
                                  key: Key('ai.templates.${t.id}'),
                                  label: Text(t.role == null ? t.id : '${t.id} · ${t.role}'),
                                  tooltip: 'Version ${t.version}; ${t.versions.length} bundled',
                                  selected: query?.$1 == t.id,
                                  onSelected: (_) => _pick(t.id),
                                ),
                            ],
                          ),
                  ),
                ],
              ),
            ),
            if (query != null) ...<Widget>[
              const SizedBox(height: 16),
              AsyncView<PromptTemplate>(
                value: ref.watch(promptTemplateProvider(query)),
                onRetry: () => ref.invalidate(promptTemplateProvider(query)),
                data: (t) => SectionCard(
                  key: const Key('ai.template'),
                  title: '${t.id} @ ${t.version}',
                  subtitle: t.role == null ? null : 'Role: ${t.role}',
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      KeyValueList(
                        entries: <MapEntry<String, Object>>[
                          MapEntry<String, Object>('SHA-256', t.sha256),
                          if (t.versions case final versions? when versions.isNotEmpty)
                            MapEntry<String, Object>(
                              'Versions',
                              Wrap(
                                spacing: 8,
                                runSpacing: 6,
                                children: <Widget>[
                                  for (final v in versions)
                                    ChoiceChip(
                                      key: Key('ai.template.version.$v'),
                                      label: Text(v),
                                      selected: v == t.version,
                                      onSelected: (_) => _load(v),
                                    ),
                                ],
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: palette.input,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: palette.border),
                        ),
                        child: SelectableText(
                          t.text,
                          key: const Key('ai.template.text'),
                          style: const TextStyle(fontFamily: 'monospace', fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

/// LLM requests and tokens over a window (`getLlmUsage` per provider):
/// tiles, tokens stacked by provider, and a table per provider. The contract
/// reports tokens, not money.
class LlmUsagePanel extends ConsumerStatefulWidget {
  /// Creates the panel.
  const LlmUsagePanel({super.key});

  @override
  ConsumerState<LlmUsagePanel> createState() => _LlmUsagePanelState();
}

class _LlmUsagePanelState extends ConsumerState<LlmUsagePanel> {
  UsageWindow _window = UsageWindow.day;

  @override
  Widget build(BuildContext context) {
    final palette = AdminPalette.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text('Times are UTC.', style: TextStyle(color: palette.muted)),
            const Spacer(),
            SizedBox(
              width: 200,
              child: DropdownButtonFormField<UsageWindow>(
                key: const Key('ai.usage.window'),
                isExpanded: true,
                initialValue: _window,
                items: withCurrentItem(<DropdownMenuItem<UsageWindow>>[
                  for (final w in UsageWindow.values)
                    DropdownMenuItem<UsageWindow>(value: w, child: Text(w.label)),
                ], _window),
                onChanged: (w) => setState(() => _window = w ?? _window),
              ),
            ),
            const SizedBox(width: 8),
            IconButton(
              tooltip: 'Refresh',
              onPressed: () => ref
                ..invalidate(llmProvidersProvider)
                ..invalidate(llmUsageProvider(_window)),
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
        const SizedBox(height: 16),
        AsyncView<LlmUsage>(
          value: ref.watch(llmUsageProvider(_window)),
          onRetry: () => ref.invalidate(llmUsageProvider(_window)),
          data: (usage) => _usage(context, usage),
        ),
      ],
    );
  }

  Widget _usage(BuildContext context, LlmUsage usage) {
    final palette = AdminPalette.of(context);
    final total = usage.total;
    final totals = usage.totals;
    final stacked = usage.stackedTokens;
    final colors = chartSeriesColors(context);
    var slot = 0;
    final series = <ChartSeries>[
      for (final key in stacked.keys)
        ChartSeries(
          label: key,
          values: stacked.values[key]!,
          color: key == StackedUsage.other ? chartOtherColor(context) : colors[slot++],
          total: compactCount(stacked.totals[key]!),
        ),
    ];
    final providers = ref.watch(llmProvidersProvider).value ?? const <LlmProvider>[];
    final rows = totals.keys.toList()
      ..sort((a, b) => totals[b]!.tokens.compareTo(totals[a]!.tokens));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        tileRow(<Widget>[
          StatTile(
            key: const Key('ai.usage.requests'),
            label: 'Requests',
            value: compactCount(total.requests),
            detail: total.errors + total.refused == 0
                ? 'No errors'
                : '${_plural(total.errors, 'error')} · ${total.refused} refused',
          ),
          StatTile(
            key: const Key('ai.usage.input'),
            label: 'Input tokens',
            value: compactCount(total.inputTokens),
            detail: '${compactCount(total.cachedTokens)} from cache',
          ),
          StatTile(
            key: const Key('ai.usage.output'),
            label: 'Output tokens',
            value: compactCount(total.outputTokens),
          ),
        ]),
        const SizedBox(height: 16),
        SectionCard(
          title: 'Tokens over time',
          subtitle: 'Input and output tokens by provider.',
          child: stacked.buckets.isEmpty || stacked.total == 0
              ? Text('No LLM use in this window.', style: TextStyle(color: palette.muted))
              : StackedBarChart(
                  key: const Key('ai.usage.chart'),
                  buckets: stacked.buckets,
                  series: series,
                  unit: 'tokens',
                  bucketLabel: (t) => bucketText(t, _window),
                ),
        ),
        if (usage.failed.isNotEmpty) ...<Widget>[
          const SizedBox(height: 8),
          Text(
            'Usage could not be read for ${usage.failed.join(', ')}.',
            style: TextStyle(color: palette.warning),
          ),
        ],
        const SizedBox(height: 24),
        Text('By provider', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 8),
        DataTableCard<String>(
          key: const Key('ai.usage.table'),
          rows: rows,
          empty: 'No providers.',
          columns: <TableColumnSpec<String>>[
            const TableColumnSpec<String>(label: 'Provider', cell: Text.new),
            TableColumnSpec<String>(
              label: 'Requests',
              numeric: true,
              cell: (id) => Text(compactCount(totals[id]!.requests)),
            ),
            TableColumnSpec<String>(
              label: 'Input',
              numeric: true,
              cell: (id) => Text(compactCount(totals[id]!.inputTokens)),
            ),
            TableColumnSpec<String>(
              label: 'Cached',
              numeric: true,
              cell: (id) => Text(compactCount(totals[id]!.cachedTokens)),
            ),
            TableColumnSpec<String>(
              label: 'Output',
              numeric: true,
              cell: (id) => Text(compactCount(totals[id]!.outputTokens)),
            ),
            TableColumnSpec<String>(
              label: 'Errors',
              numeric: true,
              cell: (id) => Text('${totals[id]!.errors}'),
            ),
            TableColumnSpec<String>(
              label: 'Refused',
              numeric: true,
              cell: (id) => Text('${totals[id]!.refused}'),
            ),
            TableColumnSpec<String>(
              label: 'Today against budget',
              cell: (id) {
                final p = providers.where((p) => p.id == id).firstOrNull;
                final perDay = p?.tokensPerDay;
                if (p == null || perDay == null || perDay == 0) {
                  return Text('—', style: TextStyle(color: palette.muted));
                }
                final f = (p.tokensToday ?? 0) / perDay;
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      width: 110,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: LinearProgressIndicator(
                          value: f.clamp(0, 1).toDouble(),
                          minHeight: 6,
                          color: f >= 1
                              ? palette.error
                              : f >= 0.8
                              ? palette.warning
                              : palette.primary,
                          backgroundColor: palette.border,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text('${compactCount(p.tokensToday ?? 0)} / ${compactCount(perDay)}'),
                  ],
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}

/// When [p] last succeeded and failed, for the provider page.
List<MapEntry<String, Object>> providerHealthEntries(LlmProvider p) => <MapEntry<String, Object>>[
  MapEntry<String, Object>('Last success', utcText(p.lastSuccessAt)),
  MapEntry<String, Object>('Last error at', utcText(p.lastErrorAt)),
  if (p.lastError case final e?) MapEntry<String, Object>('Last error', e),
  MapEntry<String, Object>('Consecutive failures', '${p.consecutiveFailures ?? 0}'),
  if (p.supportsTools == false)
    const MapEntry<String, Object>('Tools', 'Rejected by the model; Ask runs retrieval-only'),
  MapEntry<String, Object>('Local for egress', p.local == true ? 'Yes' : 'No'),
  MapEntry<String, Object>('Updated', utcText(p.updatedAt)),
];
