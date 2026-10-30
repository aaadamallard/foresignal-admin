import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/routes.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_providers.dart' show Json;
import '../forecasting/forecasting_widgets.dart' show Footnote, PlainField, WireDropdown, WriteTracking;
import '../sources/source_providers.dart' show sourceListProvider;
import 'edition_preview.dart';
import 'edition_providers.dart';

/// The digest modes an edition can run in.
const List<String> editionModes = <String>['digest', 'llm'];

/// Labels for [editionModes].
const Map<String, String> editionModeLabels = <String, String>{
  'digest': 'Digest (templated)',
  'llm': 'LLM (written narrative)',
};

/// A BCP 47 language tag, as the contract constrains `outputLanguage`.
final RegExp _bcp47 = RegExp(r'^[A-Za-z]{2,3}(-[A-Za-z0-9]{2,8})*$');

/// Composes one automated-newspaper edition: its feed and scope, sections,
/// schedule, output language, voice — with preview and run. [briefingId] null
/// is a new edition.
class EditionComposerScreen extends ConsumerWidget {
  /// Creates the composer; [briefingId] null creates a new edition.
  const EditionComposerScreen({super.key, this.briefingId});

  /// The edition being edited, or null for a new one.
  final String? briefingId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = briefingId;
    final title = id == null ? 'New edition' : 'Edition';
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        PageHeader(
          title: title,
          crumbs: <Crumb>[const Crumb('Editions', editionsPath), Crumb(title)],
          subtitle: 'The news feed and sources, the sections, the schedule, the output language '
              'and the spoken voice. Preview before enabling the schedule.',
        ),
        if (id == null)
          const EditionComposerForm(settings: <String, Object?>{})
        else
          AsyncView<Json>(
            value: ref.watch(editionProvider(id)),
            onRetry: () => ref.invalidate(editionProvider(id)),
            data: (edition) => EditionComposerForm(key: ValueKey<String>(id), settings: edition),
          ),
      ],
    );
  }
}

/// The edition editor. Edits overlay the loaded [settings] so members this
/// screen does not touch (the NP-004 delivery targets, site, breaking-news and
/// provenance flags) survive a save.
class EditionComposerForm extends ConsumerStatefulWidget {
  /// Creates the form over [settings] (empty for a new edition).
  const EditionComposerForm({super.key, required this.settings});

  /// The edition as read, or empty for a new one.
  final Json settings;

  @override
  ConsumerState<EditionComposerForm> createState() => _EditionComposerFormState();
}

