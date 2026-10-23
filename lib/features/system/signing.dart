import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_widgets.dart';
import '../serving/serving_widgets.dart' show CopyLine, countText;
import '../vetting/vetting_drafts.dart' show toJsonMap;
import 'system_drafts.dart';
import 'system_providers.dart';
import 'system_widgets.dart';

/// The Signing tab: the instance signing keys and their rotation, and the
/// attributions this instance's data requires.
class SigningPanel extends StatelessWidget {
  /// Creates the panel.
  const SigningPanel({super.key});

  @override
  Widget build(BuildContext context) => const Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[SigningKeysCard(), SizedBox(height: 20), AttributionsCard()],
  );
}

/// The instance signing keys (`getSystemJwks`) and their rotation
/// (`rotateSigningKey`), confirmed by the new key appearing in the key set.
class SigningKeysCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const SigningKeysCard({super.key});

  @override
  ConsumerState<SigningKeysCard> createState() => _SigningKeysCardState();
}

class _SigningKeysCardState extends ConsumerState<SigningKeysCard> with WriteTracking<SigningKeysCard> {
  bool _confirming = false;
  Json? _rotated;

  Future<void> _rotate() async {
    final api = ref.read(foresignalApiProvider);
    Json? info;
    final keys = await track(
      () => writeThenConfirm<List<Json>>(
        write: () async {
          info = toJsonMap(api.serializers, await callApiRequired(() => api.getProvenanceApi().rotateSigningKey()));
        },
        reread: () async => <Json>[
          for (final k in (await callApiRequired(() => api.getProvenanceApi().getSystemJwks())).keys) toJsonMap(api.serializers, k),
        ],
        confirm: (keys) => keys.any((k) => k['kid'] == info?['kid']) ? null : 'The new key ${info?['kid']} is not in the key set.',
      ),
    );
    if (keys != null && mounted) {
      setState(() {
        _confirming = false;
        _rotated = info;
      });
      ref.invalidate(jwksProvider);
    }
  }

  @override
  Widget build(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    final rotated = _rotated;
    final base = ref.watch(backendEndpointProvider);
    return SectionCard(
      key: const Key('signing'),
      title: 'Signing Keys',
      subtitle: 'Ed25519 keys that sign federation documents, exports and briefings. Only public keys leave the server.',
      actions: <Widget>[
        IconButton(
          tooltip: 'Refresh',
          onPressed: () => ref.invalidate(jwksProvider),
          icon: const Icon(Icons.refresh),
        ),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (base != null) ...<Widget>[
            KeyValueList(
              entries: <MapEntry<String, Object>>[
                MapEntry<String, Object>('Key set', CopyLine('${base.resolve('/v1/system/jwks')}', copyKey: const Key('signing.jwks.copy'))),
              ],
            ),
            const SizedBox(height: 10),
          ],
          AsyncView<List<Json>>(
            value: ref.watch(jwksProvider),
            onRetry: () => ref.invalidate(jwksProvider),
            data: (keys) => DataTableCard<Json>(
              key: const Key('signing.keys'),
              rows: keys,
              empty: 'No keys.',
              columns: <TableColumnSpec<Json>>[
                TableColumnSpec<Json>(
                  label: 'Key id',
                  cell: (k) => Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SelectableText('${k['kid']}', style: const TextStyle(fontFamily: 'monospace', fontSize: 13)),
                      if (k['kid'] == rotated?['kid']) ...<Widget>[
                        const SizedBox(width: 8),
                        const StatusLabel(label: 'New', tone: StatusTone.ok, showIcon: false),
                      ],
                    ],
                  ),
                ),
                TableColumnSpec<Json>(
                  label: 'Algorithm',
                  cell: (k) => Text(k['crv'] == null || k['crv'] == k['alg'] ? '${k['alg']}' : '${k['alg']} (${k['crv']})'),
                ),
                TableColumnSpec<Json>(
                  label: 'Public key',
                  cell: (k) => Text(
                    '${k['x']}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontFamily: 'monospace', fontSize: 12, color: muted),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          if (rotated != null) ...<Widget>[
            ResultPanel(
              key: const Key('signing.rotated'),
              title: 'Rotated',
              tone: StatusTone.ok,
              message: 'New documents are signed with ${rotated['kid']}. Earlier keys stay in the key set until they are removed.',
              details: <MapEntry<String, Object>>[
                MapEntry<String, Object>('Status', wireText('${rotated['status']}')),
                MapEntry<String, Object>('Created', whenText(rotated['createdAt'])),
              ],
            ),
            const SizedBox(height: 12),
          ],
          if (_confirming)
            ConfirmRow(
              message: 'Rotate the signing key? Peers pinned to the current key must re-pin before they accept the new one.',
              action: 'Rotate',
              confirmKey: const Key('signing.rotate.confirm'),
              onConfirm: _rotate,
              onCancel: () => setState(() => _confirming = false),
            )
          else
            Align(
              alignment: Alignment.centerLeft,
              child: DangerButton(
                key: const Key('signing.rotate'),
                label: 'Rotate Signing Key',
                icon: Icons.autorenew,
                onPressed: busy ? null : () => setState(() => _confirming = true),
              ),
            ),
          if (write is WriteFailed) ...<Widget>[const SizedBox(height: 8), statusLine],
        ],
      ),
    );
  }
}

/// The attributions owed for a scope (`getAttributions`).
class AttributionsCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const AttributionsCard({super.key});

