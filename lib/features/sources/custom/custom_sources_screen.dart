import 'package:built_value/serializer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../api/api.dart';
import '../../../core/routes.dart';
import '../../../core/ui/ui.dart';
import '../source_providers.dart';
import '../source_test_results.dart';
import 'custom_source_draft.dart';
import 'custom_source_form.dart';

/// Every custom push source (`listCustomSources`).
final customSourcesProvider = FutureProvider<List<CustomSource>>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  final list = await callApiRequired(() => api.getIngestApi().listCustomSources());
  return list.toList()..sort((a, b) => a.name.compareTo(b.name));
});

/// The ingest formats a custom source accepts (`listIngestFormats`).
final ingestFormatsProvider = FutureProvider<List<IngestFormatInfo>>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  final list = await callApiRequired(() => api.getIngestApi().listIngestFormats());
  return list.where((f) => f.reserved != true).toList();
});

/// Custom push sources (Screens §B "Custom push sources & device keys"):
/// the list, a form to create one (its ingest key is shown once), and the
/// ingest formats they accept.
class CustomSourcesScreen extends ConsumerStatefulWidget {
  /// Creates the screen.
  const CustomSourcesScreen({super.key});

  @override
  ConsumerState<CustomSourcesScreen> createState() => _CustomSourcesScreenState();
}

class _CustomSourcesScreenState extends ConsumerState<CustomSourcesScreen> {
  bool _creating = false;
  CustomSourceCreated? _created;

  @override
  Widget build(BuildContext context) {
    final api = ref.watch(foresignalApiProvider);
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        PageHeader(
          title: 'Custom push sources',
          crumbs: const <Crumb>[Crumb('Sources', sourcesPath), Crumb('Custom push sources')],
          subtitle: 'Inbound webhooks and remote stations that push records to this instance.',
          actions: <Widget>[
            if (!_creating)
              FilledButton.icon(
                key: const Key('custom.new'),
                onPressed: () => setState(() {
                  _creating = true;
                  _created = null;
                }),
                icon: const Icon(Icons.add, size: 18),
                label: const Text('New Custom Source'),
              ),
          ],
        ),
        if (_created case final created?) ...<Widget>[
          OneTimeSecret(
            label: 'Ingest key for ${created.name}',
            secret: created.ingestKey,
            onDismiss: () => setState(() => _created = null),
            extra: (_) => TextButton(
              onPressed: () => context.go(customSourcePath(created.id)),
              child: Text('Open ${created.id}'),
            ),
          ),
          const SizedBox(height: 16),
        ],
        if (_creating) ...<Widget>[
          SectionCard(
            title: 'New custom source',
            actions: <Widget>[
              TextButton(
                onPressed: () => setState(() => _creating = false),
                child: const Text('Cancel'),
              ),
            ],
            child: CustomSourceForm(
              draft: CustomSourceDraft.create(api.serializers),
              saveLabel: 'Create',
              onSave: (draft) async {
                final created = await callApiRequired(
                  () => api.getIngestApi().createCustomSource(customSourceInput: draft.toInput()),
                );
                // Confirm by reading it back from the list.
                ref
                  ..invalidate(customSourcesProvider)
                  ..invalidate(sourceListProvider);
                final list = await ref.read(customSourcesProvider.future);
                if (!list.any((s) => s.id == created.id)) {
                  throw WriteNotConfirmedException('${created.id} is not in the list');
                }
                if (mounted) {
                  setState(() {
                    _creating = false;
                    _created = created;
                  });
                }
              },
            ),
          ),
          const SizedBox(height: 16),
        ],
        AsyncView<List<CustomSource>>(
          value: ref.watch(customSourcesProvider),
          onRetry: () => ref.invalidate(customSourcesProvider),
          data: (list) => DataTableCard<CustomSource>(
            rows: list,
            empty: 'No custom source yet.',
            onTap: (s) => context.go(customSourcePath(s.id)),
            columns: <TableColumnSpec<CustomSource>>[
              TableColumnSpec<CustomSource>(label: 'Name', cell: (s) => Text(s.name)),
              TableColumnSpec<CustomSource>(label: 'ID', cell: (s) => Text(s.id)),
              TableColumnSpec<CustomSource>(label: 'Kinds', cell: (s) => Text(s.kinds.join(', '))),
              TableColumnSpec<CustomSource>(
                label: 'Key',
                cell: (s) => Text(s.ingestKeyPrefix == null ? '—' : '${s.ingestKeyPrefix}…'),
              ),
              TableColumnSpec<CustomSource>(
                label: 'Last push',
                cell: (s) => Text(utcText(s.lastIngestAt)),
              ),
              TableColumnSpec<CustomSource>(
                label: 'Private',
                cell: (s) => Text((s.private ?? false) ? 'Yes' : 'No'),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        Text('Ingest formats', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 8),
        AsyncView<List<IngestFormatInfo>>(
          value: ref.watch(ingestFormatsProvider),
          onRetry: () => ref.invalidate(ingestFormatsProvider),
          data: (formats) => DataTableCard<IngestFormatInfo>(
            rows: formats,
            columns: <TableColumnSpec<IngestFormatInfo>>[
              TableColumnSpec<IngestFormatInfo>(label: 'Format', cell: (f) => Text(f.id)),
              TableColumnSpec<IngestFormatInfo>(
                label: 'Description',
                cell: (f) => ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 420),
                  child: Text(f.description ?? '—', maxLines: 2, overflow: TextOverflow.ellipsis),
                ),
              ),
              TableColumnSpec<IngestFormatInfo>(
                label: 'Methods',
                cell: (f) => Text(f.methods?.map((m) => m.name).join(', ') ?? 'POST'),
              ),
              TableColumnSpec<IngestFormatInfo>(
                label: 'Verifiers',
                cell: (f) => Text(
                  f.verifiers
                          ?.map(
                            (v) => api.serializers.serialize(
                              v,
                              specifiedType: const FullType(IngestFormatInfoVerifiersEnum),
                            ),
                          )
                          .join(', ') ??
                      '—',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
