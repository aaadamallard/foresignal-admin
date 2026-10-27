import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/access.dart';
import '../../core/routes.dart';
import '../../core/ui/ui.dart';
import '../forecasting/forecasting_providers.dart' show Json;
import '../forecasting/forecasting_widgets.dart'
    show ConfirmRow, Footnote, PlainField, WireDropdown, WriteTracking, whenText;
import '../serving/serving_widgets.dart' show SwitchField;
import '../system/system_drafts.dart'
    show TokenDraft, licensePolicyFlags, licensePolicyNames, restrictionText, tokenScopes;
import '../system/system_widgets.dart' show ChoiceChips;
import '../system/tokens.dart' show RestrictionFields;

/// The pages the session list follows at most.
const int sessionMaxPages = 10;

/// The caller's own sessions (`listSessions`), the current one marked.
final mySessionsProvider = FutureProvider.autoDispose<List<Json>>((ref) async {
  final dio = ref.watch(backendDioProvider);
  final sessions = <Json>[];
  String? cursor;
  for (var page = 0; page < sessionMaxPages; page++) {
    final body = await jsonObjectCall(
      dio,
      'GET',
      '/v1/auth/sessions',
      query: <String, Object?>{'limit': 200, 'cursor': ?cursor},
    );
    for (final item in (body['items'] as List?) ?? const <Object?>[]) {
      if (item is Map) {
        sessions.add(item.cast<String, Object?>());
      }
    }
    cursor = body['nextCursor'] as String?;
    if (cursor == null) {
      break;
    }
  }
  return sessions;
});

/// The caller's own API tokens (`listMyTokens`).
final myTokensProvider = FutureProvider.autoDispose<List<Json>>(
  (ref) => jsonArrayCall(ref.watch(backendDioProvider), '/v1/me/tokens'),
);

/// The Security part of the profile: the user's MFA, sessions and API
/// tokens, all their own.
class AccountSecuritySection extends ConsumerWidget {
  /// Creates the section.
  const AccountSecuritySection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      key: const Key('security'),
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text('Security', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 12),
        const MfaCard(),
        const SizedBox(height: 20),
        const SessionsCard(),
        const SizedBox(height: 20),
        // Any signed-in user may own tokens (R2-025); a token cannot mint one.
        const MyTokensCard(),
      ],
    );
  }
}

/// What the MFA card is doing.
enum _MfaStep { idle, enrolling, disabling, regenerating }

/// Two-factor sign-in with an authenticator app (TOTP): enroll
/// (`enrollMfa`, then `verifyMfa`), recovery codes (`getMfaRecoveryCodes`),
/// and disable (`disableMfa`, which re-authenticates). Admin and Operator
/// roles require it, and the server refuses to disable it for them.
class MfaCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const MfaCard({super.key});

  @override
  ConsumerState<MfaCard> createState() => _MfaCardState();
}

class _MfaCardState extends ConsumerState<MfaCard> with WriteTracking<MfaCard> {
  _MfaStep _step = _MfaStep.idle;
  Json? _enrollment;

  /// The last `MfaStatus` answered, which is newer than `getMe` until it is
  /// read again.
  Json? _status;

  /// Recovery codes just issued, shown once.
  List<String>? _codes;
  final TextEditingController _code = TextEditingController();
  final TextEditingController _password = TextEditingController();
  String? _codeError;

  @override
  void dispose() {
    _code.dispose();
    _password.dispose();
    super.dispose();
  }

  List<String>? _codesOf(Object? recovery) {
    final codes = (recovery as Map?)?['codes'];
    return codes is List ? <String>[for (final c in codes) '$c'] : null;
  }

  Future<void> _enroll() async {
    setState(() {
      _step = _MfaStep.enrolling;
      _enrollment = null;
      _codes = null;
      _code.clear();
      _codeError = null;
    });
    final enrollment = await track(
      () => jsonObjectCall(ref.read(backendDioProvider), 'POST', '/v1/me/mfa/enroll'),
    );
    if (!mounted) {
      return;
    }
    setState(() {
      _enrollment = enrollment;
      if (enrollment == null) {
        _step = _MfaStep.idle;
      }
    });
  }

