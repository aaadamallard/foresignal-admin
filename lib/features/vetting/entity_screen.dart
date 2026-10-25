import 'package:built_value/json_object.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../sources/source_test_results.dart';
import 'vetting_drafts.dart';
import 'vetting_providers.dart';

/// The entity types (`listEntities?type=`), by wire name.
const List<String> entityTypes = <String>[
  'aircraft',
  'vessel',
  'satellite',
  'station',
  'person',
  'organization',
];

/// The tone of an ownership edge label.
StatusTone edgeTone(String wire) => switch (wire) {
  'confirmed' => StatusTone.ok,
  'likely' => StatusTone.info,
  'possible' => StatusTone.warning,
  _ => StatusTone.neutral,
};

/// The entity id of an `entity:<id>` ref, or `null` for another kind.
String? entityIdOf(String ref) =>
    ref.startsWith('entity:') ? ref.substring('entity:'.length) : null;

/// Resolved entities (mock E4): search by name prefix or exact
/// `keyType:value`, filtered by type.
class EntitiesPanel extends ConsumerStatefulWidget {
  /// Creates the panel.
  const EntitiesPanel({super.key});

  @override
  ConsumerState<EntitiesPanel> createState() => _EntitiesPanelState();
}

class _EntitiesPanelState extends ConsumerState<EntitiesPanel> {
  final TextEditingController _text = TextEditingController();
  EntityQuery _query = const EntityQuery();

  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const ResolveKeyCard(),
        const SizedBox(height: 20),
        Wrap(
          spacing: 12,
          runSpacing: 8,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            SizedBox(
              // Wide enough for the whole hint, key example included.
              width: 620,
              child: TextField(
                key: const Key('vetting.entities.search'),
                controller: _text,
                decoration: const InputDecoration(
                  hintText: 'Name prefix, or a key such as lei:5493001KJTIIGC8Y1R12',
                  prefixIcon: Icon(Icons.search),
                  isDense: true,
                ),
                onSubmitted: (t) =>
                    setState(() => _query = EntityQuery(text: t, type: _query.type)),
              ),
            ),
            SizedBox(
              width: 200,
              child: DropdownButtonFormField<String?>(
                key: const Key('vetting.entities.type'),
                isExpanded: true,
                style: Theme.of(context).textTheme.bodyMedium,
                initialValue: _query.type,
                decoration: const InputDecoration(isDense: true),
                items: withCurrentItem(<DropdownMenuItem<String?>>[
                  const DropdownMenuItem<String?>(child: Text('All types')),
                  for (final t in entityTypes)
                    DropdownMenuItem<String?>(value: t, child: Text(wireText(t))),
                ], _query.type),
                onChanged: (t) => setState(() => _query = EntityQuery(text: _text.text, type: t)),
              ),
            ),
            IconButton(
              tooltip: 'Refresh',
              onPressed: () => ref.invalidate(entitiesProvider(_query)),
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
        const SizedBox(height: 16),
        AsyncView<EntityPage>(
          value: ref.watch(entitiesProvider(_query)),
          onRetry: () => ref.invalidate(entitiesProvider(_query)),
          data: (page) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              DataTableCard<Entity>(
                key: const Key('vetting.entities'),
                rows: page.items.toList(),
                empty: _query.isKey ? 'No entity holds that key.' : 'No entities match.',
                onTap: (e) => context.go(vettingEntityPath(e.id)),
                columns: <TableColumnSpec<Entity>>[
                  TableColumnSpec<Entity>(
                    label: 'Name',
                    cell: (e) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          e.displayName ?? e.id,
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '${wireText(e.type)}${e.provisional ? ' · provisional' : ''}',
                          style: TextStyle(color: muted, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  TableColumnSpec<Entity>(
                    label: 'Aliases',
                    cell: (e) => ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 260),
                      child: Text(
                        (e.aliases ?? const <EntityAlias>[]).map((a) => a.alias).join(', '),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: muted),
                      ),
                    ),
                  ),
                  TableColumnSpec<Entity>(
                    label: 'Keys',
                    cell: (e) => ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 280),
                      child: Text(
                        (e.keys ?? const <EntityKey>[])
                            .where((k) => !k.retracted)
                            .map((k) => '${k.keyType}:${k.keyValue}')
                            .join(', '),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  TableColumnSpec<Entity>(
                    label: 'Sources',
                    numeric: true,
                    cell: (e) => Tooltip(
                      message: (e.openLinkCounts?.entries ?? const <MapEntry<String, int>>[])
                          .map((m) => '${m.key}: ${m.value}')
                          .join('\n'),
                      child: Text('${e.openLinkCounts?.length ?? 0}'),
                    ),
                  ),
                  TableColumnSpec<Entity>(
                    label: 'Confidence',
                    numeric: true,
                    cell: (e) => Text(_bestConfidence(e)),
                  ),
                  TableColumnSpec<Entity>(
                    label: 'Status',
                    cell: (e) => StatusLabel(
                      label: wireLabel(e.status, e, 'status'),
                      tone: e.status == EntityStatusEnum.MERGED
                          ? StatusTone.neutral
                          : StatusTone.ok,
                    ),
                  ),
                  TableColumnSpec<Entity>(
                    label: 'Actions',
                    cell: (e) => TonalButton(
                      key: Key('vetting.entity.${e.id}'),
                      label: 'View',
                      onPressed: () => context.go(vettingEntityPath(e.id)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                'Entities are created when a source record resolves its keys; an operator adds or '
                'retracts keys and merges duplicates on the entity page.'
                '${page.nextCursor == null ? '' : ' Showing the first 200.'}',
                style: TextStyle(color: muted, fontSize: 12),
              ),
            ],
          ),
        ),
      ],
    );
  }

  static String _bestConfidence(Entity e) {
    final open = (e.keys ?? const <EntityKey>[]).where((k) => !k.retracted);
    if (open.isEmpty) {
      return '—';
    }
    return open.map((k) => k.confidence).reduce((a, b) => a > b ? a : b).toStringAsFixed(2);
  }
}

/// Resolves one key to the entity holding it, now or at an instant
/// (`resolveEntity`), and opens that entity.
class ResolveKeyCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const ResolveKeyCard({super.key});

