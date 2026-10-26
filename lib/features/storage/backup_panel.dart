import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/permissions.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_providers.dart' show Json;
import '../forecasting/forecasting_widgets.dart'
    show ConfirmRow, Footnote, PlainField, WireDropdown, WriteTracking, whenText;
import 'archive_runs_panel.dart' show storageStatusTone;
import 'storage_providers.dart';

/// The Backup tab: the backup settings (`getBackupSettings` /
/// `updateBackupSettings`), a backup on request (`runBackup`), the history
/// (`listBackups`) and a restore (`restoreBackup`) behind a typed confirm.
class BackupPanel extends ConsumerWidget {
  /// Creates the panel.
  const BackupPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      SectionCard(
        key: const Key('storage.backup.settings'),
        title: 'Backup Settings',
        subtitle:
            'Database dumps, and optionally the configuration bundle, on a schedule or on request.',
        child: AsyncView<Json>(
          value: ref.watch(backupSettingsProvider),
          onRetry: () => ref.invalidate(backupSettingsProvider),
          data: (s) => BackupSettingsForm(key: ValueKey<String>(jsonEncode(s)), settings: s),
        ),
      ),
      const SizedBox(height: 20),
      const BackupRunCard(),
      const SizedBox(height: 20),
      const BackupHistoryCard(),
    ],
  );
}

/// The backup targets, by wire name.
const List<String> backupTargets = <String>['local', 'external', 's3'];

/// The labels of [backupTargets].
const Map<String, String> backupTargetLabels = <String, String>{
  'local': 'Data directory',
  'external': 'External disk',
  's3': 'S3',
};

/// The backup types, by wire name.
const List<String> backupTypes = <String>['database', 'config', 'full'];

/// The labels of [backupTypes].
const Map<String, String> backupTypeLabels = <String, String>{
  'database': 'Database',
  'config': 'Configuration',
  'full': 'Database and configuration',
};

/// The editor of the backup [settings]. The S3 keys are write-only: the form
/// shows which are stored (`secretsSet`) and sends a key only when typed.
class BackupSettingsForm extends ConsumerStatefulWidget {
  /// Creates the form.
  const BackupSettingsForm({super.key, required this.settings});

  /// The settings as read.
  final Json settings;

  @override
  ConsumerState<BackupSettingsForm> createState() => _BackupSettingsFormState();
}