  Future<void> _verify() async {
    final code = _code.text.replaceAll(RegExp(r'\s'), '');
    if (!RegExp(r'^\d{6}$').hasMatch(code)) {
      setState(() => _codeError = 'The 6-digit code your authenticator app shows.');
      return;
    }
    setState(() => _codeError = null);
    final dio = ref.read(backendDioProvider);
    final status = await track(() async {
      final status = await jsonObjectCall(
        dio,
        'POST',
        '/v1/me/mfa/verify',
        body: <String, Object?>{'code': code},
      );
      if (status['enabled'] != true) {
        throw const WriteNotConfirmedException('The server did not turn MFA on.');
      }
      return status;
    });
    if (status == null || !mounted) {
      return;
    }
    // The first codes come with the answer that turned MFA on; a server that
    // left them out is asked for a set.
    var codes = _codesOf(status['recoveryCodes']);
    if (codes == null) {
      final fresh = await track(
        () => jsonObjectCall(dio, 'GET', '/v1/me/mfa/recovery-codes'),
      );
      codes = _codesOf(fresh);
    }
    if (!mounted) {
      return;
    }
    setState(() {
      _status = status;
      _codes = codes;
      _enrollment = null;
      _step = _MfaStep.idle;
      _code.clear();
    });
    ref.invalidate(meProvider);
  }

  Future<void> _regenerate() async {
    setState(() => _step = _MfaStep.idle);
    final fresh = await track(
      () => jsonObjectCall(ref.read(backendDioProvider), 'GET', '/v1/me/mfa/recovery-codes'),
    );
    if (fresh != null && mounted) {
      setState(() => _codes = _codesOf(fresh));
    }
  }

  Future<void> _disable() async {
    final code = _code.text.trim();
    final password = _password.text;
    if (code.isEmpty && password.isEmpty) {
      setState(() => _codeError = 'A current code, a recovery code, or your password.');
      return;
    }
    setState(() => _codeError = null);
    final status = await track(() async {
      final status = await jsonObjectCall(
        ref.read(backendDioProvider),
        'POST',
        '/v1/me/mfa/disable',
        body: <String, Object?>{
          if (code.isNotEmpty) 'code': code else 'password': password,
        },
      );
      if (status['enabled'] != false) {
        throw const WriteNotConfirmedException('The server kept MFA on.');
      }
      return status;
    });
    // The password went to the backend once; it is never kept.
    _password.clear();
    _code.clear();
    if (status != null && mounted) {
      setState(() {
        _status = status;
        _step = _MfaStep.idle;
        _codes = null;
      });
      ref.invalidate(meProvider);
    }
  }

