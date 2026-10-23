import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import 'analysis_drafts.dart';
import 'analysis_providers.dart';
import 'analysis_screen.dart';

/// Authors or edits one correlation recipe, and tests it over a range of
/// the record log (`createRecipe`, `updateRecipe`, `testRecipe`).
///
/// The contract has no single-recipe read, so an existing recipe is found in
/// `listIntelRecipes`.
class RecipeScreen extends ConsumerWidget {
  /// Creates the page; a `null` [recipeId] authors a recipe.
  const RecipeScreen({super.key, this.recipeId});

  /// The recipe edited, or `null` to author one.
  final String? recipeId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = recipeId;
    const crumb = Crumb('Analysis', analysisPath);
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        if (id == null) ...<Widget>[
          const PageHeader(title: 'New recipe', crumbs: <Crumb>[crumb, Crumb('New recipe')]),
          RecipeForm(draft: RecipeDraft.create()),
        ] else
          AsyncView<List<CorrelationRecipe>>(
            value: ref.watch(recipesProvider),
            onRetry: () => ref.invalidate(recipesProvider),
            data: (recipes) {
              final r = recipes.where((r) => r.id == id).firstOrNull;
              if (r == null) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    PageHeader(title: id, crumbs: <Crumb>[crumb, Crumb(id)]),
                    const Text('No recipe has this id.'),
                  ],
                );
              }
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  PageHeader(
                    title: r.id,
                    crumbs: <Crumb>[crumb, Crumb(r.id)],
                    subtitle: '${wireLabel(r.definition.type)} · version ${r.version}',
                    titleTrailing: <Widget>[
                      StatusLabel(
                        key: const Key('recipe.status'),
                        label: r.enabled ? 'Active' : 'Disabled',
                        tone: r.enabled ? StatusTone.ok : StatusTone.neutral,
                      ),
                    ],
                  ),
                  if (r.lastError case final e?) ...<Widget>[
                    ResultPanel(title: 'Last run failed', tone: StatusTone.error, message: e),
                    const SizedBox(height: 16),
                  ],
                  RecipeForm(
                    key: ValueKey<String>('recipe.${r.id}'),
                    draft: RecipeDraft.edit(r, ref.read(foresignalApiProvider).serializers),
                  ),
                  const SizedBox(height: 24),
                  RecipeTestCard(key: ValueKey<String>('test.${r.id}'), recipeId: r.id),
                ],
              );
            },
          ),
      ],
    );
  }
}

/// The recipe form: identity, enablement and overrides, and — for an
/// operator-authored recipe — the definition.
class RecipeForm extends ConsumerStatefulWidget {
  /// Creates the form over [draft].
  const RecipeForm({super.key, required this.draft});

  /// The draft edited.
  final RecipeDraft draft;

  @override
  ConsumerState<RecipeForm> createState() => _RecipeFormState();
}

class _RecipeFormState extends ConsumerState<RecipeForm> {
  late RecipeDraft _d = widget.draft;
  // Bumped by Reset, so every field rebuilds from the stored values.
  int _generation = 0;
  Map<String, String> _errors = const <String, String>{};
  WriteState _write = const WriteIdle();

  @override
  void didUpdateWidget(RecipeForm old) {
    super.didUpdateWidget(old);
    // A save re-reads the recipe: adopt it, keeping the confirmation shown.
    if (widget.draft.stored != old.draft.stored) {
      _d = widget.draft;
      _generation++;
    }
  }

  void _changed() {
    if (_write is! WriteIdle) {
      setState(() => _write = const WriteIdle());
    }
  }

  void _reset() => setState(() {
    final stored = _d.stored;
    _d = stored == null
        ? RecipeDraft.create()
        : RecipeDraft.edit(stored, ref.read(foresignalApiProvider).serializers);
    _generation++;
    _errors = const <String, String>{};
    _write = const WriteIdle();
  });

  Future<void> _save() async {
    final errors = _d.validate();
    setState(() => _errors = errors);
    if (errors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final intel = api.getIntelligenceApi();
    final id = _d.id.trim();
    setState(() => _write = const WriteInProgress());
    try {
      await writeThenConfirm<CorrelationRecipe>(
        write: () => _d.creating
            ? intel.createRecipe(
                correlationRecipeCreate:
                    api.serializers.deserialize(
                          _d.createJson(),
                          specifiedType: const FullType(CorrelationRecipeCreate),
                        )!
                        as CorrelationRecipeCreate,
              )
            : intel.updateRecipe(
                recipeId: id,
                correlationRecipeUpdate:
                    api.serializers.deserialize(
                          _d.updateJson(),
                          specifiedType: const FullType(CorrelationRecipeUpdate),
                        )!
                        as CorrelationRecipeUpdate,
              ),
        reread: () async {
          final all = await callApiRequired(intel.listIntelRecipes);
          return all.firstWhere(
            (r) => r.id == id,
            orElse: () => throw StateError('the recipe is not listed after saving'),
          );
        },
        confirm: (r) => _d.confirm(r, api.serializers),
      );
      if (!mounted) {
        return;
      }
      setState(() => _write = WriteConfirmed(DateTime.now()));
      final creating = _d.creating;
      ref.invalidate(recipesProvider);
      if (creating) {
        context.go(analysisRecipePath(id));
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() => _write = WriteFailed(e));
      }
    }
  }

