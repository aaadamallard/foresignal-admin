import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/form_factor.dart';
import '../../core/routes.dart';
import '../../core/ui/ui.dart';
import 'source_filter.dart';
import 'source_providers.dart';
import 'source_widgets.dart';

/// The source catalog (Screens §B, mock B1): every registered source with its
/// enabled switch, health, credential state, interval and today's usage,
/// filtered by tab, search, kind, mode, credentials and health. Desktop adds
/// the bulk actions and opens a source's detail on tap; mobile browses,
/// enables and disables, and shows health.
class SourcesCatalogScreen extends ConsumerStatefulWidget {
  /// Creates the screen.
  const SourcesCatalogScreen({super.key});

  @override
  ConsumerState<SourcesCatalogScreen> createState() => _SourcesCatalogScreenState();
}

class _SourcesCatalogScreenState extends ConsumerState<SourcesCatalogScreen> {
  SourceFilter _filter = const SourceFilter();
  final Set<String> _toggling = <String>{};
  Object? _error;
  _BulkResult? _bulk;
  bool _bulkBusy = false;

  bool get _desktop => ref.read(formFactorProvider) == FormFactor.desktop;

  Future<void> _setEnabled(SourceSummary source, bool enabled) async {
    setState(() {
      _toggling.add(source.id);
      _error = null;
    });
    try {
      await ref.read(sourceWritesProvider).setEnabled(source.id, enabled: enabled);
    } on Object catch (error) {
      if (mounted) {
        setState(() => _error = error);
      }
    } finally {
      if (mounted) {
        setState(() => _toggling.remove(source.id));
        invalidateSources(ref, source.id);
      }
    }
  }

