import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_widgets.dart';
import '../vetting/vetting_drafts.dart' show fromJsonMap, toJsonMap;
import 'notifications_drafts.dart';
import 'notifications_providers.dart';
import 'push_native.dart' show FiltersFields, filtersText;

/// The tone of a subscription status.
StatusTone subscriptionTone(Object? status) => switch (status) {
  'active' => StatusTone.ok,
  'pending' => StatusTone.warning,
  'disabled' => StatusTone.error,
  _ => StatusTone.neutral,
};

/// Web Push (Screens §H, desktop): the VAPID key a browser or UnifiedPush
/// app subscribes with, and the subscriptions the backend sends to. A new
/// subscription stays pending until the code from its `verify` push is
/// echoed back.
class WebPushPanel extends ConsumerWidget {
  /// Creates the panel.
  const WebPushPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => const Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      _VapidCard(),
      SizedBox(height: 20),
      _SubscriptionsCard(),
      SizedBox(height: 20),
      _AddSubscriptionCard(),
    ],
  );
}

class _VapidCard extends ConsumerWidget {
  const _VapidCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) => SectionCard(
    key: const Key('webpush.vapid'),
    title: 'VAPID public key',
    subtitle: 'Browsers pass it as applicationServerKey to pushManager.subscribe; UnifiedPush apps pass it to registerApp.',
    child: AsyncView<String?>(
      value: ref.watch(vapidKeyProvider),
      onRetry: () => ref.invalidate(vapidKeyProvider),
      data: (key) => key == null
          ? const ResultPanel(
              title: 'Web Push is not configured',
              tone: StatusTone.warning,
              message: 'The backend has no VAPID key yet.',
            )
          : Row(
              children: <Widget>[
                Expanded(
                  child: SelectableText(
                    key,
                    key: const Key('webpush.vapid.key'),
                    style: const TextStyle(fontFamily: 'monospace', fontSize: 13),
                  ),
                ),
                IconButton(
                  key: const Key('webpush.vapid.copy'),
                  tooltip: 'Copy',
                  onPressed: () => unawaited(Clipboard.setData(ClipboardData(text: key))),
                  icon: const Icon(Icons.copy, size: 18),
                ),
              ],
            ),
    ),
  );
}

class _SubscriptionsCard extends ConsumerStatefulWidget {
  const _SubscriptionsCard();

  @override
  ConsumerState<_SubscriptionsCard> createState() => _SubscriptionsCardState();
}

class _SubscriptionsCardState extends ConsumerState<_SubscriptionsCard> with WriteTracking<_SubscriptionsCard> {
  String? _verifying;
  String? _deleting;
  String _deletingName = '';
  final TextEditingController _code = TextEditingController();
  String? _codeError;

  @override
  void dispose() {
    _code.dispose();
    super.dispose();
  }

  Future<void> _verify(String id) async {
    final code = _code.text.trim();
    if (code.isEmpty) {
      setState(() => _codeError = 'Paste the code from the verify push.');
      return;
    }
    setState(() => _codeError = null);
    final api = ref.read(foresignalApiProvider);
    final r = await track(
      () => callApiRequired(
        () => api.getPushApi().verifyPushSubscription(
          subscriptionId: id,
          pushSubscriptionVerify: fromJsonMap<PushSubscriptionVerify>(api.serializers, <String, Object?>{'code': code}),
        ),
      ),
    );
    if (r != null && mounted) {
      setState(() {
        _verifying = null;
        _code.clear();
      });
      ref.invalidate(pushSubscriptionsProvider);
    }
  }

  Future<void> _delete(String id) async {
    final push = ref.read(foresignalApiProvider).getPushApi();
    final ok = await track(() async {
      await callApi(() => push.deletePushSubscription(subscriptionId: id));
      final list = await callApiRequired(push.listPushSubscriptions);
      if (list.any((s) => s.id == id)) {
        throw const WriteNotConfirmedException('The subscription is still listed.');
      }
      return true;
    });
    if (ok == true && mounted) {
      setState(() => _deleting = null);
      ref.invalidate(pushSubscriptionsProvider);
    }
  }