  @override
  Widget build(BuildContext context) {
    final access = ref.watch(accessProvider);
    final me = ref.watch(meProvider);
    final enabled = _status?['enabled'] as bool? ?? me.value?.user?.mfaEnabled ?? false;
    final required = _status?['required'] as bool? ?? (access.isAdmin || access.isOperator);
    final refused = failedCode == 'MFA_REQUIRED';
    return SectionCard(
      key: const Key('mfa'),
      title: 'Two-Factor Sign-In',
      subtitle: 'A code from an authenticator app, asked for at every sign-in.',
      actions: <Widget>[
        StatusChip(
          key: const Key('mfa.state'),
          label: enabled ? 'On' : 'Off',
          tone: enabled ? StatusTone.ok : (required ? StatusTone.warning : StatusTone.neutral),
        ),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if (required)
            Footnote(
              enabled
                  ? 'Your role (Admin or Operator) requires two-factor sign-in, so it cannot be '
                        'turned off; an administrator reset is the way out.'
                  : 'Your role (Admin or Operator) requires two-factor sign-in. Turn it on now.',
            ),
          if (_status?['enrolledAt'] != null)
            Footnote('On since ${whenText(_status!['enrolledAt'])}.'),
          if (_codes case final codes?) ...<Widget>[
            const SizedBox(height: 12),
            OneTimeSecret(
              key: const Key('mfa.recoveryCodes'),
              label: 'Recovery codes',
              secret: codes.join('\n'),
              onDismiss: () => setState(() => _codes = null),
              extra: (revealed) => Text(
                'Each code works once, in place of a code from the app. Keep them somewhere safe: '
                'they are not shown again.${revealed ? '' : ' Reveal them to read all ${codes.length}.'}',
              ),
            ),
          ],
          const SizedBox(height: 12),
          if (!enabled && _step != _MfaStep.enrolling)
            Align(
              alignment: Alignment.centerLeft,
              child: FilledButton.icon(
                key: const Key('mfa.enroll'),
                onPressed: busy ? null : _enroll,
                icon: const Icon(Icons.qr_code_2),
                label: const Text('Set Up Two-Factor Sign-In'),
              ),
            ),
          if (_step == _MfaStep.enrolling && _enrollment != null)
            MfaEnrollmentView(enrollment: _enrollment!, code: _code, codeError: _codeError),
          if (_step == _MfaStep.enrolling) ...<Widget>[
            const SizedBox(height: 8),
            Wrap(
              spacing: 12,
              children: <Widget>[
                if (_enrollment != null)
                  FilledButton(
                    key: const Key('mfa.verify'),
                    onPressed: busy ? null : _verify,
                    child: const Text('Verify and Turn On'),
                  ),
                TextButton(
                  onPressed: busy ? null : () => setState(() => _step = _MfaStep.idle),
                  child: const Text('Cancel'),
                ),
              ],
            ),
          ],
          if (enabled && _step == _MfaStep.idle)
            Wrap(
              spacing: 12,
              runSpacing: 8,
              children: <Widget>[
                TonalButton(
                  key: const Key('mfa.regenerate'),
                  label: 'New Recovery Codes',
                  icon: Icons.refresh,
                  onPressed: busy ? null : () => setState(() => _step = _MfaStep.regenerating),
                ),
                DangerButton(
                  key: const Key('mfa.disable'),
                  label: 'Turn Off',
                  icon: Icons.lock_open,
                  onPressed: busy
                      ? null
                      : () => setState(() {
                          _step = _MfaStep.disabling;
                          _code.clear();
                          _password.clear();
                          _codeError = null;
                        }),
                ),
              ],
            ),
          if (_step == _MfaStep.regenerating)
            ConfirmRow(
              confirmKey: const Key('mfa.confirmRegenerate'),
              message: 'Make a new set of recovery codes? The codes you have now stop working.',
              action: 'Make New Codes',
              onConfirm: _regenerate,
              onCancel: () => setState(() => _step = _MfaStep.idle),
            ),
          if (_step == _MfaStep.disabling) ...<Widget>[
            LabeledField(
              label: 'Code',
              help: 'A current code from the app, or a recovery code.',
              field: PlainField(
                key: const Key('mfa.disableCode'),
                controller: _code,
                error: _codeError,
              ),
            ),
            LabeledField(
              label: 'Or your password',
              field: TextField(
                key: const Key('mfa.disablePassword'),
                controller: _password,
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: const InputDecoration(isDense: true),
              ),
            ),
            Wrap(
              spacing: 12,
              children: <Widget>[
                DangerButton(
                  key: const Key('mfa.confirmDisable'),
                  label: 'Turn Off Two-Factor Sign-In',
                  onPressed: busy ? null : _disable,
                ),
                TextButton(
                  onPressed: busy ? null : () => setState(() => _step = _MfaStep.idle),
                  child: const Text('Cancel'),
                ),
              ],
            ),
          ],
          if (refused) ...<Widget>[
            const SizedBox(height: 12),
            const ResultPanel(
              key: Key('mfa.required'),
              title: 'Your role requires two-factor sign-in',
              tone: StatusTone.warning,
              message:
                  'The server refused to turn it off (MFA_REQUIRED). An administrator can reset '
                  'it for you.',
            ),
          ],
          const SizedBox(height: 8),
          statusLine,
        ],
      ),
    );
  }
}

