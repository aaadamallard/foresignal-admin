import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/format/duration_text.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import 'source_providers.dart';

/// Opens the read-only description of [source]: what its catalog row says at
/// once, and its descriptor (`getSource`) as soon as that loads.
Future<void> showSourceInfo(BuildContext context, SourceSummary source) => showDialog<void>(
  context: context,
  builder: (context) => SourceInfoDialog(source: source),
);

/// What a source is and provides, from its `listSources` summary and its
/// `getSource` descriptor: name, kinds and mode, description, credentials,
/// parameters, intervals, and license and terms where the descriptor has
/// them. Every value is one the contract carries; nothing here is edited.
class SourceInfoDialog extends ConsumerWidget {
  /// Creates the dialog for [source].
  const SourceInfoDialog({super.key, required this.source});

  /// The catalog row the dialog was opened from.
  final SourceSummary source;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final detail = ref.watch(sourceDetailProvider(source.id));
    final descriptor = detail.value?.descriptor;
    final size = MediaQuery.sizeOf(context);
    return Dialog(
      key: const Key('sourceInfo.dialog'),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 640, maxHeight: size.height * 0.85),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 20, 12, 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(source.name, style: theme.textTheme.titleLarge),
                        const SizedBox(height: 2),
                        SelectableText(
                          source.id,
                          style: TextStyle(color: AdminPalette.of(context).muted),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    key: const Key('sourceInfo.close'),
                    tooltip: 'Close',
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Flexible(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(right: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      KeyValueList(keyWidth: 150, entries: _summaryEntries(descriptor)),
                      if (detail.isLoading && descriptor == null)
                        const Padding(
                          padding: EdgeInsets.all(16),
                          child: Center(child: CircularProgressIndicator()),
                        ),
                      if (detail.hasError && descriptor == null) ...<Widget>[
                        const SizedBox(height: 12),
                        ErrorBanner(
                          title: 'Could not load the source descriptor',
                          error: detail.error!,
                          onRetry: () => ref.invalidate(sourceDetailProvider(source.id)),
                        ),
                      ],
                      if (descriptor != null) ..._descriptorSections(context, descriptor),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// The rows known from the summary, with the descriptor's credential
  /// detail once it is loaded.
  List<MapEntry<String, Object>> _summaryEntries(SourceDescriptor? d) {
    final kinds = d?.kinds ?? source.kinds;
    final needsKey = d == null
        ? (source.credentialsRequired == true ? 'Yes' : 'No')
        : d.credentialFields.any((f) => f.required_)
        ? 'Yes'
        : (d.credentialFields.isEmpty ? 'No' : 'Optional');
    return <MapEntry<String, Object>>[
      MapEntry<String, Object>('Kinds', kinds.isEmpty ? '—' : kinds.join(', ')),
      MapEntry<String, Object>('Mode', wireOf(d?.mode ?? source.mode)),
      if (d?.description case final text? when text.isNotEmpty)
        MapEntry<String, Object>('Provides', text),
      MapEntry<String, Object>('Needs credentials', needsKey),
      if (source.interval case final interval?)
        MapEntry<String, Object>('Interval in effect', displayDurationText(interval)),
    ];
  }

  List<Widget> _descriptorSections(BuildContext context, SourceDescriptor d) {
    // us-english-allow-start: `licence` is the contract's own field name.
    final licence = d.licence;
    final terms = d.licenceTerms;
    // us-english-allow-end
    final timing = <MapEntry<String, Object>>[
      MapEntry<String, Object>(
        'Default interval',
        d.defaultInterval == null ? 'Not polled' : displayDurationText(d.defaultInterval),
      ),
      if (d.minInterval != null)
        MapEntry<String, Object>('Minimum interval', displayDurationText(d.minInterval)),
    ];
    final access = <MapEntry<String, Object>>[
      if (licence != null) MapEntry<String, Object>('License', licence),
      if (terms != null) ...<MapEntry<String, Object>>[
        MapEntry<String, Object>('Terms', terms.name),
        MapEntry<String, Object>('Commercial use', wireText(wireOf(terms.commercialUse))),
        MapEntry<String, Object>('Redistribution', wireText(wireOf(terms.redistribution))),
        MapEntry<String, Object>('Attribution required', terms.attributionRequired ? 'Yes' : 'No'),
      ],
      if (d.termsUrl case final url?) MapEntry<String, Object>('Terms URL', url),
      if (d.homepage case final url?) MapEntry<String, Object>('Homepage', url),
      if (d.attribution case final text? when text.isNotEmpty)
        MapEntry<String, Object>('Attribution', text),
    ];
    return <Widget>[
      KeyValueList(keyWidth: 150, entries: timing),
      if (d.credentialFields.isNotEmpty)
        _Section(
          key: const Key('sourceInfo.credentials'),
          title: 'Credentials',
          children: <Widget>[
            for (final f in d.credentialFields)
              _Item(
                name: f.name,
                facts: <String>[f.required_ ? 'required' : 'optional'],
                description: f.description,
              ),
          ],
        ),
      _Section(
        key: const Key('sourceInfo.params'),
        title: 'Parameters',
        children: d.params.isEmpty
            ? <Widget>[const Text('None.')]
            : <Widget>[
                for (final p in d.params)
                  _Item(
                    name: p.name,
                    facts: <String>[
                      wireOf(p.type),
                      p.required_ == true ? 'required' : 'optional',
                      if (p.default_?.value case final value?) 'default ${_value(value)}',
                      if (p.allowed case final allowed? when allowed.isNotEmpty)
                        'one of ${allowed.join(', ')}',
                    ],
                    description: p.description,
                  ),
              ],
      ),
      if (access.isNotEmpty)
        _Section(
          key: const Key('sourceInfo.terms'),
          title: 'License and terms',
          children: <Widget>[KeyValueList(keyWidth: 150, entries: access)],
        ),
    ];
  }

  static String _value(Object value) => value is String ? value : jsonEncode(value);
}

/// A titled group in the dialog.
class _Section extends StatelessWidget {
  const _Section({super.key, required this.title, required this.children});

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(top: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(title, style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 6),
        ...children,
      ],
    ),
  );
}

/// One credential field or parameter: its name, short facts and description.
class _Item extends StatelessWidget {
  const _Item({required this.name, required this.facts, this.description});

  final String name;
  final List<String> facts;
  final String? description;

  @override
  Widget build(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SelectableText.rich(
            TextSpan(
              children: <InlineSpan>[
                TextSpan(
                  text: name,
                  style: const TextStyle(fontFamily: 'monospace', fontWeight: FontWeight.w600),
                ),
                TextSpan(text: '  ${facts.join(' · ')}', style: TextStyle(color: muted)),
              ],
            ),
          ),
          if (description case final text? when text.isNotEmpty)
            Padding(padding: const EdgeInsets.only(top: 2), child: SelectableText(text)),
        ],
      ),
    );
  }
}