class _BackupSettingsFormState extends ConsumerState<BackupSettingsForm>
    with WriteTracking<BackupSettingsForm> {
  late bool _enabled = widget.settings['enabled'] == true;
  late bool _includeConfig = widget.settings['includeConfig'] as bool? ?? true;
  late String _target = widget.settings['target'] as String? ?? 'local';
  late bool _pathStyle = _s3['pathStyle'] == true;
  late final Map<String, TextEditingController> _c = <String, TextEditingController>{
    'schedule': TextEditingController(text: widget.settings['schedule'] as String? ?? ''),
    'root': TextEditingController(text: widget.settings['root'] as String? ?? ''),
    'keepBackups': TextEditingController(text: widget.settings['keepBackups']?.toString() ?? ''),
    for (final k in <String>['endpoint', 'bucket', 'prefix', 'region'])
      k: TextEditingController(text: _s3[k] as String? ?? ''),
    'accessKey': TextEditingController(),
    'secretKey': TextEditingController(),
  };
  Map<String, String> _errors = const <String, String>{};

  Json get _s3 =>
      (widget.settings['s3'] as Map?)?.cast<String, Object?>() ?? const <String, Object?>{};

  List<String> get _secretsSet => <String>[
    for (final s in (widget.settings['secretsSet'] as List?) ?? const <Object?>[]) '$s',
  ];

  @override
  void dispose() {
    for (final c in _c.values) {
      c.dispose();
    }
    super.dispose();
  }

  String _t(String key) => _c[key]!.text.trim();

  Json? _body() {
    final errors = <String, String>{};
    final schedule = _t('schedule');
    if (schedule.isNotEmpty && schedule.split(RegExp(r'\s+')).length != 6) {
      errors['schedule'] = 'Six fields: second minute hour day month weekday (UTC).';
    }
    final root = _t('root');
    if (_target == 'external' && !root.startsWith('/')) {
      errors['root'] = 'An external disk needs an absolute path.';
    }
    int? keep;
    if (_t('keepBackups').isNotEmpty) {
      keep = int.tryParse(_t('keepBackups'));
      if (keep == null || keep < 1 || keep > 10000) {
        errors['keepBackups'] = 'A whole number from 1 to 10000; empty keeps every backup.';
      }
    }
    if (_target == 's3') {
      final endpoint = Uri.tryParse(_t('endpoint'));
      if (endpoint == null || !endpoint.hasScheme || endpoint.host.isEmpty) {
        errors['endpoint'] = 'An endpoint URL, e.g. https://s3.us-east-1.amazonaws.com.';
      }
      if (_t('bucket').isEmpty) {
        errors['bucket'] = 'The bucket name.';
      }
    }
    setState(() => _errors = errors);
    if (errors.isNotEmpty) {
      return null;
    }
    final secrets = <String, Object?>{
      if (_t('accessKey').isNotEmpty) 'accessKey': _t('accessKey'),
      if (_t('secretKey').isNotEmpty) 'secretKey': _t('secretKey'),
    };
    return <String, Object?>{
      'enabled': _enabled,
      'schedule': schedule.isEmpty ? null : schedule,
      'target': _target,
      'root': root.isEmpty ? null : root,
      's3': _target == 's3'
          ? <String, Object?>{
              ..._s3,
              'endpoint': _t('endpoint'),
              'bucket': _t('bucket'),
              'prefix': _t('prefix'),
              'region': _t('region'),
              'pathStyle': _pathStyle,
            }
          : widget.settings['s3'],
      'keepBackups': keep,
      'includeConfig': _includeConfig,
      if (secrets.isNotEmpty) 'secrets': secrets,
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
        write: () => jsonCall(dio, 'PUT', '/v1/settings/backup', body: body),
        reread: () => jsonObjectCall(dio, 'GET', '/v1/settings/backup'),
        confirm: (back) {
          for (final key in <String>[
            'enabled',
            'schedule',
            'target',
            'root',
            'keepBackups',
            'includeConfig',
          ]) {
            if ('${back[key]}' != '${body[key]}') {
              return '${wireText(key)} reads back as ${back[key] ?? 'unset'}.';
            }
          }
          return null;
        },
      ),
    );
    // The keys went to the backend once; they are never kept or shown.
    _c['accessKey']!.clear();
    _c['secretKey']!.clear();
    if (done != null && mounted) {
      ref.invalidate(backupSettingsProvider);
    }
  }

  Widget _field(String key, String label, String help, {String? hint, bool obscure = false}) =>
      LabeledField(
        label: label,
        help: help,
        field: obscure
            ? TextField(
                key: Key('backup.$key'),
                controller: _c[key],
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(hintText: hint, isDense: true),
              )
            : PlainField(
                key: Key('backup.$key'),
                controller: _c[key]!,
                hint: hint,
                error: _errors[key],
              ),
      );

  @override
  Widget build(BuildContext context) {
    final lastRun = widget.settings['lastRunAt'];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SwitchListTile(
          key: const Key('backup.enabled'),
          contentPadding: EdgeInsets.zero,
          value: _enabled,
          onChanged: busy ? null : (v) => setState(() => _enabled = v),
          title: const Text('Backups on'),
          subtitle: const Text('Off, nothing is scheduled and a backup on request is refused.'),
        ),
        _field(
          'schedule',
          'Schedule',
          'Cron, six fields, UTC. Empty: only on request.',
          hint: '0 0 3 * * *',
        ),
        LabeledField(
          label: 'Target',
          help: 'Where the backup files go.',
          field: WireDropdown(
            key: const Key('backup.target'),
            value: backupTargets.contains(_target) ? _target : null,
            values: backupTargets,
            labels: backupTargetLabels,
            onChanged: (v) => setState(() => _target = v),
          ),
        ),
        if (_target != 's3')
          _field(
            'root',
            'Directory',
            _target == 'external'
                ? 'The absolute path of the mounted disk.'
                : 'Empty uses the data directory; a relative path is under it.',
          ),
        if (_target == 's3') ...<Widget>[
          _field('endpoint', 'Endpoint', 'The S3-compatible endpoint URL.'),
          _field('bucket', 'Bucket', 'The bucket name.'),
          _field('prefix', 'Prefix', 'Optional key prefix.'),
          _field('region', 'Region', 'Optional, e.g. us-east-1.'),
          CheckboxListTile(
            key: const Key('backup.pathStyle'),
            contentPadding: EdgeInsets.zero,
            controlAffinity: ListTileControlAffinity.leading,
            value: _pathStyle,
            onChanged: busy ? null : (v) => setState(() => _pathStyle = v ?? false),
            title: const Text('Path-style addressing'),
          ),
          for (final key in <String>['accessKey', 'secretKey'])
            _field(
              key,
              key == 'accessKey' ? 'Access key' : 'Secret key',
              _secretsSet.contains(key) ? 'Stored. Type a new one to replace it.' : 'Not stored.',
              hint: _secretsSet.contains(key) ? 'Stored (hidden)' : null,
              obscure: true,
            ),
          Wrap(
            key: const Key('backup.secretsSet'),
            spacing: 8,
            children: <Widget>[
              for (final key in <String>['accessKey', 'secretKey'])
                StatusChip(
                  label:
                      '${key == 'accessKey' ? 'Access key' : 'Secret key'}: '
                      '${_secretsSet.contains(key) ? 'set' : 'not set'}',
                  tone: _secretsSet.contains(key) ? StatusTone.ok : StatusTone.neutral,
                ),
            ],
          ),
        ],
        _field(
          'keepBackups',
          'Keep',
          'How many complete backups of each type; empty keeps every one.',
        ),
        CheckboxListTile(
          key: const Key('backup.includeConfig'),
          contentPadding: EdgeInsets.zero,
          controlAffinity: ListTileControlAffinity.leading,
          value: _includeConfig,
          onChanged: busy ? null : (v) => setState(() => _includeConfig = v ?? true),
          title: const Text('Include the configuration'),
          subtitle: const Text('Scheduled backups also write the settings bundle (no secrets).'),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 12,
          runSpacing: 8,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            PermissionGate(
              permission: Permissions.storageManage,
              child: FilledButton(
                key: const Key('backup.save'),
                onPressed: busy ? null : _save,
                child: const Text('Save Backup Settings'),
              ),
            ),
            statusLine,
          ],
        ),
        if (lastRun != null) Footnote('Last backup ran ${whenText(lastRun)}.'),
      ],
    );
  }
}

