import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_widgets.dart';
import '../vetting/vetting_drafts.dart' show fromJsonMap, toJsonMap;
import 'alerts_drafts.dart';
import 'alerts_providers.dart';

/// A policy's steps as one line: `5m → 15m → 1h, repeats 3× every 30m`.
String stepsText(Json policy) {
  String minutes(Object? m) {
    final n = m is int ? m : int.tryParse('$m') ?? 0;
    return n >= 60 && n % 60 == 0 ? '${n ~/ 60}h' : '${n}m';
  }

  final steps = jsonList(policy, 'steps').map((s) => minutes(s['afterMinutes'])).join(' → ');
  final repeat = jsonMap(policy, 'repeat');
  return repeat == null
      ? steps
      : '$steps, then ${repeat['maxTimes']}× every ${minutes(repeat['everyMinutes'])}';
}

/// The escalation policies (Screens §G): name, steps, how many rules use
/// each, with **New Policy**.
class EscalationPanel extends ConsumerWidget {
  /// Creates the panel.
  const EscalationPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      Row(
        children: <Widget>[
          Expanded(
            child: Text(
              'A policy re-sends a firing alert to more channels as time passes, until someone acknowledges it.',
              style: TextStyle(color: AdminPalette.of(context).muted),
            ),
          ),
          IconButton(
            tooltip: 'Refresh',
            onPressed: () => ref.invalidate(escalationPoliciesProvider),
            icon: const Icon(Icons.refresh),
          ),
          const SizedBox(width: 8),
          FilledButton.icon(
            key: const Key('policies.new'),
            onPressed: () => context.go(alertNewPolicyPath),
            icon: const Icon(Icons.add, size: 18),
            label: const Text('New Policy'),
          ),
        ],
      ),
      const SizedBox(height: 12),
      AsyncView<List<Json>>(
        value: ref.watch(escalationPoliciesProvider),
        onRetry: () => ref.invalidate(escalationPoliciesProvider),
        data: (policies) => DataTableCard<Json>(
          key: const Key('policies.table'),
          rows: policies,
          empty: 'No escalation policies yet. New Policy creates one.',
          onTap: (p) => context.go(alertPolicyPath('${p['id']}')),
          columns: <TableColumnSpec<Json>>[
            TableColumnSpec<Json>(
              label: 'Name',
              cell: (p) => Text('${p['name']}', style: const TextStyle(fontWeight: FontWeight.w600)),
            ),
            TableColumnSpec<Json>(label: 'Steps', cell: (p) => Text(stepsText(p))),
            TableColumnSpec<Json>(
              label: 'Stops on',
              cell: (p) {
                final stop = jsonMap(p, 'stopOn');
                return Text(<String>[
                  'acknowledge',
                  if (stop?['resolve'] != false) 'resolve',
                  if (stop?['snooze'] != false) 'snooze',
                ].join(', '));
              },
            ),
            TableColumnSpec<Json>(label: 'Rules', numeric: true, cell: (p) => Text('${p['ruleCount'] ?? 0}')),
            TableColumnSpec<Json>(
              label: 'Actions',
              cell: (p) => TextButton(
                key: Key('policies.edit.${p['id']}'),
                onPressed: () => context.go(alertPolicyPath('${p['id']}')),
                child: const Text('Edit'),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

/// One escalation policy (`/alerts/escalation/:policyId`), or a new one
/// (`/alerts/new-policy`).
class PolicyScreen extends ConsumerWidget {
  /// Creates the page for policy [policyId], or a new one when `null`.
  const PolicyScreen({super.key, this.policyId});

  /// The policy id; `null` creates one.
  final String? policyId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = policyId;
    final crumbs = <Crumb>[const Crumb('Alerts', alertsPath), const Crumb('Escalation', alertEscalationPath)];
    if (id == null) {
      return ListView(
        padding: const EdgeInsets.all(28),
        children: <Widget>[
          PageHeader(title: 'New Escalation Policy', crumbs: <Crumb>[...crumbs, const Crumb('New')]),
          const SectionCard(title: 'Policy', child: PolicyForm()),
        ],
      );
    }
    final policy = ref.watch(escalationPolicyProvider(id));
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        PageHeader(
          title: policy.value?['name'] as String? ?? 'Escalation Policy',
          crumbs: <Crumb>[...crumbs, Crumb(policy.value?['name'] as String? ?? id)],
        ),
        AsyncView<Json>(
          value: policy,
          onRetry: () => ref.invalidate(escalationPolicyProvider(id)),
          data: (p) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SectionCard(
                title: 'Policy',
                subtitle:
                    'Used by ${p['ruleCount'] ?? 0} ${p['ruleCount'] == 1 ? 'rule' : 'rules'}. Saving replaces it whole; '
                    'running escalations use the new steps from their next step.',
                child: PolicyForm(key: ValueKey<String>('policy.${p['updatedAt']}'), policy: p),
              ),
              const SizedBox(height: 16),
              _DeletePolicyCard(policy: p),
            ],
          ),
        ),
      ],
    );
  }
}

/// The escalation policy form: steps with their channels, an optional
/// repeat, and what stops it. Created with `createEscalationPolicy`, or
/// replaced with `updateEscalationPolicy` and confirmed by re-reading.
class PolicyForm extends ConsumerStatefulWidget {
  /// Creates the form for [policy], or a new policy.
  const PolicyForm({super.key, this.policy});

