import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/format/instant_text.dart';
import '../../core/permissions.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../alerts/alerts_providers.dart' show channelsProvider;
import '../forecasting/forecasting_providers.dart' show Json;
import '../forecasting/forecasting_widgets.dart' show Footnote, PlainField, WriteTracking;
import 'storage_providers.dart';

/// The Resources tab: the live gauges and the thresholds that raise
/// warnings and alerts.
class ResourcesPanel extends StatelessWidget {
  /// Creates the panel.
  const ResourcesPanel({super.key});

  @override
  Widget build(BuildContext context) => const Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[ResourceGauges(), SizedBox(height: 20), ThresholdsCard()],
  );
}

/// The tone of a gauge status (`ok`, `warn`, `critical`).
StatusTone resourceTone(Object? status) => switch (status) {
  'ok' => StatusTone.ok,
  'warn' => StatusTone.warning,
  'critical' => StatusTone.error,
  _ => StatusTone.neutral,
};

/// Live disk, memory and database gauges from `getResourceStatus`, re-read
/// every [resourceStatusIntervalProvider] while shown. A read is skipped
/// while one is in flight; a failed read keeps the last snapshot, marked
/// Stale, and says why.
class ResourceGauges extends ConsumerStatefulWidget {
  /// Creates the gauges.
  const ResourceGauges({super.key});

  @override
  ConsumerState<ResourceGauges> createState() => _ResourceGaugesState();
}

class _ResourceGaugesState extends ConsumerState<ResourceGauges> {
  Timer? _timer;
  Json? _status;
  DateTime? _at;
  Object? _error;
  bool _reading = false;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(ref.read(resourceStatusIntervalProvider), (_) => unawaited(_read()));
    unawaited(_read());
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Future<void> _read() async {
    if (_reading) {
      return;
    }
    _reading = true;
    try {
      final status = await jsonObjectCall(
        ref.read(backendDioProvider),
        'GET',
        '/v1/system/resources',
      );
      if (mounted) {
        setState(() {
          _status = status;
          _at = DateTime.now();
          _error = null;
        });
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() => _error = e);
      }
    } finally {
      _reading = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    final status = _status;
    final error = _error;
    final warnings = <String>[
      for (final w in (status?['warnings'] as List?) ?? const <Object?>[]) '$w',
    ];
    Json? part(String key) => (status?[key] as Map?)?.cast<String, Object?>();
    return SectionCard(
      key: const Key('resources'),
      title: 'Resources',
      subtitle: 'Read live while this tab is open.',
      actions: <Widget>[
        if (error == null && status != null)
          StatusLabel(
            key: const Key('resources.live'),
            label: 'Live · ${utcClockText(_at!)}',
            tone: StatusTone.ok,
            icon: Icons.circle,
          )
        else if (error != null)
          StatusLabel(
            key: const Key('resources.stale'),
            label: status == null ? 'Unavailable' : 'Stale · ${utcClockText(_at!)}',
            tone: StatusTone.warning,
          ),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (error != null) ...<Widget>[
            ErrorBanner(error: error, title: 'The last reading failed'),
            const SizedBox(height: 12),
          ],
          if (status == null && error == null)
            const LinearProgressIndicator()
          else if (status != null) ...<Widget>[
            ResourceGauge(key: const Key('resources.disk'), label: 'Disk', gauge: part('disk')),
            const SizedBox(height: 14),
            ResourceGauge(
              key: const Key('resources.memory'),
              label: 'Memory',
              gauge: part('memory'),
            ),
            const SizedBox(height: 14),
            KeyValueList(
              key: const Key('resources.database'),
              entries: <MapEntry<String, Object>>[
                MapEntry<String, Object>(
                  'Database size',
                  storageBytesText(part('database')?['sizeBytes']),
                ),
                MapEntry<String, Object>('Overall', wireText('${status['status'] ?? '—'}')),
              ],
            ),
            for (final w in warnings) ...<Widget>[
              const SizedBox(height: 8),
              ResultPanel(title: 'Warning', tone: StatusTone.warning, message: w),
            ],
          ],
        ],
      ),
    );
  }
}

/// One gauge (`ResourceGauge`): a bar of the used share, colored by its
/// status, with used, free and total.
class ResourceGauge extends StatelessWidget {
  /// Creates the gauge.
  const ResourceGauge({super.key, required this.label, required this.gauge});

  /// What it measures.
  final String label;

  /// The reading; `null` when the server sent none.
  final Json? gauge;

