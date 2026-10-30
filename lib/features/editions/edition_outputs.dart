import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/ui/ui.dart';
import '../alerts/alerts_providers.dart' show channelsProvider;
import '../forecasting/forecasting_providers.dart' show Json;
import '../serving/serving_widgets.dart' show CopyLine;
import 'edition_providers.dart';

/// The alert severities a breaking-news trigger can require, least to most.
const List<String> editionSeverities = <String>['info', 'warning', 'critical'];

/// The delivery-target kinds (`DeliveryTarget.kind`).
const List<String> targetKinds = <String>['channel', 'website', 'podcast'];

/// The payload formats a `channel` target can take; `website` is always
/// `html` and `podcast` always `audio`.
const List<String> channelFormats = <String>['email', 'push', 'alert'];

/// Human labels for a delivery target's format.
const Map<String, String> targetFormatLabels = <String, String>{
  'email': 'Email (HTML + audio + link)',
  'push': 'Push (headline + link)',
  'alert': 'Alert notification',
  'html': 'Website page',
  'audio': 'Podcast audio',
};

/// The channels available to bind a target to (`listChannels`), as id→name.
final channelNamesProvider = Provider<Map<String, String>>((ref) {
  final channels = ref.watch(channelsProvider).value ?? const <Json>[];
  return <String, String>{
    for (final c in channels)
      if (c['id'] is String) c['id'] as String: c['name'] as String? ?? c['id'] as String,
  };
});

/// The hosted-site card for a saved edition: the canonical, feed-key and
/// read-only share URLs (`getEditionSite`), each with a copy affordance. Shown
/// once the edition's site is enabled and saved.
class EditionSiteCard extends ConsumerWidget {
  /// Creates the card for [briefingId].
  const EditionSiteCard({super.key, required this.briefingId});

  /// The edition whose site to show.
  final String briefingId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SectionCard(
      key: const Key('edition.site.card'),
      title: 'Hosted site',
      subtitle: 'The standalone page serving the latest successful run — the website the reader '
          'sees. Share is read-only and revocable; toggle it above and save.',
      child: AsyncView<Json>(
        value: ref.watch(editionSiteProvider(briefingId)),
        onRetry: () => ref.invalidate(editionSiteProvider(briefingId)),
        data: (site) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            LabeledField(
              label: 'Canonical URL',
              field: CopyLine(site['url'] as String? ?? '—', copyKey: const Key('edition.site.url.copy')),
            ),
            if (site['feedKeyUrl'] != null)
              LabeledField(
                label: 'Feed-key URL',
                field: CopyLine(site['feedKeyUrl'] as String, copyKey: const Key('edition.site.feedKey.copy')),
              ),
            LabeledField(
              label: 'Share link',
              help: site['shareUrl'] == null
                  ? 'No share link. Enable "Shareable" above and save to issue one.'
                  : 'Anyone with this link can read the site. Disable "Shareable" above and save to revoke.',
              field: site['shareUrl'] == null
                  ? const Text('Not shared', key: Key('edition.site.share.none'))
                  : CopyLine(site['shareUrl'] as String, copyKey: const Key('edition.site.share.copy')),
            ),
          ],
        ),
      ),
    );
  }
}
