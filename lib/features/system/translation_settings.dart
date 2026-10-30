import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/access.dart';
import '../../core/format/instant_text.dart';
import '../../core/format/money_text.dart';
import '../../core/permissions.dart';
import '../../core/ui/ui.dart';
import '../ai/ai_screen.dart' show MyLlmBudgetCard;
import '../forecasting/forecasting_providers.dart' show Json;
import '../forecasting/forecasting_widgets.dart'
    show Footnote, PlainField, WireDropdown, WriteTracking;
import 'settings_tabs.dart';

/// The translation engines the contract names today (`x-extensible-enum`).
const List<String> translationEngines = <String>['llm'];

/// The fields the contract can translate today (`x-extensible-enum`): the
/// title and the feed excerpt.
const List<String> translationFields = <String>['title', 'excerpt'];

/// Human labels for [translationFields].
const Map<String, String> translationFieldLabels = <String, String>{
  'title': 'Title',
  'excerpt': 'Excerpt (feed summary)',
};

/// The budget windows a translation cap can apply to.
const List<String> translationBudgetWindows = <String>['hour', 'day', 'month'];

/// A BCP 47 language tag, as the contract constrains `targetLanguages`.
final RegExp _bcp47 = RegExp(r'^[A-Za-z]{2,3}(-[A-Za-z0-9]{2,8})*$');

/// The current news-translation settings (`getTranslationSettings`).
final translationSettingsProvider = FutureProvider<Json>(
  (ref) => jsonObjectCall(ref.watch(backendDioProvider), 'GET', '/v1/settings/translation'),
);

/// The Translation tab of System (`system.settings`): how foreign-language
/// news is translated into the operator's target languages at ingest.
class TranslationSettingsPanel extends ConsumerWidget {
  /// Creates the panel.
  const TranslationSettingsPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final access = ref.watch(accessProvider);
    return SettingsColumn(
      children: <Widget>[
        SectionCard(
          key: const Key('translation'),
          title: 'News translation',
          subtitle:
              'Foreign-language news is translated into your target languages at ingest and stored '
              'beside the untouched original. The engine spends against the LLM budget; set a '
              'translation-only cap below. Provider keys live in the backend, never in this app.',
          child: AsyncView<Json>(
            value: ref.watch(translationSettingsProvider),
            onRetry: () => ref.invalidate(translationSettingsProvider),
            data: (s) => TranslationSettingsForm(key: ValueKey<String>(jsonEncode(s)), settings: s),
          ),
        ),
        // The LLM budget context (reused from R2-007) so the operator sees the
        // cost lever translation spends against; only when they may read it.
        if (access.can(Permissions.selfLlm)) const MyLlmBudgetCard(),
      ],
    );
  }
}

/// The editor of the translation [settings] (`updateTranslationSettings`,
/// confirmed by `getTranslationSettings`).
class TranslationSettingsForm extends ConsumerStatefulWidget {
  /// Creates the form.
  const TranslationSettingsForm({super.key, required this.settings});

  /// The settings as read.
  final Json settings;

  @override
  ConsumerState<TranslationSettingsForm> createState() => _TranslationSettingsFormState();
}