  /// The stored policy; `null` for a new one.
  final Json? policy;

  @override
  ConsumerState<PolicyForm> createState() => _PolicyFormState();
}

class _PolicyFormState extends ConsumerState<PolicyForm> with WriteTracking<PolicyForm> {
  late EscalationPolicyDraft _draft;
  final TextEditingController _name = TextEditingController();
  final TextEditingController _every = TextEditingController();
  final TextEditingController _times = TextEditingController();
  final List<TextEditingController> _after = <TextEditingController>[];
  Map<String, String> _errors = const <String, String>{};

  @override
  void initState() {
    super.initState();
    _adopt();
  }

  void _adopt() {
    _draft = widget.policy == null ? EscalationPolicyDraft() : EscalationPolicyDraft.of(widget.policy!);
    _name.text = _draft.name;
    _every.text = _draft.everyMinutes;
    _times.text = _draft.maxTimes;
    for (final c in _after) {
      c.dispose();
    }
    _after
      ..clear()
      ..addAll(_draft.steps.map((s) => TextEditingController(text: s.afterMinutes)));
  }

  @override
  void dispose() {
    _name.dispose();
    _every.dispose();
    _times.dispose();
    for (final c in _after) {
      c.dispose();
    }
    super.dispose();
  }

  void _addStep() {
    final last = _draft.steps.isEmpty ? 0 : int.tryParse(_after.last.text.trim()) ?? 0;
    final step = EscalationStepDraft(afterMinutes: '${last + 15}');
    setState(() {
      _draft.steps.add(step);
      _after.add(TextEditingController(text: step.afterMinutes));
    });
  }

  void _removeStep(int i) {
    setState(() {
      _draft.steps.removeAt(i);
      _after.removeAt(i).dispose();
    });
  }

  Future<void> _save() async {
    _draft
      ..name = _name.text
      ..everyMinutes = _every.text
      ..maxTimes = _times.text;
    for (var i = 0; i < _draft.steps.length; i++) {
      _draft.steps[i].afterMinutes = _after[i].text;
    }
    setState(() => _errors = _draft.validate());
    if (_errors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final escalation = api.getEscalationApi();
    final body = fromJsonMap<EscalationPolicyInput>(api.serializers, _draft.toJson());
    final id = widget.policy?['id'] as String?;
    if (id == null) {
      final created = await track(
        () async => toJsonMap(
          api.serializers,
          await callApiRequired(() => escalation.createEscalationPolicy(escalationPolicyInput: body)),
        ),
      );
      if (created != null && mounted) {
        ref.invalidate(escalationPoliciesProvider);
        context.go(alertPolicyPath('${created['id']}'));
      }
      return;
    }
    final steps = _draft.steps.length;
    final saved = await track(
      () => writeThenConfirm<Json>(
        write: () => escalation.updateEscalationPolicy(policyId: id, escalationPolicyInput: body),
        reread: () async =>
            toJsonMap(api.serializers, await callApiRequired(() => escalation.getEscalationPolicy(policyId: id))),
        confirm: (p) => p['name'] == _draft.name.trim() && jsonList(p, 'steps').length == steps
            ? null
            : 'The policy reads back differently.',
      ),
    );
    if (saved != null) {
      ref
        ..invalidate(escalationPoliciesProvider)
        ..invalidate(escalationPolicyProvider(id));
    }
  }

  @override
  Widget build(BuildContext context) {
    final channels = ref.watch(channelsProvider).value ?? const <Json>[];
    final muted = AdminPalette.of(context).muted;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        LabeledField(
          label: 'Name',
          field: PlainField(key: const Key('policy.name'), controller: _name, error: _errors['name']),
        ),
        LabeledField(
          label: 'Steps',
          help: 'Each step fires the given minutes after the alert, later than the step before.',
          field: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              for (var i = 0; i < _draft.steps.length; i++)
                Container(
                  key: Key('policy.step.$i'),
                  margin: const EdgeInsets.only(bottom: 10),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).dividerColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text('Step ${i + 1} after', style: const TextStyle(fontWeight: FontWeight.w600)),
                          const SizedBox(width: 10),
                          SizedBox(
                            width: 90,
                            child: PlainField(
                              key: Key('policy.step.$i.after'),
                              controller: _after[i],
                              error: _errors['step.$i'],
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text('minutes'),
                          const Spacer(),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Checkbox(
                                key: Key('policy.step.$i.push'),
                                value: _draft.steps[i].includePush,
                                onChanged: (v) => setState(() => _draft.steps[i].includePush = v ?? false),
                              ),
                              const Text('Native push'),
                            ],
                          ),
                          IconButton(
                            key: Key('policy.step.$i.remove'),
                            tooltip: 'Remove step',
                            onPressed: _draft.steps.length == 1 ? null : () => _removeStep(i),
                            icon: const Icon(Icons.delete_outline),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      if (channels.isEmpty)
                        Text('No channels yet; add one under Channels.', style: TextStyle(color: muted))
                      else
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: <Widget>[
                            for (final c in channels)
                              FilterChip(
                                key: Key('policy.step.$i.channel.${c['id']}'),
                                label: Text('${c['name']}'),
                                selected: _draft.steps[i].channelIds.contains('${c['id']}'),
                                onSelected: (on) => setState(() {
                                  final ids = _draft.steps[i].channelIds;
                                  on ? ids.add('${c['id']}') : ids.remove('${c['id']}');
                                }),
                              ),
                          ],
                        ),
                    ],
                  ),
                ),
              if (_errors['steps'] case final e?)
                Text(e, style: TextStyle(color: Theme.of(context).colorScheme.error, fontSize: 12)),
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton.icon(
                  key: const Key('policy.addStep'),
                  onPressed: _addStep,
                  icon: const Icon(Icons.add, size: 18),
                  label: const Text('Add Step'),
                ),
              ),
            ],
          ),
        ),
        LabeledField(
          label: 'Repeat the last step',
          field: Wrap(
            spacing: 8,
            runSpacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: <Widget>[
              Switch(
                key: const Key('policy.repeat'),
                value: _draft.repeat,
                onChanged: (v) => setState(() => _draft.repeat = v),
              ),
              if (_draft.repeat) ...<Widget>[
                SizedBox(
                  width: 70,
                  child: PlainField(key: const Key('policy.maxTimes'), controller: _times, error: _errors['maxTimes']),
                ),
                const Text('times, every'),
                SizedBox(
                  width: 70,
                  child: PlainField(key: const Key('policy.every'), controller: _every, error: _errors['everyMinutes']),
                ),
                const Text('minutes'),
              ],
            ],
          ),
        ),
        LabeledField(
          label: 'Stops when the alert is',
          help: 'Acknowledging always stops it.',
          field: Wrap(
            spacing: 16,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Checkbox(
                    key: const Key('policy.stopOn.resolve'),
                    value: _draft.stopOnResolve,
                    onChanged: (v) => setState(() => _draft.stopOnResolve = v ?? true),
                  ),
                  const Text('Resolved'),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Checkbox(
                    key: const Key('policy.stopOn.snooze'),
                    value: _draft.stopOnSnooze,
                    onChanged: (v) => setState(() => _draft.stopOnSnooze = v ?? true),
                  ),
                  const Text('Snoozed'),
                ],
              ),
            ],
          ),
        ),
        FormActions(
          busy: busy,
          saveLabel: widget.policy == null ? 'Create Policy' : 'Save Changes',
          onSave: _save,
          onReset: () => setState(() {
            _adopt();
            _errors = const <String, String>{};
            write = const WriteIdle();
          }),
          leading: <Widget>[WriteStatusLine(state: write)],
        ),
      ],
    );
  }
}