/// A started enrollment (`MfaEnrollment`): the QR to scan, the secret to type
/// in by hand, and the code field that confirms it.
class MfaEnrollmentView extends StatelessWidget {
  /// Creates the view.
  const MfaEnrollmentView({
    super.key,
    required this.enrollment,
    required this.code,
    this.codeError,
  });

  /// The enrollment as answered.
  final Json enrollment;

  /// The confirming code.
  final TextEditingController code;

  /// What is wrong with [code].
  final String? codeError;

  @override
  Widget build(BuildContext context) {
    final svg = enrollment['qrSvg'] as String?;
    final secret = '${enrollment['secret'] ?? ''}';
    return Column(
      key: const Key('mfa.enrollment'),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text('1. Scan this with your authenticator app.'),
        const SizedBox(height: 8),
        if (svg != null && svg.isNotEmpty)
          Container(
            key: const Key('mfa.qr'),
            color: Colors.white,
            padding: const EdgeInsets.all(12),
            child: SvgPicture.string(
              svg,
              width: 200,
              height: 200,
              semanticsLabel: 'QR code for your authenticator app',
              errorBuilder: (context, error, stack) => const SizedBox(
                width: 200,
                height: 200,
                child: Center(child: Text('The QR code could not be drawn; type the key below.')),
              ),
            ),
          )
        else
          const Text('No QR code was sent; type the key below.'),
        const SizedBox(height: 12),
        const Text('Or type this key in:'),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SelectableText(
              secret,
              key: const Key('mfa.secret'),
              style: const TextStyle(fontFamily: 'monospace', fontSize: 16),
            ),
            IconButton(
              tooltip: 'Copy',
              onPressed: () => Clipboard.setData(ClipboardData(text: secret)),
              icon: const Icon(Icons.copy, size: 18),
            ),
          ],
        ),
        const SizedBox(height: 12),
        LabeledField(
          label: '2. Enter the code',
          help: 'The 6 digits the app shows now.',
          field: PlainField(
            key: const Key('mfa.code'),
            controller: code,
            error: codeError,
            hint: '123456',
          ),
        ),
      ],
    );
  }
}

/// The user's own sessions (`listSessions`): where and when each signed in,
/// with the current one marked. Revoke one (`revokeSession`) or every other
/// one (`revokeAllSessions`); revoking the current one signs out here.
class SessionsCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const SessionsCard({super.key});

  @override
  ConsumerState<SessionsCard> createState() => _SessionsCardState();
}

class _SessionsCardState extends ConsumerState<SessionsCard> with WriteTracking<SessionsCard> {
  /// The session to revoke, or `''` for every other one.
  String? _confirming;
  bool _confirmingCurrent = false;

  Future<void> _revoke(String id, {required bool current}) async {
    setState(() => _confirming = null);
    final done = await track(() async {
      await jsonCall(
        ref.read(backendDioProvider),
        'DELETE',
        '/v1/auth/sessions/${Uri.encodeComponent(id)}',
      );
      return true;
    });
    if (done == null || !mounted) {
      return;
    }
    if (current) {
      // The token this app holds is gone; forget it and sign in again.
      await ref.read(sessionControllerProvider.notifier).clear();
      if (mounted) {
        context.go(loginPath);
      }
      return;
    }
    ref.invalidate(mySessionsProvider);
  }

  Future<void> _revokeOthers() async {
    setState(() => _confirming = null);
    final dio = ref.read(backendDioProvider);
    final done = await track(() async {
      await jsonCall(dio, 'DELETE', '/v1/auth/sessions');
      return true;
    });
    if (done != null && mounted) {
      ref.invalidate(mySessionsProvider);
    }
  }

