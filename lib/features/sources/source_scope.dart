import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/access.dart';
import '../../core/permissions.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_widgets.dart' show Footnote, PlainField, WriteTracking;
import 'source_providers.dart';

/// The two levels of the source catalog, and the v1 catalog that keeps the
/// instance-wide switches.
enum SourcesScope {
  /// Every registered source with the instance enable switch, health,
  /// credentials and usage (`collection.manage` to change it).
  catalog('Catalog'),

  /// The signed-in user's own enabled-source view (`self.sources`).
  mine('My sources'),

  /// The instance collection set — the union the paced collector pulls
  /// (`collection.manage`).
  collection('Collection');

  const SourcesScope(this.label);

  /// The tab text.
  final String label;
}

/// The scopes [access] may open, in tab order. The catalog stays for the
/// admin token, for whoever manages the collection, and as a read-only list
/// for a reader with no source view of their own; a self-service user gets
/// their own view instead, which needs a session (an API token has none).
List<SourcesScope> sourcesScopesFor(AccessState access) => <SourcesScope>[
  if (access.kind != AccessKind.session ||
      access.can(Permissions.collectionManage) ||
      !access.can(Permissions.selfSources))
    SourcesScope.catalog,
  if (access.kind == AccessKind.session && access.can(Permissions.selfSources)) SourcesScope.mine,
  if (access.can(Permissions.collectionManage)) SourcesScope.collection,
];

/// The signed-in user's source view (`getMySources`).
final mySourcesProvider = FutureProvider<UserSourceView>(
  (ref) => callApiRequired(() => ref.watch(foresignalApiProvider).getSourcesApi().getMySources()),
);

/// The instance collection set (`getCollectionSources`).
final collectionSourcesProvider = FutureProvider<CollectionSet>(
  (ref) => callApiRequired(
    () => ref.watch(foresignalApiProvider).getSourcesApi().getCollectionSources(),
  ),
);

/// How one pull serves everyone, said once for both panels.
const String sharedPullText =
    'One pull feeds everyone. The instance pulls each source once while it is in the instance '
    'collection and at least one active user keeps it on; nobody\'s view adds a second pull.';

/// A user's preference for [sourceId] in [view]: the stored one, or the
/// default (on, no overrides) for a source they never changed.
UserSourcePref prefIn(UserSourceView view, String sourceId) =>
    view.sources.where((p) => p.sourceId == sourceId).firstOrNull ??
    UserSourcePref(
      (b) => b
        ..sourceId = sourceId
        ..enabled = true,
    );

/// [view] with [pref] in place of the stored entry for its source; every
/// other entry is kept as it was (the update replaces the whole view).
UserSourceViewUpdate replacingPref(UserSourceView view, UserSourcePref pref) =>
    UserSourceViewUpdate(
      (b) => b
        ..sources = ListBuilder<UserSourcePref>(<UserSourcePref>[
          for (final p in view.sources)
            if (p.sourceId != pref.sourceId) p,
          pref,
        ]),
    );

/// **My sources**: every source the user may see with whether it shows in
/// their records, alerts and maps, and their own label and color for it
/// (`getMySources` / `updateMySources`). Turning a source on joins the user
/// to the holders that keep it in the shared collection union.
class MySourcesPanel extends ConsumerStatefulWidget {
  /// Creates the panel.
  const MySourcesPanel({super.key});

  @override
  ConsumerState<MySourcesPanel> createState() => _MySourcesPanelState();
}

