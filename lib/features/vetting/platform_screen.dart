import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/format/duration_text.dart';
import '../../core/format/money_text.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../sources/source_test_results.dart';
import 'path_form.dart';
import 'vetting_drafts.dart';
import 'vetting_providers.dart';
import 'vetting_screen.dart';

/// One social platform adapter: its state, collection paths, quotas, spend
/// and terms, and its settings (`updateSocialPlatform`, which replaces them).
class PlatformScreen extends ConsumerWidget {
  /// Creates the page for the platform with wire id [platformId].
  const PlatformScreen({super.key, required this.platformId});

  /// The platform shown, by wire id (`bluesky-jetstream`).
  final String platformId;

  static const List<PathGroup> _groups = <PathGroup>[
    (
      title: 'Collection',
      subtitle: null,
      paths: <String>[
        'enabled',
        'mode',
        'channels',
        'deletionSync',
        'postRetention',
        'monthlyCapUsd',
      ],
    ),
    (
      title: 'Adapter options',
      subtitle: 'Each applies to the platforms that name it; the others ignore it.',
      paths: <String>[
        'options.instances',
        'options.replay',
        'options.standingCounts',
        'options.fullArchive',
        'options.comments',
        'options.maxResults',
        'options.fieldsParam',
      ],
    ),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final api = ref.watch(foresignalApiProvider);
    final muted = AdminPalette.of(context).muted;
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        AsyncView<SocialPlatform>(
          value: ref.watch(socialPlatformProvider(platformId)),
          onRetry: () => ref.invalidate(socialPlatformProvider(platformId)),
          data: (p) {
            PathDraft draft() => PathDraft(
              toJsonMap(api.serializers, p.settings),
              platformSettingsFields,
            );
            final social = api.getSocialApi();
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                PageHeader(
                  title: p.name,
                  crumbs: <Crumb>[
                    const Crumb('Vetting', vettingPath),
                    const Crumb('Platforms'),
                    Crumb(p.name),
                  ],
                  subtitle:
                      '${p.network}${p.type == null ? '' : ' · ${p.type}'}${p.mode == null ? '' : ' · ${p.mode}'}',
                  titleTrailing: <Widget>[
                    StatusLabel(
                      key: const Key('platform.state'),
                      label: wireLabel(p.state, p, 'state'),
                      tone: vettingTone(wireOf(p.state, p, 'state')),
                      tooltip: p.stateReason,
                    ),
                  ],
                ),
                if (p.stateReason case final r?) ...<Widget>[
                  Text(r, style: TextStyle(color: muted)),
                  const SizedBox(height: 16),
                ],
                Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: <Widget>[
                    SizedBox(
                      width: 420,
                      child: SectionCard(
                        title: 'Status',
                        child: KeyValueList(
                          entries: <MapEntry<String, Object>>[
                            MapEntry<String, Object>(
                              'Credentials',
                              !p.credentials.required_
                                  ? 'Not needed'
                                  : p.credentials.configured
                                  ? 'Set'
                                  : 'Missing${p.credentials.fields == null ? '' : ': ${p.credentials.fields!.join(', ')}'}',
                            ),
                            if (p.health case final h?) ...<MapEntry<String, Object>>[
                              MapEntry<String, Object>(
                                'Health',
                                '${wireLabel(h.status, h, 'status')}${h.statusReason == null ? '' : ' · ${h.statusReason}'}',
                              ),
                              if (h.lastSuccessAt != null)
                                MapEntry<String, Object>('Last success', utcText(h.lastSuccessAt!)),
                              if (h.lastError != null)
                                MapEntry<String, Object>('Last error', h.lastError!),
                            ],
                            if (p.stream case final s?) ...<MapEntry<String, Object>>[
                              MapEntry<String, Object>(
                                'Stream lag',
                                s.lagSeconds == null ? '—' : '${s.lagSeconds!.round()} s',
                              ),
                              if (s.connectedSince != null)
                                MapEntry<String, Object>(
                                  'Connected since',
                                  utcText(s.connectedSince!),
                                ),
                            ],
                            if (p.deletionSync case final d?)
                              MapEntry<String, Object>(
                                'Deletion sync',
                                '${d.enabled ? 'On' : 'Off'}'
                                    '${d.lastRunAt == null ? '' : ' · last ${utcText(d.lastRunAt!)}'}'
                                    '${d.tombstonedLast30d == null ? '' : ' · ${d.tombstonedLast30d} removed in 30 days'}',
                              ),
                            if (p.spend case final s?)
                              MapEntry<String, Object>(
                                'Spend this month',
                                '\$${s.spentThisMonth.toStringAsFixed(2)}'
                                    '${s.monthlyCapUsd == null ? '' : ' of \$${s.monthlyCapUsd!.toStringAsFixed(2)}'}'
                                    '${s.projectedThisMonth == null ? '' : ' · projected \$${s.projectedThisMonth!.toStringAsFixed(2)}'}'
                                    '${(s.refusedThisMonth ?? 0) == 0 ? '' : ' · ${s.refusedThisMonth} refused'}',
                              ),
                            if (capReasonText(
                                  platformCap: p.spend?.monthlyCapUsd,
                                  sourceCap: p.health?.budget?.monthlyCapUsd,
                                )
                                case final reason?)
                              MapEntry<String, Object>('Monthly cap', reason),
                          ],
                        ),
                      ),
                    ),
                    if (p.terms case final t?)
                      SizedBox(
                        width: 420,
                        child: SectionCard(
                          title: 'Terms',
                          child: KeyValueList(
                            entries: <MapEntry<String, Object>>[
                              if (t.summary != null)
                                MapEntry<String, Object>('Summary', t.summary!),
                              if (t.costs != null) MapEntry<String, Object>('Costs', t.costs!),
                              if (t.url != null)
                                MapEntry<String, Object>('Link', SelectableText(t.url!)),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 16),
                SectionCard(
                  title: 'Collection paths',
                  child: DataTableCard<SocialCollectionPath>(
                    rows: p.paths.toList(),
                    empty: 'No collection paths.',
                    columns: <TableColumnSpec<SocialCollectionPath>>[
                      TableColumnSpec<SocialCollectionPath>(
                        label: 'Path',
                        cell: (c) => Text(wireText(wireOf(c.path, c, 'path'))),
                      ),
                      TableColumnSpec<SocialCollectionPath>(
                        label: 'Coverage',
                        cell: (c) => Text(wireLabel(c.collectionType, c, 'collectionType')),
                      ),
                      TableColumnSpec<SocialCollectionPath>(
                        label: 'Enabled',
                        cell: (c) => StatusLabel(
                          label: c.enabled ? 'On' : 'Off',
                          tone: c.enabled ? StatusTone.ok : StatusTone.neutral,
                        ),
                      ),
                      TableColumnSpec<SocialCollectionPath>(
                        label: 'Feeds baselines',
                        cell: (c) => Text(c.feedsBaselines ? 'Yes' : 'No'),
                      ),
                    ],
                  ),
                ),
                if ((p.quotas ?? const <SocialQuota>[]).isNotEmpty) ...<Widget>[
                  const SizedBox(height: 16),
                  SectionCard(
                    title: 'Quotas',
                    child: DataTableCard<SocialQuota>(
                      rows: p.quotas!.toList(),
                      empty: '',
                      columns: <TableColumnSpec<SocialQuota>>[
                        TableColumnSpec<SocialQuota>(
                          label: 'Quota',
                          cell: (q) => Text(
                            q.description ??
                                '${wireLabel(q.unit, q, 'unit')} per ${displayDurationText(q.window)}',
                          ),
                        ),
                        TableColumnSpec<SocialQuota>(
                          label: 'Used',
                          numeric: true,
                          cell: (q) => Text('${q.used}${q.limit == null ? '' : ' of ${q.limit}'}'),
                        ),
                        TableColumnSpec<SocialQuota>(
                          label: 'Resets',
                          cell: (q) => Text(
                            q.resetsAt == null
                                ? (q.rolling == true ? 'Rolling' : '—')
                                : utcText(q.resetsAt!),
                            style: TextStyle(color: muted),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
                const SizedBox(height: 24),
                Text('Settings', style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 12),
                PathDraftForm(
                  key: ValueKey<String>('platform.settings.$platformId'),
                  keyPrefix: 'platform',
                  draft: draft(),
                  reset: draft,
                  groups: _groups,
                  note:
                      'Saving replaces the platform settings: an empty field returns to its default. A '
                      'platform that needs credentials stays off until they are set on its source.',
                  save: (d) async {
                    await writeThenConfirm<SocialPlatform>(
                      write: () => social.updateSocialPlatform(
                        platformId: p.id,
                        socialPlatformSettings: fromJsonMap<SocialPlatformSettings>(
                          api.serializers,
                          d.toJson(),
                        ),
                      ),
                      reread: () =>
                          callApiRequired(() => social.getSocialPlatform(platformId: p.id)),
                      confirm: (got) => d.confirm(toJsonMap(api.serializers, got.settings)),
                    );
                    ref
                      ..invalidate(socialPlatformProvider(platformId))
                      ..invalidate(socialPlatformsProvider);
                  },
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