  @override
  ConsumerState<AttributionsCard> createState() => _AttributionsCardState();
}

class _AttributionsCardState extends ConsumerState<AttributionsCard> {
  final TextEditingController _sources = TextEditingController();
  final TextEditingController _kinds = TextEditingController();
  List<String> _policy = const <String>[];
  AttributionFilter _filter = (sources: '', kinds: '', policy: '');

  @override
  void dispose() {
    _sources.dispose();
    _kinds.dispose();
    super.dispose();
  }

  void _apply() => setState(() {
    _filter = (sources: _sources.text.trim(), kinds: _kinds.text.trim(), policy: _policy.join('\n'));
  });

  @override
  Widget build(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    return SectionCard(
      key: const Key('attributions'),
      title: 'Attributions',
      subtitle: 'What clients must credit for the current records in a scope, by source and license.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Wrap(
            spacing: 12,
            runSpacing: 12,
            crossAxisAlignment: WrapCrossAlignment.end,
            children: <Widget>[
              SizedBox(
                width: 240,
                child: TextField(
                  key: const Key('attributions.sources'),
                  controller: _sources,
                  decoration: const InputDecoration(labelText: 'Sources', hintText: 'Comma-separated; empty for all', isDense: true),
                  onSubmitted: (_) => _apply(),
                ),
              ),
              SizedBox(
                width: 240,
                child: TextField(
                  key: const Key('attributions.kinds'),
                  controller: _kinds,
                  decoration: const InputDecoration(labelText: 'Kinds', hintText: 'Comma-separated; empty for all', isDense: true),
                  onSubmitted: (_) => _apply(),
                ),
              ),
              ChoiceChips(
                key: const Key('attributions.policy'),
                keyPrefix: 'attributions.policy',
                values: licensePolicyFlags,
                labels: licensePolicyNames,
                selected: _policy,
                onChanged: (v) => setState(() => _policy = v),
              ),
              TonalButton(key: const Key('attributions.apply'), label: 'Show', icon: Icons.filter_alt, onPressed: _apply),
            ],
          ),
          const SizedBox(height: 16),
          AsyncView<Json>(
            value: ref.watch(attributionsProvider(_filter)),
            onRetry: () => ref.invalidate(attributionsProvider(_filter)),
            data: (summary) {
              final rows = <Json>[
                for (final a in (summary['attributions'] as List?) ?? const <Object?>[])
                  if (a is Map) a.cast<String, Object?>(),
              ];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  DataTableCard<Json>(
                    key: const Key('attributions.table'),
                    rows: rows,
                    empty: 'Nothing to attribute in this scope.',
                    columns: <TableColumnSpec<Json>>[
                      TableColumnSpec<Json>(label: 'Source', cell: (a) => Text('${a['sourceId'] ?? '—'}')),
                      TableColumnSpec<Json>(label: 'Attribution', cell: (a) => Text('${a['text']}')),
                      TableColumnSpec<Json>(
                        label: 'License',
                        cell: (a) => a[attributionLicenseUrlMember] == null
                            ? Text('${a[attributionLicenseMember]}')
                            : Tooltip(
                                message: '${a[attributionLicenseUrlMember]}',
                                child: Text(
                                  '${a[attributionLicenseMember]}',
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.primary,
                                    decoration: TextDecoration.underline,
                                    decorationStyle: TextDecorationStyle.dotted,
                                  ),
                                ),
                              ),
                      ),
                      TableColumnSpec<Json>(
                        label: 'Display',
                        cell: (a) => Text(a['requiredDisplay'] == true ? 'Required on maps' : 'Credit'),
                      ),
                      TableColumnSpec<Json>(label: 'Records', numeric: true, cell: (a) => Text(countText(a['count']))),
                    ],
                  ),
                  if ('${summary['text'] ?? ''}'.isNotEmpty) ...<Widget>[
                    const SizedBox(height: 12),
                    Text('As one line, for a map footer:', style: TextStyle(color: muted, fontSize: 12)),
                    const SizedBox(height: 4),
                    CopyLine('${summary['text']}', copyKey: const Key('attributions.text.copy')),
                  ],
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
