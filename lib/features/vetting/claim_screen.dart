import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../sources/source_test_results.dart';
import 'entity_screen.dart';
import 'vetting_providers.dart';
import 'vetting_screen.dart';

/// One claim: the neutral restatement, how it was graded, and every
/// comparison against independent evidence.
class ClaimScreen extends ConsumerWidget {
  /// Creates the page for [claimId].
  const ClaimScreen({super.key, required this.claimId});

  /// The claim shown.
  final String claimId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final muted = AdminPalette.of(context).muted;
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        AsyncView<Claim>(
          value: ref.watch(claimProvider(claimId)),
          onRetry: () => ref.invalidate(claimProvider(claimId)),
          data: (c) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              PageHeader(
                title: c.restatement ?? wireText(c.type),
                crumbs: <Crumb>[
                  const Crumb('Vetting', vettingPath),
                  const Crumb('Claims'),
                  Crumb(shortId(c.id)),
                ],
                subtitle:
                    '${c.type} · ${c.signalFamily} · ${c.extraction == ClaimExtractionEnum.llm ? 'extracted by an LLM' : 'extracted by rule'}',
                titleTrailing: <Widget>[
                  StatusLabel(
                    key: const Key('claim.status'),
                    label: wireLabel(c.status),
                    tone: vettingTone(wireOf(c.status)),
                  ),
                ],
              ),
              SectionCard(
                title: 'Claim',
                subtitle:
                    'A report, not an observation: what posts said, restated without the framing.',
                child: KeyValueList(
                  entries: <MapEntry<String, Object>>[
                    MapEntry<String, Object>(
                      'Polarity',
                      '${wireLabel(c.polarity)}${c.hedged ? ', hedged' : ''}',
                    ),
                    if (c.actor case final a?) MapEntry<String, Object>('Actor', a),
                    if (c.place case final p?)
                      MapEntry<String, Object>(
                        'Place',
                        '${p.name}${p.regionCode == null ? '' : ' (${p.regionCode})'} · ${wireLabel(p.precision)} · '
                            '${p.confidence.toStringAsFixed(2)}',
                      ),
                    if (c.eventTime case final t?)
                      MapEntry<String, Object>(
                        'Event time',
                        '${utcText(t.from)}${t.to == null ? '' : ' to ${utcText(t.to!)}'} · ${t.precision}',
                      ),
                    MapEntry<String, Object>('First observed', utcText(c.firstObservedAt)),
                    MapEntry<String, Object>(
                      'Support',
                      '${c.supportCount} posts in ${c.evidenceGroupCount} independent groups',
                    ),
                    MapEntry<String, Object>('Confidence', c.confidence.toStringAsFixed(2)),
                    if (c.framingLabel case final f?)
                      MapEntry<String, Object>(
                        'Framing',
                        StatusLabel(
                          label:
                              '${wireLabel(f)}${c.framingScore == null ? '' : ' ${c.framingScore!.toStringAsFixed(2)}'}',
                          tone: framingTone(wireOf(f)),
                        ),
                      ),
                    if (c.entityRefs case final refs? when refs.isNotEmpty)
                      MapEntry<String, Object>(
                        'Entities',
                        Wrap(
                          spacing: 12,
                          children: <Widget>[
                            for (final r in refs)
                              entityIdOf(r) == null
                                  ? Text(r)
                                  : InkWell(
                                      onTap: () => context.go(vettingEntityPath(entityIdOf(r)!)),
                                      child: Text(
                                        r,
                                        style: TextStyle(color: AdminPalette.of(context).primary),
                                      ),
                                    ),
                          ],
                        ),
                      ),
                    MapEntry<String, Object>('Narrative', c.narrativeId),
                    MapEntry<String, Object>('Manifest', c.manifestId),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              SectionCard(
                key: const Key('claim.grade'),
                title: 'Source grade ${c.grade}',
                subtitle:
                    'Admiralty grading: source reliability ${wireOf(c.sourceReliability)}, information '
                    'credibility ${c.informationCredibility}.',
                child: c.reputation == null
                    ? Text(
                        'No outlet rating applies to this claim.',
                        style: TextStyle(color: muted),
                      )
                    : KeyValueList(
                        entries: <MapEntry<String, Object>>[
                          MapEntry<String, Object>('Outlet', c.reputation!.outletId),
                          MapEntry<String, Object>('Factuality', c.reputation!.factuality),
                          MapEntry<String, Object>('Lean', c.reputation!.lean ?? '—'),
                          MapEntry<String, Object>(
                            'State-affiliated',
                            c.reputation!.stateAffiliated ? 'Yes' : 'No',
                          ),
                        ],
                      ),
              ),
              const SizedBox(height: 16),
              SectionCard(
                title: 'Comparisons',
                subtitle:
                    'Whether independent physical evidence was found where and when the claim says.',
                child: AsyncView<List<SocialComparison>>(
                  value: ref.watch(claimComparisonsProvider(c.id)),
                  onRetry: () => ref.invalidate(claimComparisonsProvider(c.id)),
                  data: (list) => Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      if (list.isEmpty) Text('Not compared yet.', style: TextStyle(color: muted)),
                      for (final s in list) _ComparisonCard(comparison: s),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ComparisonCard extends StatelessWidget {
  const _ComparisonCard({required this.comparison});

  final SocialComparison comparison;

  @override
  Widget build(BuildContext context) {
    final s = comparison;
    final muted = AdminPalette.of(context).muted;
    final l = s.leadTimes;
    return Padding(
      key: Key('claim.comparison.${s.id}'),
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              StatusLabel(label: wireLabel(s.status), tone: vettingTone(wireOf(s.status))),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  '${s.signalFamily} at ${s.place.name} · ${utcText(s.window.start)} to ${s.window.end == null ? 'now' : utcText(s.window.end!)} · '
                  'revision ${s.revision}${s.finalAt == null ? '' : ', final'}',
                  style: TextStyle(color: muted),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          KeyValueList(
            entries: <MapEntry<String, Object>>[
              MapEntry<String, Object>(
                'Could see absence',
                '${s.detectability.ok ? 'Yes' : 'No'} · p ${s.detectability.p.toStringAsFixed(2)} '
                    '(${s.detectability.lo.toStringAsFixed(2)}–${s.detectability.hi.toStringAsFixed(2)})'
                    '${s.detectability.reason == null ? '' : ' · ${s.detectability.reason}'}',
              ),
              MapEntry<String, Object>(
                'Lead',
                'over physical ${leadText(l.leadOverPhysicalSeconds)} · news ${leadText(l.leadOverNewsSeconds)} · '
                    'official ${leadText(l.leadOverOfficialSeconds)}',
              ),
              if (s.contradiction case final x?)
                MapEntry<String, Object>('Contradicted by', '${wireLabel(x.reason)} · ${x.ref}'),
              MapEntry<String, Object>('Found by', wireLabel(s.foundBy)),
            ],
          ),
          if (s.physicalEvidence.isNotEmpty) ...<Widget>[
            const SizedBox(height: 8),
            DataTableCard<SocialPhysicalEvidence>(
              rows: s.physicalEvidence.toList(),
              empty: '',
              columns: <TableColumnSpec<SocialPhysicalEvidence>>[
                TableColumnSpec<SocialPhysicalEvidence>(
                  label: 'Evidence',
                  cell: (e) => Text(e.ref),
                ),
                TableColumnSpec<SocialPhysicalEvidence>(
                  label: 'Family',
                  cell: (e) => Text(e.family),
                ),
                TableColumnSpec<SocialPhysicalEvidence>(
                  label: 'Originator',
                  cell: (e) => Text(e.originator),
                ),
                TableColumnSpec<SocialPhysicalEvidence>(
                  label: 'First observed',
                  cell: (e) => Text(utcText(e.firstObservedAt)),
                ),
                TableColumnSpec<SocialPhysicalEvidence>(
                  label: 'Distance',
                  numeric: true,
                  cell: (e) =>
                      Text(e.distanceKm == null ? '—' : '${e.distanceKm!.toStringAsFixed(1)} km'),
                ),
                TableColumnSpec<SocialPhysicalEvidence>(
                  label: 'Bearing',
                  cell: (e) => e.negates == true
                      ? const StatusLabel(label: 'Negates', tone: StatusTone.error)
                      : const StatusLabel(label: 'Supports', tone: StatusTone.ok),
                ),
              ],
            ),
          ],
          for (final c in s.caveats ?? const <Caveat>[])
            Text('${c.code}: ${c.text}', style: TextStyle(color: muted, fontSize: 12)),
        ],
      ),
    );
  }
}
