import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/routes.dart';
import '../../core/ui/ui.dart';
import 'auth_controller.dart';
import 'auth_layout.dart';

/// The neutral answer to a reset request: the same whether or not the
/// account exists, so an address cannot be probed.
const String resetRequestedMessage =
    'If that account exists, a reset link was sent to it. The link works once and expires; '
    'check your spam folder if it does not arrive.';

/// Forgot password (`/forgot-password`, outside the shell): an email →
/// `requestPasswordReset`, then always the same neutral result
/// ([resetRequestedMessage]).
class ForgotPasswordScreen extends ConsumerStatefulWidget {
  /// Creates the screen.
  const ForgotPasswordScreen({super.key});

  @override
  ConsumerState<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends ConsumerState<ForgotPasswordScreen> {
  final TextEditingController _email = TextEditingController();
  bool _busy = false;
  bool _sent = false;
  ApiException? _error;

  @override
  void dispose() {
    _email.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (_busy || _email.text.trim().isEmpty) {
      return;
    }
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      await ref.read(authControllerProvider).requestPasswordReset(_email.text);
      if (mounted) {
        setState(() {
          _busy = false;
          _sent = true;
        });
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
    return AuthLayout(
      title: 'Reset your password',
      subtitle: 'Enter your account email and a reset link will be sent to it.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const AuthBackendLine(),
          const SizedBox(height: 12),
          const AuthFieldLabel('Email'),
          TextField(
            key: const Key('forgot.email'),
            controller: _email,
            enabled: !_busy && !_sent,
            keyboardType: TextInputType.emailAddress,
            autocorrect: false,
            autofillHints: const <String>[AutofillHints.email],
            onSubmitted: (_) => _submit(),
            decoration: const InputDecoration(hintText: 'you@example.com'),
          ),
          const SizedBox(height: 20),
          if (!_sent)
            FilledButton(
              key: const Key('forgot.submit'),
              onPressed: connected && !_busy ? _submit : null,
              child: _busy ? const ButtonSpinner() : const Text('Send reset link'),
            ),
          if (_sent)
            const ResultPanel(
              key: Key('forgot.sent'),
              title: 'Check your email',
              tone: StatusTone.info,
              message: resetRequestedMessage,
            ),
          if (_error != null) ...<Widget>[
            const SizedBox(height: 12),
            ErrorBanner(error: _error!, title: 'Could not send the request'),
          ],
          const SizedBox(height: 16),
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            spacing: 8,
            children: <Widget>[
              TextButton(
                key: const Key('forgot.back'),
                onPressed: () => context.go(loginPath),
                child: const Text('Back to sign in'),
              ),
              TextButton(
                key: const Key('forgot.haveLink'),
                onPressed: () => context.go(resetPasswordPath),
                child: const Text('I have a reset link'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
