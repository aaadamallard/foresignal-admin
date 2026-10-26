import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/permissions.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_providers.dart' show Json;
import '../forecasting/forecasting_widgets.dart'
    show ConfirmRow, Footnote, PlainField, WriteTracking, whenText;
import '../usage/usage_providers.dart' show retentionProvider;
import 'storage_providers.dart';

/// The Retention tab: the history cap (`capHistory`, `maxDays`, `maxDbGb`,
/// `overwriteOldest` in `RetentionSettings`). Every save and every run
/// first shows `previewRetention` — what the next run would prune — and
/// asks to go ahead. The per-subsystem windows stay on Usage → Retention.
class RetentionCapPanel extends ConsumerWidget {
  /// Creates the panel.
  const RetentionCapPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => SectionCard(
    key: const Key('retentionCap'),
    title: 'History cap',
    subtitle:
        'Off, everything is kept for its own window. On, history is kept to at most a number '
        'of days and/or under a database size, oldest first.',
    child: AsyncView<Json>(
      value: ref.watch(retentionJsonProvider),
      onRetry: () => ref.invalidate(retentionJsonProvider),
      data: (read) => RetentionCapForm(key: ValueKey<String>(jsonEncode(read)), read: read),
    ),
  );
}

/// What is about to happen once the preview is shown.
enum _Pending { save, run }

/// The editor of [read], the retention settings as sent.
class RetentionCapForm extends ConsumerStatefulWidget {
  /// Creates the form.
  const RetentionCapForm({super.key, required this.read});

  /// The retention settings as read.
  final Json read;

  @override
  ConsumerState<RetentionCapForm> createState() => _RetentionCapFormState();
}

class _RetentionCapFormState extends ConsumerState<RetentionCapForm>
    with WriteTracking<RetentionCapForm> {
  late bool _cap = widget.read['capHistory'] == true;
  late bool _overwrite = widget.read['overwriteOldest'] as bool? ?? true;
  late final TextEditingController _days = TextEditingController(
    text: widget.read['maxDays']?.toString() ?? '',
  );
  late final TextEditingController _gb = TextEditingController(
    text: widget.read['maxDbGb']?.toString() ?? '',
  );
  Map<String, String> _errors = const <String, String>{};
  _Pending? _pending;
  Json? _preview;
  Object? _previewError;
  bool _previewing = false;
  Json? _ran;

  @override
  void dispose() {
    _days.dispose();
    _gb.dispose();
    super.dispose();
  }

  Json? _body() {
    final errors = <String, String>{};
    int? days;
    num? gb;
    if (_days.text.trim().isNotEmpty) {
      days = int.tryParse(_days.text.trim());
      if (days == null || days < 1) {
        errors['maxDays'] = 'A whole number of days, 1 or more.';
      }
    }
    if (_gb.text.trim().isNotEmpty) {
      gb = num.tryParse(_gb.text.trim());
      if (gb == null || gb <= 0) {
        errors['maxDbGb'] = 'A size in GB above 0.';
      }
    }
    if (_cap && days == null && gb == null && errors.isEmpty) {
      errors['maxDays'] = 'With the cap on, give a number of days, a size, or both.';
    }
    setState(() => _errors = errors);
    if (errors.isNotEmpty) {
      return null;
    }
    return <String, Object?>{
      ...widget.read,
      'capHistory': _cap,
      'maxDays': _cap ? days : null,
      'maxDbGb': _cap ? gb : null,
      'overwriteOldest': _overwrite,
    };
  }

  /// Reads the preview, then waits for the operator to go ahead with [next].
  Future<void> _previewThen(_Pending next) async {
    if (next == _Pending.save && _body() == null) {
      return;
    }
    setState(() {
      _pending = next;
      _previewing = true;
      _previewError = null;
      _ran = null;
    });
    ref.invalidate(retentionPreviewProvider);
    try {
      final preview = await ref.read(retentionPreviewProvider.future);
      if (mounted) {
        setState(() => _preview = preview);
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() => _previewError = e);
      }
    } finally {
      if (mounted) {
        setState(() => _previewing = false);
      }
    }
  }

  Future<void> _save() async {
    final body = _body();
    if (body == null) {
      return;
    }
    setState(() => _pending = null);
    final dio = ref.read(backendDioProvider);
    final done = await track(
      () => writeThenConfirm<Json>(
        write: () => jsonCall(dio, 'PUT', '/v1/settings/retention', body: body),
        reread: () => jsonObjectCall(dio, 'GET', '/v1/settings/retention'),
        confirm: (back) {
          for (final key in <String>['capHistory', 'maxDays', 'maxDbGb', 'overwriteOldest']) {
            if ('${back[key]}' != '${body[key]}') {
              return '${wireText(key)} reads back as ${back[key] ?? 'unset'}.';
            }
          }
          return null;
        },
      ),
    );
    if (done != null && mounted) {
      ref
        ..invalidate(retentionJsonProvider)
        ..invalidate(retentionProvider)
        ..invalidate(retentionPreviewProvider);
    }
  }

  Future<void> _run() async {
    setState(() => _pending = null);
    final ran = await track(
      () => jsonObjectCall(ref.read(backendDioProvider), 'POST', '/v1/settings/retention/run'),
    );
    if (ran != null && mounted) {
      setState(() {
        _ran = ran;
        _preview = null;
      });
      ref.invalidate(retentionPreviewProvider);
    }
  }

  @override
  Widget build(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        CheckboxListTile(
          key: const Key('retention.capHistory'),
          contentPadding: EdgeInsets.zero,
          controlAffinity: ListTileControlAffinity.leading,
          value: _cap,
          onChanged: busy ? null : (v) => setState(() => _cap = v ?? false),
          title: const Text('Cap history'),
          subtitle: const Text('Off by default: keep everything for its own window.'),
        ),
        if (_cap) ...<Widget>[
          LabeledField(
            label: 'Keep at most',
            help: 'Days of history, an upper bound over every window.',
            field: PlainField(
              key: const Key('retention.maxDays'),
              controller: _days,
              hint: 'Days',
              error: _errors['maxDays'],
            ),
          ),
          LabeledField(
            label: 'Keep the database under',
            help: 'GB; the window steps down, oldest data first, while it is over.',
            field: PlainField(
              key: const Key('retention.maxDbGb'),
              controller: _gb,
              hint: 'GB',
              error: _errors['maxDbGb'],
            ),
          ),
          LabeledField(
            label: 'Overwrite oldest',
            help: 'Off, a size breach is reported but nothing extra is removed.',
            field: Align(
              alignment: Alignment.centerLeft,
              child: Switch(
                key: const Key('retention.overwriteOldest'),
                value: _overwrite,
                onChanged: busy ? null : (v) => setState(() => _overwrite = v),
              ),
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
              permission: Permissions.storageManage,
              child: FilledButton(
                key: const Key('retention.save'),
                onPressed: busy || _previewing ? null : () => _previewThen(_Pending.save),
                child: const Text('Save Cap'),
              ),
            ),
            PermissionGate(
              permission: Permissions.storageManage,
              child: TonalButton(
                key: const Key('retention.run'),
                label: 'Run Retention Now',
                icon: Icons.play_arrow,
                onPressed: busy || _previewing ? null : () => _previewThen(_Pending.run),
              ),
            ),
            statusLine,
          ],
        ),
        if (_previewing)
          const Padding(padding: EdgeInsets.only(top: 12), child: LinearProgressIndicator()),
        if (_previewError case final e?) ...<Widget>[
          const SizedBox(height: 12),
          ErrorBanner(error: e, title: 'Could not preview what would be pruned'),
        ],
        if (_preview case final preview? when _pending != null) ...<Widget>[
          const SizedBox(height: 12),
          RetentionPreviewView(preview: preview),
          const SizedBox(height: 8),
          ConfirmRow(
            confirmKey: Key(
              _pending == _Pending.save ? 'retention.confirmSave' : 'retention.confirmRun',
            ),
            message: _pending == _Pending.save
                ? 'This is what the saved policy prunes on its next run. Save the new cap? The preview '
                      'is read again afterwards, under the new cap, before anything runs.'
                : 'Run retention now and prune what is listed above? Pruned data is gone unless an '
                      'archive target keeps it.',
            action: _pending == _Pending.save ? 'Save' : 'Run',
            onConfirm: _pending == _Pending.save ? _save : _run,
            onCancel: () => setState(() => _pending = null),
          ),
        ],
        if (_ran case final ran?) ...<Widget>[
          const SizedBox(height: 12),
          ResultPanel(
            key: const Key('retention.ran'),
            title: 'Retention ran',
            tone: StatusTone.ok,
            details: <MapEntry<String, Object>>[
              for (final e in ran.entries)
                if (e.value is num || e.value is String || e.value is bool)
                  MapEntry<String, Object>(wireText(e.key), '${e.value}'),
            ],
          ),
        ],
        const SizedBox(height: 8),
        Text(
          'The per-subsystem windows (records, alerts, track history…) are on Usage → Retention.',
          style: TextStyle(color: muted, fontSize: 12),
        ),
      ],
    );
  }
}