class _DeletePolicyCard extends ConsumerStatefulWidget {
  const _DeletePolicyCard({required this.policy});

  final Json policy;

  @override
  ConsumerState<_DeletePolicyCard> createState() => _DeletePolicyCardState();
}

class _DeletePolicyCardState extends ConsumerState<_DeletePolicyCard> with WriteTracking<_DeletePolicyCard> {
  bool _confirming = false;

  Future<void> _delete() async {
    final id = '${widget.policy['id']}';
    final escalation = ref.read(foresignalApiProvider).getEscalationApi();
    final ok = await track(() async {
      await callApi(() => escalation.deleteEscalationPolicy(policyId: id));
      try {
        await callApiRequired(() => escalation.getEscalationPolicy(policyId: id));
      } on ProblemException catch (e) {
        if (e.status == 404) {
          return true;
        }
        rethrow;
      }
      throw const WriteNotConfirmedException('The policy still reads back.');
    });
    if (ok == true && mounted) {
      ref.invalidate(escalationPoliciesProvider);
      context.go(alertEscalationPath);
    }
  }

  @override
  Widget build(BuildContext context) {
    final inUse = failedCode == 'POLICY_IN_USE';
    return SectionCard(
      title: 'Delete',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (_confirming)
            ConfirmRow(
              message: 'Delete "${widget.policy['name']}"?',
              action: 'Delete',
              confirmKey: const Key('policy.delete.confirm'),
              onConfirm: () {
                setState(() => _confirming = false);
                unawaited(_delete());
              },
              onCancel: () => setState(() => _confirming = false),
            )
          else
            Align(
              alignment: Alignment.centerLeft,
              child: DangerButton(
                key: const Key('policy.delete'),
                label: 'Delete Policy',
                onPressed: busy ? null : () => setState(() => _confirming = true),
              ),
            ),
          if (inUse)
            const ResultPanel(
              key: Key('policy.inUse'),
              title: 'Still in use',
              tone: StatusTone.warning,
              message: 'Rules still name this policy. Choose another policy (or none) on each rule first.',
            )
          else if (write is WriteFailed)
            statusLine,
        ],
      ),
    );
  }
}