  @override
  Widget build(BuildContext context) => SectionCard(
    key: const Key('sessions'),
    title: 'Sessions',
    subtitle: 'Everywhere you are signed in.',
    actions: <Widget>[
      IconButton(
        tooltip: 'Refresh',
        onPressed: () => ref.invalidate(mySessionsProvider),
        icon: const Icon(Icons.refresh),
      ),
      TonalButton(
        key: const Key('sessions.revokeOthers'),
        label: 'Sign Out Everywhere Else',
        icon: Icons.logout,
        onPressed: busy ? null : () => setState(() => _confirming = ''),
      ),
    ],
    child: AsyncView<List<Json>>(
      value: ref.watch(mySessionsProvider),
      onRetry: () => ref.invalidate(mySessionsProvider),
      data: (sessions) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          DataTableCard<Json>(
            rows: sessions,
            empty: 'No sessions are listed. Signing in starts one.',
            selected: (s) => s['current'] == true,
            columns: <TableColumnSpec<Json>>[
              TableColumnSpec<Json>(
                label: '',
                cell: (s) => s['current'] == true
                    ? StatusChip(
                        key: Key('sessions.current.${s['id']}'),
                        label: 'This session',
                        tone: StatusTone.ok,
                      )
                    : const SizedBox.shrink(),
              ),
              TableColumnSpec<Json>(
                label: 'Signed in',
                cell: (s) => Text(whenText(s['createdAt'])),
              ),
              TableColumnSpec<Json>(
                label: 'Last seen',
                cell: (s) => Text(whenText(s['lastSeenAt'])),
              ),
              TableColumnSpec<Json>(
                label: 'Idle expiry',
                cell: (s) => Text(whenText(s['idleExpiresAt'])),
              ),
              TableColumnSpec<Json>(label: 'Expires', cell: (s) => Text(whenText(s['expiresAt']))),
              TableColumnSpec<Json>(
                label: 'Device',
                cell: (s) => ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 260),
                  child: Text('${s['userAgent'] ?? '—'}', overflow: TextOverflow.ellipsis),
                ),
              ),
              TableColumnSpec<Json>(label: 'IP', cell: (s) => Text('${s['ipAddress'] ?? '—'}')),
              TableColumnSpec<Json>(
                label: '',
                cell: (s) => TextButton(
                  key: Key('sessions.revoke.${s['id']}'),
                  onPressed: busy
                      ? null
                      : () => setState(() {
                          _confirming = '${s['id']}';
                          _confirmingCurrent = s['current'] == true;
                        }),
                  child: Text(s['current'] == true ? 'Sign Out' : 'Revoke'),
                ),
              ),
            ],
          ),
          if (_confirming case final id?) ...<Widget>[
            const SizedBox(height: 12),
            ConfirmRow(
              confirmKey: const Key('sessions.confirm'),
              message: id.isEmpty
                  ? 'Sign out every other session? This one stays signed in.'
                  : (_confirmingCurrent
                        ? 'Revoke this session? You are signed out here.'
                        : 'Revoke that session? It is signed out at once.'),
              action: id.isEmpty ? 'Sign Out Others' : 'Revoke',
              onConfirm: id.isEmpty
                  ? _revokeOthers
                  : () => _revoke(id, current: _confirmingCurrent),
              onCancel: () => setState(() => _confirming = null),
            ),
          ],
          const SizedBox(height: 8),
          statusLine,
        ],
      ),
    ),
  );
}

/// The user's own API tokens (`listMyTokens`, `createMyToken`,
/// `revokeMyToken`): machine tokens owned by them, with the same
/// restrictions as the admin's tokens. A new token is shown once.
class MyTokensCard extends ConsumerStatefulWidget {
  /// Creates the card.
  const MyTokensCard({super.key});

  @override
  ConsumerState<MyTokensCard> createState() => _MyTokensCardState();
}

class _MyTokensCardState extends ConsumerState<MyTokensCard> with WriteTracking<MyTokensCard> {
  bool _adding = false;
  String? _secret;
  String? _revoking;

