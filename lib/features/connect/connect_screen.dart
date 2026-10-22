import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/connection_store.dart';
import '../../core/theme.dart';
import '../../core/ui/ui.dart';
import 'connect_controller.dart';

/// Connect (Screens.md §A, mock A1): the backend URL and admin token, tested
/// with `getSystem`, `getContract` and `getServerSettings`, then saved — the
/// token to the platform secure store unless the operator unticks it.
/// Failures are shown here, never as a crash.
class ConnectScreen extends ConsumerStatefulWidget {
  /// Creates the screen.
  const ConnectScreen({super.key});

  @override
  ConsumerState<ConnectScreen> createState() => _ConnectScreenState();
}

class _ConnectScreenState extends ConsumerState<ConnectScreen> {
  final TextEditingController _url = TextEditingController();
  final TextEditingController _token = TextEditingController();
  bool _showToken = false;
  bool _saveToken = true;
  bool _hasToken = false;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final store = ref.read(connectionStoreProvider);
    final url = ref.read(backendEndpointProvider) ?? await store.readBackendUrl();
    final token = await store.read();
    if (!mounted) {
      return;
    }
    setState(() {
      _url.text = url?.toString() ?? '';
      _hasToken = token != null && token.isNotEmpty;
    });
  }

  @override
  void dispose() {
    _url.dispose();
    _token.dispose();
    super.dispose();
  }

  Future<void> _test() async {
    var token = _token.text;
    if (token.trim().isEmpty && _hasToken) {
      // Keep using the current token when the field is left blank.
      token = await ref.read(connectionStoreProvider).read() ?? '';
    }
    await ref
        .read(connectControllerProvider.notifier)
        .testAndSave(urlText: _url.text, token: token, saveToken: _saveToken);
    final state = ref.read(connectControllerProvider);
    if (state is ConnectTested && state.saved) {
      _token.clear();
      await _load();
    }
  }

  Future<void> _forget() async {
    await ref.read(connectControllerProvider.notifier).forgetToken();
    _token.clear();
    await _load();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(connectControllerProvider);
    final testing = state is ConnectTesting;
    return SingleChildScrollView(
      padding: const EdgeInsets.all(28),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 640),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(28),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        'Connect to ForeSignal',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(height: 20),
                      const _FieldLabel('Backend URL'),
                      TextField(
                        key: const Key('connect.url'),
                        controller: _url,
                        enabled: !testing,
                        keyboardType: TextInputType.url,
                        autocorrect: false,
                        decoration: const InputDecoration(hintText: 'http://192.168.1.20:8080'),
                      ),
                      const SizedBox(height: 16),
                      const _FieldLabel('Admin token'),
                      TextField(
                        key: const Key('connect.token'),
                        controller: _token,
                        enabled: !testing,
                        obscureText: !_showToken,
                        autocorrect: false,
                        enableSuggestions: false,
                        decoration: InputDecoration(
                          hintText: _hasToken
                              ? 'A token is in use — leave blank to keep it'
                              : 'fsr_…',
                          helperText:
                              'Printed once in the backend\'s first-start log. Leave blank for read-only.',
                          suffixIcon: IconButton(
                            tooltip: _showToken ? 'Hide' : 'Show',
                            icon: Icon(_showToken ? Icons.visibility_off : Icons.visibility),
                            onPressed: () => setState(() => _showToken = !_showToken),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: <Widget>[
                          Checkbox(
                            key: const Key('connect.saveToken'),
                            value: _saveToken,
                            onChanged: testing
                                ? null
                                : (v) => setState(() => _saveToken = v ?? true),
                          ),
                          const Expanded(child: Text('Save token in secure storage')),
                          if (_hasToken)
                            TextButton.icon(
                              key: const Key('connect.forget'),
                              onPressed: testing ? null : _forget,
                              icon: const Icon(Icons.key_off, size: 16),
                              label: const Text('Forget token'),
                            ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      FilledButton(
                        key: const Key('connect.test'),
                        onPressed: testing ? null : _test,
                        child: testing
                            ? const SizedBox(
                                width: 18,
                                height: 18,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: Colors.white,
                                ),
                              )
                            : const Text('Test Connection'),
                      ),
                      const SizedBox(height: 20),
                      switch (state) {
                        ConnectIdle() || ConnectTesting() => const SizedBox.shrink(),
                        ConnectFailed(:final error) => ErrorBanner(
                          error: error is FormatException ? error.message : error,
                          title: error is FormatException ? 'Check the URL' : 'Connection failed',
                        ),
                        ConnectTested(:final report, :final saved) => ConnectionResult(
                          report: report,
                          saved: saved,
                        ),
                      },
                    ],
                  ),
                ),
              ),
              if (state is ConnectTested) ...<Widget>[
                const SizedBox(height: 16),
                ConnectionDetails(report: state.report),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _FieldLabel extends StatelessWidget {
  const _FieldLabel(this.text);

  final String text;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: 6),
    child: Text(text, style: const TextStyle(fontWeight: FontWeight.w500)),
  );
}

/// The mock A1 outcome panel: "Connection successful" with version,
/// environment, OpenAPI compatibility and server time — or why the token or
/// version is a problem.
class ConnectionResult extends StatelessWidget {
  /// Creates the panel.
  const ConnectionResult({super.key, required this.report, required this.saved});

  /// The tested connection.
  final ConnectionReport report;

  /// Whether the connection was saved.
  final bool saved;