/// Runs a backup now (`runBackup`).
class BackupRunCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const BackupRunCard({super.key});

  @override
  ConsumerState<BackupRunCard> createState() => _BackupRunCardState();
}

class _BackupRunCardState extends ConsumerState<BackupRunCard> with WriteTracking<BackupRunCard> {
  final TextEditingController _label = TextEditingController();
  String? _type;
  bool _confirming = false;
  String? _labelError;
  Json? _started;

  @override
  void dispose() {
    _label.dispose();
    super.dispose();
  }

  void _ask() {
    final tooLong = _label.text.trim().length > 200;
    setState(() {
      _labelError = tooLong ? 'At most 200 characters.' : null;
      _confirming = !tooLong;
      _started = null;
    });
  }

  Future<void> _run() async {
    setState(() => _confirming = false);
    final label = _label.text.trim();
    final started = await track(
      () => jsonObjectCall(
        ref.read(backendDioProvider),
        'POST',
        '/v1/backups/run',
        body: <String, Object?>{'type': ?_type, if (label.isNotEmpty) 'label': label},
      ),
    );
    if (started != null && mounted) {
      setState(() => _started = started);
      ref.invalidate(backupsProvider);
    }
  }

  @override
  Widget build(BuildContext context) => SectionCard(
    key: const Key('storage.backup.run'),
    title: 'Back Up Now',
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        LabeledField(
          label: 'What',
          help:
              'Unset: database and configuration when the settings include it, else the database.',
          field: WireDropdown(
            key: const Key('backupRun.type'),
            value: _type,
            values: backupTypes,
            labels: backupTypeLabels,
            hint: 'As configured',
            onChanged: (v) => setState(() => _type = v),
          ),
        ),
        LabeledField(
          label: 'Label',
          help: 'Optional, e.g. "before upgrade".',
          field: PlainField(
            key: const Key('backupRun.label'),
            controller: _label,
            error: _labelError,
          ),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 12,
          runSpacing: 8,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            PermissionGate(
              permission: Permissions.storageManage,
              child: TonalButton(
                key: const Key('backupRun.start'),
                label: 'Back Up Now',
                icon: Icons.backup_outlined,
                onPressed: busy ? null : _ask,
              ),
            ),
            statusLine,
          ],
        ),
        if (_confirming) ...<Widget>[
          const SizedBox(height: 12),
          ConfirmRow(
            confirmKey: const Key('backupRun.confirm'),
            message: 'Start a ${backupTypeLabels[_type] ?? 'configured'} backup now?',
            action: 'Back Up',
            onConfirm: _run,
            onCancel: () => setState(() => _confirming = false),
          ),
        ],
        if (_started case final b?) ...<Widget>[
          const SizedBox(height: 12),
          ResultPanel(
            key: const Key('backupRun.started'),
            title: 'Backup started',
            tone: StatusTone.info,
            details: <MapEntry<String, Object>>[
              MapEntry<String, Object>('Backup', '${b['id']}'),
              MapEntry<String, Object>('Type', backupTypeLabels[b['type']] ?? '${b['type']}'),
              MapEntry<String, Object>('Status', wireText('${b['status']}')),
            ],
          ),
        ],
      ],
    ),
  );
}

/// The backup history (`listBackups`) with a restore that must be confirmed
/// by typing the backup's id.
class BackupHistoryCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const BackupHistoryCard({super.key});

  @override
  ConsumerState<BackupHistoryCard> createState() => _BackupHistoryCardState();
}