class _TranslationSettingsFormState extends ConsumerState<TranslationSettingsForm>
    with WriteTracking<TranslationSettingsForm> {
  late bool _enabled = widget.settings['enabled'] == true;
  late String _engine = widget.settings['engine'] as String? ?? 'llm';
  late String _window = _budget['window'] as String? ?? 'day';

  // The chosen known fields, and any value the contract has grown that this
  // build does not render — preserved so a save never drops it.
  late final Set<String> _fields = _fieldsFrom(widget.settings['fields']);
  late final List<String> _extraFields = _extraFieldsFrom(widget.settings['fields']);

  late final TextEditingController _languages = TextEditingController(
    text: _languagesFrom(widget.settings['targetLanguages']).join(' '),
  );
  late final TextEditingController _confidence = TextEditingController(
    text: (widget.settings['minSourceLanguageConfidence'] as num?)?.toString() ?? '0.8',
  );
  late final TextEditingController _cap = TextEditingController(
    text: (_budget['capUsd'] as num?)?.toString() ?? '',
  );
  Map<String, String> _errors = const <String, String>{};

  Json get _budget => (widget.settings['budget'] as Map?)?.cast<String, Object?>() ?? const <String, Object?>{};

  Json? get _spend => (widget.settings['spend'] as Map?)?.cast<String, Object?>();

  static Set<String> _fieldsFrom(Object? raw) => <String>{
    for (final f in (raw as List?) ?? const <Object?>[])
      if (f is String && translationFields.contains(f)) f,
  };

  static List<String> _extraFieldsFrom(Object? raw) => <String>[
    for (final f in (raw as List?) ?? const <Object?>[])
      if (f is String && !translationFields.contains(f)) f,
  ];

  static List<String> _languagesFrom(Object? raw) => <String>[
    for (final l in (raw as List?) ?? const <Object?>[])
      if (l is String) l,
  ];

  @override
  void dispose() {
    _languages.dispose();
    _confidence.dispose();
    _cap.dispose();
    super.dispose();
  }

  /// Parses the language box: tags split on commas or whitespace, trimmed,
  /// de-duplicated in order.
  List<String> _parseLanguages() {
    final seen = <String>{};
    final out = <String>[];
    for (final raw in _languages.text.split(RegExp(r'[\s,]+'))) {
      final tag = raw.trim();
      if (tag.isEmpty || !seen.add(tag.toLowerCase())) {
        continue;
      }
      out.add(tag);
    }
    return out;
  }

  Json? _body() {
    final errors = <String, String>{};
    final languages = _parseLanguages();
    if (_enabled && languages.isEmpty) {
      errors['languages'] = 'At least one target language while translation is on.';
    }
    if (languages.length > 10) {
      errors['languages'] = 'At most 10 target languages.';
    }
    for (final tag in languages) {
      if (!_bcp47.hasMatch(tag)) {
        errors['languages'] = 'Each tag is BCP 47, e.g. en, es or pt-BR; "$tag" is not.';
        break;
      }
    }
    num? confidence;
    if (_confidence.text.trim().isEmpty) {
      errors['confidence'] = 'A confidence from 0 to 1.';
    } else {
      confidence = num.tryParse(_confidence.text.trim());
      if (confidence == null || confidence < 0 || confidence > 1) {
        errors['confidence'] = 'A number from 0 to 1.';
      }
    }
    num? cap;
    if (_cap.text.trim().isNotEmpty) {
      cap = num.tryParse(_cap.text.trim());
      if (cap == null || cap < 0) {
        errors['cap'] = 'A USD amount of 0 or more, or empty for no cap.';
      }
    }
    setState(() => _errors = errors);
    if (errors.isNotEmpty) {
      return null;
    }
    return <String, Object?>{
      'enabled': _enabled,
      'targetLanguages': languages,
      // Known choices in contract order, then any grown value we preserved.
      'fields': <String>[
        for (final f in translationFields)
          if (_fields.contains(f)) f,
        ..._extraFields,
      ],
      'engine': _engine,
      'minSourceLanguageConfidence': confidence,
      'budget': <String, Object?>{'window': _window, 'capUsd': cap},
    };
  }

  Future<void> _save() async {
    final body = _body();
    if (body == null) {
      return;
    }
    final dio = ref.read(backendDioProvider);
    final done = await track(
      () => writeThenConfirm<Json>(
        write: () => jsonCall(dio, 'PUT', '/v1/settings/translation', body: body),
        reread: () => jsonObjectCall(dio, 'GET', '/v1/settings/translation'),
        confirm: (back) {
          if (back['enabled'] != body['enabled']) {
            return 'Translation reads back ${back['enabled'] == true ? 'on' : 'off'}.';
          }
          if (back['engine'] != body['engine']) {
            return 'The engine reads back as ${back['engine']}.';
          }
          final backLangs = _languagesFrom(back['targetLanguages']).toSet();
          if (!setEquals(backLangs, (body['targetLanguages'] as List).cast<String>().toSet())) {
            return 'The target languages read back as ${backLangs.join(', ')}.';
          }
          final backFields = ((back['fields'] as List?) ?? const <Object?>[]).cast<String>().toSet();
          if (!setEquals(backFields, (body['fields'] as List).cast<String>().toSet())) {
            return 'The fields read back as ${backFields.join(', ')}.';
          }
          final backBudget = (back['budget'] as Map?)?.cast<String, Object?>() ?? const <String, Object?>{};
          final bodyBudget = body['budget'] as Json;
          if (backBudget['window'] != bodyBudget['window'] ||
              '${backBudget['capUsd']}' != '${bodyBudget['capUsd']}') {
            return 'The budget reads back as ${backBudget['capUsd'] ?? 'no cap'} per ${backBudget['window']}.';
          }
          return null;
        },
      ),
    );
    if (done != null && mounted) {
      ref.invalidate(translationSettingsProvider);
    }
  }

  @override
  Widget build(BuildContext context) {
    final spend = _spend;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SwitchListTile(
          key: const Key('translation.enabled'),
          contentPadding: EdgeInsets.zero,
          value: _enabled,
          onChanged: busy ? null : (v) => setState(() => _enabled = v),
          title: const Text('Translate foreign news'),
          subtitle: const Text(
            'Off, reads carry the original language only and nothing is translated.',
          ),
        ),
        LabeledField(
          label: 'Target languages',
          help: 'BCP 47 tags, space- or comma-separated (e.g. en es pt-BR). Up to 10. '
              'An article already in a target language is not translated into it.',
          field: PlainField(
            key: const Key('translation.languages'),
            controller: _languages,
            hint: 'en es',
            error: _errors['languages'],
          ),
        ),
        LabeledField(
          label: 'Fields to translate',
          field: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              for (final f in translationFields)
                CheckboxListTile(
                  key: Key('translation.field.$f'),
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  controlAffinity: ListTileControlAffinity.leading,
                  value: _fields.contains(f),
                  onChanged: busy
                      ? null
                      : (on) => setState(() => on == true ? _fields.add(f) : _fields.remove(f)),
                  title: Text(translationFieldLabels[f] ?? f),
                ),
              if (_extraFields.isNotEmpty)
                Footnote('Also kept from the backend: ${_extraFields.join(', ')}.'),
            ],
          ),
        ),
        LabeledField(
          label: 'Engine',
          help: 'The LLM translation layer, governed by the LLM budget.',
          field: WireDropdown(
            key: const Key('translation.engine'),
            value: _engine,
            values: <String>{...translationEngines, _engine}.toList(),
            onChanged: (v) => setState(() => _engine = v),
          ),
        ),
        LabeledField(
          label: 'Min source confidence',
          help: 'The least confidence in the detected source language at which an article is '
              'translated; below it, it is left as is. 0 to 1.',
          field: PlainField(
            key: const Key('translation.confidence'),
            controller: _confidence,
            hint: '0.8',
            error: _errors['confidence'],
          ),
        ),
        const Divider(height: 32),
        Text('Translation budget', style: Theme.of(context).textTheme.titleSmall),
        const Footnote('A spend cap for translation alone, inside the provider\'s own caps.'),
        LabeledField(
          label: 'Window',
          field: WireDropdown(
            key: const Key('translation.window'),
            value: _window,
            values: <String>{...translationBudgetWindows, _window}.toList(),
            onChanged: (v) => setState(() => _window = v),
          ),
        ),
        LabeledField(
          label: 'Cap (USD)',
          help: 'USD translation may spend per window; empty for no separate cap. Once spent, '
              'articles are left untranslated until the window resets.',
          field: PlainField(
            key: const Key('translation.cap'),
            controller: _cap,
            hint: 'No cap',
            error: _errors['cap'],
          ),
        ),
        if (spend != null) ...<Widget>[
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.centerLeft,
            child: StatusChip(
              key: const Key('translation.spend'),
              label: 'Spent this ${spend['window'] ?? _window}: '
                  '${usdText((spend['spentUsd'] as num?) ?? 0)}'
                  '${spend['resetsAt'] != null ? ' · resets ${utcClockText(DateTime.parse(spend['resetsAt'] as String))}' : ''}',
              tone: StatusTone.info,
            ),
          ),
        ],
        const SizedBox(height: 12),
        Wrap(
          spacing: 12,
          runSpacing: 8,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            PermissionGate(
              permission: Permissions.systemSettings,
              child: FilledButton(
                key: const Key('translation.save'),
                onPressed: busy ? null : _save,
                child: const Text('Save Translation Settings'),
              ),
            ),
            statusLine,
          ],
        ),
      ],
    );
  }
}
