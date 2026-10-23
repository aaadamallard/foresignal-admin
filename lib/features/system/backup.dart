import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_widgets.dart';
import '../serving/serving_widgets.dart' show SwitchField;
import 'settings_tabs.dart';
import 'system_drafts.dart';

/// The settings objects the contract says an import applies when present
/// (`importSettings`), and that a later export must hold as imported.
const List<String> replacedBundleMembers = <String>['retention', 'cors', 'notifications', 'watchdog'];

/// Where [bundle]'s settings objects differ from [exported] after an
/// import, or `null` when every one reads back as imported. Members the
/// backend reports but does not take (`warnings`) are skipped.
String? importDifference(Json bundle, Json exported) {
  for (final m in replacedBundleMembers) {
    final sent = bundle[m];
    if (sent is! Map) {
      continue;
    }
    final copy = deepCopy(sent.cast<String, Object?>())..remove('warnings');
    final d = sentDifference(copy, exported[m], m);
    if (d != null) {
      return d;
    }
  }
  return null;
}

/// How many entries each list or map section of [bundle] holds, by name.
/// The export's own `warnings` are not a section.
Map<String, int> bundleCounts(Json bundle) => <String, int>{
  for (final e in bundle.entries.where((e) => e.key != 'warnings'))
    if (e.value is List)
      e.key: (e.value! as List).length
    else if (e.key == 'sources' && e.value is Map)
      e.key: (e.value! as Map).length,
};

/// A bundle section name as lower-case words: `pushProviders` reads
/// "push providers".
String sectionName(String member) => member.replaceAllMapped(RegExp('[A-Z]'), (m) => ' ${m[0]!.toLowerCase()}');

/// The default directory for a saved bundle: the home directory.
String defaultBundleDirectory() => Platform.environment['HOME'] ?? Platform.environment['USERPROFILE'] ?? Directory.current.path;

/// The Backup tab: export every setting as one JSON bundle (`exportSettings`)
/// and import one (`importSettings`).
class BackupPanel extends StatefulWidget {
  /// Creates the panel.
  const BackupPanel({super.key});

  @override
  State<BackupPanel> createState() => _BackupPanelState();
}

class _BackupPanelState extends State<BackupPanel> {
  final TextEditingController _import = TextEditingController();

  @override
  void dispose() {
    _import.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SettingsColumn(
    children: <Widget>[
      ExportCard(onUse: (text) => setState(() => _import.text = text)),
      ImportCard(controller: _import),
    ],
  );
}

/// Exports the settings bundle, shows what it holds, and copies or saves it.
class ExportCard extends ConsumerStatefulWidget {
  /// Creates the card; [onUse] hands the bundle's text to the import.
  const ExportCard({super.key, required this.onUse});

  /// Puts the exported text in the import field.
  final ValueChanged<String> onUse;

  @override
  ConsumerState<ExportCard> createState() => _ExportCardState();
}

class _ExportCardState extends ConsumerState<ExportCard> with WriteTracking<ExportCard> {
  bool _places = false;
  bool _watchlists = false;
  Json? _bundle;
  String _text = '';
  final TextEditingController _path = TextEditingController();
  String? _saved;
  String? _saveError;

  @override
  void dispose() {
    _path.dispose();
    super.dispose();
  }

  Future<void> _export() async {
    final dio = ref.read(backendDioProvider);
    final bundle = await track(
      () => jsonObjectCall(
        dio,
        'GET',
        exportSettingsPath,
        query: <String, Object?>{'includePlaces': _places, 'includeWatchlists': _watchlists},
      ),
    );
    if (bundle != null && mounted) {
      setState(() {
        _bundle = bundle;
        _text = const JsonEncoder.withIndent('  ').convert(bundle);
        _path.text = '${defaultBundleDirectory()}${Platform.pathSeparator}${bundleFileName(DateTime.now())}';
        _saved = null;
        _saveError = null;
      });
    }
  }

