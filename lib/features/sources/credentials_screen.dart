import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/routes.dart';
import '../../core/ui/ui.dart';
import 'source_providers.dart';
import 'source_test_results.dart';

/// A source's provider keys (Screens §B "Credentials / API keys", mock B3).
///
/// One masked field per descriptor credential field. **A value goes straight
/// to the backend vault with `setSourceCredentials` and is never stored,
/// logged or read back**: the fields are cleared once the save is sent, and
/// the screen shows only whether credentials are set
/// (`getSource` → `settings.credentialsSet`). Delete uses
/// `deleteSourceCredentials`. After a save, a probe proves the key works.
class CredentialsScreen extends ConsumerWidget {
  /// Creates the screen for [sourceId].
  const CredentialsScreen({super.key, required this.sourceId});

  /// The source.
  final String sourceId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      padding: const EdgeInsets.all(28),
      children: <Widget>[
        AsyncView<SourceDetail>(
          value: ref.watch(sourceDetailProvider(sourceId)),
          onRetry: () => invalidateSources(ref, sourceId),
          data: (detail) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              PageHeader(
                title: detail.descriptor.name,
                crumbs: <Crumb>[
                  const Crumb('Sources', sourcesPath),
                  Crumb(detail.descriptor.name, sourceDetailPath(sourceId)),
                  const Crumb('Credentials'),
                ],
                titleTrailing: <Widget>[
                  StatusLabel(
                    label: detail.settings.enabled ? 'Enabled' : 'Disabled',
                    tone: detail.settings.enabled ? StatusTone.ok : StatusTone.neutral,
                  ),
                ],
                actions: <Widget>[
                  TonalButton(
                    label: 'Test & Validate',
                    icon: Icons.play_arrow,
                    onPressed: () => context.go(sourceTestPath(sourceId)),
                  ),
                ],
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 720),
                child: CredentialsForm(
                  key: ValueKey<String>('credentials.$sourceId'),
                  detail: detail,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/// The credential fields, their stored state, and Save / Delete / Test.
class CredentialsForm extends ConsumerStatefulWidget {
  /// Creates the form for [detail].
  const CredentialsForm({super.key, required this.detail});

  /// The source as last read.
  final SourceDetail detail;

  @override
  ConsumerState<CredentialsForm> createState() => _CredentialsFormState();
}

class _CredentialsFormState extends ConsumerState<CredentialsForm> {
  final Map<String, TextEditingController> _fields = <String, TextEditingController>{};
  final Set<String> _revealed = <String>{};
  WriteState _write = const WriteIdle();
  String? _missing;
  bool _confirmDelete = false;
  ProbeResult? _probe;
  Object? _probeError;
  bool _probing = false;

  String get _id => widget.detail.descriptor.id;

  @override
  void initState() {
    super.initState();
    for (final field in widget.detail.descriptor.credentialFields) {
      _fields[field.name] = TextEditingController();
    }
  }

  @override
  void dispose() {
    for (final controller in _fields.values) {
      controller
        ..clear()
        ..dispose();
    }
    super.dispose();
  }

  void _clearFields() {
    for (final controller in _fields.values) {
      controller.clear();
    }
  }

  Future<void> _save() async {
    final fields = widget.detail.descriptor.credentialFields;
    final missing = fields
        .where((f) => f.required_ && _fields[f.name]!.text.trim().isEmpty)
        .map((f) => f.name)
        .toList();
    if (missing.isNotEmpty) {
      setState(() => _missing = 'Enter ${missing.join(', ')}.');
      return;
    }
    final values = <String, String>{
      for (final f in fields)
        if (_fields[f.name]!.text.trim().isNotEmpty) f.name: _fields[f.name]!.text.trim(),
    };
    if (values.isEmpty) {
      setState(() => _missing = 'Enter a value to save.');
      return;
    }
    // The values leave the widget here; the fields are cleared at once so the
    // secret is held for no longer than the request.
    _clearFields();
    setState(() {
      _missing = null;
      _write = const WriteInProgress();
      _probe = null;
      _probeError = null;
    });
    final sources = ref.read(foresignalApiProvider).getSourcesApi();
    try {
      await writeThenConfirm<SourceDetail>(
        write: () => sources.setSourceCredentials(
          sourceId: _id,
          credentialsUpdate: CredentialsUpdate(
            (b) => b.values = MapBuilder<String, String>(values),
          ),
        ),
        reread: () => callApiRequired(() => sources.getSource(sourceId: _id)),
        confirm: (d) => d.settings.credentialsSet ? null : 'credentials are still not set',
      );
      if (mounted) {
        setState(() => _write = WriteConfirmed(DateTime.now()));
      }
    } on Object catch (error) {
      if (mounted) {
        setState(() => _write = WriteFailed(error));
      }
    } finally {
      values.clear();
      if (mounted) {
        invalidateSources(ref, _id);
      }
    }
  }

  Future<void> _delete() async {
    setState(() {
      _confirmDelete = false;
      _write = const WriteInProgress();
      _probe = null;
      _probeError = null;
    });
    final sources = ref.read(foresignalApiProvider).getSourcesApi();
    try {
      await writeThenConfirm<SourceDetail>(
        write: () => sources.deleteSourceCredentials(sourceId: _id),
        reread: () => callApiRequired(() => sources.getSource(sourceId: _id)),
        confirm: (d) => d.settings.credentialsSet ? 'credentials are still set' : null,
      );
      if (mounted) {
        setState(() => _write = WriteConfirmed(DateTime.now()));
      }
    } on Object catch (error) {
      if (mounted) {
        setState(() => _write = WriteFailed(error));
      }
    } finally {
      if (mounted) {
        invalidateSources(ref, _id);
      }
    }
  }

  Future<void> _test() async {
    setState(() {
      _probing = true;
      _probe = null;
      _probeError = null;
    });
    try {
      final result = await callApiRequired(
        () => ref.read(foresignalApiProvider).getSourcesApi().probeSource(sourceId: _id),
      );
      if (mounted) {
        setState(() => _probe = result);
      }
    } on Object catch (error) {
      if (mounted) {
        setState(() => _probeError = error);
      }
    } finally {
      if (mounted) {
        setState(() => _probing = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final d = widget.detail.descriptor;
    final set = widget.detail.settings.credentialsSet;
    if (d.credentialFields.isEmpty) {
      return const SectionCard(
        title: 'API Credentials',
        child: Text('This source needs no credentials.'),
      );
    }
    final busy = _write is WriteInProgress;
    return SectionCard(
      title: 'API Credentials',
      subtitle:
          'Provide the credentials this source needs. They are stored securely on the server and '
          'never shown again.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          LabeledField(
            label: 'Stored',
            field: Align(
              alignment: Alignment.centerLeft,
              child: StatusLabel(
                key: const Key('credentials.state'),
                label: set ? 'Credentials set' : 'Not set',
                tone: set ? StatusTone.ok : StatusTone.error,
              ),
            ),
          ),
          for (final field in d.credentialFields)
            LabeledField(
              label: field.required_ ? '${field.name} *' : field.name,
              help: field.description,
              field: TextField(
                key: Key('credentials.field.${field.name}'),
                controller: _fields[field.name],
                obscureText: !_revealed.contains(field.name),
                autocorrect: false,
                enableSuggestions: false,
                enableIMEPersonalizedLearning: false,
                decoration: InputDecoration(
                  hintText: set ? 'Set — enter a new value to replace it' : 'Not set',
                  suffixIcon: IconButton(
                    tooltip: _revealed.contains(field.name) ? 'Hide' : 'Show',
                    icon: Icon(
                      _revealed.contains(field.name) ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () => setState(() {
                      if (!_revealed.remove(field.name)) {
                        _revealed.add(field.name);
                      }
                    }),
                  ),
                ),
              ),
            ),
          if (_missing case final message?)
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                message,
                style: TextStyle(color: Theme.of(context).colorScheme.error),
              ),
            ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: <Widget>[
              FilledButton(
                key: const Key('credentials.save'),
                onPressed: busy ? null : _save,
                child: const Text('Save Credentials'),
              ),
              OutlinedButton.icon(
                key: const Key('credentials.test'),
                onPressed: busy || _probing || !set ? null : _test,
                icon: const Icon(Icons.network_check, size: 18),
                label: const Text('Test Credentials'),
              ),
              if (set && !_confirmDelete)
                DangerButton(
                  key: const Key('credentials.delete'),
                  label: 'Delete Credentials',
                  onPressed: busy ? null : () => setState(() => _confirmDelete = true),
                ),
              if (_confirmDelete) ...<Widget>[
                DangerButton(
                  key: const Key('credentials.confirmDelete'),
                  label: 'Delete — this source stops if it needs them',
                  onPressed: _delete,
                ),
                TextButton(
                  onPressed: () => setState(() => _confirmDelete = false),
                  child: const Text('Cancel'),
                ),
              ],
            ],
          ),
          const SizedBox(height: 12),
          WriteStatusLine(state: _write),
          if (_probing || _probeError != null || _probe != null) const SizedBox(height: 12),
          if (_probing) const LinearProgressIndicator(),
          if (_probeError case final error?) ErrorBanner(error: error, title: 'The probe failed'),
          if (_probe case final probe?) ProbeResultView(result: probe, compact: true),
        ],
      ),
    );
  }
}
