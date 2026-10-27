import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/format/money_text.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../sources/source_test_results.dart';
import 'entity_screen.dart';
import 'path_form.dart';
import 'vetting_drafts.dart';
import 'vetting_providers.dart';

/// The tabs of the Vetting section (mocks E3 and E4).
enum VettingTab {
  /// Extracted claims (E3).
  claims('Claims'),

  /// Narratives.
  narratives('Narratives'),

  /// Social–physical comparisons.
  comparisons('Comparisons'),

  /// Social cues.
  cues('Cues'),

  /// Lead-time statistics.
  leadTimes('Lead Times'),

  /// Platform adapters.
  platforms('Platforms'),

  /// Media ratings import.
  ratings('Media Ratings'),

  /// Social settings.
  settings('Settings'),

  /// Entity resolution (E4).
  entities('Entities'),

  /// The ownership-chain explorer (158).
  ownership('Ownership');

  const VettingTab(this.label);

  /// The tab text.
  final String label;
}

/// The tone of a claim, narrative or comparison status.
StatusTone vettingTone(String wire) => switch (wire) {
  'corroborated' || 'done' || 'enabled' => StatusTone.ok,
  'contradicted' || 'failed' || 'budget-refused' || 'unavailable' => StatusTone.error,
  'pending' ||
  'mixed' ||
  'running' ||
  'queued' ||
  'degraded' ||
  'budget-exhausted' ||
  'credentials-required' => StatusTone.warning,
  'unobserved' || 'insufficient-coverage' => StatusTone.info,
  _ => StatusTone.neutral,
};

/// The tone of a framing label: neutral, charged or inflammatory.
StatusTone framingTone(String? label) => switch (label) {
  'inflammatory' => StatusTone.error,
  'charged' => StatusTone.warning,
  'neutral' => StatusTone.ok,
  _ => StatusTone.neutral,
};

/// The out-of-sample sentence for a `LeadTimeStats.trainingCutoff`, which is
/// null until a comparison has been evaluated.
String leadTimeCutoffText(DateTime? cutoff) => cutoff == null
    ? 'No comparison has been evaluated yet, so there is no out-of-sample cut-off.'
    : 'Comparisons evaluated after ${utcText(cutoff)} are out of sample.';

/// A lead in seconds as `+2h 10m` (social first) or `−35m`.
String leadText(num? seconds) {
  if (seconds == null) {
    return '—';
  }
  final sign = seconds < 0 ? '−' : '+';
  final total = seconds.abs().round();
  final h = total ~/ 3600;
  final m = (total % 3600) ~/ 60;
  if (h == 0 && m == 0) {
    return '$sign${total}s';
  }
  return '$sign${h > 0 ? '${h}h ' : ''}${m}m'.replaceAll(' 0m', '');
}

/// The first eight characters of an id, for tables.
String shortId(String id) => id.length > 8 ? '${id.substring(0, 8)}…' : id;

/// Social and news vetting, entity resolution and ownership chains
/// (Screens §E, desktop).
class VettingScreen extends ConsumerStatefulWidget {
  /// Creates the screen, opening [initialTab].
  const VettingScreen({super.key, this.initialTab = VettingTab.claims});

  /// The tab shown first.
  final VettingTab initialTab;

  @override
  ConsumerState<VettingScreen> createState() => _VettingScreenState();
}

class _VettingScreenState extends ConsumerState<VettingScreen> {
  late VettingTab _tab = widget.initialTab;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        const PageHeader(
          title: 'Vetting',
          subtitle:
              'The fact, not the hype: claims as neutral restatements graded by source, and '
              'the identities every graph rests on.',
        ),
        DefaultTabController(
          length: VettingTab.values.length,
          initialIndex: _tab.index,
          child: TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            onTap: (i) => setState(() => _tab = VettingTab.values[i]),
            tabs: <Widget>[
              for (final tab in VettingTab.values)
                Tab(key: Key('vetting.tab.${tab.name}'), text: tab.label),
            ],
          ),
        ),
        const SizedBox(height: 20),
        switch (_tab) {
          VettingTab.claims => const ClaimsPanel(),
          VettingTab.narratives => const NarrativesPanel(),
          VettingTab.comparisons => const ComparisonsPanel(),
          VettingTab.cues => const CuesPanel(),
          VettingTab.leadTimes => const LeadTimesPanel(),
          VettingTab.platforms => const PlatformsPanel(),
          VettingTab.ratings => const RatingsImportCard(),
          VettingTab.settings => const SocialSettingsPanel(),
          VettingTab.entities => const EntitiesPanel(),
          VettingTab.ownership => const SectionCard(
            title: 'Ownership chains',
            subtitle:
                'Who owns, controls, directs or is affiliated with an entity. Trace Chains walks up '
                'to six hops and, given two or more seeds, names what they share; Neighborhood lists '
                'every relation within two hops.',
            child: OwnershipExplorer(),
          ),
        },
      ],
    );
  }
}