  Future<void> _save() async {
    final path = _path.text.trim();
    try {
      final file = File(path);
      await file.writeAsString(_text, flush: true);
      final back = await file.readAsString();
      setState(() {
        _saved = back == _text ? 'Saved to $path.' : null;
        _saveError = back == _text ? null : 'The file read back differently.';
      });
    } on FileSystemException catch (e) {
      setState(() {
        _saved = null;
        _saveError = 'Could not save: ${e.osError?.message ?? e.message}.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final bundle = _bundle;
    final palette = AdminPalette.of(context);
    return SectionCard(
      key: const Key('export'),
      title: 'Export Settings',
      subtitle: 'Every setting as one JSON document, for backup or to copy to another instance. Secrets are never included.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          LabeledField(
            label: 'Places',
            help: 'Include places. They reveal locations.',
            field: SwitchField(key: const Key('export.places'), value: _places, onChanged: (v) => setState(() => _places = v)),
          ),
          LabeledField(
            label: 'Watchlists',
            help: 'Include watchlists and their items. They show what is followed.',
            field: SwitchField(key: const Key('export.watchlists'), value: _watchlists, onChanged: (v) => setState(() => _watchlists = v)),
          ),
          FormActions(busy: busy, saveLabel: 'Export', onSave: _export, leading: <Widget>[if (write is WriteFailed) statusLine]),
          if (bundle != null) ...<Widget>[
            const SizedBox(height: 16),
            KeyValueList(
              key: const Key('export.summary'),
              entries: <MapEntry<String, Object>>[
                MapEntry<String, Object>('Exported', whenText(bundle['exportedAt'])),
                MapEntry<String, Object>('Version', '${bundle['foresignalVersion'] ?? '—'}'),
                MapEntry<String, Object>(
                  'Holds',
                  <String>[for (final e in bundleCounts(bundle).entries) '${sectionName(e.key)} ${e.value}'].join(', '),
                ),
                MapEntry<String, Object>('Size', '${utf8.encode(_text).length} bytes'),
              ],
            ),
            for (final w in (bundle['warnings'] as List?) ?? const <Object?>[])
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: ResultPanel(title: 'Note', tone: StatusTone.warning, message: '$w'),
              ),
            const SizedBox(height: 12),
            Container(
              key: const Key('export.json'),
              constraints: const BoxConstraints(maxHeight: 260),
              decoration: BoxDecoration(
                color: palette.input,
                border: Border.all(color: palette.border),
                borderRadius: BorderRadius.circular(8),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(12),
                child: SelectableText(_text, style: const TextStyle(fontFamily: 'monospace', fontSize: 12)),
              ),
            ),
            const SizedBox(height: 12),
            LabeledField(
              label: 'Save as',
              help: 'A file on this computer.',
              field: PlainField(key: const Key('export.path'), controller: _path, error: _saveError),
            ),
            const SizedBox(height: 4),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: <Widget>[
                TonalButton(key: const Key('export.save'), label: 'Save File', icon: Icons.save_alt, onPressed: _save),
                TonalButton(
                  key: const Key('export.copy'),
                  label: 'Copy',
                  icon: Icons.copy,
                  onPressed: () => Clipboard.setData(ClipboardData(text: _text)),
                ),
                TonalButton(
                  key: const Key('export.use'),
                  label: 'Use for Import',
                  icon: Icons.south,
                  onPressed: () => widget.onUse(_text),
                ),
                if (_saved case final s?) Text(s, key: const Key('export.saved'), style: TextStyle(color: palette.ok)),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

/// Imports a settings bundle typed, pasted or loaded from a file, and
/// confirms the settings it replaces by exporting again.
class ImportCard extends ConsumerStatefulWidget {
  /// Creates the card over [controller], the bundle's text.
  const ImportCard({super.key, required this.controller});

  /// The bundle's text.
  final TextEditingController controller;

  @override
  ConsumerState<ImportCard> createState() => _ImportCardState();
}

class _ImportCardState extends ConsumerState<ImportCard> with WriteTracking<ImportCard> {
  final TextEditingController _path = TextEditingController();
  String? _problem;
  String? _loadError;
  bool _confirming = false;
  Json? _report;

  @override
  void dispose() {
    _path.dispose();
    super.dispose();
  }

  Future<void> _load() async {
    try {
      final text = await File(_path.text.trim()).readAsString();
      setState(() {
        widget.controller.text = text;
        _loadError = null;
        _problem = null;
      });
    } on FileSystemException catch (e) {
      setState(() => _loadError = 'Could not read it: ${e.osError?.message ?? e.message}.');
    }
  }

  void _ask() {
    final problem = bundleProblem(widget.controller.text);
    setState(() {
      _problem = problem;
      _confirming = problem == null;
      _report = null;
    });
  }

  Future<void> _import() async {
    final bundle = (jsonDecode(widget.controller.text) as Map).cast<String, Object?>();
    final dio = ref.read(backendDioProvider);
    Json? report;
    final done = await track(
      () => writeThenConfirm<Json>(
        write: () async => report = await jsonObjectCall(dio, 'PUT', importSettingsPath, body: bundle),
        reread: () => jsonObjectCall(dio, 'GET', exportSettingsPath),
        confirm: (exported) => importDifference(bundle, exported),
      ),
    );
    if (mounted) {
      setState(() {
        _confirming = false;
        _report = done == null ? null : report;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final report = _report;
    return SectionCard(
      key: const Key('import'),
      title: 'Import Settings',
      subtitle: 'Applies a bundle in one step: sources are applied, rules and channels added or updated by id, and retention, CORS, '
          'notification and watchdog settings replaced. Any invalid part fails the whole import.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          LabeledField(
            label: 'Load file',
            help: 'A bundle saved from an export.',
            field: Row(
              children: <Widget>[
                Expanded(
                  child: PlainField(
                    key: const Key('import.path'),
                    controller: _path,
                    error: _loadError,
                    hint: '${defaultBundleDirectory()}${Platform.pathSeparator}foresignal-settings-….json',
                  ),
                ),
                const SizedBox(width: 8),
                TonalButton(key: const Key('import.load'), label: 'Load', icon: Icons.file_open, onPressed: _load),
              ],
            ),
          ),
          LabeledField(
            label: 'Bundle',
            help: 'Paste it here, or load it.',
            field: JsonField(key: const Key('import.json'), controller: widget.controller, error: _problem, minLines: 6, maxLines: 14),
          ),
          if (_confirming)
            ConfirmRow(
              message: 'Import this bundle? It replaces the retention, CORS, notification and watchdog settings of this instance.',
              action: 'Import',
              confirmKey: const Key('import.confirm'),
              onConfirm: _import,
              onCancel: () => setState(() => _confirming = false),
            )
          else
            FormActions(busy: busy, saveLabel: 'Import', onSave: _ask, leading: <Widget>[statusLine]),
          if (report != null) ...<Widget>[
            const SizedBox(height: 12),
            ResultPanel(
              key: const Key('import.report'),
              title: 'Imported and confirmed',
              tone: StatusTone.ok,
              message: importReportLines(report).join('\n'),
            ),
            for (final w in (report['warnings'] as List?) ?? const <Object?>[])
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: ResultPanel(title: 'Warning', tone: StatusTone.warning, message: '$w'),
              ),
          ],
        ],
      ),
    );
  }
}