  @override
  Widget build(BuildContext context) {
    final g = gauge;
    final palette = AdminPalette.of(context);
    if (g == null) {
      return Text('$label: not reported', style: TextStyle(color: palette.muted));
    }
    final percent = (g['usedPercent'] as num?)?.toDouble();
    final tone = resourceTone(g['status']);
    final color = switch (tone) {
      StatusTone.ok => Colors.green,
      StatusTone.warning => Colors.orange,
      StatusTone.error => Colors.red,
      _ => palette.muted,
    };
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
            const SizedBox(width: 8),
            StatusChip(label: wireText('${g['status']}'), tone: tone),
            const Spacer(),
            Text(percent == null ? '—' : '${percent.toStringAsFixed(1)}% used'),
          ],
        ),
        const SizedBox(height: 6),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            minHeight: 10,
            value: percent == null ? 0 : (percent / 100).clamp(0, 1),
            color: color,
            backgroundColor: palette.border,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          '${storageBytesText(g['usedBytes'])} used · ${storageBytesText(g['freeBytes'])} free · '
          '${storageBytesText(g['totalBytes'])} total',
          style: TextStyle(color: palette.muted, fontSize: 12),
        ),
      ],
    );
  }
}

/// The thresholds (`getResourceThresholds` / `updateResourceThresholds`):
/// for free disk and free memory, a warn and a critical level as a percent
/// (the slider) and as an amount, and which channels a breach notifies.
/// Saved whole and re-read; members this card does not edit go back as read.
class ThresholdsCard extends ConsumerWidget {
  /// Creates the card.
  const ThresholdsCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => SectionCard(
    key: const Key('thresholds'),
    title: 'Thresholds',
    subtitle: 'When free space or memory drops below a level, the server warns and notifies.',
    child: AsyncView<Json>(
      value: ref.watch(resourceThresholdsProvider),
      onRetry: () => ref.invalidate(resourceThresholdsProvider),
      data: (read) => ThresholdsForm(key: ValueKey<String>(jsonEncode(read)), read: read),
    ),
  );
}

/// The editor of [read], the thresholds as sent.
class ThresholdsForm extends ConsumerStatefulWidget {
  /// Creates the form.
  const ThresholdsForm({super.key, required this.read});

  /// The thresholds as read.
  final Json read;

  @override
  ConsumerState<ThresholdsForm> createState() => _ThresholdsFormState();
}

/// One editable level: its percent (`null` is off) and its amount in GB.
class _Level {
  _Level(this.percent, Object? bytes)
    : gb = TextEditingController(
        text: bytes is num ? (bytes / _gib).toStringAsFixed(bytes % _gib == 0 ? 0 : 2) : '',
      );

  double? percent;
  final TextEditingController gb;
}

const int _gib = 1024 * 1024 * 1024;

