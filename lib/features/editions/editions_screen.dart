import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/routes.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_providers.dart' show Json;
import '../forecasting/forecasting_widgets.dart' show whenText;
import 'edition_providers.dart';

/// Reads an edition's last-run status to a chip tone.
StatusTone _runTone(Object? status) => switch (status) {
  'succeeded' => StatusTone.ok,
  'fallback' => StatusTone.warning,
  'failed' => StatusTone.error,
  'running' => StatusTone.info,
  _ => StatusTone.neutral,
};

/// The Editions section: the automated-newspaper editions the operator has
/// composed. Each row opens the composer.
class EditionsScreen extends ConsumerWidget {
  /// Creates the screen.
  const EditionsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        PageHeader(
          title: 'Editions',
          crumbs: const <Crumb>[Crumb('Editions')],
          subtitle: 'Automated newspaper editions: the feed and sources, sections, schedule, '
              'language, voice and preview. Open one to compose it, or create a new edition.',
          actions: <Widget>[
            FilledButton.icon(
              key: const Key('editions.new'),
              onPressed: () => context.go(editionNewPath),
              icon: const Icon(Icons.add),
              label: const Text('New Edition'),
            ),
          ],
        ),
        AsyncView<List<Json>>(
          value: ref.watch(editionListProvider),
          onRetry: () => ref.invalidate(editionListProvider),
          data: (editions) => DataTableCard<Json>(
            key: const Key('editions.table'),
            rows: editions,
            empty: 'No editions yet. Create one to start an automated newspaper.',
            onTap: (e) => context.go(editionDetailPath(e['id'] as String)),
            columns: <TableColumnSpec<Json>>[
              TableColumnSpec<Json>(
                label: 'Name',
                cell: (e) => Text(e['name'] as String? ?? '—'),
                sortBy: (e) => e['name'],
              ),
              TableColumnSpec<Json>(
                label: 'Status',
                cell: (e) => StatusChip(
                  label: e['enabled'] == true ? 'Enabled' : 'Paused',
                  tone: e['enabled'] == true ? StatusTone.ok : StatusTone.neutral,
                ),
              ),
              TableColumnSpec<Json>(
                label: 'Schedule',
                cell: (e) => Text(
                  '${e['schedule'] ?? '—'}  (${e['timezone'] ?? 'UTC'})',
                  style: const TextStyle(fontFeatures: <FontFeature>[FontFeature.tabularFigures()]),
                ),
              ),
              TableColumnSpec<Json>(
                label: 'Language',
                cell: (e) => Text(e['outputLanguage'] as String? ?? 'Owner default'),
              ),
              TableColumnSpec<Json>(
                label: 'Last run',
                cell: (e) => e['lastRunStatus'] == null
                    ? const Text('—')
                    : StatusChip(
                        label: '${e['lastRunStatus']}'
                            '${e['lastRunAt'] != null ? ' · ${whenText(e['lastRunAt'])}' : ''}',
                        tone: _runTone(e['lastRunStatus']),
                      ),
              ),
              TableColumnSpec<Json>(
                label: 'Owner',
                cell: (e) => Text(e['ownerUserId'] == null ? 'Shared' : 'User-owned'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