class _MySourcesPanelState extends ConsumerState<MySourcesPanel>
    with WriteTracking<MySourcesPanel> {
  String? _joined;

  Future<void> _write(UserSourceView view, UserSourcePref pref, {String? joinedName}) async {
    setState(() => _joined = null);
    final api = ref.read(foresignalApiProvider).getSourcesApi();
    final done = await track(
      () => writeThenConfirm<UserSourceView>(
        write: () => callApiRequired(
          () => api.updateMySources(userSourceViewUpdate: replacingPref(view, pref)),
        ),
        reread: () => callApiRequired(api.getMySources),
        confirm: (back) {
          final stored = prefIn(back, pref.sourceId);
          return stored.enabled == pref.enabled &&
                  stored.displayName == pref.displayName &&
                  stored.color == pref.color
              ? null
              : 'Your view reads back with ${pref.sourceId} '
                    '${stored.enabled ? 'on' : 'off'}${stored.displayName == null ? '' : ' as ${stored.displayName}'}.';
        },
      ),
    );
    if (done != null && mounted) {
      setState(() => _joined = joinedName);
      ref.invalidate(mySourcesProvider);
    }
  }

  Future<void> _editDisplay(UserSourceView view, UserSourcePref pref, String name) async {
    final edited = await showDialog<UserSourcePref>(
      context: context,
      builder: (_) => _DisplayDialog(pref: pref, sourceName: name),
    );
    if (edited != null) {
      await _write(view, edited);
    }
  }

  @override
  Widget build(BuildContext context) {
    final view = ref.watch(mySourcesProvider);
    final catalog = ref.watch(sourceListProvider).value ?? const <SourceSummary>[];
    final names = <String, SourceSummary>{for (final s in catalog) s.id: s};
    return SectionCard(
      key: const Key('mySources'),
      title: 'My sources',
      subtitle:
          'Which sources appear in your records, alerts and maps, and how they are labeled for you.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const ResultPanel(
            key: Key('mySources.union'),
            title: 'How your view and the shared collection fit together',
            tone: StatusTone.info,
            message:
                '$sharedPullText Turning a source on here adds you to the users who keep it, '
                'which joins it to the shared collection if the instance collects it. A source the '
                'instance does not collect stays empty until an operator adds it to the collection.',
          ),
          const SizedBox(height: 12),
          if (_joined case final name?) ...<Widget>[
            ResultPanel(
              key: const Key('mySources.joined'),
              title: '$name is in your view',
              tone: StatusTone.ok,
              message:
                  'It now counts toward the shared collection union. The instance pulls it once for '
                  'everyone who keeps it on.',
            ),
            const SizedBox(height: 12),
          ],
          AsyncView<UserSourceView>(
            value: view,
            onRetry: () => ref.invalidate(mySourcesProvider),
            data: (v) {
              final ids = <String>{
                for (final s in catalog) s.id,
                for (final p in v.sources) p.sourceId,
              };
              final rows = ids.toList()
                ..sort((a, b) => (names[a]?.name ?? a).compareTo(names[b]?.name ?? b));
              return DataTableCard<String>(
                key: const Key('mySources.table'),
                rows: rows,
                empty: 'No sources are registered on this instance. Built-in and custom sources appear here once registered.',
                columns: <TableColumnSpec<String>>[
                  TableColumnSpec<String>(
                    label: 'Source',
                    sortBy: (id) => names[id]?.name ?? id,
                    cell: (id) {
                      final label = prefIn(v, id).displayName;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(label ?? names[id]?.name ?? id),
                          if (label != null)
                            Text(names[id]?.name ?? id, style: const TextStyle(fontSize: 12)),
                        ],
                      );
                    },
                  ),
                  TableColumnSpec<String>(
                    label: 'Show for me',
                    sortBy: (id) => prefIn(v, id).enabled,
                    cell: (id) {
                      final pref = prefIn(v, id);
                      return PermissionGate(
                        permission: Permissions.selfSources,
                        child: Switch(
                          key: Key('mySources.enabled.$id'),
                          value: pref.enabled,
                          onChanged: busy
                              ? null
                              : (on) => _write(
                                  v,
                                  pref.rebuild((b) => b.enabled = on),
                                  joinedName: on ? (names[id]?.name ?? id) : null,
                                ),
                        ),
                      );
                    },
                  ),
                  TableColumnSpec<String>(
                    label: 'Instance',
                    sortBy: (id) => names[id]?.enabled ?? false,
                    cell: (id) => switch (names[id]?.enabled) {
                      true => const StatusChip(label: 'Collected', tone: StatusTone.ok),
                      false => const StatusChip(label: 'Not collected', tone: StatusTone.neutral),
                      null => const Text('—'),
                    },
                  ),
                  TableColumnSpec<String>(
                    label: 'My label',
                    cell: (id) {
                      final pref = prefIn(v, id);
                      return Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          if (_colorOf(pref.color) case final color?) ...<Widget>[
                            Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
                            ),
                            const SizedBox(width: 6),
                          ],
                          Text(pref.displayName ?? '—'),
                          PermissionGate(
                            permission: Permissions.selfSources,
                            child: IconButton(
                              key: Key('mySources.edit.$id'),
                              tooltip: 'Change my label and color',
                              icon: const Icon(Icons.edit_outlined, size: 18),
                              onPressed: busy
                                  ? null
                                  : () => _editDisplay(v, pref, names[id]?.name ?? id),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              );
            },
          ),
          const SizedBox(height: 8),
          statusLine,
          const Footnote(
            'Your view changes only what you see. It never stops another user\'s pull or starts a '
            'second one.',
          ),
        ],
      ),
    );
  }
}

/// A `#rrggbb` color, or `null` for anything else (shown as text instead).
Color? _colorOf(String? hex) {
  final match = RegExp(r'^#([0-9a-fA-F]{6})$').firstMatch(hex ?? '');
  return match == null ? null : Color(0xFF000000 | int.parse(match.group(1)!, radix: 16));
}

/// The user's label and color for one source.
class _DisplayDialog extends StatefulWidget {
  const _DisplayDialog({required this.pref, required this.sourceName});

  final UserSourcePref pref;
  final String sourceName;

  @override
  State<_DisplayDialog> createState() => _DisplayDialogState();
}

class _DisplayDialogState extends State<_DisplayDialog> {
  late final TextEditingController _name = TextEditingController(
    text: widget.pref.displayName ?? '',
  );
  late final TextEditingController _color = TextEditingController(text: widget.pref.color ?? '');