class _EditionComposerFormState extends ConsumerState<EditionComposerForm>
    with WriteTracking<EditionComposerForm> {
  Json get _s => widget.settings;
  Json get _scope => (_s['scope'] as Map?)?.cast<String, Object?>() ?? const <String, Object?>{};
  Json? get _audio => (_s['audio'] as Map?)?.cast<String, Object?>();

  String? get _id => _s['id'] as String?;
  bool get _isNew => _id == null;

  late bool _enabled = _s['enabled'] as bool? ?? true;
  late String _mode = _s['mode'] as String? ?? 'digest';
  late bool _includeHealth = _scope['includeHealth'] as bool? ?? true;
  late bool _includeAlertQuality = _scope['includeAlertQuality'] as bool? ?? false;
  late String _audioFormat = _audio?['format'] as String? ?? 'mp3';
  late final Set<String> _sources = <String>{
    for (final s in (_scope['sources'] as List?) ?? const <Object?>[])
      if (s is String) s,
  };
  late final Set<String> _kinds = <String>{
    for (final k in (_scope['kinds'] as List?) ?? const <Object?>[])
      if (k is String) k,
  };

  late final Map<String, TextEditingController> _c = <String, TextEditingController>{
    'name': TextEditingController(text: _s['name'] as String? ?? ''),
    'schedule': TextEditingController(text: _s['schedule'] as String? ?? '0 7 * * *'),
    'timezone': TextEditingController(text: _s['timezone'] as String? ?? 'UTC'),
    'lookback': TextEditingController(text: _s['lookback'] as String? ?? ''),
    'instructions': TextEditingController(text: _s['instructions'] as String? ?? ''),
    'outputLanguage': TextEditingController(text: _s['outputLanguage'] as String? ?? ''),
    'maxItemsPerKind': TextEditingController(text: (_s['maxItemsPerKind'] as num?)?.toString() ?? '5'),
    'voice': TextEditingController(text: _audio?['voice'] as String? ?? ''),
    'placeIds': TextEditingController(
      text: <String>[for (final p in (_scope['placeIds'] as List?) ?? const <Object?>[]) '$p'].join(', '),
    ),
    'viewId': TextEditingController(text: _scope['viewId'] as String? ?? ''),
  };
  Map<String, String> _errors = const <String, String>{};
  Json? _preview;

  @override
  void dispose() {
    for (final c in _c.values) {
      c.dispose();
    }
    super.dispose();
  }

  String _t(String k) => _c[k]!.text.trim();

  List<String> _csv(String k) => <String>[
    for (final p in _t(k).split(RegExp(r'[\s,]+')))
      if (p.trim().isNotEmpty) p.trim(),
  ];

  /// Builds the request body by overlaying the edited fields on the loaded
  /// edition, so delivery targets, the site, breaking-news and the provenance
  /// flags (NP-004) are preserved across a save.
  Json? _body() {
    final errors = <String, String>{};
    if (_t('name').isEmpty) {
      errors['name'] = 'A name for the edition.';
    }
    if (_t('schedule').isEmpty) {
      errors['schedule'] = 'A 5-field cron schedule, e.g. 0 7 * * *.';
    } else if (_t('schedule').split(RegExp(r'\s+')).length != 5) {
      errors['schedule'] = 'Five space-separated cron fields.';
    }
    final lang = _t('outputLanguage');
    if (lang.isNotEmpty && !_bcp47.hasMatch(lang)) {
      errors['outputLanguage'] = 'A BCP 47 tag, e.g. en, es or pt-BR; or empty for the owner default.';
    }
    int? maxItems;
    if (_t('maxItemsPerKind').isNotEmpty) {
      maxItems = int.tryParse(_t('maxItemsPerKind'));
      if (maxItems == null || maxItems < 1 || maxItems > 50) {
        errors['maxItemsPerKind'] = 'A number from 1 to 50.';
      }
    }
    setState(() => _errors = errors);
    if (errors.isNotEmpty) {
      return null;
    }

    // Start from the loaded edition (minus the read-only, server-owned members)
    // so unedited members survive, then overlay this screen's fields.
    final body = <String, Object?>{..._s}
      ..remove('id')
      ..remove('createdAt')
      ..remove('updatedAt')
      ..remove('nextRunAt')
      ..remove('lastRunAt')
      ..remove('lastRunStatus')
      ..remove('warnings')
      ..remove('ownerUserId');

    final scope = <String, Object?>{
      ..._scope,
      'sources': _sources.toList(),
      'kinds': _kinds.toList(),
      'placeIds': _csv('placeIds'),
      'viewId': _t('viewId').isEmpty ? null : _t('viewId'),
      'includeHealth': _includeHealth,
      'includeAlertQuality': _includeAlertQuality,
    };

    body['name'] = _t('name');
    body['enabled'] = _enabled;
    body['schedule'] = _t('schedule');
    body['timezone'] = _t('timezone').isEmpty ? 'UTC' : _t('timezone');
    body['scope'] = scope;
    body['lookback'] = _t('lookback').isEmpty ? null : _t('lookback');
    body['mode'] = _mode;
    body['instructions'] = _t('instructions').isEmpty ? null : _t('instructions');
    body['maxItemsPerKind'] = maxItems ?? 5;
    body['outputLanguage'] = lang.isEmpty ? null : lang;
    body['audio'] = _t('voice').isEmpty ? null : <String, Object?>{'voice': _t('voice'), 'format': _audioFormat};
    return body;
  }

  Future<void> _save() async {
    final body = _body();
    if (body == null) {
      return;
    }
    final dio = ref.read(backendDioProvider);
    final id = _id;
    final saved = await track(() async {
      if (id == null) {
        return jsonObjectCall(dio, 'POST', '/v1/briefings', body: body);
      }
      await jsonCall(dio, 'PUT', '/v1/briefings/$id', body: body);
      return jsonObjectCall(dio, 'GET', '/v1/briefings/$id');
    });
    if (saved == null || !mounted) {
      return;
    }
    ref.invalidate(editionListProvider);
    final savedId = saved['id'] as String?;
    if (id == null && savedId != null) {
      context.go(editionDetailPath(savedId));
    } else if (id != null) {
      ref.invalidate(editionProvider(id));
    }
  }

  Future<void> _preview_() async {
    final body = _body();
    if (body == null) {
      return;
    }
    final run = await track(
      () => jsonObjectCall(ref.read(backendDioProvider), 'POST', '/v1/briefings/preview', body: body),
    );
    if (run != null && mounted) {
      setState(() => _preview = run);
    }
  }

  Future<void> _runNow() async {
    final id = _id;
    if (id == null) {
      return;
    }
    final run = await track(
      () => jsonObjectCall(ref.read(backendDioProvider), 'POST', '/v1/briefings/$id/run', body: const <String, Object?>{}),
    );
    if (run != null && mounted) {
      setState(() => _preview = run);
      ref.invalidate(editionListProvider);
    }
  }

  Future<void> _delete() async {
    final id = _id;
    if (id == null) {
      return;
    }
    final done = await track(() => jsonCall(ref.read(backendDioProvider), 'DELETE', '/v1/briefings/$id'));
    if (done != null && mounted) {
      ref.invalidate(editionListProvider);
      context.go(editionsPath);
    }
  }

  Widget _field(String key, String label, {String? help, String? hint, int maxLines = 1}) => LabeledField(
    label: label,
    help: help,
    field: PlainField(
      key: Key('edition.$key'),
      controller: _c[key]!,
      hint: hint,
      error: _errors[key],
      maxLines: maxLines,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 920),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SectionCard(
              key: const Key('edition.basics'),
              title: 'Edition',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  _field('name', 'Name', hint: 'Morning Brief'),
                  SwitchListTile(
                    key: const Key('edition.enabled'),
                    contentPadding: EdgeInsets.zero,
                    value: _enabled,
                    onChanged: busy ? null : (v) => setState(() => _enabled = v),
                    title: const Text('Enabled'),
                    subtitle: const Text('Off, the schedule does not run; you can still preview and run now.'),
                  ),
                  _field('schedule', 'Schedule (cron)', help: '5-field cron in the timezone below.', hint: '0 7 * * *'),
                  _field('timezone', 'Timezone', hint: 'America/Chicago'),
                  LabeledField(
                    label: 'Mode',
                    help: 'Digest is templated; LLM writes a narrative from your instructions.',
                    field: WireDropdown(
                      key: const Key('edition.mode'),
                      value: _mode,
                      values: <String>{...editionModes, _mode}.toList(),
                      labels: editionModeLabels,
                      onChanged: (v) => setState(() => _mode = v),
                    ),
                  ),
                  _field('instructions', 'Instructions', help: 'Guidance for the LLM narrative (LLM mode).', maxLines: 4),
                  _field('outputLanguage', 'Output language', help: 'BCP 47 tag; empty for the owner default.', hint: 'en'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SectionCard(
              key: const Key('edition.feed'),
              title: 'Feed & sections',
              subtitle: 'The sources and kinds this edition draws from, and the sections it composes.',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text('Sources', style: Theme.of(context).textTheme.titleSmall),
                  const Footnote('Pick the outlets this edition draws from; none selected draws from all.'),
                  const SizedBox(height: 8),
                  _SourcePicker(
                    selectedSources: _sources,
                    selectedKinds: _kinds,
                    onToggleSource: busy ? null : (id, on) => setState(() => on ? _sources.add(id) : _sources.remove(id)),
                    onToggleKind: busy ? null : (k, on) => setState(() => on ? _kinds.add(k) : _kinds.remove(k)),
                  ),
                  const SizedBox(height: 12),
                  _field('placeIds', 'Places', help: 'Place ids (036), comma-separated, whose areas bound the scope.'),
                  _field('viewId', 'Saved view', help: 'A saved view id or slug (036) to scope by.'),
                  _field('lookback', 'Lookback', help: 'How far back each run reaches, e.g. 7d, 12h, PT15M.', hint: '7d'),
                  _field('maxItemsPerKind', 'Max items per kind', hint: '5'),
                  CheckboxListTile(
                    key: const Key('edition.includeHealth'),
                    contentPadding: EdgeInsets.zero,
                    dense: true,
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _includeHealth,
                    onChanged: busy ? null : (v) => setState(() => _includeHealth = v ?? true),
                    title: const Text('Source-health section'),
                  ),
                  CheckboxListTile(
                    key: const Key('edition.includeAlertQuality'),
                    contentPadding: EdgeInsets.zero,
                    dense: true,
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _includeAlertQuality,
                    onChanged: busy ? null : (v) => setState(() => _includeAlertQuality = v ?? false),
                    title: const Text('Weekly alert-quality section'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SectionCard(
              key: const Key('edition.voice'),
              title: 'Spoken edition',
              subtitle: 'A voice to synthesize the spoken edition after each run; empty for text only.',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  _field('voice', 'Voice', help: 'A provider voice, e.g. alloy (OpenAI) or af_bella (Kokoro).'),
                  LabeledField(
                    label: 'Audio format',
                    field: WireDropdown(
                      key: const Key('edition.audioFormat'),
                      value: _audioFormat,
                      values: const <String>['mp3', 'opus'],
                      onChanged: (v) => setState(() => _audioFormat = v),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 12,
              runSpacing: 8,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: <Widget>[
                FilledButton.icon(
                  key: const Key('edition.save'),
                  onPressed: busy ? null : _save,
                  icon: const Icon(Icons.save),
                  label: Text(_isNew ? 'Create Edition' : 'Save Edition'),
                ),
                TonalButton(
                  key: const Key('edition.preview'),
                  label: 'Preview',
                  icon: Icons.visibility,
                  onPressed: busy ? null : _preview_,
                ),
                if (!_isNew)
                  TonalButton(
                    key: const Key('edition.run'),
                    label: 'Run Now',
                    icon: Icons.play_arrow,
                    onPressed: busy ? null : _runNow,
                  ),
                if (!_isNew)
                  DangerButton(
                    key: const Key('edition.delete'),
                    label: 'Delete',
                    onPressed: busy ? null : _delete,
                  ),
                statusLine,
              ],
            ),
            if (_preview case final run?) ...<Widget>[
              const SizedBox(height: 20),
              EditionPreviewCard(run: run, edition: _s),
            ],
          ],
        ),
      ),
    );
  }
}

/// The source/kind picker: chips for each source, and for each kind the chosen
/// sources carry. Reuses the source catalog (`listSources`).
class _SourcePicker extends ConsumerWidget {
  const _SourcePicker({
    required this.selectedSources,
    required this.selectedKinds,
    required this.onToggleSource,
    required this.onToggleKind,
  });

  final Set<String> selectedSources;
  final Set<String> selectedKinds;
  final void Function(String id, bool on)? onToggleSource;
  final void Function(String kind, bool on)? onToggleKind;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AsyncView<List<SourceSummary>>(
      value: ref.watch(sourceListProvider),
      onRetry: () => ref.invalidate(sourceListProvider),
      data: (sources) {
        final kinds = <String>{
          for (final s in sources) ...s.kinds,
        }.toList()..sort();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Wrap(
              spacing: 8,
              runSpacing: 4,
              children: <Widget>[
                for (final s in sources)
                  FilterChip(
                    key: Key('edition.source.${s.id}'),
                    label: Text(s.name.isEmpty ? s.id : s.name),
                    selected: selectedSources.contains(s.id),
                    onSelected: onToggleSource == null ? null : (on) => onToggleSource!(s.id, on),
                  ),
              ],
            ),
            if (kinds.isNotEmpty) ...<Widget>[
              const SizedBox(height: 12),
              Text('Kinds', style: Theme.of(context).textTheme.titleSmall),
              Wrap(
                spacing: 8,
                runSpacing: 4,
                children: <Widget>[
                  for (final k in kinds)
                    FilterChip(
                      key: Key('edition.kind.$k'),
                      label: Text(k),
                      selected: selectedKinds.contains(k),
                      onSelected: onToggleKind == null ? null : (on) => onToggleKind!(k, on),
                    ),
                ],
              ),
            ],
          ],
        );
      },
    );
  }
}