  Future<void> _revoke(String id) async {
    setState(() => _revoking = null);
    final dio = ref.read(backendDioProvider);
    final done = await track(() async {
      await jsonCall(dio, 'DELETE', '/v1/me/tokens/${Uri.encodeComponent(id)}');
      final listed = await jsonArrayCall(dio, '/v1/me/tokens');
      if (listed.any((t) => t['id'] == id && t['revokedAt'] == null)) {
        throw const WriteNotConfirmedException('The token is still listed as active.');
      }
      return true;
    });
    if (done != null && mounted) {
      ref.invalidate(myTokensProvider);
    }
  }

  @override
  Widget build(BuildContext context) => SectionCard(
    key: const Key('myTokens'),
    title: 'API Tokens',
    subtitle: 'Tokens for your own scripts and tools. A token can do no more than you can.',
    actions: <Widget>[
      FilledButton.icon(
        key: const Key('myTokens.add'),
        onPressed: () => setState(() {
          _adding = true;
          _secret = null;
        }),
        icon: const Icon(Icons.add),
        label: const Text('New Token'),
      ),
    ],
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        if (_secret case final secret?) ...<Widget>[
          OneTimeSecret(
            key: const Key('myTokens.secret'),
            label: 'New API token',
            secret: secret,
            onDismiss: () => setState(() => _secret = null),
          ),
          const SizedBox(height: 12),
        ],
        if (_adding) ...<Widget>[
          MyTokenForm(
            onCancel: () => setState(() => _adding = false),
            onCreated: (secret) => setState(() {
              _adding = false;
              _secret = secret;
            }),
          ),
          const SizedBox(height: 12),
        ],
        AsyncView<List<Json>>(
          value: ref.watch(myTokensProvider),
          onRetry: () => ref.invalidate(myTokensProvider),
          data: (tokens) => DataTableCard<Json>(
            rows: tokens,
            empty: 'No API tokens yet. New Token mints one.',
            columns: <TableColumnSpec<Json>>[
              TableColumnSpec<Json>(label: 'Name', cell: (t) => Text('${t['name']}')),
              TableColumnSpec<Json>(label: 'Scope', cell: (t) => Text(wireText('${t['scope']}'))),
              TableColumnSpec<Json>(label: 'Prefix', cell: (t) => Text('${t['tokenPrefix']}')),
              TableColumnSpec<Json>(
                label: 'Restrictions',
                cell: (t) => ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 280),
                  child: Text(restrictionText(t['restrictions'])),
                ),
              ),
              TableColumnSpec<Json>(
                label: 'Last used',
                cell: (t) => Text(whenText(t['lastUsedAt'])),
              ),
              TableColumnSpec<Json>(label: 'Expires', cell: (t) => Text(whenText(t['expiresAt']))),
              TableColumnSpec<Json>(
                label: '',
                cell: (t) => t['revokedAt'] != null
                    ? const StatusChip(label: 'Revoked', tone: StatusTone.neutral)
                    : TextButton(
                        key: Key('myTokens.revoke.${t['id']}'),
                        onPressed: busy ? null : () => setState(() => _revoking = '${t['id']}'),
                        child: const Text('Revoke'),
                      ),
              ),
            ],
          ),
        ),
        if (_revoking case final id?) ...<Widget>[
          const SizedBox(height: 12),
          ConfirmRow(
            confirmKey: const Key('myTokens.confirmRevoke'),
            message: 'Revoke this token? Anything using it stops working at once.',
            action: 'Revoke',
            onConfirm: () => _revoke(id),
            onCancel: () => setState(() => _revoking = null),
          ),
        ],
        const SizedBox(height: 8),
        statusLine,
      ],
    ),
  );
}

/// Mints a token owned by the caller (`createMyToken`): a name, a scope, an
/// expiry, and the area/path/tile-key restrictions of an admin's token. It
/// names no principal: the caller owns it.
class MyTokenForm extends ConsumerStatefulWidget {
  /// Creates the form.
  const MyTokenForm({super.key, required this.onCancel, required this.onCreated});