/// The claims AI extracted (mock E3): the neutral restatement, the framing
/// score and the source grade with any outlet reputation — never the raw
/// post.
class ClaimsPanel extends ConsumerStatefulWidget {
  /// Creates the panel.
  const ClaimsPanel({super.key});

  @override
  ConsumerState<ClaimsPanel> createState() => _ClaimsPanelState();
}

class _ClaimsPanelState extends ConsumerState<ClaimsPanel> {
  ClaimFilter _filter = const ClaimFilter();
  final TextEditingController _type = TextEditingController();

  static const List<String> _statuses = <String>[
    'unassessed',
    'pending',
    'corroborated',
    'unobserved',
    'contradicted',
    'insufficient-coverage',
  ];

  @override
  void dispose() {
    _type.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Wrap(
          spacing: 8,
          runSpacing: 8,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            for (final s in _statuses)
              FilterChip(
                key: Key('vetting.claims.status.$s'),
                label: Text(wireText(s)),
                selected: _filter.statuses.contains(s),
                onSelected: (on) => setState(
                  () => _filter = ClaimFilter(
                    statuses: on
                        ? <String>{..._filter.statuses, s}
                        : (<String>{..._filter.statuses}..remove(s)),
                    type: _filter.type,
                  ),
                ),
              ),
            SizedBox(
              width: 220,
              child: TextField(
                key: const Key('vetting.claims.type'),
                controller: _type,
                decoration: const InputDecoration(hintText: 'Claim type', isDense: true),
                onSubmitted: (t) => setState(
                  () => _filter = ClaimFilter(
                    statuses: _filter.statuses,
                    type: t.trim().isEmpty ? null : t.trim(),
                  ),
                ),
              ),
            ),
            IconButton(
              tooltip: 'Refresh',
              onPressed: () => ref.invalidate(claimsProvider(_filter)),
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
        const SizedBox(height: 16),
        AsyncView<ClaimPage>(
          value: ref.watch(claimsProvider(_filter)),
          onRetry: () => ref.invalidate(claimsProvider(_filter)),
          data: (page) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              DataTableCard<Claim>(
                key: const Key('vetting.claims'),
                rows: page.items.toList(),
                empty: 'No claims match these filters. Widen the status or clear Claim type to see more.',
                onTap: (c) => context.go(vettingClaimPath(c.id)),
                columns: <TableColumnSpec<Claim>>[
                  TableColumnSpec<Claim>(
                    label: 'Claim',
                    cell: (c) => ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 420),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            c.restatement ??
                                '${wireText(c.type)}${c.place == null ? '' : ' · ${c.place!.name}'}',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            '${wireLabel(c.polarity, c, 'polarity')}${c.hedged ? ' · hedged' : ''} · ${c.type}',
                            style: TextStyle(color: muted, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  TableColumnSpec<Claim>(
                    label: 'Source',
                    cell: (c) => Tooltip(
                      message: c.reputation == null
                          ? 'Admiralty grade: source reliability and information credibility'
                          : 'Rated outlet ${c.reputation!.outletId}: factuality ${c.reputation!.factuality}'
                                '${c.reputation!.lean == null ? '' : ', ${c.reputation!.lean} lean'}'
                                '${c.reputation!.stateAffiliated ? ', state media' : ''}',
                      child: Text(
                        '${c.grade}${c.reputation == null ? '' : ' · ${c.reputation!.outletId}'}',
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  TableColumnSpec<Claim>(
                    label: 'Framing',
                    cell: (c) => c.framingLabel == null
                        ? Text('—', style: TextStyle(color: muted))
                        : StatusLabel(
                            label:
                                '${wireLabel(c.framingLabel!, c, 'framingLabel')} ${c.framingScore?.toStringAsFixed(2) ?? ''}',
                            tone: framingTone(wireOf(c.framingLabel!, c, 'framingLabel')),
                          ),
                  ),
                  TableColumnSpec<Claim>(
                    label: 'Confidence',
                    numeric: true,
                    cell: (c) => Text(c.confidence.toStringAsFixed(2)),
                  ),
                  TableColumnSpec<Claim>(
                    label: 'Support',
                    numeric: true,
                    cell: (c) => Text('${c.supportCount} / ${c.evidenceGroupCount}'),
                  ),
                  TableColumnSpec<Claim>(
                    label: 'Status',
                    cell: (c) => StatusLabel(
                      label: wireLabel(c.status, c, 'status'),
                      tone: vettingTone(wireOf(c.status, c, 'status')),
                    ),
                  ),
                  TableColumnSpec<Claim>(
                    label: 'Actions',
                    cell: (c) => TonalButton(
                      key: Key('vetting.claim.${c.id}'),
                      label: 'View',
                      onPressed: () => context.go(vettingClaimPath(c.id)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                'Claims are reports, not observations. Support is posts / independent evidence groups.'
                '${page.nextCursor == null ? '' : ' Showing the 200 newest.'}',
                style: TextStyle(color: muted, fontSize: 12),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/// Narratives (`listNarratives`).
class NarrativesPanel extends ConsumerWidget {
  /// Creates the panel.
  const NarrativesPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final muted = AdminPalette.of(context).muted;
    return AsyncView<List<NarrativeSummary>>(
      value: ref.watch(narrativesProvider),
      onRetry: () => ref.invalidate(narrativesProvider),
      data: (list) => DataTableCard<NarrativeSummary>(
        key: const Key('vetting.narratives'),
        rows: list,
        empty: 'No narratives yet. Collected social posts group into narratives here.',
        columns: <TableColumnSpec<NarrativeSummary>>[
          TableColumnSpec<NarrativeSummary>(
            label: 'Narrative',
            cell: (n) => ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 380),
              child: Text(n.title, maxLines: 2, overflow: TextOverflow.ellipsis),
            ),
          ),
          TableColumnSpec<NarrativeSummary>(
            label: 'Platforms',
            cell: (n) =>
                Text(n.platforms.map((p) => p.platform).join(', '), style: TextStyle(color: muted)),
          ),
          TableColumnSpec<NarrativeSummary>(label: 'State', cell: (n) => Text(wireLabel(n.state, n, 'state'))),
          TableColumnSpec<NarrativeSummary>(
            label: 'Status',
            cell: (n) =>
                StatusLabel(label: wireLabel(n.status, n, 'status'), tone: vettingTone(wireOf(n.status, n, 'status'))),
          ),
          TableColumnSpec<NarrativeSummary>(
            label: 'Posts · authors · groups',
            numeric: true,
            cell: (n) => Text('${n.postCount} · ${n.uniqueAuthors} · ${n.evidenceGroupCount}'),
          ),
          TableColumnSpec<NarrativeSummary>(
            label: 'Origin concentration',
            numeric: true,
            cell: (n) => Text('${(n.originConcentration * 100).round()}%'),
          ),
          TableColumnSpec<NarrativeSummary>(
            label: 'Coordination',
            cell: (n) => n.coordinationIndicatorsPresent == true
                ? const StatusLabel(label: 'Indicators', tone: StatusTone.warning)
                : Text('—', style: TextStyle(color: muted)),
          ),
          TableColumnSpec<NarrativeSummary>(
            label: 'Last activity',
            cell: (n) => Text(utcText(n.lastActivityAt), style: TextStyle(color: muted)),
          ),
        ],
      ),
    );
  }
}

/// Social–physical comparisons (`listSocialComparisons`).
class ComparisonsPanel extends ConsumerWidget {
  /// Creates the panel.
  const ComparisonsPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final muted = AdminPalette.of(context).muted;
    return AsyncView<List<SocialComparison>>(
      value: ref.watch(comparisonsProvider),
      onRetry: () => ref.invalidate(comparisonsProvider),
      data: (list) => DataTableCard<SocialComparison>(
        key: const Key('vetting.comparisons'),
        rows: list,
        empty: 'No comparisons yet. The engine compares claims with physical evidence and lists each one here.',
        onTap: (c) => context.go(vettingClaimPath(c.claimId)),
        columns: <TableColumnSpec<SocialComparison>>[
          TableColumnSpec<SocialComparison>(label: 'Claim', cell: (c) => Text(shortId(c.claimId))),
          TableColumnSpec<SocialComparison>(label: 'Family', cell: (c) => Text(c.signalFamily)),
          TableColumnSpec<SocialComparison>(label: 'Place', cell: (c) => Text(c.place.name)),
          TableColumnSpec<SocialComparison>(
            label: 'Status',
            cell: (c) =>
                StatusLabel(label: wireLabel(c.status, c, 'status'), tone: vettingTone(wireOf(c.status, c, 'status'))),
          ),
          TableColumnSpec<SocialComparison>(
            label: 'Could see absence',
            cell: (c) => Tooltip(
              message: c.detectability.reason ?? '',
              child: Text(
                '${c.detectability.ok ? 'Yes' : 'No'} · p ${c.detectability.p.toStringAsFixed(2)}',
                style: TextStyle(color: muted),
              ),
            ),
          ),
          TableColumnSpec<SocialComparison>(
            label: 'Found by',
            cell: (c) => Text(wireLabel(c.foundBy, c, 'foundBy')),
          ),
          TableColumnSpec<SocialComparison>(
            label: 'Evaluated',
            cell: (c) =>
                Text('${utcText(c.evaluatedAt)} · r${c.revision}', style: TextStyle(color: muted)),
          ),
        ],
      ),
    );
  }
}

/// Social cues (`listSocialCues`).
class CuesPanel extends ConsumerWidget {
  /// Creates the panel.
  const CuesPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final muted = AdminPalette.of(context).muted;
    return AsyncView<List<SocialCue>>(
      value: ref.watch(cuesProvider),
      onRetry: () => ref.invalidate(cuesProvider),
      data: (list) => DataTableCard<SocialCue>(
        key: const Key('vetting.cues'),
        rows: list,
        empty: 'No cues yet. The Cues rules on the Settings tab raise them.',
        columns: <TableColumnSpec<SocialCue>>[
          TableColumnSpec<SocialCue>(
            label: 'Trigger',
            cell: (c) => Text(wireLabel(c.trigger.type, c.trigger, 'type')),
          ),
          TableColumnSpec<SocialCue>(
            label: 'Queries',
            cell: (c) => ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 320),
              child: Text(
                c.queries.map((q) => q.query).join(' · '),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          TableColumnSpec<SocialCue>(
            label: 'Platforms',
            cell: (c) => Text(c.platforms.map(wireOf).join(', '), style: TextStyle(color: muted)),
          ),
          TableColumnSpec<SocialCue>(
            label: 'Status',
            cell: (c) => StatusLabel(
              label: wireLabel(c.status, c, 'status'),
              tone: vettingTone(wireOf(c.status, c, 'status')),
              tooltip: c.statusReason,
            ),
          ),
          TableColumnSpec<SocialCue>(
            label: 'Posts',
            numeric: true,
            cell: (c) => Text('${c.results.fold<int>(0, (n, r) => n + r.posts)}'),
          ),
          TableColumnSpec<SocialCue>(
            label: 'Cost',
            numeric: true,
            cell: (c) => Text('\$${c.costUsd.toStringAsFixed(2)}'),
          ),
          TableColumnSpec<SocialCue>(
            label: 'Created',
            cell: (c) =>
                Text('${utcText(c.createdAt)} · ${c.createdBy}', style: TextStyle(color: muted)),
          ),
        ],
      ),
    );
  }
}

/// How far social claims lead physical, news and official evidence
/// (`getSocialLeadTimes`).
class LeadTimesPanel extends ConsumerWidget {
  /// Creates the panel.
  const LeadTimesPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final muted = AdminPalette.of(context).muted;
    String summary(LeadTimeSummary s) => s.n == 0
        ? '—'
        : '${leadText(s.median)} (${leadText(s.p25)} to ${leadText(s.p75)}) · n ${s.n}';
    return AsyncView<LeadTimeStats>(
      value: ref.watch(leadTimesProvider),
      onRetry: () => ref.invalidate(leadTimesProvider),
      data: (stats) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Median lead and interquartile range; positive means social came first. '
            '${leadTimeCutoffText(stats.trainingCutoff)}',
            key: const Key('leadTimes.cutoff'),
            style: TextStyle(color: muted),
          ),
          const SizedBox(height: 12),
          DataTableCard<LeadTimeStatsGroupsInner>(
            key: const Key('vetting.leadTimes'),
            rows: stats.groups.toList(),
            empty: 'No comparisons yet. Lead times appear once claims are compared with physical, news and official evidence.',
            columns: <TableColumnSpec<LeadTimeStatsGroupsInner>>[
              TableColumnSpec<LeadTimeStatsGroupsInner>(
                label: 'Claim type',
                cell: (g) => Text(g.claimType),
              ),
              TableColumnSpec<LeadTimeStatsGroupsInner>(
                label: 'Platform',
                cell: (g) =>
                    Text('${g.platform}${g.regionCode == null ? '' : ' · ${g.regionCode}'}'),
              ),
              TableColumnSpec<LeadTimeStatsGroupsInner>(
                label: 'Found by',
                cell: (g) => Text(wireLabel(g.foundBy, g, 'foundBy')),
              ),
              TableColumnSpec<LeadTimeStatsGroupsInner>(
                label: 'Comparisons',
                numeric: true,
                cell: (g) => Text('${g.comparisons} (${g.outOfSample} out of sample)'),
              ),
              TableColumnSpec<LeadTimeStatsGroupsInner>(
                label: 'Over physical',
                cell: (g) => Text(summary(g.overPhysical)),
              ),
              TableColumnSpec<LeadTimeStatsGroupsInner>(
                label: 'Over news',
                cell: (g) => Text(summary(g.overNews)),
              ),
              TableColumnSpec<LeadTimeStatsGroupsInner>(
                label: 'Over official',
                cell: (g) => Text(summary(g.overOfficial)),
              ),
            ],
          ),
          for (final c in stats.caveats ?? const <Caveat>[]) ...<Widget>[
            const SizedBox(height: 6),
            Text('${c.code}: ${c.text}', style: TextStyle(color: muted, fontSize: 12)),
          ],
        ],
      ),
    );
  }
}

/// The social platform adapters (`listSocialPlatforms`).
class PlatformsPanel extends ConsumerWidget {
  /// Creates the panel.
  const PlatformsPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final muted = AdminPalette.of(context).muted;
    return AsyncView<List<SocialPlatform>>(
      value: ref.watch(socialPlatformsProvider),
      onRetry: () => ref.invalidate(socialPlatformsProvider),
      data: (list) => DataTableCard<SocialPlatform>(
        key: const Key('vetting.platforms'),
        rows: list,
        empty: 'The backend offers no social platforms.',
        onTap: (p) => context.go(vettingPlatformPath(wireOf(p.id, p, 'id'))),
        columns: <TableColumnSpec<SocialPlatform>>[
          TableColumnSpec<SocialPlatform>(
            label: 'Platform',
            cell: (p) => Text(p.name, style: const TextStyle(fontWeight: FontWeight.w600)),
          ),
          TableColumnSpec<SocialPlatform>(
            label: 'Type',
            cell: (p) => Text(
              '${p.type ?? '—'}${p.mode == null ? '' : ' · ${p.mode}'}',
              style: TextStyle(color: muted),
            ),
          ),
          TableColumnSpec<SocialPlatform>(
            label: 'State',
            cell: (p) => StatusLabel(
              label: wireLabel(p.state, p, 'state'),
              tone: vettingTone(wireOf(p.state, p, 'state')),
              tooltip: p.stateReason,
            ),
          ),
          TableColumnSpec<SocialPlatform>(
            label: 'Credentials',
            cell: (p) => Text(
              !p.credentials.required_
                  ? 'Not needed'
                  : p.credentials.configured
                  ? 'Set'
                  : 'Missing',
              style: TextStyle(color: muted),
            ),
          ),
          TableColumnSpec<SocialPlatform>(
            label: 'Spend this month',
            numeric: true,
            cell: (p) {
              final spend = Text(
                p.spend == null
                    ? '—'
                    : '\$${p.spend!.spentThisMonth.toStringAsFixed(2)}'
                          '${p.spend!.monthlyCapUsd == null ? '' : ' of \$${p.spend!.monthlyCapUsd!.toStringAsFixed(0)}'}',
              );
              final reason = capReasonText(
                platformCap: p.spend?.monthlyCapUsd,
                sourceCap: p.health?.budget?.monthlyCapUsd,
              );
              return reason == null
                  ? spend
                  : Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        spend,
                        Text(
                          reason,
                          key: Key('vetting.platform.capReason.${wireOf(p.id, p, 'id')}'),
                          style: TextStyle(color: muted, fontSize: 12),
                        ),
                      ],
                    );
            },
          ),
          TableColumnSpec<SocialPlatform>(
            label: 'Actions',
            cell: (p) => TonalButton(
              key: Key('vetting.platform.${wireOf(p.id, p, 'id')}'),
              label: 'Configure',
              onPressed: () => context.go(vettingPlatformPath(wireOf(p.id, p, 'id'))),
            ),
          ),
        ],
      ),
    );
  }
}

/// Imports operator media ratings (`importMediaRatings`, provider
/// `operator`); the backend recomputes the outlet consensus afterward.
class RatingsImportCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const RatingsImportCard({super.key});

  @override
  ConsumerState<RatingsImportCard> createState() => _RatingsImportCardState();
}

class _RatingsImportCardState extends ConsumerState<RatingsImportCard> {
  final TextEditingController _text = TextEditingController();
  String? _problem;
  bool _busy = false;
  Object? _result;

  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }

  Future<void> _import() async {
    final upload = RatingsUpload(_text.text);
    final problem = upload.validate();
    setState(() {
      _problem = problem;
      _result = null;
    });
    if (problem != null) {
      return;
    }
    setState(() => _busy = true);
    try {
      final result = await callApiRequired(
        () => ref
            .read(foresignalApiProvider)
            .getNewsApi()
            .importMediaRatings(provider: 'operator', file: upload.toFile()),
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
    final palette = AdminPalette.of(context);
    return Align(
      alignment: Alignment.topLeft,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 880),
        child: SectionCard(
          title: 'Import media ratings',
          subtitle:
              'Outlet ratings lower how much a claim from that outlet is trusted: factuality caps '
              'the source grade, and a strongly partisan or state-affiliated outlet drops it a step.',
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Paste a CSV with the header ${RatingsUpload.csvColumns.join(',')} (and optionally '
                'label), or a JSON {"rows": [...]} document. Dimension is lean, factuality, reliability, '
                'state-affiliation, ownership-type or provider:axis.',
                style: TextStyle(color: palette.muted, fontSize: 12),
              ),
              const SizedBox(height: 8),
              TextField(
                key: const Key('vetting.ratings.text'),
                controller: _text,
                minLines: 6,
                maxLines: 14,
                style: const TextStyle(fontFamily: 'monospace', fontSize: 13),
                decoration: InputDecoration(
                  hintText:
                      '${RatingsUpload.csvHeader}\n'
                      'example.com,factuality,B,,CC-BY-4.0,Operator review',
                  errorText: _problem,
                  errorMaxLines: 3,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: <Widget>[
                  Expanded(
                    child: switch (_result) {
                      null => const SizedBox.shrink(),
                      final RatingsImportResult r => Column(
                        key: const Key('vetting.ratings.result'),
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          StatusLabel(
                            label:
                                '${r.imported} imported · ${r.updated} updated · ${r.rejected} rejected'
                                '${r.outletsCreated == null ? '' : ' · ${r.outletsCreated} new outlets'}',
                            tone: r.rejected > 0 ? StatusTone.warning : StatusTone.ok,
                          ),
                          for (final e in r.errors ?? const <RatingsImportResultErrorsInner>[])
                            Text(
                              '${e.row == null ? '' : 'Row ${e.row}: '}${e.message}',
                              style: TextStyle(color: palette.error, fontSize: 12),
                            ),
                        ],
                      ),
                      final Object e => ErrorBanner(error: e, title: 'The import was refused'),
                    },
                  ),
                  const SizedBox(width: 12),
                  FilledButton(
                    key: const Key('vetting.ratings.import'),
                    onPressed: _busy ? null : _import,
                    child: Text(_busy ? 'Importing…' : 'Import'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// The social settings (`getSocialSettings` / `updateSocialSettings`).
class SocialSettingsPanel extends ConsumerWidget {
  /// Creates the panel.
  const SocialSettingsPanel({super.key});

  static const List<PathGroup> _groups = <PathGroup>[
    (
      title: 'Collection',
      subtitle: null,
      paths: <String>['languages', 'minRegionBaseline', 'keepMedia'],
    ),
    (
      title: 'Velocity findings',
      subtitle: 'When a topic is moving fast enough to report.',
      paths: <String>['velocity.minRatio', 'velocity.minUniqueAuthors', 'velocity.dedupHours'],
    ),
    (
      title: 'Claim extraction',
      subtitle: 'When a narrative is large or independent enough for LLM claim extraction.',
      paths: <String>['llmClaimMinPosts', 'llmClaimMinEvidenceGroups'],
    ),
    (
      title: 'Source reliability',
      subtitle: 'Admiralty grading of accounts and channels from their track record.',
      paths: <String>[
        'trackRecord.minAssessed',
        'trackRecord.gradeEShare',
        'trackRecord.gradeDShare',
        'trackRecord.overrides',
      ],
    ),
    (
      title: 'Social–physical comparison',
      subtitle: 'How long and how near independent evidence is looked for.',
      paths: <String>[
        'compare.minGroups',
        'compare.defaultWindow.before',
        'compare.defaultWindow.after',
        'compare.familyWindows',
      ],
    ),
    (
      title: 'Attention gaps',
      subtitle: null,
      paths: <String>[
        'attentionGap.minSeverity',
        'attentionGap.percentile',
        'attentionGap.lookbackDays',
        'attentionGap.windowHours',
      ],
    ),
    (
      title: 'Cues',
      subtitle: 'Looking on purpose: what raises a cue, and its daily and money caps.',
      paths: <String>[
        'cues.enabled',
        'cues.triggers.situationActivated',
        'cues.triggers.situationEscalated',
        'cues.triggers.anomalies',
        'cues.triggers.criticalAlerts',
        'cues.triggers.findingTypes',
        'cues.triggers.canonicalFamilies',
        'cues.triggers.minEvidenceGroups',
        'cues.maxPerDay',
        'cues.maxCostUsdPerCue',
        'cues.platforms',
        'cues.xaiXSearch.enabled',
        'cues.xaiXSearch.maxResults',
      ],
    ),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final api = ref.watch(foresignalApiProvider);
    final social = api.getSocialApi();
    return AsyncView<SocialSettings>(
      value: ref.watch(socialSettingsProvider),
      onRetry: () => ref.invalidate(socialSettingsProvider),
      data: (stored) {
        PathDraft draft() => PathDraft(toJsonMap(api.serializers, stored), socialSettingsFields);
        return PathDraftForm(
          key: const ValueKey<String>('social.settings'),
          keyPrefix: 'social',
          draft: draft(),
          reset: draft,
          groups: _groups,
          note:
              'Saving replaces the settings: an empty field returns to its default. Changes apply to '
              'the next evaluation; final comparisons keep their status.',
          save: (d) async {
            await writeThenConfirm<SocialSettings>(
              write: () => social.updateSocialSettings(
                socialSettings: fromJsonMap<SocialSettings>(api.serializers, d.toJson()),
              ),
              reread: () => callApiRequired(social.getSocialSettings),
              confirm: (got) => d.confirm(toJsonMap(api.serializers, got)),
            );
            ref.invalidate(socialSettingsProvider);
          },
        );
      },
    );
  }
}