  @override
  ConsumerState<ResolveKeyCard> createState() => _ResolveKeyCardState();
}

class _ResolveKeyCardState extends ConsumerState<ResolveKeyCard> {
  final TextEditingController _key = TextEditingController();
  final TextEditingController _at = TextEditingController();
  Map<String, String> _errors = const <String, String>{};
  bool _busy = false;
  Object? _error;

  @override
  void dispose() {
    _key.dispose();
    _at.dispose();
    super.dispose();
  }

  Future<void> _resolve() async {
    final errors = <String, String>{};
    final key = _key.text.trim();
    if (!isEntityKey(key)) {
      errors['key'] = 'keyType:value, such as imo:9387421.';
    }
    DateTime? at;
    try {
      at = parseInstantText(_at.text);
    } on FormatException catch (e) {
      errors['at'] = e.message;
    }
    setState(() {
      _errors = errors;
      _error = null;
    });
    if (errors.isNotEmpty) {
      return;
    }
    setState(() => _busy = true);
    try {
      final entity = await callApiRequired(
        () => ref.read(foresignalApiProvider).getEntitiesApi().resolveEntity(key: key, at: at),
      );
      if (mounted) {
        context.go(vettingEntityPath(entity.id));
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() => _error = e);
      }
    } finally {
      if (mounted) {
        setState(() => _busy = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      key: const Key('vetting.resolve'),
      title: 'Resolve a key',
      subtitle: 'Which entity held a key, now or at an instant in the past.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Wrap(
            spacing: 12,
            runSpacing: 8,
            crossAxisAlignment: WrapCrossAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 340,
                child: TextField(
                  key: const Key('vetting.resolve.key'),
                  controller: _key,
                  decoration: InputDecoration(
                    labelText: 'Key',
                    hintText: 'mmsi:271044590',
                    errorText: _errors['key'],
                  ),
                  onSubmitted: (_) => _resolve(),
                ),
              ),
              SizedBox(
                width: 220,
                child: TextField(
                  key: const Key('vetting.resolve.at'),
                  controller: _at,
                  decoration: InputDecoration(
                    labelText: 'As of (UTC)',
                    hintText: 'Now',
                    errorText: _errors['at'],
                    errorMaxLines: 2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: FilledButton(
                  key: const Key('vetting.resolve.go'),
                  onPressed: _busy ? null : _resolve,
                  child: const Text('Resolve'),
                ),
              ),
            ],
          ),
          if (_error case final e?) ...<Widget>[
            const SizedBox(height: 12),
            switch (e) {
              ProblemException(code: 'ENTITY_NOT_FOUND') => const ResultPanel(
                key: Key('vetting.resolve.none'),
                title: 'No entity held that key',
                tone: StatusTone.info,
                message:
                    'Nothing resolved it at that instant. A record holding the key creates the entity '
                    'when it arrives.',
              ),
              _ => ErrorBanner(error: e, title: 'The key could not be resolved'),
            },
          ],
        ],
      ),
    );
  }
}

/// One entity: its keys (add and retract), aliases, linked records, a merge
/// of a duplicate into it, and its ownership chains.
class EntityScreen extends ConsumerWidget {
  /// Creates the page for [entityId].
  const EntityScreen({super.key, required this.entityId});