  /// Closes the form.
  final VoidCallback onCancel;

  /// Called with the new token, to be shown once.
  final ValueChanged<String> onCreated;

  @override
  ConsumerState<MyTokenForm> createState() => _MyTokenFormState();
}

class _MyTokenFormState extends ConsumerState<MyTokenForm> with WriteTracking<MyTokenForm> {
  final TokenDraft _d = TokenDraft();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _expires = TextEditingController();
  Map<String, String> _errors = const <String, String>{};

  @override
  void dispose() {
    _name.dispose();
    _expires.dispose();
    super.dispose();
  }

  Future<void> _create() async {
    _d
      ..name = _name.text
      ..expiresAt = _expires.text;
    setState(() => _errors = _d.validate());
    if (_errors.isNotEmpty) {
      return;
    }
    final dio = ref.read(backendDioProvider);
    final body = _d.toJson();
    final created = await track(() async {
      final t = await jsonObjectCall(dio, 'POST', '/v1/me/tokens', body: body);
      final listed = await jsonArrayCall(dio, '/v1/me/tokens');
      if (!listed.any((x) => x['id'] == t['id'])) {
        throw const WriteNotConfirmedException('The new token is not listed.');
      }
      final secret = t['token'];
      if (secret is! String || secret.isEmpty) {
        throw const WriteNotConfirmedException('The server did not return the token.');
      }
      return secret;
    });
    if (created != null && mounted) {
      ref.invalidate(myTokensProvider);
      widget.onCreated(created);
    }
  }

  @override
  Widget build(BuildContext context) => SectionCard(
    key: const Key('myTokens.form'),
    title: 'New Token',
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        LabeledField(
          label: 'Name',
          field: PlainField(
            key: const Key('myToken.name'),
            controller: _name,
            error: _errors['name'],
          ),
        ),
        LabeledField(
          label: 'Scope',
          help:
              'Read: data. Agent: also acting on alerts. Admin: everything you may do. A scope '
              'beyond your own permissions is refused.',
          field: WireDropdown(
            key: const Key('myToken.scope'),
            value: _d.scope,
            values: tokenScopes,
            onChanged: (v) => setState(() => _d.scope = v),
          ),
        ),
        LabeledField(
          label: 'Expires',
          help: 'An instant; empty for never.',
          field: PlainField(
            key: const Key('myToken.expiresAt'),
            controller: _expires,
            error: _errors['expiresAt'],
            hint: '2027-01-01T00:00:00Z',
          ),
        ),
        LabeledField(
          label: 'Private sources',
          help: 'Needs an admin session.',
          field: SwitchField(
            key: const Key('myToken.privateAccess'),
            value: _d.privateAccess,
            onChanged: (v) => setState(() => _d.privateAccess = v),
          ),
        ),
        LabeledField(
          label: 'License policy',
          help: 'A floor on what its reads may return.',
          field: ChoiceChips(
            key: const Key('myToken.policy'),
            keyPrefix: 'myToken.policy',
            values: licensePolicyFlags,
            labels: licensePolicyNames,
            selected: <String>[..._d.licensePolicy],
            onChanged: (v) => setState(
              () => _d.licensePolicy
                ..clear()
                ..addAll(v),
            ),
          ),
        ),
        if (_d.scope != 'admin')
          RestrictionFields(draft: _d.restrictions, prefix: 'myToken', errors: _errors),
        if (_d.scope == 'admin' && _errors['restrictions'] != null)
          Text(
            _errors['restrictions']!,
            style: TextStyle(color: Theme.of(context).colorScheme.error),
          ),
        FormActions(
          busy: busy,
          saveLabel: 'Create Token',
          onSave: _create,
          leading: <Widget>[
            TextButton(
              key: const Key('myToken.cancel'),
              onPressed: busy ? null : widget.onCancel,
              child: const Text('Cancel'),
            ),
            statusLine,
          ],
        ),
      ],
    ),
  );
}