  @override
  Widget build(BuildContext context) {
    final system = report.system;
    final details = <MapEntry<String, Object>>[
      MapEntry<String, Object>('Version', system.version),
      MapEntry<String, Object>('Environment', system.mode?.name ?? '—'),
      MapEntry<String, Object>('OpenAPI', _versionLabel(report)),
      MapEntry<String, Object>(
        'Server time',
        report.serverTime == null ? '—' : _utc(report.serverTime!),
      ),
      MapEntry<String, Object>('Admin token', _tokenLabel(report.tokenStatus)),
    ];
    final tone = switch (report.tokenStatus) {
      TokenStatus.rejected || TokenStatus.insufficientScope => StatusTone.error,
      _ when report.versionMatch == VersionMatch.incompatible => StatusTone.error,
      TokenStatus.missing => StatusTone.warning,
      _ when report.versionMatch == VersionMatch.compatible => StatusTone.warning,
      _ => StatusTone.ok,
    };
    final title = switch (report.tokenStatus) {
      TokenStatus.rejected => 'Backend reachable — token rejected',
      TokenStatus.insufficientScope => 'Backend reachable — token is not an admin token',
      _ when report.versionMatch == VersionMatch.incompatible => 'Connected — API version mismatch',
      TokenStatus.missing => 'Connected read-only',
      _ => 'Connection successful',
    };
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        ResultPanel(
          key: const Key('connect.result'),
          title: title,
          tone: tone,
          details: details,
          message: saved ? null : 'Nothing was saved: the backend did not accept this token.',
        ),
        if (report.tokenError != null) ...<Widget>[
          const SizedBox(height: 12),
          ErrorBanner(error: report.tokenError!, title: 'getServerSettings answered'),
        ],
      ],
    );
  }

  static String _versionLabel(ConnectionReport report) {
    final version = report.system.apiVersion ?? 'unknown';
    return switch (report.versionMatch) {
      VersionMatch.exact => 'Compatible ($version)',
      VersionMatch.compatible => 'Compatible — backend $version, app built for $vendoredApiVersion',
      VersionMatch.incompatible =>
        'Incompatible — backend $version, app built for $vendoredApiVersion',
    };
  }

  static String _tokenLabel(TokenStatus status) => switch (status) {
    TokenStatus.admin => 'Accepted (admin)',
    TokenStatus.missing => 'None — changes are refused until one is entered',
    TokenStatus.rejected => 'Rejected (401)',
    TokenStatus.insufficientScope => 'Lacks admin scope (403)',
  };

  static String _utc(DateTime time) {
    final t = time.toUtc();
    String two(int n) => n.toString().padLeft(2, '0');
    return '${t.year}-${two(t.month)}-${two(t.day)} ${two(t.hour)}:${two(t.minute)}:${two(t.second)} UTC';
  }
}

/// The rest of what the backend reported: capabilities, contract, settings,
/// warnings.
class ConnectionDetails extends StatelessWidget {
  /// Creates the details.
  const ConnectionDetails({super.key, required this.report});

  /// The tested connection.
  final ConnectionReport report;

  @override
  Widget build(BuildContext context) {
    final system = report.system;
    final features = system.features?.toMap() ?? const <String, bool>{};
    final sorted = features.entries.toList()..sort((a, b) => a.key.compareTo(b.key));
    final warnings = <String>[
      for (final w in system.warnings ?? const <SystemInfoWarningsInner>[])
        '${w.code}: ${w.message}',
      for (final w in system.security?.warnings ?? const <SettingsWarning>[])
        '${w.code}: ${w.message}',
      for (final w in report.serverSettings?.warnings ?? const <SettingsWarning>[])
        '${w.code}: ${w.message}',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SectionCard(
          title: 'Backend',
          subtitle: report.baseUrl.toString(),
          child: KeyValueList(
            entries: <MapEntry<String, Object>>[
              MapEntry<String, Object>(
                'Status',
                StatusLabel(
                  label: system.status?.name ?? 'unknown',
                  tone: switch (system.status?.name) {
                    'ok' => StatusTone.ok,
                    'degraded' => StatusTone.warning,
                    'down' => StatusTone.error,
                    _ => StatusTone.neutral,
                  },
                ),
              ),
              MapEntry<String, Object>('Started', system.startedAt.toLocal().toString()),
              MapEntry<String, Object>('Open reads', switch (system.security?.openReads) {
                true => 'On — anyone who can reach the backend can read',
                false => 'Off',
                null => '—',
              }),
              if (report.contract != null)
                MapEntry<String, Object>('Client contract', report.contract!.contractVersion)
              else if (report.contractError != null)
                MapEntry<String, Object>(
                  'Client contract',
                  'Unavailable: ${report.contractError!.message}',
                ),
              if (report.serverSettings != null) ...<MapEntry<String, Object>>[
                MapEntry<String, Object>('Public base URL', report.serverSettings!.publicBaseUrl),
                MapEntry<String, Object>('Time zone', report.serverSettings!.timezone ?? '—'),
              ],
            ],
          ),
        ),
        const SizedBox(height: 16),
        SectionCard(
          title: 'Capabilities',
          subtitle: 'Feature flags the backend reports.',
          child: sorted.isEmpty
              ? Text(
                  'The backend reported no feature flags.',
                  style: TextStyle(color: AdminPalette.of(context).muted),
                )
              : Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  children: <Widget>[
                    for (final entry in sorted)
                      StatusChip(
                        label: entry.key,
                        tone: entry.value ? StatusTone.ok : StatusTone.neutral,
                      ),
                  ],
                ),
        ),
        if (warnings.isNotEmpty) ...<Widget>[
          const SizedBox(height: 16),
          SectionCard(
            title: 'Backend warnings',
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                for (final w in warnings)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: StatusLabel(label: w, tone: StatusTone.warning),
                  ),
              ],
            ),
          ),
        ],
      ],
    );
  }
}
