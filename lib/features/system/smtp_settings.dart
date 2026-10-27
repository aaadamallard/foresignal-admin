import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../../core/permissions.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_providers.dart' show Json;
import '../forecasting/forecasting_widgets.dart'
    show Footnote, PlainField, WireDropdown, WriteTracking, whenText;

/// The from-address the contract names as the default.
const String defaultFromAddress = 'info@remoteidsystems.com';

/// The SMTP connection security modes, by wire name.
const List<String> smtpSecurityModes = <String>['starttls', 'tls', 'none'];

/// The labels of [smtpSecurityModes].
const Map<String, String> smtpSecurityLabels = <String, String>{
  'starttls': 'STARTTLS (usually port 587)',
  'tls': 'TLS (usually port 465)',
  'none': 'None (unencrypted)',
};

/// The SMTP settings (`getSmtpSettings`); the password is never returned.
final smtpSettingsProvider = FutureProvider<Json>(
  (ref) => jsonObjectCall(ref.watch(backendDioProvider), 'GET', '/v1/settings/smtp'),
);

/// The Email tab of System (`system.settings`): the SMTP server that sends
/// activation, password-reset and notification email.
class SmtpSettingsPanel extends ConsumerWidget {
  /// Creates the panel.
  const SmtpSettingsPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => const SmtpSettingsCard();
}

/// The SMTP settings card: the form, then a test send. Shared by the System
/// tab and the onboarding wizard; [onTested] hears every test result.
class SmtpSettingsCard extends ConsumerWidget {
  /// Creates the card.
  const SmtpSettingsCard({super.key, this.onTested});

  /// Called with each `SmtpTestResult`.
  final ValueChanged<Json>? onTested;

  @override
  Widget build(BuildContext context, WidgetRef ref) => SectionCard(
    key: const Key('smtp'),
    title: 'Email (SMTP)',
    subtitle:
        'The server that sends account activation, password resets and email notifications. '
        'The password goes to the backend, which keeps it; this app never stores it.',
    child: AsyncView<Json>(
      value: ref.watch(smtpSettingsProvider),
      onRetry: () => ref.invalidate(smtpSettingsProvider),
      data: (s) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SmtpSettingsForm(key: ValueKey<String>(jsonEncode(s)), settings: s),
          const Divider(height: 32),
          SmtpTestForm(onTested: onTested),
        ],
      ),
    ),
  );
}

/// The editor of the SMTP [settings] (`updateSmtpSettings`, confirmed by
/// `getSmtpSettings`). The password is write-only: an empty field keeps the
/// stored one, and only `secretsSet` says whether one is stored.
class SmtpSettingsForm extends ConsumerStatefulWidget {
  /// Creates the form.
  const SmtpSettingsForm({super.key, required this.settings});

  /// The settings as read.
  final Json settings;

  @override
  ConsumerState<SmtpSettingsForm> createState() => _SmtpSettingsFormState();
}

