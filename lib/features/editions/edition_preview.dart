import 'package:flutter/material.dart';

import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_providers.dart' show Json;

/// Maps a run status to a chip tone.
StatusTone runStatusTone(Object? status) => switch (status) {
  'succeeded' => StatusTone.ok,
  'fallback' => StatusTone.warning,
  'failed' => StatusTone.error,
  'running' => StatusTone.info,
  _ => StatusTone.neutral,
};

/// Renders a previewed or on-demand [run] (a `BriefingRun`) so the operator
/// sees the composed edition before enabling its schedule — "test before
/// trust". Honors the [edition]'s `includeProvenance` / `includeCorroboration`
/// flags (NP-007/NP-004), showing each citation's evidence when on.
class EditionPreviewCard extends StatelessWidget {
  /// Creates the card over [run] for [edition].
  const EditionPreviewCard({super.key, required this.run, required this.edition});

  /// The `BriefingRun` to render.
  final Json run;

  /// The edition it came from (for the badge flags).
  final Json edition;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final text = run['contentMarkdown'] as String? ?? '';
    final citations = <Json>[
      for (final c in (run['citations'] as List?) ?? const <Object?>[])
        if (c is Map) c.cast<String, Object?>(),
    ];
    final showProvenance = edition['includeProvenance'] == true;
    final showCorroboration = edition['includeCorroboration'] == true;
    final audio = (run['audio'] as Map?)?.cast<String, Object?>();
    return SectionCard(
      key: const Key('edition.preview.card'),
      title: 'Preview',
      subtitle: 'The composed edition from a sample run. Enabling the schedule is not required.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Wrap(
            spacing: 8,
            runSpacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: <Widget>[
              StatusChip(
                key: const Key('edition.preview.status'),
                label: 'Run ${run['status'] ?? 'unknown'}',
                tone: runStatusTone(run['status']),
              ),
              if (run['mode'] != null) StatusChip(label: 'Mode: ${run['mode']}', tone: StatusTone.neutral),
              if (audio != null)
                StatusChip(
                  key: const Key('edition.preview.audio'),
                  label: 'Spoken edition (${audio['format'] ?? 'mp3'})',
                  tone: StatusTone.info,
                ),
              if (run['breaking'] != null)
                const StatusChip(
                  key: Key('edition.preview.breaking'),
                  label: 'Breaking-news edition',
                  tone: StatusTone.warning,
                ),
            ],
          ),
          if (run['error'] != null) ...<Widget>[
            const SizedBox(height: 12),
            ErrorBanner(error: run['error']!, title: 'The run reported a problem'),
          ],
          const SizedBox(height: 12),
          Container(
            key: const Key('edition.preview.text'),
            constraints: const BoxConstraints(maxHeight: 420),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AdminPalette.of(context).input,
              borderRadius: BorderRadius.circular(8),
            ),
            child: SingleChildScrollView(
              child: SelectableText(
                text.isEmpty ? 'The run produced no text.' : text,
                style: theme.textTheme.bodyMedium?.copyWith(height: 1.4),
              ),
            ),
          ),
          if (citations.isNotEmpty) ...<Widget>[
            const SizedBox(height: 16),
            Text('Items (${citations.length})', style: theme.textTheme.titleSmall),
            const SizedBox(height: 4),
            for (final c in citations)
              Padding(
                key: Key('edition.preview.citation.${c['id'] ?? c['seq']}'),
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '${c['seq'] != null ? '[${c['seq']}] ' : ''}${c['title'] ?? c['id'] ?? 'Item'}'
                      '${c['type'] != null ? '  ·  ${c['type']}' : ''}',
                      style: theme.textTheme.bodyMedium,
                    ),
                    if (showProvenance && c['provenance'] != null)
                      Text(
                        'Why: ${c['provenance']}',
                        key: Key('edition.preview.provenance.${c['id'] ?? c['seq']}'),
                        style: theme.textTheme.bodySmall?.copyWith(color: AdminPalette.of(context).muted),
                      ),
                    if (showCorroboration && c['corroboration'] != null)
                      Text(
                        'Corroboration: ${c['corroboration']}',
                        key: Key('edition.preview.corroboration.${c['id'] ?? c['seq']}'),
                        style: theme.textTheme.bodySmall?.copyWith(color: AdminPalette.of(context).muted),
                      ),
                  ],
                ),
              ),
          ],
        ],
      ),
    );
  }
}