/// A `RetentionPreview`: what the next run would prune, per subsystem, and
/// the database cap as it would find it.
class RetentionPreviewView extends StatelessWidget {
  /// Creates the view.
  const RetentionPreviewView({super.key, required this.preview});

  /// The preview as read.
  final Json preview;

  @override
  Widget build(BuildContext context) {
    final items = <Json>[
      for (final i in (preview['items'] as List?) ?? const <Object?>[])
        if (i is Map) i.cast<String, Object?>(),
    ];
    final dbCap = (preview['dbCap'] as Map?)?.cast<String, Object?>();
    return Column(
      key: const Key('retention.preview'),
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'Would prune ${preview['totalAffected'] ?? 0} rows'
          '${preview['totalBytesEstimate'] == null ? '' : ' (about ${storageBytesText(preview['totalBytesEstimate'])})'}',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(height: 8),
        DataTableCard<Json>(
          rows: items,
          empty: 'Nothing would be pruned.',
          columns: <TableColumnSpec<Json>>[
            TableColumnSpec<Json>(
              label: 'What',
              cell: (i) => Text(
                <String>[
                  wireText('${i['subsystem']}'),
                  if (i['kind'] != null) '${i['kind']}',
                ].join(' · '),
              ),
            ),
            TableColumnSpec<Json>(label: 'Oldest kept', cell: (i) => Text(whenText(i['cutoff']))),
            TableColumnSpec<Json>(
              label: 'Rows',
              numeric: true,
              cell: (i) => Text('${i['affectedCount'] ?? 0}'),
            ),
            TableColumnSpec<Json>(
              label: 'Size',
              numeric: true,
              cell: (i) => Text(storageBytesText(i['bytesEstimate'])),
            ),
          ],
        ),
        if (dbCap != null)
          Footnote(
            'Database ${storageBytesText(dbCap['sizeBytes'])} of a ${storageBytesText(dbCap['capBytes'])} cap'
            '${dbCap['exceeded'] == true ? ', over it' : ''}'
            '${dbCap['windowDays'] == null ? '' : '; the window has stepped down to ${dbCap['windowDays']} days'}.',
          ),
      ],
    );
  }
}