  @override
  Widget build(BuildContext context) {
    final verifying = _verifying;
    final deleting = _deleting;
    return SectionCard(
      key: const Key('webpush.subscriptions'),
      title: 'Subscriptions',
      subtitle: 'Three failed sends in a row to an address that is no longer allowed disable a subscription.',
      actions: <Widget>[
        IconButton(
          tooltip: 'Refresh',
          onPressed: () => ref.invalidate(pushSubscriptionsProvider),
          icon: const Icon(Icons.refresh),
        ),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          AsyncView<List<Json>>(
            value: ref.watch(pushSubscriptionsProvider),
            onRetry: () => ref.invalidate(pushSubscriptionsProvider),
            data: (list) => DataTableCard<Json>(
              key: const Key('webpush.table'),
              rows: list,
              empty: 'No subscriptions.',
              columns: <TableColumnSpec<Json>>[
                TableColumnSpec<Json>(
                  label: 'Subscription',
                  cell: (s) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('${s['name'] ?? s['endpointHost']}', style: const TextStyle(fontWeight: FontWeight.w600)),
                      if (s['name'] != null) Text('${s['endpointHost']}', style: const TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
                TableColumnSpec<Json>(
                  label: 'Kind',
                  cell: (s) {
                    final kind = '${s['transportLabel'] ?? 'browser'}';
                    final format = '${s['payloadFormat'] ?? 'foresignal'}';
                    return Text('${transportLabelNames[kind] ?? kind} · ${payloadFormatNames[format] ?? format}');
                  },
                ),
                TableColumnSpec<Json>(
                  label: 'Receives',
                  cell: (s) => ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 220),
                    child: Text(filtersText(jsonMap(s, 'filters')), maxLines: 2, overflow: TextOverflow.ellipsis),
                  ),
                ),
                TableColumnSpec<Json>(
                  label: 'Status',
                  cell: (s) => StatusLabel(
                    label: wireText('${s['status'] ?? 'pending'}'),
                    tone: subscriptionTone(s['status']),
                    tooltip: ((s['failureCount'] as num?) ?? 0) > 0
                        ? '${s['failureCount']} failed, last ${whenText(s['lastFailureAt'])}'
                              '${s['lastStatus'] == null ? '' : ' (HTTP ${s['lastStatus']})'}'
                        : null,
                  ),
                ),
                TableColumnSpec<Json>(label: 'Last sent', cell: (s) => Text(whenText(s['lastSuccessAt']))),
                TableColumnSpec<Json>(
                  label: 'Actions',
                  cell: (s) {
                    final id = '${s['id']}';
                    return Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        if (s['status'] == 'pending')
                          TextButton(
                            key: Key('webpush.verify.$id'),
                            onPressed: () => setState(() {
                              _verifying = id;
                              _deleting = null;
                            }),
                            child: const Text('Verify'),
                          ),
                        TextButton(
                          key: Key('webpush.delete.$id'),
                          onPressed: () => setState(() {
                            _deleting = id;
                            _deletingName = '${s['name'] ?? s['endpointHost'] ?? id}';
                            _verifying = null;
                          }),
                          child: const Text('Delete'),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
          if (verifying != null) ...<Widget>[
            const SizedBox(height: 16),
            Text('Verify', style: Theme.of(context).textTheme.labelLarge),
            const SizedBox(height: 4),
            const Footnote('The subscriber received a verify push carrying a code; paste it here.'),
            const SizedBox(height: 8),
            Row(
              children: <Widget>[
                Expanded(
                  child: PlainField(key: const Key('webpush.verify.code'), controller: _code, error: _codeError),
                ),
                const SizedBox(width: 12),
                FilledButton(
                  key: const Key('webpush.verify.run'),
                  onPressed: busy ? null : () => _verify(verifying),
                  child: const Text('Verify'),
                ),
                TextButton(onPressed: () => setState(() => _verifying = null), child: const Text('Cancel')),
              ],
            ),
          ],
          if (deleting != null) ...<Widget>[
            const SizedBox(height: 16),
            ConfirmRow(
              message: 'Delete $_deletingName? It stops receiving push.',
              action: 'Delete',
              confirmKey: const Key('webpush.delete.confirm'),
              onConfirm: () => _delete(deleting),
              onCancel: () => setState(() => _deleting = null),
            ),
          ],
          if (write is! WriteIdle) ...<Widget>[const SizedBox(height: 8), statusLine],
        ],
      ),
    );
  }
}

class _AddSubscriptionCard extends ConsumerStatefulWidget {
  const _AddSubscriptionCard();

  @override
  ConsumerState<_AddSubscriptionCard> createState() => _AddSubscriptionCardState();
}

class _AddSubscriptionCardState extends ConsumerState<_AddSubscriptionCard> with WriteTracking<_AddSubscriptionCard> {
  PushSubscriptionDraft _draft = PushSubscriptionDraft();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _subscription = TextEditingController();
  final TextEditingController _lang = TextEditingController();
  Map<String, String> _errors = const <String, String>{};
  Json? _created;
  int _formKey = 0;

  @override
  void dispose() {
    _name.dispose();
    _subscription.dispose();
    _lang.dispose();
    super.dispose();
  }

  Future<void> _add() async {
    _draft
      ..name = _name.text
      ..subscriptionText = _subscription.text
      ..lang = _lang.text;
    setState(() => _errors = _draft.validate());
    if (_errors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final created = await track(
      () => callApiRequired(
        () => api.getPushApi().createPushSubscription(
          pushSubscriptionInput: fromJsonMap<PushSubscriptionInput>(api.serializers, _draft.toJson()),
        ),
      ),
    );
    if (created != null && mounted) {
      setState(() {
        _created = toJsonMap(api.serializers, created);
        _draft = PushSubscriptionDraft();
        _name.clear();
        _subscription.clear();
        _lang.clear();
        _formKey++;
      });
      ref.invalidate(pushSubscriptionsProvider);
    }
  }

  @override
  Widget build(BuildContext context) => SectionCard(
    key: const Key('webpush.add'),
    title: 'Add a subscription',
    subtitle: 'For a browser or UnifiedPush app the operator runs. The backend sends it a verify push first.',
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        LabeledField(label: 'Name', field: PlainField(key: const Key('webpush.add.name'), controller: _name, error: _errors['name'])),
        LabeledField(
          label: 'Subscription',
          help: 'The browser\'s PushSubscription as JSON: endpoint and keys.p256dh, keys.auth.',
          field: JsonField(
            key: const Key('webpush.add.subscription'),
            controller: _subscription,
            error: _errors['subscription'],
            hint: '{"endpoint": "https://…", "keys": {"p256dh": "…", "auth": "…"}}',
            minLines: 4,
          ),
        ),
        LabeledField(
          label: 'Kind',
          help: 'For display and filtering only; the protocol is the same.',
          field: WireDropdown(
            key: const Key('webpush.add.transport'),
            value: _draft.transportLabel,
            values: transportLabels,
            labels: transportLabelNames,
            onChanged: (v) => setState(() => _draft.transportLabel = v),
          ),
        ),
        LabeledField(
          label: 'Payload',
          help: 'Declarative payloads are shown by the browser without a service worker.',
          field: WireDropdown(
            key: const Key('webpush.add.format'),
            value: _draft.payloadFormat,
            values: payloadFormats,
            labels: payloadFormatNames,
            onChanged: (v) => setState(() => _draft.payloadFormat = v),
          ),
        ),
        LabeledField(
          label: 'Language',
          help: 'BCP 47; empty for the server default.',
          field: PlainField(key: const Key('webpush.add.lang'), controller: _lang),
        ),
        FiltersFields(key: ValueKey<int>(_formKey), draft: _draft.filters, prefix: 'webpush.add.filters', errors: _errors),
        FormActions(busy: busy, onSave: _add, saveLabel: 'Add Subscription', leading: <Widget>[statusLine]),
        if (_created case final c?) ...<Widget>[
          const SizedBox(height: 12),
          ResultPanel(
            key: const Key('webpush.add.result'),
            title: 'Added, ${wireText('${c['status'] ?? 'pending'}')}',
            tone: c['status'] == 'active' ? StatusTone.ok : StatusTone.info,
            message: c['status'] == 'pending'
                ? 'A verify push went to ${c['endpointHost']}. Verify it above with the code it carries.'
                : 'It receives notifications now.',
          ),
        ],
      ],
    ),
  );
}