class _ThresholdsFormState extends ConsumerState<ThresholdsForm>
    with WriteTracking<ThresholdsForm> {
  static const List<String> resources = <String>['disk', 'memory'];
  static const List<String> levels = <String>['warn', 'critical'];

  late final Map<String, _Level> _levels = <String, _Level>{
    for (final r in resources)
      for (final l in levels)
        '$r.$l': _Level(
          (_part(r)['${l}FreePercent'] as num?)?.toDouble(),
          _part(r)['${l}FreeBytes'],
        ),
  };
  late final Set<String> _channels = <String>{
    for (final c in (widget.read['alertChannels'] as List?) ?? const <Object?>[]) '$c',
  };
  Map<String, String> _errors = const <String, String>{};

  Json _part(String resource) =>
      (widget.read[resource] as Map?)?.cast<String, Object?>() ?? const <String, Object?>{};

  @override
  void dispose() {
    for (final l in _levels.values) {
      l.gb.dispose();
    }
    super.dispose();
  }

  Json? _resourceBody(String resource, Map<String, String> errors) {
    final out = <String, Object?>{..._part(resource)};
    for (final l in levels) {
      final level = _levels['$resource.$l']!;
      out['${l}FreePercent'] = level.percent;
      final text = level.gb.text.trim();
      if (text.isEmpty) {
        out['${l}FreeBytes'] = null;
      } else {
        final gb = num.tryParse(text);
        if (gb == null || gb < 0) {
          errors['$resource.$l'] = 'An amount in GB, 0 or more.';
        } else {
          out['${l}FreeBytes'] = (gb * _gib).round();
        }
      }
    }
    final warn = out['warnFreePercent'] as num?;
    final critical = out['criticalFreePercent'] as num?;
    if (warn != null && critical != null && critical >= warn) {
      errors['$resource.critical'] = 'Critical must be below warn.';
    }
    final warnBytes = out['warnFreeBytes'] as num?;
    final criticalBytes = out['criticalFreeBytes'] as num?;
    if (warnBytes != null && criticalBytes != null && criticalBytes >= warnBytes) {
      errors['$resource.critical'] = 'Critical must be below warn.';
    }
    return out;
  }

  Future<void> _save() async {
    final errors = <String, String>{};
    final body = <String, Object?>{
      ...widget.read,
      for (final r in resources) r: _resourceBody(r, errors),
      'alertChannels': _channels.toList(),
    };
    setState(() => _errors = errors);
    if (errors.isNotEmpty) {
      return;
    }
    final dio = ref.read(backendDioProvider);
    final done = await track(
      () => writeThenConfirm<Json>(
        write: () => jsonObjectCall(dio, 'PUT', '/v1/settings/thresholds', body: body),
        reread: () => jsonObjectCall(dio, 'GET', '/v1/settings/thresholds'),
        confirm: (back) {
          for (final r in resources) {
            final sent = body[r]! as Map;
            final got = (back[r] as Map?) ?? const <String, Object?>{};
            for (final key in sent.keys) {
              if ('${sent[key]}' != '${got[key]}') {
                return '${wireText(r)} ${wireText('$key')} reads back as ${got[key] ?? 'off'}.';
              }
            }
          }
          return null;
        },
      ),
    );
    if (done != null && mounted) {
      ref.invalidate(resourceThresholdsProvider);
    }
  }

  @override
  Widget build(BuildContext context) {
    final channels = ref.watch(channelsProvider).value ?? const <Json>[];
    final palette = AdminPalette.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        for (final r in resources) ...<Widget>[
          Text(
            r == 'disk' ? 'Free disk' : 'Free memory',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          for (final l in levels) _levelRow(r, l, palette),
          const SizedBox(height: 12),
        ],
        LabeledField(
          label: 'Notify',
          help: 'None chosen uses every channel subscribed to system events.',
          field: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: <Widget>[
              for (final c in channels)
                FilterChip(
                  key: Key('thresholds.channel.${c['id']}'),
                  label: Text('${c['name']}'),
                  selected: _channels.contains('${c['id']}'),
                  onSelected: (on) => setState(
                    () => on ? _channels.add('${c['id']}') : _channels.remove('${c['id']}'),
                  ),
                ),
              // A channel id the list does not show stays chosen.
              for (final id in _channels.where((id) => !channels.any((c) => '${c['id']}' == id)))
                FilterChip(
                  label: Text(id),
                  selected: true,
                  onSelected: (on) => setState(() => _channels.remove(id)),
                ),
              if (channels.isEmpty && _channels.isEmpty)
                Text('No channels to choose.', style: TextStyle(color: palette.muted)),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: <Widget>[
            PermissionGate(
              permission: Permissions.storageManage,
              child: FilledButton(
                key: const Key('thresholds.save'),
                onPressed: busy ? null : _save,
                child: const Text('Save Thresholds'),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(child: statusLine),
          ],
        ),
        const Footnote('A level is reached when the free share or the free amount drops below it.'),
      ],
    );
  }

  Widget _levelRow(String resource, String level, AdminPalette palette) {
    final l = _levels['$resource.$level']!;
    final key = '$resource.$level';
    return Padding(
      padding: const EdgeInsets.only(top: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(width: 80, child: Text(level == 'warn' ? 'Warn' : 'Critical')),
          Switch(
            key: Key('thresholds.$key.on'),
            value: l.percent != null,
            onChanged: busy
                ? null
                : (on) => setState(() => l.percent = on ? (level == 'warn' ? 15 : 5) : null),
          ),
          Expanded(
            child: Slider(
              key: Key('thresholds.$key.percent'),
              value: (l.percent ?? 0).clamp(0, 50).toDouble(),
              max: 50,
              divisions: 50,
              label: l.percent == null ? 'Off' : '${l.percent!.round()}% free',
              onChanged: l.percent == null || busy ? null : (v) => setState(() => l.percent = v),
            ),
          ),
          SizedBox(
            width: 90,
            child: Text(l.percent == null ? 'Off' : '${l.percent!.toStringAsFixed(0)}% free'),
          ),
          SizedBox(
            width: 150,
            child: PlainField(
              key: Key('thresholds.$key.gb'),
              controller: l.gb,
              hint: 'GB free',
              error: _errors[key],
            ),
          ),
        ],
      ),
    );
  }
}
