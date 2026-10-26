import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/form_factor.dart';
import '../../core/nav.dart';
import '../../core/routes.dart';
import '../../core/ui/ui.dart';
import 'auth_controller.dart';
import 'auth_layout.dart';

/// Login (`/login`, outside the shell): email and password → `login`. A
/// signed-in session is stored in the secure store and the app opens on its
/// home section. A refused credential, a suspended or not-yet-activated
/// account (with the server's reason) and rate limiting are each said on the
/// screen; when the account has MFA enrolled, a code field appears and the
/// login is sent again with it. Links lead to Forgot password, to the
/// activation landing, and to Connect for the admin-token fallback.
class LoginScreen extends ConsumerStatefulWidget {
  /// Creates the screen.
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _mfa = TextEditingController();
  bool _busy = false;
  bool _mfaRequired = false;
  ApiException? _error;
  bool _sessionEnded = false;

  @override
  void initState() {
    super.initState();
    final state = ref.read(sessionControllerProvider);
    _sessionEnded = state.ended;
    _email.text = state.session?.email ?? '';
    if (state.ended) {
      // Shown once: leaving and coming back does not repeat it.
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          ref.read(sessionControllerProvider.notifier).acknowledgeEnded();
        }
      });
    }
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _mfa.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (_busy) {
      return;
    }
    if (_email.text.trim().isEmpty || _password.text.isEmpty) {
      setState(() => _error = null);
      return;
    }
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final outcome = await ref
          .read(authControllerProvider)
          .signIn(
            email: _email.text,
            password: _password.text,
            mfaCode: _mfaRequired ? _mfa.text : null,
          );
      if (!mounted) {
        return;
      }
      switch (outcome) {
        case LoginMfaRequired():
          setState(() {
            _busy = false;
            _mfaRequired = true;
          });
        case LoginSignedIn():
          context.go(navSectionsFor(ref.read(formFactorProvider)).first.path);
      }
    } on ApiException catch (error) {
      if (mounted) {
        setState(() {
          _busy = false;
          _error = error;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final connected = ref.watch(backendEndpointProvider) != null;
    final refusal = _error == null ? null : loginRefusal(_error!);
    final canSubmit = connected && !_busy;
    return AuthLayout(
      title: 'Sign in',
      subtitle: 'Use the email and password of your ForeSignal account.',
      child: AutofillGroup(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            if (_sessionEnded) ...<Widget>[
              const ResultPanel(
                key: Key('login.sessionEnded'),
                title: 'Your session ended',
                tone: StatusTone.warning,
                message: 'Sign in again to continue.',
              ),
              const SizedBox(height: 16),
            ],
            const AuthBackendLine(),
            const SizedBox(height: 12),
            const AuthFieldLabel('Email'),
            TextField(
              key: const Key('login.email'),
              controller: _email,
              enabled: !_busy,
              keyboardType: TextInputType.emailAddress,
              autocorrect: false,
              autofillHints: const <String>[AutofillHints.email, AutofillHints.username],
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(hintText: 'you@example.com'),
            ),
            const SizedBox(height: 16),
            const AuthFieldLabel('Password'),
            PasswordField(
              key: const Key('login.password'),
              controller: _password,
              enabled: !_busy,
              autofillHints: const <String>[AutofillHints.password],
              onSubmitted: (_) => _submit(),
            ),
            if (_mfaRequired) ...<Widget>[
              const SizedBox(height: 16),
              const AuthFieldLabel('Authentication code'),
              TextField(
                key: const Key('login.mfa'),
                controller: _mfa,
                enabled: !_busy,
                autofocus: true,
                autocorrect: false,
                keyboardType: TextInputType.visiblePassword,
                autofillHints: const <String>[AutofillHints.oneTimeCode],
                onSubmitted: (_) => _submit(),
                decoration: const InputDecoration(
                  hintText: '123456',
                  helperText:
                      'The code from your authenticator app, or one of your recovery codes.',
                ),
              ),
            ],
            const SizedBox(height: 20),
            FilledButton(
              key: const Key('login.submit'),
              onPressed: canSubmit ? _submit : null,
              child: _busy
                  ? const ButtonSpinner()
                  : Text(_mfaRequired ? 'Verify and sign in' : 'Sign in'),
            ),
            if (!connected) ...<Widget>[
              const SizedBox(height: 12),
              const ResultPanel(
                key: Key('login.noBackend'),
                title: 'Connect to a backend first',
                tone: StatusTone.warning,
                message: 'Enter the backend URL on Connect, then come back to sign in.',
              ),
            ],
            if (_mfaRequired && _error == null) ...<Widget>[
              const SizedBox(height: 12),
              const ResultPanel(
                key: Key('login.mfaRequired'),
                title: 'Two-factor authentication is on for this account',
                tone: StatusTone.info,
                message: 'Enter the code to finish signing in.',
              ),
            ],
            if (_error != null) ...<Widget>[
              const SizedBox(height: 12),
              if (refusal != null)
                ResultPanel(
                  key: const Key('login.refused'),
                  title: 'Not signed in',
                  tone: StatusTone.error,
                  message: refusal,
                )
              else
                ErrorBanner(error: _error!, title: 'Could not sign in'),
            ],
            const SizedBox(height: 16),
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              spacing: 8,
              children: <Widget>[
                TextButton(
                  key: const Key('login.forgot'),
                  onPressed: () => context.go(forgotPasswordPath),
                  child: const Text('Forgot password?'),
                ),
                TextButton(
                  key: const Key('login.activate'),
                  onPressed: () => context.go(activatePath),
                  child: const Text('Have an activation link?'),
                ),
              ],
            ),
            const Divider(height: 24),
            TextButton.icon(
              key: const Key('login.adminToken'),
              onPressed: () => context.go(connectPath),
              icon: const Icon(Icons.key, size: 16),
              label: const Text('Use an admin token instead (machine access)'),
            ),
          ],
        ),
      ),
    );
  }
}