  @override
  void dispose() {
    _name.dispose();
    _color.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String? orNull(String v) => v.trim().isEmpty ? null : v.trim();
    return AlertDialog(
      title: Text('How ${widget.sourceName} shows for you'),
      content: SizedBox(
        width: 420,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            LabeledField(
              label: 'Label',
              help: 'Empty uses the source\'s own name.',
              field: PlainField(key: const Key('mySources.displayName'), controller: _name),
            ),
            LabeledField(
              label: 'Color',
              help: 'For example #3b82f6. Empty uses the default.',
              field: PlainField(key: const Key('mySources.color'), controller: _color),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Cancel')),
        FilledButton(
          key: const Key('mySources.saveDisplay'),
          onPressed: () => Navigator.of(context).pop(
            widget.pref.rebuild(
              (b) => b
                ..displayName = orNull(_name.text)
                ..color = orNull(_color.text),
            ),
          ),
          child: const Text('Save'),
        ),
      ],
    );
  }
}

/// **Collection**: the instance collection set — which sources the paced
/// collector may pull at all, and how many users keep each one on
/// (`getCollectionSources` / `updateCollectionSources`).
class CollectionPanel extends ConsumerStatefulWidget {
  /// Creates the panel.
  const CollectionPanel({super.key});

  @override
  ConsumerState<CollectionPanel> createState() => _CollectionPanelState();
}

class _CollectionPanelState extends ConsumerState<CollectionPanel>
    with WriteTracking<CollectionPanel> {
  Future<void> _set(String sourceId, bool inCollection) async {
    final api = ref.read(foresignalApiProvider).getSourcesApi();
    final update = CollectionSetUpdate(
      (b) => b
        ..sources = ListBuilder<CollectionSource>(<CollectionSource>[
          CollectionSource(
            (s) => s
              ..sourceId = sourceId
              ..inCollection = inCollection,
          ),
        ]),
    );
    final done = await track(
      () => writeThenConfirm<CollectionSet>(
        write: () =>
            callApiRequired(() => api.updateCollectionSources(collectionSetUpdate: update)),
        reread: () => callApiRequired(api.getCollectionSources),
        confirm: (back) {
          final stored = back.sources.where((s) => s.sourceId == sourceId).firstOrNull;
          return stored?.inCollection == inCollection
              ? null
              : '$sourceId reads back ${stored?.inCollection == true ? 'in' : 'out of'} the collection.';
        },
      ),
    );
    if (done != null && mounted) {
      ref.invalidate(collectionSourcesProvider);
      invalidateSources(ref, sourceId);
    }
  }

  @override
  Widget build(BuildContext context) {
    final catalog = ref.watch(sourceListProvider).value ?? const <SourceSummary>[];
    final names = <String, String>{for (final s in catalog) s.id: s.name};
    return SectionCard(
      key: const Key('collection'),
      title: 'Instance collection',
      subtitle: 'The union the paced collector pulls, shared by every user.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const ResultPanel(
            key: Key('collection.union'),
            title: 'One collection for everyone',
            tone: StatusTone.info,
            message:
                '$sharedPullText Taking a source out of the collection stops it for everyone, '
                'whatever their own views say. While no user is active, every source in the '
                'collection is pulled.',
          ),
          const SizedBox(height: 12),
          AsyncView<CollectionSet>(
            value: ref.watch(collectionSourcesProvider),
            onRetry: () => ref.invalidate(collectionSourcesProvider),
            data: (set) => DataTableCard<CollectionSource>(
              key: const Key('collection.table'),
              rows: set.sources.toList(),
              empty: 'No sources are registered on this instance. Built-in and custom sources appear here once registered.',
              columns: <TableColumnSpec<CollectionSource>>[
                TableColumnSpec<CollectionSource>(
                  label: 'Source',
                  sortBy: (s) => names[s.sourceId] ?? s.sourceId,
                  cell: (s) => Text(names[s.sourceId] ?? s.sourceId),
                ),
                TableColumnSpec<CollectionSource>(
                  label: 'In collection',
                  sortBy: (s) => s.inCollection,
                  cell: (s) => PermissionGate(
                    permission: Permissions.collectionManage,
                    child: Switch(
                      key: Key('collection.in.${s.sourceId}'),
                      value: s.inCollection,
                      onChanged: busy ? null : (on) => _set(s.sourceId, on),
                    ),
                  ),
                ),
                TableColumnSpec<CollectionSource>(
                  label: 'Users keeping it on',
                  numeric: true,
                  sortBy: (s) => s.enabledByUsers,
                  cell: (s) => Text(s.enabledByUsers?.toString() ?? '—'),
                ),
                TableColumnSpec<CollectionSource>(
                  label: 'Pulled',
                  cell: (s) => !s.inCollection
                      ? const StatusChip(label: 'Not collected', tone: StatusTone.neutral)
                      : (s.enabledByUsers ?? 1) > 0
                      ? const StatusChip(label: 'Once, for everyone', tone: StatusTone.ok)
                      : const StatusChip(label: 'No user keeps it on', tone: StatusTone.warning),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          statusLine,
          const Footnote(
            'Adding a source that needs a key it does not have is refused (CREDENTIALS_REQUIRED); '
            'set the key on the source first.',
          ),
        ],
      ),
    );
  }
}