  Future<void> _runBulk(Future<_BulkResult> Function() action) async {
    setState(() {
      _bulkBusy = true;
      _bulk = null;
      _error = null;
    });
    try {
      final result = await action();
      if (mounted) {
        setState(() => _bulk = result);
      }
    } on Object catch (error) {
      if (mounted) {
        setState(() => _error = error);
      }
    } finally {
      if (mounted) {
        setState(() => _bulkBusy = false);
        invalidateSources(ref);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final sources = ref.watch(sourceListProvider);
    final health = ref.watch(sourceHealthProvider).value ?? const <String, SourceHealth>{};
    final writes = ref.read(sourceWritesProvider);
    return ListView(
      padding: EdgeInsets.all(_desktop ? 28 : 16),
      children: <Widget>[
        PageHeader(
          title: 'Sources',
          actions: <Widget>[
            if (_desktop) ...<Widget>[
              FilledButton.icon(
                key: const Key('sources.enableCore'),
                onPressed: _bulkBusy
                    ? null
                    : () => _runBulk(() async => _BulkResult.core(await writes.enableCore())),
                icon: const Icon(Icons.add, size: 18),
                label: const Text('Enable Core Sources'),
              ),
              FilledButton.icon(
                key: const Key('sources.enableFree'),
                onPressed: _bulkBusy
                    ? null
                    : () => _runBulk(() async => _BulkResult.free(await writes.enableFree())),
                icon: const Icon(Icons.add, size: 18),
                label: const Text('Enable Free Sources'),
              ),
            ],
            if (_desktop)
              OutlinedButton.icon(
                key: const Key('sources.custom'),
                onPressed: () => context.go(customSourcesPath),
                icon: const Icon(Icons.upload, size: 18),
                label: const Text('Custom Sources'),
              ),
            IconButton(
              key: const Key('sources.refresh'),
              tooltip: 'Refresh',
              onPressed: () => invalidateSources(ref),
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
        if (_bulk case final bulk?) ...<Widget>[
          ResultPanel(
            key: const Key('sources.bulkResult'),
            title: bulk.title,
            tone: bulk.count == 0 ? StatusTone.neutral : StatusTone.ok,
            details: <MapEntry<String, Object>>[
              if (bulk.enabled.isNotEmpty)
                MapEntry<String, Object>('Enabled', bulk.enabled.join(', ')),
              MapEntry<String, Object>('Left disabled', '${bulk.skipped} (${bulk.skippedReason})'),
            ],
          ),
          const SizedBox(height: 16),
        ],
        if (_error case final error?) ...<Widget>[
          ErrorBanner(error: error),
          const SizedBox(height: 16),
        ],
        AsyncView<List<SourceSummary>>(
          value: sources,
          onRetry: () => invalidateSources(ref),
          data: (list) => _catalog(context, list, health),
        ),
      ],
    );
  }

  Widget _catalog(
    BuildContext context,
    List<SourceSummary> list,
    Map<String, SourceHealth> health,
  ) {
    final counted = list.where(_filter.matchesIgnoringTab).toList();
    final rows = _filter.apply(list);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        DefaultTabController(
          length: EnabledFilter.values.length,
          initialIndex: _filter.enabled.index,
          child: TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            onTap: (i) =>
                setState(() => _filter = _filter.copyWith(enabled: EnabledFilter.values[i])),
            tabs: <Widget>[
              for (final tab in EnabledFilter.values)
                CountTab(
                  key: Key('sources.tab.${tab.name}'),
                  label: tab.label,
                  count: switch (tab) {
                    EnabledFilter.all => counted.length,
                    EnabledFilter.enabled => counted.where((s) => s.enabled).length,
                    EnabledFilter.disabled => counted.where((s) => !s.enabled).length,
                  },
                ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        _filters(list),
        const SizedBox(height: 16),
        if (_desktop) _table(context, rows, health) else _mobileList(context, rows, health),
      ],
    );
  }

  Widget _filters(List<SourceSummary> list) {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: <Widget>[
        SearchField(
          key: const Key('sources.search'),
          hint: 'Search sources…',
          width: _desktop ? 260 : double.infinity,
          onChanged: (q) => setState(() => _filter = _filter.copyWith(query: q)),
        ),
        FilterDropdown<String>(
          key: const Key('sources.filter.kind'),
          value: _filter.kind,
          options: <FilterOption<String>>[
            const FilterOption<String>(null, 'All kinds'),
            for (final kind in kindsOf(list)) FilterOption<String>(kind, kind),
          ],
          onChanged: (v) => setState(() => _filter = _filter.copyWith(kind: () => v)),
        ),
        if (_desktop)
          FilterDropdown<SourceSummaryModeEnum>(
            key: const Key('sources.filter.mode'),
            value: _filter.mode,
            options: <FilterOption<SourceSummaryModeEnum>>[
              const FilterOption<SourceSummaryModeEnum>(null, 'All modes'),
              for (final mode in SourceSummaryModeEnum.values)
                FilterOption<SourceSummaryModeEnum>(mode, _capitalized(mode.name)),
            ],
            onChanged: (v) => setState(() => _filter = _filter.copyWith(mode: () => v)),
          ),
        if (_desktop)
          FilterDropdown<CredentialState>(
            key: const Key('sources.filter.credentials'),
            value: _filter.credentials,
            options: <FilterOption<CredentialState>>[
              const FilterOption<CredentialState>(null, 'All credentials'),
              const FilterOption<CredentialState>(CredentialState.missing, 'Key not set'),
              const FilterOption<CredentialState>(CredentialState.set, 'Key set'),
              const FilterOption<CredentialState>(CredentialState.notNeeded, 'No key needed'),
            ],
            onChanged: (v) => setState(() => _filter = _filter.copyWith(credentials: () => v)),
          ),
        FilterDropdown<HealthStatus>(
          key: const Key('sources.filter.health'),
          value: _filter.health,
          options: <FilterOption<HealthStatus>>[
            const FilterOption<HealthStatus>(null, 'All health'),
            for (final status in HealthStatus.values)
              FilterOption<HealthStatus>(status, HealthLabel.labelOf(status)),
          ],
          onChanged: (v) => setState(() => _filter = _filter.copyWith(health: () => v)),
        ),
      ],
    );
  }

  Widget _enabledSwitch(SourceSummary s) {
    final busy = _toggling.contains(s.id);
    return Switch(
      key: Key('sources.enabled.${s.id}'),
      value: s.enabled,
      onChanged: busy ? null : (v) => _setEnabled(s, v),
    );
  }

  Widget _table(BuildContext context, List<SourceSummary> rows, Map<String, SourceHealth> health) {
    return DataTableCard<SourceSummary>(
      rows: rows,
      empty: 'No source matches these filters.',
      onTap: (s) => context.go(sourceDetailPath(s.id)),
      columns: <TableColumnSpec<SourceSummary>>[
        TableColumnSpec<SourceSummary>(label: 'Name', cell: (s) => Text(s.name)),
        TableColumnSpec<SourceSummary>(label: 'Kind', cell: (s) => Text(s.kinds.join(', '))),
        TableColumnSpec<SourceSummary>(label: 'Enabled', cell: _enabledSwitch),
        TableColumnSpec<SourceSummary>(
          label: 'Health',
          cell: (s) => HealthLabel(status: s.status, tooltip: healthTooltip(health[s.id])),
        ),
        TableColumnSpec<SourceSummary>(
          label: 'Credentials',
          cell: (s) => CredentialLabel(source: s),
        ),
        TableColumnSpec<SourceSummary>(
          label: 'Interval',
          cell: (s) => Text(intervalText(s.interval)),
        ),
        TableColumnSpec<SourceSummary>(
          label: 'Usage (today)',
          cell: (s) => Text(usageText(s.budgetUsedToday, s.budget)),
        ),
      ],
    );
  }

  Widget _mobileList(
    BuildContext context,
    List<SourceSummary> rows,
    Map<String, SourceHealth> health,
  ) {
    if (rows.isEmpty) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Text('No source matches these filters.'),
      );
    }
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          for (final s in rows)
            ListTile(
              key: Key('sources.row.${s.id}'),
              title: Text(s.name),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: HealthLabel(status: s.status, tooltip: healthTooltip(health[s.id])),
                ),
              ),
              trailing: _enabledSwitch(s),
            ),
        ],
      ),
    );
  }
}

String _capitalized(String s) => s.isEmpty ? s : '${s[0].toUpperCase()}${s.substring(1)}';

/// The result of a bulk enable, from either operation.
class _BulkResult {
  _BulkResult.core(EnableCoreSourcesResult r)
    : title = _title(r.count, 'core'),
      enabled = r.enabled.toList(),
      count = r.count,
      skipped = r.skipped,
      skippedReason = 'outside the core set, or waiting for a key or parameter';

  _BulkResult.free(EnableFreeSourcesResult r)
    : title = _title(r.count, 'free'),
      enabled = r.enabled.toList(),
      count = r.count,
      skipped = r.skipped,
      skippedReason = 'need a key or a parameter, or are held off by default';

  static String _title(int count, String set) => count == 0
      ? 'Every $set source was already enabled'
      : 'Enabled $count source${count == 1 ? '' : 's'}';

  final String title;
  final List<String> enabled;
  final int count;
  final int skipped;
  final String skippedReason;
}
