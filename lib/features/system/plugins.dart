import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_widgets.dart';
import '../serving/serving_widgets.dart' show SwitchField;
import '../vetting/vetting_drafts.dart' show fromJsonMap, toJsonMap;
import 'system_drafts.dart';
import 'system_providers.dart';

/// The tone of a plugin [state] (`disabled`, `enabled`, `hash-mismatch`,
/// `error`).
StatusTone pluginStateTone(Object? state) => switch (state) {
  'enabled' => StatusTone.ok,
  'hash-mismatch' => StatusTone.warning,
  'error' => StatusTone.error,
  _ => StatusTone.neutral,
};

/// A plugin state as words.
String pluginStateText(Object? state) => switch (state) {
  'hash-mismatch' => 'Hash mismatch',
  null => '—',
  _ => wireText('$state'),
};

/// The Plugins tab: the WASM parser plugin subsystem, each plugin's
/// state, and enabling one after reviewing its hash.
class PluginsPanel extends ConsumerStatefulWidget {
  /// Creates the panel.
  const PluginsPanel({super.key});

  @override
  ConsumerState<PluginsPanel> createState() => _PluginsPanelState();
}

class _PluginsPanelState extends ConsumerState<PluginsPanel> with WriteTracking<PluginsPanel> {
  String? _selected;

  Future<void> _setSubsystem(bool on) async {
    final api = ref.read(foresignalApiProvider);
    final done = await track(
      () => writeThenConfirm<Json>(
        write: () => callApi(
          () => api.getPluginsApi().updatePluginSettings(
            pluginSettings: fromJsonMap<PluginSettings>(api.serializers, <String, Object?>{'enabled': on}),
          ),
        ),
        reread: () async => toJsonMap(api.serializers, await callApiRequired(() => api.getPluginsApi().listPlugins())),
        confirm: (list) => list['enabled'] == on ? null : 'Plugins read back as ${on ? 'off' : 'on'}.',
      ),
    );
    if (done != null) {
      ref.invalidate(pluginsProvider);
    }
  }

  @override
  Widget build(BuildContext context) {
    final muted = AdminPalette.of(context).muted;
    return AsyncView<Json>(
      value: ref.watch(pluginsProvider),
      onRetry: () => ref.invalidate(pluginsProvider),
      data: (list) {
        final plugins = <Json>[
          for (final p in (list['plugins'] as List?) ?? const <Object?>[])
            if (p is Map) p.cast<String, Object?>(),
        ];
        final selected = plugins.where((p) => p['name'] == _selected).firstOrNull;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SectionCard(
              key: const Key('plugins'),
              title: 'Parser Plugins',
              subtitle: 'WASM parsers found under the data directory, used by wasm-feed sources. Each runs only once its hash is approved.',
              actions: <Widget>[
                IconButton(tooltip: 'Refresh', onPressed: () => ref.invalidate(pluginsProvider), icon: const Icon(Icons.refresh)),
              ],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  LabeledField(
                    label: 'Plugins',
                    help: 'When off, no plugin runs, whatever its own setting.',
                    field: Row(
                      children: <Widget>[
                        SwitchField(
                          key: const Key('plugins.enabled'),
                          value: list['enabled'] == true,
                          onChanged: (v) => busy ? null : _setSubsystem(v),
                        ),
                        const SizedBox(width: 12),
                        Expanded(child: statusLine),
                      ],
                    ),
                  ),
                  DataTableCard<Json>(
                    key: const Key('plugins.table'),
                    rows: plugins,
                    empty: 'No parser plugins found. Put a WASM parser under the data directory, then Refresh.',
                    selected: (p) => p['name'] == _selected,
                    onTap: (p) => setState(() => _selected = '${p['name']}'),
                    columns: <TableColumnSpec<Json>>[
                      TableColumnSpec<Json>(
                        label: 'Plugin',
                        cell: (p) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text('${p['name']}', style: const TextStyle(fontWeight: FontWeight.w600)),
                            Text('${p['version']} · ABI ${p['abi']} · ${p['kind']}', style: TextStyle(fontSize: 12, color: muted)),
                          ],
                        ),
                      ),
                      TableColumnSpec<Json>(
                        label: 'State',
                        cell: (p) => StatusLabel(
                          label: pluginStateText(p['state']),
                          tone: pluginStateTone(p['state']),
                          tooltip: p['error'] as String?,
                        ),
                      ),
                      TableColumnSpec<Json>(label: 'Approved', cell: (p) => Text(p['enabled'] == true ? 'Yes' : 'No')),
                      TableColumnSpec<Json>(
                        label: 'Hash',
                        cell: (p) => Text(p['hashMatches'] == true ? 'Matches' : 'Differs', style: p['hashMatches'] == true ? null : TextStyle(color: AdminPalette.of(context).warning)),
                      ),
                      TableColumnSpec<Json>(
                        label: 'Sources',
                        cell: (p) => Text(((p['sourceIds'] as List?) ?? const <Object?>[]).join(', ').ifEmpty('—')),
                      ),
                      TableColumnSpec<Json>(label: 'Loaded', cell: (p) => Text(whenText(p['loadedAt']))),
                    ],
                  ),
                ],
              ),
            ),
            if (selected != null) ...<Widget>[
              const SizedBox(height: 20),
              PluginCard(key: ValueKey<String>('plugin.${selected['name']}'), name: '${selected['name']}', subsystemOn: list['enabled'] == true),
            ],
          ],
        );
      },
    );
  }
}