class _SmtpSettingsFormState extends ConsumerState<SmtpSettingsForm>
    with WriteTracking<SmtpSettingsForm> {
  late bool _enabled = widget.settings['enabled'] == true;
  late String _security = widget.settings['security'] as String? ?? 'starttls';
  late final Map<String, TextEditingController> _c = <String, TextEditingController>{
    'host': TextEditingController(text: widget.settings['host'] as String? ?? ''),
    'port': TextEditingController(text: widget.settings['port']?.toString() ?? ''),
    'username': TextEditingController(text: widget.settings['username'] as String? ?? ''),
    'password': TextEditingController(),
    'fromAddress': TextEditingController(
      text: widget.settings['fromAddress'] as String? ?? defaultFromAddress,
    ),
    'fromName': TextEditingController(text: widget.settings['fromName'] as String? ?? ''),
  };
  Map<String, String> _errors = const <String, String>{};

  bool get _passwordSet =>
      ((widget.settings['secretsSet'] as List?) ?? const <Object?>[]).contains('password');

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
    int? port;
    if (_t('port').isNotEmpty) {
      port = int.tryParse(_t('port'));
      if (port == null || port < 1 || port > 65535) {
        errors['port'] = 'A port from 1 to 65535.';
      }
    }
    if (_enabled && _t('host').isEmpty) {
      errors['host'] = 'The SMTP server, e.g. smtp.example.com.';
    }
    if (_t('fromAddress').isNotEmpty &&
        !RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(_t('fromAddress'))) {
      errors['fromAddress'] = 'An email address.';
    }
    setState(() => _errors = errors);
    if (errors.isNotEmpty) {
      return null;
    }
    return <String, Object?>{
      'enabled': _enabled,
      'host': _t('host').isEmpty ? null : _t('host'),
      'port': port,
      'security': _security,
      'username': _t('username').isEmpty ? null : _t('username'),
      // Omitted keeps the stored password.
      if (_c['password']!.text.isNotEmpty) 'password': _c['password']!.text,
      'fromAddress': _t('fromAddress').isEmpty ? null : _t('fromAddress'),
      'fromName': _t('fromName').isEmpty ? null : _t('fromName'),
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
        write: () => jsonCall(dio, 'PUT', '/v1/settings/smtp', body: body),
        reread: () => jsonObjectCall(dio, 'GET', '/v1/settings/smtp'),
        confirm: (back) {
          for (final key in <String>[
            'enabled',
            'host',
            'port',
            'security',
            'username',
            'fromAddress',
            'fromName',
          ]) {
            if ('${back[key]}' != '${body[key]}') {
              return '${wireText(key)} reads back as ${back[key] ?? 'unset'}.';
            }
          }
          if (body.containsKey('password') &&
              !((back['secretsSet'] as List?) ?? const <Object?>[]).contains('password')) {
            return 'The password is not stored.';
          }
          return null;
        },
      ),
    );
    // The password went to the backend once; it is never kept.
    _c['password']!.clear();
    if (done != null && mounted) {
      ref.invalidate(smtpSettingsProvider);
    }
  }

  Widget _field(String key, String label, {String? help, String? hint}) => LabeledField(
    label: label,
    help: help,
    field: PlainField(key: Key('smtp.$key'), controller: _c[key]!, hint: hint, error: _errors[key]),
  );

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      SwitchListTile(
        key: const Key('smtp.enabled'),
        contentPadding: EdgeInsets.zero,
        value: _enabled,
        onChanged: busy ? null : (v) => setState(() => _enabled = v),
        title: const Text('Send email'),
        subtitle: const Text('Off, activation and reset links must be handed over by hand.'),
      ),
      _field('host', 'Server', hint: 'smtp.example.com'),
      _field('port', 'Port', hint: '587'),
      LabeledField(
        label: 'Security',
        field: WireDropdown(
          key: const Key('smtp.security'),
          value: _security,
          values: <String>{...smtpSecurityModes, _security}.toList(),
          labels: smtpSecurityLabels,
          onChanged: (v) => setState(() => _security = v),
        ),
      ),
      _field('username', 'User name'),
      LabeledField(
        label: 'Password',
        help: _passwordSet ? 'Stored. Type a new one to replace it.' : 'Not stored.',
        field: TextField(
          key: const Key('smtp.password'),
          controller: _c['password'],
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
          decoration: InputDecoration(
            isDense: true,
            hintText: _passwordSet ? 'Stored (hidden)' : null,
          ),
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: StatusChip(
          key: const Key('smtp.passwordSet'),
          label: 'Password: ${_passwordSet ? 'set' : 'not set'}',
          tone: _passwordSet ? StatusTone.ok : StatusTone.neutral,
        ),
      ),
      _field('fromAddress', 'From address', help: 'Default $defaultFromAddress.'),
      _field(
        'fromName',
        'From name',
        help: 'The display name on outbound mail.',
        hint: 'ForeSignal',
      ),
      const SizedBox(height: 12),
      Wrap(
        spacing: 12,
        runSpacing: 8,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: <Widget>[
          PermissionGate(
            permission: Permissions.systemSettings,
            child: FilledButton(
              key: const Key('smtp.save'),
              onPressed: busy ? null : _save,
              child: const Text('Save Email Settings'),
            ),
          ),
          statusLine,
        ],
      ),
    ],
  );
}

/// Sends a test message (`testSmtpSettings`) with the saved settings.
class SmtpTestForm extends ConsumerStatefulWidget {
  /// Creates the form; [onTested] hears each result.
  const SmtpTestForm({super.key, this.onTested});

  /// Called with each `SmtpTestResult`.
  final ValueChanged<Json>? onTested;

  @override
  ConsumerState<SmtpTestForm> createState() => _SmtpTestFormState();
}

class _SmtpTestFormState extends ConsumerState<SmtpTestForm> with WriteTracking<SmtpTestForm> {
  final TextEditingController _to = TextEditingController();
  String? _toError;
  Json? _result;

  @override
  void dispose() {
    _to.dispose();
    super.dispose();
  }

  Future<void> _send() async {
    final to = _to.text.trim();
    if (!RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(to)) {
      setState(() => _toError = 'An email address to send the test to.');
      return;
    }
    setState(() {
      _toError = null;
      _result = null;
    });
    final result = await track(
      () => jsonObjectCall(
        ref.read(backendDioProvider),
        'POST',
        '/v1/settings/smtp/test',
        body: <String, Object?>{'to': to},
      ),
    );
    if (result != null && mounted) {
      setState(() => _result = result);
      widget.onTested?.call(result);
    }
  }

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      Text('Send a test', style: Theme.of(context).textTheme.titleSmall),
      const Footnote('Uses the saved settings: save first.'),
      LabeledField(
        label: 'Send to',
        field: PlainField(
          key: const Key('smtp.testTo'),
          controller: _to,
          hint: 'you@example.com',
          error: _toError,
        ),
      ),
      Wrap(
        spacing: 12,
        runSpacing: 8,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: <Widget>[
          PermissionGate(
            permission: Permissions.systemSettings,
            child: TonalButton(
              key: const Key('smtp.test'),
              label: 'Send Test Email',
              icon: Icons.send,
              onPressed: busy ? null : _send,
            ),
          ),
          statusLine,
        ],
      ),
      if (_result case final r?) ...<Widget>[
        const SizedBox(height: 12),
        ResultPanel(
          key: const Key('smtp.testResult'),
          title: r['ok'] == true ? 'Test email sent' : 'The test email was not sent',
          tone: r['ok'] == true ? StatusTone.ok : StatusTone.error,
          message: r['message'] as String?,
          details: <MapEntry<String, Object>>[
            if (r['sentAt'] != null) MapEntry<String, Object>('Sent', whenText(r['sentAt'])),
          ],
        ),
      ],
    ],
  );
}