  /// The entity shown.
  final String entityId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        AsyncView<Entity>(
          value: ref.watch(entityProvider(entityId)),
          onRetry: () => ref.invalidate(entityProvider(entityId)),
          data: (e) {
            final name = e.displayName ?? e.id;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                PageHeader(
                  title: name,
                  crumbs: <Crumb>[
                    const Crumb('Vetting', vettingPath),
                    const Crumb('Entities'),
                    Crumb(name),
                  ],
                  subtitle: '${wireText(e.type)} · ${e.id}',
                  titleTrailing: <Widget>[
                    StatusLabel(
                      key: const Key('entity.status'),
                      label: wireLabel(e.status, e, 'status'),
                      tone: e.status == EntityStatusEnum.MERGED
                          ? StatusTone.neutral
                          : StatusTone.ok,
                    ),
                    if (e.provisional) ...<Widget>[
                      const SizedBox(width: 8),
                      const StatusLabel(
                        label: 'Provisional',
                        tone: StatusTone.warning,
                        tooltip: 'Created from a weak key; not yet anchored by a strong one.',
                      ),
                    ],
                  ],
                ),
                if (e.mergedInto case final into?) ...<Widget>[
                  ResultPanel(
                    title: 'Merged',
                    tone: StatusTone.info,
                    message: 'This entity was merged into another.',
                    child: TextButton(
                      key: const Key('entity.mergedInto'),
                      onPressed: () => context.go(vettingEntityPath(into)),
                      child: Text('Open $into'),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
                SectionCard(
                  title: 'Summary',
                  child: KeyValueList(
                    entries: <MapEntry<String, Object>>[
                      MapEntry<String, Object>('Id', e.id),
                      MapEntry<String, Object>('Type', wireText(e.type)),
                      MapEntry<String, Object>('Created', utcText(e.createdAt)),
                      MapEntry<String, Object>('Updated', utcText(e.updatedAt)),
                      MapEntry<String, Object>(
                        'Open links',
                        (e.openLinkCounts?.entries ?? const <MapEntry<String, int>>[]).isEmpty
                            ? 'None'
                            : e.openLinkCounts!.entries
                                  .map((m) => '${m.key} ${m.value}')
                                  .join(' · '),
                      ),
                      for (final a
                          in (e.attributes?.entries ?? const <MapEntry<String, JsonObject?>>[]))
                        MapEntry<String, Object>(a.key, '${a.value?.value ?? '—'}'),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                EntityKeysCard(entity: e),
                const SizedBox(height: 16),
                _AliasesCard(entity: e),
                const SizedBox(height: 16),
                EntityRecordsCard(entityId: e.id),
                const SizedBox(height: 16),
                EntityMergeCard(entity: e),
                const SizedBox(height: 16),
                SectionCard(
                  title: 'Ownership',
                  subtitle:
                      'Owners, controllers, officers and affiliates reachable from this entity.',
                  child: OwnershipExplorer(
                    key: ValueKey<String>('ownership.${e.id}'),
                    initialRefs: 'entity:${e.id}',
                    names: <String, String>{'entity:${e.id}': name},
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}

/// An entity's keys, with retract and an operator key assertion
/// (`addEntityKey` / `retractEntityKey`), each confirmed by re-reading.
class EntityKeysCard extends ConsumerStatefulWidget {
  /// Creates the card for [entity].
  const EntityKeysCard({super.key, required this.entity});

  /// The entity shown.
  final Entity entity;

  @override
  ConsumerState<EntityKeysCard> createState() => _EntityKeysCardState();
}

class _EntityKeysCardState extends ConsumerState<EntityKeysCard> {
  final EntityKeyDraft _draft = EntityKeyDraft();
  final TextEditingController _value = TextEditingController();
  final TextEditingController _confidence = TextEditingController();
  Map<String, String> _errors = const <String, String>{};
  WriteState _write = const WriteIdle();
  int? _confirmRetract;

  @override
  void dispose() {
    _value.dispose();
    _confidence.dispose();
    super.dispose();
  }

  Future<void> _add() async {
    _draft
      ..keyValue = _value.text
      ..confidence = _confidence.text;
    final errors = _draft.validate();
    setState(() => _errors = errors);
    if (errors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final entities = api.getEntitiesApi();
    final id = widget.entity.id;
    setState(() => _write = const WriteInProgress());
    try {
      late EntityKey added;
      await writeThenConfirm<Entity>(
        write: () async => added = await callApiRequired(
          () => entities.addEntityKey(
            entityId: id,
            entityKeyInput: fromJsonMap<EntityKeyInput>(api.serializers, _draft.toJson()),
          ),
        ),
        reread: () => callApiRequired(() => entities.getEntity(entityId: id)),
        confirm: (got) =>
            (got.keys ?? const <EntityKey>[]).any((k) => k.id == added.id && !k.retracted)
            ? null
            : 'the key does not read back on the entity',
      );
      if (!mounted) {
        return;
      }
      _value.clear();
      _confidence.clear();
      _draft.force = false;
      setState(() => _write = WriteConfirmed(DateTime.now()));
      ref
        ..invalidate(entityProvider(id))
        ..invalidate(entityRecordsProvider);
    } on Object catch (e) {
      if (mounted) {
        setState(() => _write = WriteFailed(e));
      }
    }
  }

  Future<void> _retract(int keyId) async {
    final entities = ref.read(foresignalApiProvider).getEntitiesApi();
    final id = widget.entity.id;
    setState(() {
      _confirmRetract = null;
      _write = const WriteInProgress();
    });
    try {
      await writeThenConfirm<Entity>(
        write: () => entities.retractEntityKey(entityId: id, keyId: keyId),
        reread: () => callApiRequired(() => entities.getEntity(entityId: id)),
        confirm: (got) =>
            (got.keys ?? const <EntityKey>[]).any((k) => k.id == keyId && !k.retracted)
            ? 'the key still reads back open'
            : null,
      );
      if (!mounted) {
        return;
      }
      setState(() => _write = WriteConfirmed(DateTime.now()));
      ref
        ..invalidate(entityProvider(id))
        ..invalidate(entityRecordsProvider);
    } on Object catch (e) {
      if (mounted) {
        setState(() => _write = WriteFailed(e));
      }
    }
  }

  bool get _conflict => switch (_write) {
    WriteFailed(error: ProblemException(code: 'ENTITY_KEY_CONFLICT')) => true,
    _ => false,
  };

  @override
  Widget build(BuildContext context) {
    final palette = AdminPalette.of(context);
    final keys = widget.entity.keys?.toList() ?? const <EntityKey>[];
    final pending = keys.where((k) => k.id == _confirmRetract).firstOrNull;
    return SectionCard(
      key: const Key('entity.keys'),
      title: 'Keys',
      subtitle:
          'Anchor keys identify the entity outright; weak keys only suggest it. Retracting ends '
          'a key now; key rows are never deleted.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (pending != null) ...<Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Retract ${pending.keyType}:${pending.keyValue}? Records holding it will no '
                    'longer resolve here.',
                  ),
                ),
                DangerButton(
                  key: const Key('entity.key.retract.confirm'),
                  label: 'Retract',
                  onPressed: () => _retract(pending.id),
                ),
                TextButton(
                  onPressed: () => setState(() => _confirmRetract = null),
                  child: const Text('Cancel'),
                ),
              ],
            ),
            const SizedBox(height: 8),
          ],
          DataTableCard<EntityKey>(
            rows: keys,
            empty: 'No keys.',
            columns: <TableColumnSpec<EntityKey>>[
              TableColumnSpec<EntityKey>(
                label: 'Key',
                cell: (k) => Text(
                  '${k.keyType}:${k.keyValue}',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    decoration: k.retracted ? TextDecoration.lineThrough : null,
                  ),
                ),
              ),
              TableColumnSpec<EntityKey>(label: 'Role', cell: (k) => Text(wireLabel(k.role, k, 'role'))),
              TableColumnSpec<EntityKey>(
                label: 'Confidence',
                numeric: true,
                cell: (k) => Text(k.confidence.toStringAsFixed(2)),
              ),
              TableColumnSpec<EntityKey>(
                label: 'Origin',
                cell: (k) => Tooltip(message: k.originRef ?? '', child: Text(wireLabel(k.origin, k, 'origin'))),
              ),
              TableColumnSpec<EntityKey>(
                label: 'Valid',
                cell: (k) => Text(
                  '${utcText(k.validFrom)} to ${k.validTo == null ? 'now' : utcText(k.validTo!)}',
                  style: TextStyle(color: palette.muted),
                ),
              ),
              TableColumnSpec<EntityKey>(
                label: 'Actions',
                cell: (k) => k.retracted
                    ? Text('Retracted', style: TextStyle(color: palette.muted))
                    : TextButton(
                        key: Key('entity.key.retract.${k.id}'),
                        onPressed: () => setState(() => _confirmRetract = k.id),
                        child: const Text('Retract'),
                      ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text('Add a key', style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 8),
          Wrap(
            spacing: 12,
            runSpacing: 8,
            crossAxisAlignment: WrapCrossAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 180,
                child: DropdownButtonFormField<String>(
                  key: const Key('entity.key.type'),
                  isExpanded: true,
                  style: Theme.of(context).textTheme.bodyMedium,
                  initialValue: _draft.keyType,
                  decoration: const InputDecoration(labelText: 'Key type'),
                  items: withCurrentItem(<DropdownMenuItem<String>>[
                    for (final t in entityKeyTypes)
                      DropdownMenuItem<String>(value: t, child: Text(t)),
                  ], _draft.keyType),
                  onChanged: (t) => setState(() => _draft.keyType = t ?? _draft.keyType),
                ),
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  key: const Key('entity.key.value'),
                  controller: _value,
                  decoration: InputDecoration(
                    labelText: 'Value',
                    helperText: entityKeyHints[_draft.keyType],
                    helperMaxLines: 2,
                    errorText: _errors['keyValue'],
                    errorMaxLines: 2,
                  ),
                ),
              ),
              SizedBox(
                width: 140,
                child: TextField(
                  key: const Key('entity.key.confidence'),
                  controller: _confidence,
                  decoration: InputDecoration(
                    labelText: 'Confidence',
                    hintText: '1.0',
                    errorText: _errors['confidence'],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: FilledButton(
                  key: const Key('entity.key.add'),
                  onPressed: _write is WriteInProgress ? null : _add,
                  child: const Text('Add Key'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          if (_conflict) ...<Widget>[
            ResultPanel(
              title: 'That key is open on another entity',
              tone: StatusTone.warning,
              message:
                  'Moving it closes it there and opens it here. Records holding it will resolve to '
                  'this entity from now on.',
              // Its own Material, so the tile's ink shows over the panel's
              // background.
              child: Material(
                type: MaterialType.transparency,
                child: CheckboxListTile(
                  key: const Key('entity.key.force'),
                  contentPadding: EdgeInsets.zero,
                  controlAffinity: ListTileControlAffinity.leading,
                  title: const Text('Move the key here'),
                  value: _draft.force,
                  onChanged: (v) => setState(() => _draft.force = v ?? false),
                ),
              ),
            ),
            const SizedBox(height: 8),
          ],
          Align(
            alignment: Alignment.topLeft,
            child: WriteStatusLine(state: _write),
          ),
        ],
      ),
    );
  }
}

class _AliasesCard extends StatelessWidget {
  const _AliasesCard({required this.entity});

  final Entity entity;

  @override
  Widget build(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    return SectionCard(
      title: 'Aliases',
      child: DataTableCard<EntityAlias>(
        rows: entity.aliases?.toList() ?? const <EntityAlias>[],
        empty: 'No aliases.',
        columns: <TableColumnSpec<EntityAlias>>[
          TableColumnSpec<EntityAlias>(label: 'Alias', cell: (a) => Text(a.alias)),
          TableColumnSpec<EntityAlias>(label: 'Type', cell: (a) => Text(wireLabel(a.aliasType, a, 'aliasType'))),
          TableColumnSpec<EntityAlias>(label: 'Origin', cell: (a) => Text(wireLabel(a.origin, a, 'origin'))),
          TableColumnSpec<EntityAlias>(
            label: 'Valid',
            cell: (a) => Text(
              '${utcText(a.validFrom)} to ${a.validTo == null ? 'now' : utcText(a.validTo!)}',
              style: TextStyle(color: muted),
            ),
          ),
        ],
      ),
    );
  }
}

/// The source records linked to an entity (`listEntityRecords`).
class EntityRecordsCard extends ConsumerStatefulWidget {
  /// Creates the card for [entityId].
  const EntityRecordsCard({super.key, required this.entityId});

  /// The entity whose records are listed.
  final String entityId;

  @override
  ConsumerState<EntityRecordsCard> createState() => _EntityRecordsCardState();
}

class _EntityRecordsCardState extends ConsumerState<EntityRecordsCard> {
  bool _closed = false;

  @override
  Widget build(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    final key = (widget.entityId, _closed);
    return SectionCard(
      key: const Key('entity.records'),
      title: 'Records',
      subtitle: 'The latest record of each source identity linked to this entity.',
      actions: <Widget>[
        FilterChip(
          key: const Key('entity.records.closed'),
          label: const Text('Include closed links'),
          selected: _closed,
          onSelected: (v) => setState(() => _closed = v),
        ),
      ],
      child: AsyncView<EntityRecordList>(
        value: ref.watch(entityRecordsProvider(key)),
        onRetry: () => ref.invalidate(entityRecordsProvider(key)),
        data: (list) => DataTableCard<EntityRecord>(
          rows: list.items.toList(),
          empty: 'No linked records.',
          columns: <TableColumnSpec<EntityRecord>>[
            TableColumnSpec<EntityRecord>(
              label: 'Record',
              cell: (r) => ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 320),
                child: Text(
                  r.record.title ?? '${r.record.source_} · ${r.record.externalId}',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            TableColumnSpec<EntityRecord>(
              label: 'Source',
              cell: (r) =>
                  Text('${r.record.source_} · ${r.record.kind}', style: TextStyle(color: muted)),
            ),
            TableColumnSpec<EntityRecord>(
              label: 'Linked by',
              cell: (r) => Text('${r.link.keyType}:${r.link.keyValue}'),
            ),
            TableColumnSpec<EntityRecord>(
              label: 'Confidence',
              numeric: true,
              cell: (r) => Text(r.link.confidence.toStringAsFixed(2)),
            ),
            TableColumnSpec<EntityRecord>(
              label: 'Observed',
              cell: (r) => Text(utcText(r.record.observedAt), style: TextStyle(color: muted)),
            ),
            TableColumnSpec<EntityRecord>(
              label: 'Link',
              cell: (r) => r.link.validTo == null
                  ? const StatusLabel(label: 'Open', tone: StatusTone.ok)
                  : StatusLabel(
                      label: 'Closed ${utcText(r.link.validTo!)}',
                      tone: StatusTone.neutral,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Merges a duplicate into this entity (`mergeEntities`), asking first and
/// confirming that the duplicate now resolves here.
class EntityMergeCard extends ConsumerStatefulWidget {
  /// Creates the card for [entity].
  const EntityMergeCard({super.key, required this.entity});

  /// The entity that absorbs the other.
  final Entity entity;

  @override
  ConsumerState<EntityMergeCard> createState() => _EntityMergeCardState();
}

class _EntityMergeCardState extends ConsumerState<EntityMergeCard> {
  final TextEditingController _other = TextEditingController();
  bool _confirm = false;
  WriteState _write = const WriteIdle();

  @override
  void dispose() {
    _other.dispose();
    super.dispose();
  }

  Future<void> _merge() async {
    final other = _other.text.trim();
    final id = widget.entity.id;
    final entities = ref.read(foresignalApiProvider).getEntitiesApi();
    setState(() {
      _confirm = false;
      _write = const WriteInProgress();
    });
    try {
      await writeThenConfirm<Entity>(
        write: () => entities.mergeEntities(
          entityId: id,
          entityMergeInput: EntityMergeInput((b) => b.otherId = other),
        ),
        // A merged id resolves to the canonical entity.
        reread: () => callApiRequired(() => entities.getEntity(entityId: other)),
        confirm: (got) =>
            got.id == id || got.mergedInto == id ? null : 'the other entity does not resolve here',
      );
      if (!mounted) {
        return;
      }
      _other.clear();
      setState(() => _write = WriteConfirmed(DateTime.now()));
      ref
        ..invalidate(entityProvider(id))
        ..invalidate(entityProvider(other))
        ..invalidate(entitiesProvider);
    } on Object catch (e) {
      if (mounted) {
        setState(() => _write = WriteFailed(e));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.entity.mergedInto != null) {
      return const SizedBox.shrink();
    }
    final other = _other.text.trim();
    return SectionCard(
      key: const Key('entity.merge'),
      title: 'Merge a duplicate',
      subtitle:
          'Moves the other entity\'s keys, aliases and links here and marks it merged. Only an '
          'operator merges two anchored entities.',
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 320,
            child: TextField(
              key: const Key('entity.merge.other'),
              controller: _other,
              decoration: const InputDecoration(labelText: 'Other entity id'),
              onChanged: (_) => setState(() {
                _confirm = false;
                _write = const WriteIdle();
              }),
            ),
          ),
          const SizedBox(width: 12),
          if (!_confirm)
            TonalButton(
              key: const Key('entity.merge.start'),
              label: 'Merge…',
              onPressed: other.isEmpty || other == widget.entity.id
                  ? null
                  : () => setState(() => _confirm = true),
            )
          else ...<Widget>[
            DangerButton(
              key: const Key('entity.merge.confirm'),
              label: 'Merge $other here',
              onPressed: _merge,
            ),
            TextButton(
              onPressed: () => setState(() => _confirm = false),
              child: const Text('Cancel'),
            ),
          ],
          const SizedBox(width: 12),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: WriteStatusLine(state: _write),
            ),
          ),
        ],
      ),
    );
  }
}

/// Traces ownership and control (158): `ownershipChain` walks owners,
/// controllers, officers and affiliates up to six hops and names the nodes
/// two seeds share; `queryGraph` lists the one- or two-hop neighborhood.
class OwnershipExplorer extends ConsumerStatefulWidget {
  /// Creates the explorer, seeded with [initialRefs].
  const OwnershipExplorer({
    super.key,
    this.initialRefs = '',
    this.names = const <String, String>{},
  });

  /// Seed refs filled in at first.
  final String initialRefs;

  /// Names for refs the result may not title, such as the seed itself.
  final Map<String, String> names;

  @override
  ConsumerState<OwnershipExplorer> createState() => _OwnershipExplorerState();
}

class _OwnershipExplorerState extends ConsumerState<OwnershipExplorer> {
  final OwnershipQueryDraft _draft = OwnershipQueryDraft();
  late final TextEditingController _refs = TextEditingController(text: widget.initialRefs);
  final TextEditingController _depth = TextEditingController();
  final TextEditingController _min = TextEditingController();
  Map<String, String> _errors = const <String, String>{};
  bool _busy = false;
  Object? _result;

  @override
  void dispose() {
    _refs.dispose();
    _depth.dispose();
    _min.dispose();
    super.dispose();
  }

  Future<void> _run({required bool graph}) async {
    _draft
      ..refs = _refs.text
      ..depth = _depth.text
      ..minConfidence = _min.text;
    final errors = _draft.validate(graph: graph);
    setState(() {
      _errors = errors;
      _result = null;
    });
    if (errors.isNotEmpty) {
      return;
    }
    final api = ref.read(foresignalApiProvider);
    final objects = api.getObjectsApi();
    setState(() => _busy = true);
    try {
      final Object result = graph
          ? await callApiRequired(
              () => objects.queryGraph(
                graphRequest: fromJsonMap<GraphRequest>(api.serializers, _draft.graphJson()),
              ),
            )
          : await callApiRequired(
              () => objects.ownershipChain(
                ownershipChainRequest: fromJsonMap<OwnershipChainRequest>(
                  api.serializers,
                  _draft.chainJson(),
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
        setState(() => _busy = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      key: const Key('ownership'),
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Wrap(
          spacing: 12,
          runSpacing: 8,
          crossAxisAlignment: WrapCrossAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 420,
              child: TextField(
                key: const Key('ownership.refs'),
                controller: _refs,
                decoration: InputDecoration(
                  labelText: 'Seeds',
                  hintText: 'entity:<id>, or bare entity ids; two or more find shared owners',
                  errorText: _errors['refs'],
                ),
              ),
            ),
            SizedBox(
              width: 110,
              child: TextField(
                key: const Key('ownership.depth'),
                controller: _depth,
                decoration: InputDecoration(
                  labelText: 'Hops',
                  hintText: '3',
                  errorText: _errors['depth'],
                ),
              ),
            ),
            SizedBox(
              width: 150,
              child: DropdownButtonFormField<String>(
                key: const Key('ownership.direction'),
                isExpanded: true,
                style: Theme.of(context).textTheme.bodyMedium,
                initialValue: _draft.direction,
                decoration: const InputDecoration(labelText: 'Direction'),
                items: withCurrentItem(const <DropdownMenuItem<String>>[
                  DropdownMenuItem<String>(value: 'both', child: Text('Both ways')),
                  DropdownMenuItem<String>(value: 'out', child: Text('Toward owners')),
                  DropdownMenuItem<String>(value: 'in', child: Text('Toward holdings')),
                ], _draft.direction),
                onChanged: (v) => setState(() => _draft.direction = v ?? 'both'),
              ),
            ),
            SizedBox(
              width: 150,
              child: TextField(
                key: const Key('ownership.minConfidence'),
                controller: _min,
                decoration: InputDecoration(
                  labelText: 'Min confidence',
                  hintText: '0.5',
                  errorText: _errors['minConfidence'],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            for (final t in ownershipEdgeTypes)
              FilterChip(
                key: Key('ownership.type.$t'),
                label: Text(wireText(t)),
                selected: _draft.types.contains(t),
                onSelected: (on) =>
                    setState(() => on ? _draft.types.add(t) : _draft.types.remove(t)),
              ),
            const SizedBox(width: 12),
            FilledButton(
              key: const Key('ownership.chain'),
              onPressed: _busy ? null : () => _run(graph: false),
              child: const Text('Trace Chains'),
            ),
            TonalButton(
              key: const Key('ownership.graph'),
              label: 'Neighborhood',
              onPressed: _busy ? null : () => _run(graph: true),
            ),
          ],
        ),
        const SizedBox(height: 16),
        switch (_result) {
          null => const SizedBox.shrink(),
          final OwnershipChain c => _ChainView(chain: c, names: widget.names),
          final GraphResult g => _GraphView(graph: g),
          final Object e => ErrorBanner(error: e, title: 'The query was refused'),
        },
      ],
    );
  }
}

/// Opens an entity ref; other refs are shown as text.
Widget _refLink(BuildContext context, String ref, String label) {
  final id = entityIdOf(ref);
  if (id == null) {
    return Text(label);
  }
  return InkWell(
    onTap: () => context.go(vettingEntityPath(id)),
    child: Text(label, style: TextStyle(color: AdminPalette.of(context).primary)),
  );
}

class _ChainView extends StatelessWidget {
  const _ChainView({required this.chain, required this.names});

  final OwnershipChain chain;

  final Map<String, String> names;

  @override
  Widget build(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    final titles = <String, String>{
      ...names,
      for (final n in <OwnershipChainNode>[...chain.chains, ...chain.shared])
        n.node.ref: n.node.title,
    };
    String name(String ref) => titles[ref] ?? ref;
    Widget nodes(List<OwnershipChainNode> list, String empty) => DataTableCard<OwnershipChainNode>(
      rows: list,
      empty: empty,
      columns: <TableColumnSpec<OwnershipChainNode>>[
        TableColumnSpec<OwnershipChainNode>(
          label: 'Reached',
          cell: (n) => _refLink(context, n.node.ref, n.node.title),
        ),
        TableColumnSpec<OwnershipChainNode>(
          label: 'Weakest edge',
          cell: (n) => StatusLabel(
            label: wireLabel(n.weakestEdgeLabel, n, 'weakestEdgeLabel'),
            tone: edgeTone(wireOf(n.weakestEdgeLabel, n, 'weakestEdgeLabel')),
          ),
        ),
        TableColumnSpec<OwnershipChainNode>(
          label: 'Paths',
          cell: (n) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              for (final p in n.paths)
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 560),
                  child: Text(
                    <String>[name(p.from), for (final h in p.hops) name(h)].join(' → ') +
                        (p.relationTypes == null
                            ? ''
                            : '  (${p.relationTypes!.map(wireOf).join(', ')})'),
                    style: TextStyle(color: muted, fontSize: 12),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
    return Column(
      key: const Key('ownership.result'),
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        if (chain.refs.length > 1) ...<Widget>[
          Text('Shared by the seeds', style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 8),
          nodes(
            chain.shared.toList(),
            'The seeds share no owner, controller or affiliate within reach.',
          ),
          const SizedBox(height: 16),
        ],
        Text('Chains', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 8),
        nodes(chain.chains.toList(), 'Nothing is reachable along the chosen edges.'),
        if (chain.asOf != null || chain.generatedAt != null) ...<Widget>[
          const SizedBox(height: 6),
          Text(
            chain.asOf != null
                ? 'As of ${utcText(chain.asOf!)}'
                : 'Generated ${utcText(chain.generatedAt!)}',
            style: TextStyle(color: muted, fontSize: 12),
          ),
        ],
      ],
    );
  }
}

class _GraphView extends StatelessWidget {
  const _GraphView({required this.graph});

  final GraphResult graph;

  @override
  Widget build(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    final titles = <String, String>{for (final n in graph.nodes) n.ref: n.title};
    return Column(
      key: const Key('ownership.result'),
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          '${graph.nodes.length} nodes · ${graph.edges.length} relations'
          '${graph.truncated == true ? ' · truncated at the limit' : ''}'
          '${(graph.missing ?? const <String>[]).isEmpty ? '' : ' · not found: ${graph.missing!.join(', ')}'}',
          style: TextStyle(color: muted),
        ),
        const SizedBox(height: 8),
        DataTableCard<Relation>(
          rows: graph.edges.toList(),
          empty: 'No relations within reach.',
          columns: <TableColumnSpec<Relation>>[
            TableColumnSpec<Relation>(
              label: 'From',
              cell: (r) => _refLink(context, r.fromRef, titles[r.fromRef] ?? r.fromRef),
            ),
            TableColumnSpec<Relation>(
              label: 'Relation',
              cell: (r) => Text(wireText(r.type)),
            ),
            TableColumnSpec<Relation>(
              label: 'To',
              cell: (r) => _refLink(context, r.toRef, titles[r.toRef] ?? r.toRef),
            ),
            TableColumnSpec<Relation>(
              label: 'Confidence',
              numeric: true,
              cell: (r) => Text(r.confidence.toStringAsFixed(2)),
            ),
            TableColumnSpec<Relation>(
              label: 'Label',
              cell: (r) => StatusLabel(label: wireLabel(r.label, r, 'label'), tone: edgeTone(wireOf(r.label, r, 'label'))),
            ),
            TableColumnSpec<Relation>(
              label: 'Valid',
              cell: (r) => Text(
                '${utcText(r.validFrom)} to ${r.validTo == null ? 'now' : utcText(r.validTo!)}',
                style: TextStyle(color: muted),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