  Widget _text(
    String key,
    String label,
    String value,
    ValueChanged<String> onChanged, {
    String? help,
    String? hint,
    int maxLines = 1,
    bool enabled = true,
    bool code = false,
  }) {
    return LabeledField(
      label: label,
      help: help,
      field: TextFormField(
        key: Key('recipe.$key'),
        initialValue: value,
        enabled: enabled,
        maxLines: maxLines,
        style: code ? const TextStyle(fontFamily: 'monospace', fontSize: 13) : null,
        decoration: InputDecoration(hintText: hint, errorText: _errors[key], errorMaxLines: 3),
        onChanged: (v) {
          onChanged(v);
          _changed();
        },
      ),
    );
  }

  Widget _number(String key, String label, {String? help, String? hint}) =>
      _text(key, label, _d.text[key] ?? '', (v) => _d.text[key] = v, help: help, hint: hint);

  Widget _join(int i, JoinDraft j) {
    final palette = AdminPalette.of(context);
    Widget field(
      String name,
      String label,
      String value,
      ValueChanged<String> set, {
      String? hint,
    }) => _text(
      'join.$i.$name',
      label,
      value,
      set,
      hint: hint,
      code: name == 'conditions',
      maxLines: name == 'conditions' ? 3 : 1,
    );
    return Container(
      key: Key('recipe.join.$i'),
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: palette.border),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('Join ${i + 1}', style: Theme.of(context).textTheme.titleSmall),
              const Spacer(),
              IconButton(
                key: Key('recipe.join.$i.remove'),
                tooltip: 'Remove join',
                onPressed: () => setState(() {
                  _d.joins.removeAt(i);
                  _generation++;
                  _changed();
                }),
                icon: const Icon(Icons.delete_outline),
              ),
            ],
          ),
          field('kinds', 'Kinds', j.kinds, (v) => j.kinds = v, hint: 'vessel.position, ais.gap'),
          field(
            'conditions',
            'Conditions',
            j.conditions,
            (v) => j.conditions = v,
            hint: '[{"path": "speed", "op": ">", "value": 0}]',
          ),
          field('withinKm', 'Within (km)', j.withinKm, (v) => j.withinKm = v),
          LabeledField(
            label: 'Same region',
            field: DropdownButtonFormField<String?>(
              key: Key('recipe.join.$i.sameRegion'),
              style: Theme.of(context).textTheme.bodyMedium,
              initialValue: j.sameRegion,
              items: const <DropdownMenuItem<String?>>[
                DropdownMenuItem<String?>(child: Text('Not required')),
                DropdownMenuItem<String?>(value: 'admin1', child: Text('First-level region')),
                DropdownMenuItem<String?>(value: 'country', child: Text('Country')),
              ],
              onChanged: (v) {
                j.sameRegion = v;
                _changed();
              },
            ),
          ),
          SwitchListTile(
            key: Key('recipe.join.$i.sameEntity'),
            contentPadding: EdgeInsets.zero,
            title: const Text('Same entity'),
            value: j.sameEntity,
            onChanged: (v) => setState(() {
              j.sameEntity = v;
              _changed();
            }),
          ),
          field(
            'sharedAttribute',
            'Shared attribute',
            j.sharedAttribute,
            (v) => j.sharedAttribute = v,
            hint: 'registeredAddress',
          ),
          field('before', 'Window before', j.before, (v) => j.before = v, hint: '6h'),
          field('after', 'Window after', j.after, (v) => j.after = v, hint: '6h'),
          LabeledField(
            label: 'Member role',
            field: DropdownButtonFormField<String?>(
              key: Key('recipe.join.$i.role'),
              style: Theme.of(context).textTheme.bodyMedium,
              initialValue: j.role,
              items: <DropdownMenuItem<String?>>[
                const DropdownMenuItem<String?>(child: Text('Default (supporting)')),
                for (final r in memberRoles)
                  DropdownMenuItem<String?>(value: r, child: Text(wireText(r))),
              ],
              onChanged: (v) {
                j.role = v;
                _changed();
              },
            ),
          ),
          field('signalFamily', 'Signal family', j.signalFamily, (v) => j.signalFamily = v),
          field('weight', 'Weight', j.weight, (v) => j.weight = v, hint: '0 to 1'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final palette = AdminPalette.of(context);
    final editable = _d.definitionEditable;
    final busy = _write is WriteInProgress;
    return Align(
      alignment: Alignment.topLeft,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 880),
        child: KeyedSubtree(
          key: ValueKey<int>(_generation),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SectionCard(
                title: 'Recipe',
                child: Column(
                  children: <Widget>[
                    _text(
                      'id',
                      'Id',
                      _d.id,
                      (v) => _d.id = v,
                      enabled: _d.creating,
                      help: _d.creating
                          ? 'Lowercase words joined by hyphens. Fixed once created.'
                          : null,
                    ),
                    SwitchListTile(
                      key: const Key('recipe.enabled'),
                      contentPadding: EdgeInsets.zero,
                      title: const Text('Enabled'),
                      value: _d.enabled,
                      onChanged: (v) => setState(() {
                        _d.enabled = v;
                        _changed();
                      }),
                    ),
                    if (!_d.creating)
                      _text(
                        'params',
                        'Parameter overrides',
                        _d.params,
                        (v) => _d.params = v,
                        help: 'A JSON object; replaces the overrides in force.',
                        maxLines: 3,
                        code: true,
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              if (!editable)
                SectionCard(
                  title: 'Definition',
                  subtitle:
                      'A bundled recipe: the backend manages its definition, so only Enabled '
                      'and the parameter overrides can change.',
                  child: SelectableText(
                    const JsonEncoder.withIndent('  ').convert(_d.definition),
                    key: const Key('recipe.definitionJson'),
                    style: TextStyle(fontFamily: 'monospace', fontSize: 12, color: palette.text),
                  ),
                )
              else ...<Widget>[
                SectionCard(
                  title: 'Seed',
                  subtitle: 'The records that start a candidate event.',
                  child: Column(
                    children: <Widget>[
                      LabeledField(
                        label: 'Event type',
                        field: DropdownButtonFormField<String>(
                          key: const Key('recipe.type'),
                          style: Theme.of(context).textTheme.bodyMedium,
                          initialValue: _d.type,
                          items: <DropdownMenuItem<String>>[
                            for (final t in recipeTypes)
                              DropdownMenuItem<String>(value: t, child: Text(wireText(t))),
                          ],
                          onChanged: (v) {
                            _d.type = v ?? _d.type;
                            _changed();
                          },
                        ),
                      ),
                      _text(
                        'seedKinds',
                        'Kinds',
                        _d.seedKinds,
                        (v) => _d.seedKinds = v,
                        hint: 'Comma separated',
                      ),
                      _text(
                        'seedSources',
                        'Sources',
                        _d.seedSources,
                        (v) => _d.seedSources = v,
                        hint: 'Comma separated',
                      ),
                      _text(
                        'seedConditions',
                        'Conditions',
                        _d.seedConditions,
                        (v) => _d.seedConditions = v,
                        hint: '[{"path": "magnitude", "op": ">=", "value": 5}]',
                        maxLines: 3,
                        code: true,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                SectionCard(
                  title: 'Joins',
                  subtitle: 'Evidence that joins the seed into the same event.',
                  actions: <Widget>[
                    TonalButton(
                      key: const Key('recipe.addJoin'),
                      label: 'Add Join',
                      icon: Icons.add,
                      onPressed: () => setState(() {
                        _d.joins.add(JoinDraft());
                        _changed();
                      }),
                    ),
                  ],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      if (_d.joins.isEmpty)
                        Text('No joins.', style: TextStyle(color: palette.muted)),
                      for (var i = 0; i < _d.joins.length; i++) _join(i, _d.joins[i]),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                SectionCard(
                  title: 'Thresholds and timing',
                  child: Column(
                    children: <Widget>[
                      _number('minMembers', 'Minimum members'),
                      _number('minSignalFamilies', 'Minimum signal families'),
                      _number('activateMembers', 'Activate at members'),
                      _number('activateConfidence', 'Activate at confidence', hint: '0 to 1'),
                      _number('activateModalities', 'Activate at modalities'),
                      _number('dedupRadiusKm', 'Deduplicate within (km)'),
                      _number('dedupWindow', 'Deduplicate within', hint: '24h'),
                      _number('quietPeriod', 'Quiet period', hint: '6h'),
                      _number('reopenWindow', 'Reopen window', hint: 'P7D'),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                SectionCard(
                  title: 'Contradictions and severity',
                  child: Column(
                    children: <Widget>[
                      _text(
                        'contradictions',
                        'Contradictions',
                        _d.contradictions,
                        (v) => _d.contradictions = v,
                        help: 'A JSON list; each names an alternative explanation.',
                        maxLines: 4,
                        code: true,
                      ),
                      _text(
                        'severityMap',
                        'Severity map',
                        _d.severityMap,
                        (v) => _d.severityMap = v,
                        help: 'A JSON object of info, warning or critical.',
                        maxLines: 3,
                        code: true,
                      ),
                    ],
                  ),
                ),
              ],
              FormActions(
                busy: busy,
                saveLabel: _d.creating ? 'Create Recipe' : 'Save Changes',
                onSave: _save,
                onReset: _reset,
                leading: <Widget>[
                  if (_errors.isNotEmpty)
                    Text('Fix the marked fields.', style: TextStyle(color: palette.error))
                  else
                    WriteStatusLine(state: _write),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Replays a recipe over a range of the record log without creating events
/// (`testRecipe`): the events it would have made.
class RecipeTestCard extends ConsumerStatefulWidget {
  /// Creates the card for [recipeId].
  const RecipeTestCard({super.key, required this.recipeId});

  /// The recipe tested, as saved.
  final String recipeId;

  @override
  ConsumerState<RecipeTestCard> createState() => _RecipeTestCardState();
}

class _RecipeTestCardState extends ConsumerState<RecipeTestCard> {
  final TextEditingController _from = TextEditingController();
  final TextEditingController _to = TextEditingController();
  String? _problem;
  bool _running = false;
  Object? _result;

  @override
  void dispose() {
    _from.dispose();
    _to.dispose();
    super.dispose();
  }

  Future<void> _run() async {
    final from = int.tryParse(_from.text.trim());
    final to = int.tryParse(_to.text.trim());
    if (from == null || to == null || from < 0 || to < from) {
      setState(
        () => _problem = 'Two record sequence numbers, the first no greater than the second.',
      );
      return;
    }
    setState(() {
      _problem = null;
      _running = true;
      _result = null;
    });
    try {
      final api = ref.read(foresignalApiProvider);
      final result = await callApiRequired(
        () => api.getIntelligenceApi().testRecipe(
          recipeId: widget.recipeId,
          recipeTestRequest: RecipeTestRequest(
            (b) => b
              ..fromSeq = from
              ..toSeq = to,
          ),
        ),
      );
      if (mounted) {
        setState(() => _result = result);
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() => _result = e);
      }
    } finally {
      if (mounted) {
        setState(() => _running = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    return Align(
      alignment: Alignment.topLeft,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 880),
        child: SectionCard(
          title: 'Test',
          subtitle: 'Replays the saved recipe over a range of the record log. Nothing is created.',
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      key: const Key('recipe.test.from'),
                      controller: _from,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(labelText: 'From sequence'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextField(
                      key: const Key('recipe.test.to'),
                      controller: _to,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(labelText: 'To sequence'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  FilledButton(
                    key: const Key('recipe.test.run'),
                    onPressed: _running ? null : _run,
                    child: Text(_running ? 'Testing…' : 'Run Test'),
                  ),
                ],
              ),
              if (_problem case final p?) ...<Widget>[
                const SizedBox(height: 8),
                Text(p, style: TextStyle(color: AdminPalette.of(context).error)),
              ],
              const SizedBox(height: 12),
              switch (_result) {
                null => const SizedBox.shrink(),
                final RecipeTestResult r => Column(
                  key: const Key('recipe.test.result'),
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    StatusLabel(
                      label:
                          '${r.events.length} event${r.events.length == 1 ? '' : 's'} from records '
                          '${r.fromSeq}–${r.toSeq}'
                          '${r.recipeVersion == null ? '' : ' (version ${r.recipeVersion})'}'
                          '${r.truncated == true ? ', the range was cut short' : ''}',
                      tone: r.events.isEmpty ? StatusTone.neutral : StatusTone.ok,
                    ),
                    const SizedBox(height: 8),
                    for (final e in r.events)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 90,
                              child: StatusLabel(
                                label: wireLabel(e.severity),
                                tone: severityTone(e.severity),
                              ),
                            ),
                            Expanded(child: Text(e.title)),
                            Text(
                              '${percent(e.inference.confidence)} · ${e.evidence.memberCount} members',
                              style: TextStyle(color: muted, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
                final Object e => ErrorBanner(error: e, title: 'The test was refused'),
              },
            ],
          ),
        ),
      ),
    );
  }
}