class _BackupHistoryCardState extends ConsumerState<BackupHistoryCard>
    with WriteTracking<BackupHistoryCard> {
  final TextEditingController _typed = TextEditingController();
  Json? _restoring;

  @override
  void dispose() {
    _typed.dispose();
    super.dispose();
  }

  Future<void> _restore(String id) async {
    setState(() => _restoring = null);
    _typed.clear();
    final done = await track(
      () => jsonObjectCall(
        ref.read(backendDioProvider),
        'POST',
        '/v1/backups/${Uri.encodeComponent(id)}/restore',
        body: const <String, Object?>{'confirm': true},
      ),
    );
    if (done != null && mounted) {
      ref.invalidate(backupsProvider);
    }
  }

  /// What restoring [b] replaces, spelled out.
  static String restoreWarning(Json b) {
    final type = b['type'];
    final database =
        'Every database table is replaced with the backup from ${whenText(b['createdAt'])}. '
        'Everything written since then is lost.';
    return <String>[
      if (type == 'database' || type == 'full') database,
      if (type == 'config' || type == 'full') 'The settings are replaced with the ones saved then.',
      'Pause collection first, and restart the server afterwards.',
    ].join(' ');
  }

  @override
  Widget build(BuildContext context) => SectionCard(
    key: const Key('storage.backup.history'),
    title: 'Backups',
    actions: <Widget>[
      IconButton(
        tooltip: 'Refresh',
        onPressed: () => ref.invalidate(backupsProvider),
        icon: const Icon(Icons.refresh),
      ),
    ],
    child: AsyncView<List<Json>>(
      value: ref.watch(backupsProvider),
      onRetry: () => ref.invalidate(backupsProvider),
      data: (backups) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          DataTableCard<Json>(
            rows: backups,
            empty: 'No backups yet.',
            columns: <TableColumnSpec<Json>>[
              TableColumnSpec<Json>(label: 'Created', cell: (b) => Text(whenText(b['createdAt']))),
              TableColumnSpec<Json>(
                label: 'Type',
                cell: (b) => Text(backupTypeLabels[b['type']] ?? '${b['type']}'),
              ),
              TableColumnSpec<Json>(
                label: 'Status',
                cell: (b) => StatusChip(
                  label: wireText('${b['status']}'),
                  tone: storageStatusTone(b['status']),
                  tooltip: b['error'] as String?,
                ),
              ),
              TableColumnSpec<Json>(
                label: 'Target',
                cell: (b) => Text(backupTargetLabels[b['target']] ?? '${b['target']}'),
              ),
              TableColumnSpec<Json>(label: 'Label', cell: (b) => Text('${b['label'] ?? ''}')),
              TableColumnSpec<Json>(
                label: 'Size',
                numeric: true,
                cell: (b) => Text(storageBytesText(b['sizeBytes'])),
              ),
              TableColumnSpec<Json>(
                label: '',
                cell: (b) => b['status'] == 'complete' || b['status'] == 'restored'
                    ? PermissionGate(
                        permission: Permissions.storageManage,
                        child: TextButton(
                          key: Key('backup.restore.${b['id']}'),
                          onPressed: busy
                              ? null
                              : () {
                                  _typed.clear();
                                  setState(() => _restoring = b);
                                },
                          child: const Text('Restore'),
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
            ],
          ),
          if (_restoring case final b?) ...<Widget>[
            const SizedBox(height: 12),
            ResultPanel(
              key: const Key('backup.restoreWarning'),
              title: 'Restore backup ${b['id']}?',
              tone: StatusTone.warning,
              message: restoreWarning(b),
              child: LabeledField(
                label: 'Type the backup id',
                help: 'To confirm, type ${b['id']}.',
                field: PlainField(key: const Key('backup.restoreTyped'), controller: _typed),
              ),
            ),
            const SizedBox(height: 8),
            ListenableBuilder(
              listenable: _typed,
              builder: (context, _) => Wrap(
                spacing: 12,
                children: <Widget>[
                  DangerButton(
                    key: const Key('backup.confirmRestore'),
                    label: 'Restore',
                    icon: Icons.restore,
                    onPressed: _typed.text.trim() == '${b['id']}' && !busy
                        ? () => _restore('${b['id']}')
                        : null,
                  ),
                  TextButton(
                    onPressed: () => setState(() => _restoring = null),
                    child: const Text('Cancel'),
                  ),
                ],
              ),
            ),
          ],
          const SizedBox(height: 8),
          statusLine,
          if (backups.length >= storageMaxPages * storagePageSize)
            Footnote('Showing the newest ${backups.length} backups.'),
        ],
      ),
    ),
  );
}
