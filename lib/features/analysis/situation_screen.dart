import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/routes.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../sources/source_test_results.dart';
import 'analysis_providers.dart';
import 'analysis_screen.dart';

/// One situation, read-only (`getSituation`, `listSituationMembers`,
/// `listSituationAssessments`, `getSituationTimeline`): why it is warning
/// (the server's status and severity basis and its corroboration), the
/// current assessment, the members by signal family, and the timeline.
/// Opened from the Top situations on Analysis → Overview.
class SituationScreen extends ConsumerWidget {
  /// Creates the screen for [situationId].
  const SituationScreen({super.key, required this.situationId});

  /// The situation shown.
  final String situationId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        AsyncView<Situation>(
          value: ref.watch(situationProvider(situationId)),
          onRetry: () => ref.invalidate(situationProvider(situationId)),
          data: (s) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              PageHeader(
                title: s.title,
                crumbs: <Crumb>[const Crumb('Analysis', analysisPath), Crumb(s.title)],
                subtitle:
                    '${wireLabel(s.theme, s, 'theme')} · started ${utcText(s.startedAt)} · '
                    'last activity ${utcText(s.lastActivityAt)}',
                titleTrailing: <Widget>[
                  StatusLabel(
                    key: const Key('situation.status'),
                    label: wireLabel(s.status, s, 'status'),
                    tone: statusTone(wireOf(s.status, s, 'status')),
                  ),
                  StatusLabel(
                    key: const Key('situation.severity'),
                    label: wireLabel(s.severity, s, 'severity'),
                    tone: severityTone(s.severity),
                  ),
                ],
              ),
              _WhyCard(situation: s),
              const SizedBox(height: 16),
              _AssessmentCard(situationId: situationId),
              const SizedBox(height: 16),
              _MembersCard(situationId: situationId),
              const SizedBox(height: 16),
              _TimelineCard(situationId: situationId),
            ],
          ),
        ),
      ],
    );
  }
}

/// Why the situation is at its status and severity, in the server's words.
class _WhyCard extends StatelessWidget {
  const _WhyCard({required this.situation});

  final Situation situation;

  @override
  Widget build(BuildContext context) {
    final s = situation;
    final c = s.evidence.corroboration;
    return SectionCard(
      title: 'Why it is ${wireLabel(s.severity, s, 'severity').toLowerCase()}',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(s.inference.summary, key: const Key('situation.summary')),
          const SizedBox(height: 12),
          KeyValueList(
            entries: <MapEntry<String, Object>>[
              MapEntry<String, Object>('Severity basis', s.inference.severityBasis),
              MapEntry<String, Object>('Status basis', s.inference.statusBasis),
              MapEntry<String, Object>(
                'Corroboration',
                '${c.corroborated} corroborated, ${c.uncorroborated} uncorroborated'
                    '${c.share == null ? '' : ' (${percent(c.share)})'}',
              ),
              MapEntry<String, Object>(
                'Signal families',
                s.signalFamilies.isEmpty ? '—' : s.signalFamilies.join(', '),
              ),
              MapEntry<String, Object>('Members', '${s.memberCount}'),
              if (s.regionCodes.isNotEmpty) MapEntry<String, Object>('Regions', s.regionCodes.join(', ')),
              if (s.severityOverridden == true) const MapEntry<String, Object>('Severity', 'Set by an operator'),
            ],
          ),
        ],
      ),
    );
  }
}

/// The newest assessment of the situation: its headline and key judgments.
class _AssessmentCard extends ConsumerWidget {
  const _AssessmentCard({required this.situationId});

  final String situationId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final muted = AdminPalette.of(context).muted;
    return SectionCard(
      title: 'Current assessment',
      child: AsyncView<List<Assessment>>(
        value: ref.watch(situationAssessmentsProvider(situationId)),
        onRetry: () => ref.invalidate(situationAssessmentsProvider(situationId)),
        data: (assessments) {
          if (assessments.isEmpty) {
            return Text('No assessment yet.', key: const Key('situation.noAssessment'), style: TextStyle(color: muted));
          }
          final a = assessments.first;
          return Column(
            key: const Key('situation.assessment'),
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(a.headline ?? 'No headline', style: const TextStyle(fontWeight: FontWeight.w600)),
              const SizedBox(height: 4),
              Text(
                '${wireLabel(a.cadence, a, 'cadence')} · ${wireLabel(a.status, a, 'status')} · '
                '${utcText(a.createdAt)}',
                style: TextStyle(color: muted, fontSize: 12),
              ),
              for (final j in a.bluf)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text('• ${j.text}${j.probability == null ? '' : ' (${percent(j.probability)})'}'),
                ),
            ],
          );
        },
      ),
    );
  }
}

/// The members, by signal family, with their role and corroboration.
class _MembersCard extends ConsumerWidget {
  const _MembersCard({required this.situationId});

  final String situationId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final muted = AdminPalette.of(context).muted;
    return SectionCard(
      title: 'Members and evidence',
      child: AsyncView<List<SituationMember>>(
        value: ref.watch(situationMembersProvider(situationId)),
        onRetry: () => ref.invalidate(situationMembersProvider(situationId)),
        data: (members) {
          if (members.isEmpty) {
            return Text('No members.', style: TextStyle(color: muted));
          }
          final byFamily = <String, List<SituationMember>>{};
          for (final m in members) {
            byFamily.putIfAbsent(m.signalFamily ?? 'other', () => <SituationMember>[]).add(m);
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              for (final family in byFamily.entries) ...<Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 6, bottom: 2),
                  child: Text(wireText(family.key), style: const TextStyle(fontWeight: FontWeight.w600)),
                ),
                for (final m in family.value)
                  Padding(
                    key: Key('situation.member.${m.id}'),
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: 96,
                          child: StatusLabel(
                            label: wireLabel(m.role, m, 'role'),
                            tone: wireOf(m.role, m, 'role') == 'core' ? StatusTone.info : StatusTone.neutral,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(m.title ?? m.objectRef, maxLines: 2, overflow: TextOverflow.ellipsis),
                              Text(
                                <String>[
                                  wireLabel(m.memberType, m, 'memberType'),
                                  ?m.severity,
                                  m.corroboration,
                                  if (m.observedAt != null) utcText(m.observedAt),
                                ].join(' · '),
                                style: TextStyle(color: muted, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ],
          );
        },
      ),
    );
  }
}

/// The situation's history, newest first. An action this app does not know
/// is shown as the server sent it.
class _TimelineCard extends ConsumerWidget {
  const _TimelineCard({required this.situationId});

  final String situationId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final muted = AdminPalette.of(context).muted;
    return SectionCard(
      title: 'Timeline',
      child: AsyncView<List<SituationTimelineEntry>>(
        value: ref.watch(situationTimelineProvider(situationId)),
        onRetry: () => ref.invalidate(situationTimelineProvider(situationId)),
        data: (entries) {
          if (entries.isEmpty) {
            return Text('No history yet.', style: TextStyle(color: muted));
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              for (final e in entries)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3),
                  child: Text('${utcText(e.at)}  ${_describe(e)}'),
                ),
            ],
          );
        },
      ),
    );
  }

  static String _describe(SituationTimelineEntry e) {
    final member = e.member;
    if (member != null) {
      return 'Evidence: ${member.title ?? member.objectRef}';
    }
    final action = e.action == null ? 'Change' : wireText(e.action!);
    return e.actor == null ? action : '$action by ${e.actor}';
  }
}