extension on String {
  String ifEmpty(String other) => isEmpty ? other : this;
}

/// One plugin (`getPlugin`), enabled after its hash is reviewed or
/// disabled (`updatePlugin`), confirmed by reading it back.
class PluginCard extends ConsumerStatefulWidget {
  /// Creates the card for the plugin [name].
  const PluginCard({super.key, required this.name, required this.subsystemOn});

  /// The plugin name.
  final String name;

  /// Whether the plugin subsystem is on.
  final bool subsystemOn;

  @override
  ConsumerState<PluginCard> createState() => _PluginCardState();
}

class _PluginCardState extends ConsumerState<PluginCard> with WriteTracking<PluginCard> {
  bool _reviewed = false;

  Future<void> _set(Json plugin, bool on) async {
    final api = ref.read(foresignalApiProvider);
    final sha = '${plugin['actualSha256'] ?? plugin['sha256']}';
    final done = await track(
      () => writeThenConfirm<Json>(
        write: () => callApi(
          () => api.getPluginsApi().updatePlugin(
            name: widget.name,
            pluginUpdate: fromJsonMap<PluginUpdate>(api.serializers, <String, Object?>{'enabled': on, if (on) 'sha256': sha}),
          ),
        ),
        reread: () async => toJsonMap(api.serializers, await callApiRequired(() => api.getPluginsApi().getPlugin(name: widget.name))),
        confirm: (p) => p['enabled'] == on ? null : 'The plugin reads back as ${on ? 'not approved' : 'approved'}.',
      ),
    );
    if (done != null && mounted) {
      setState(() => _reviewed = false);
      ref
        ..invalidate(pluginProvider(widget.name))
        ..invalidate(pluginsProvider);
    }
  }

  @override
  Widget build(BuildContext context) {
    final palette = AdminPalette.of(context);
    return SectionCard(
      key: const Key('plugin'),
      title: widget.name,
      subtitle: 'Approving binds the plugin to the hash of the file as it is now; a changed file stops until approved again.',
      child: AsyncView<Json>(
        value: ref.watch(pluginProvider(widget.name)),
        onRetry: () => ref.invalidate(pluginProvider(widget.name)),
        data: (p) {
          final actual = p['actualSha256'] as String?;
          // Enabling needs the file to hash to what plugin.json declares as
          // well as to the reviewed hash, and a module that loads.
          final canEnable = actual != null && p['hashMatches'] == true && p['state'] != 'error';
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              KeyValueList(
                entries: <MapEntry<String, Object>>[
                  MapEntry<String, Object>('State', StatusLabel(label: pluginStateText(p['state']), tone: pluginStateTone(p['state']))),
                  MapEntry<String, Object>('Version', '${p['version']}'),
                  MapEntry<String, Object>(
                    'Declared hash',
                    SelectableText('${p['sha256']}'.isEmpty ? '—' : '${p['sha256']}', style: const TextStyle(fontFamily: 'monospace', fontSize: 12)),
                  ),
                  MapEntry<String, Object>(
                    'File hash',
                    SelectableText(
                      actual ?? 'The file is missing.',
                      style: TextStyle(fontFamily: 'monospace', fontSize: 12, color: p['hashMatches'] == true ? null : palette.warning),
                    ),
                  ),
                  if (p['error'] != null) MapEntry<String, Object>('Error', '${p['error']}'),
                  MapEntry<String, Object>('Sources', ((p['sourceIds'] as List?) ?? const <Object?>[]).join(', ').ifEmpty('None')),
                  MapEntry<String, Object>('Loaded', whenText(p['loadedAt'])),
                ],
              ),
              const SizedBox(height: 12),
              if (!widget.subsystemOn)
                const Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Footnote('Plugins are off: an approved plugin runs once they are turned on.'),
                ),
              if (p['enabled'] == true)
                Row(
                  children: <Widget>[
                    DangerButton(
                      key: const Key('plugin.disable'),
                      label: 'Disable',
                      icon: Icons.block,
                      onPressed: busy ? null : () => _set(p, false),
                    ),
                    const SizedBox(width: 12),
                    Expanded(child: statusLine),
                  ],
                )
              else if (canEnable) ...<Widget>[
                CheckboxListTile(
                  key: const Key('plugin.reviewed'),
                  contentPadding: EdgeInsets.zero,
                  controlAffinity: ListTileControlAffinity.leading,
                  value: _reviewed,
                  onChanged: (v) => setState(() => _reviewed = v ?? false),
                  title: Text('I have reviewed the file with hash ${actual.substring(0, 12)}…'),
                ),
                Row(
                  children: <Widget>[
                    FilledButton.icon(
                      key: const Key('plugin.enable'),
                      onPressed: busy || !_reviewed ? null : () => _set(p, true),
                      icon: const Icon(Icons.verified_outlined),
                      label: const Text('Approve and Enable'),
                    ),
                    const SizedBox(width: 12),
                    Expanded(child: statusLine),
                  ],
                ),
              ] else
                Footnote(
                  actual == null
                      ? 'It cannot be enabled until its file is found.'
                      : p['hashMatches'] != true
                      ? 'The file does not hash to the sha256 plugin.json declares. Update one of them, then review it again.'
                      : 'It cannot be enabled until its module loads.',
                ),
            ],
          );
        },
      ),
    );
  }
}
