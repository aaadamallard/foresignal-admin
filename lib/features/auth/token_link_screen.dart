import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../api/api.dart';
import '../../core/connection_store.dart';
import '../../core/routes.dart';
import '../../core/ui/ui.dart';
import 'auth_controller.dart';
import 'auth_layout.dart';

/// The landing for an emailed link (`/activate` and `/reset-password`,
/// outside the shell): a new password, twice → `activateAccount` for an
/// invited user's first sign-in, or `resetPassword` for a reset. The link's
/// token arrives in the route's `t` query (and its backend in `u`); without
/// one, the person pastes the link or the token. On success it leads to
/// Login. An expired or used token shows the server's reason and offers a
/// new link.
class TokenLinkScreen extends ConsumerStatefulWidget {
  /// Creates the landing for [kind], with the link's [token] and [backend]
  /// when the route carried them.
  const TokenLinkScreen({super.key, required this.kind, this.token, this.backend});

  /// Activation or reset.
  final EmailedLinkKind kind;

  /// The link's token, when the route carried it.
  final String? token;

  /// The link's backend, when the route carried it.
  final Uri? backend;

  @override
  ConsumerState<TokenLinkScreen> createState() => _TokenLinkScreenState();
}

class _TokenLinkScreenState extends ConsumerState<TokenLinkScreen> {
  final TextEditingController _link = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirm = TextEditingController();
  bool _busy = false;
  bool _done = false;
  String? _invalid;
  ApiException? _error;

  bool get _activate => widget.kind == EmailedLinkKind.activate;

  bool get _hasRouteToken => widget.token != null && widget.token!.trim().isNotEmpty;

  @override
  void dispose() {
    _link.dispose();
    _password.dispose();
    _confirm.dispose();
    super.dispose();
  }

  /// The link the route carried, or the one pasted.
  EmailedLink? get _emailedLink => _hasRouteToken
      ? EmailedLink(token: widget.token!.trim(), backend: widget.backend, kind: widget.kind)
      : EmailedLink.parse(_link.text);

  /// Points the app at [url] and saves it, as Connect would.
  Future<void> _useBackend(Uri url) async {
    await ref.read(connectionStoreProvider).writeBackendUrl(url);
    ref.read(backendEndpointProvider.notifier).set(url);
    ref.invalidate(backendDioProvider);
  }

  Future<void> _submit() async {
    if (_busy) {
      return;
    }
    final link = _emailedLink;
    String? invalid;
    if (link == null || link.token.isEmpty) {
      invalid = 'Paste the link from the email, or its token.';
    } else if (_password.text.isEmpty) {
      invalid = 'Enter a new password.';
    } else if (_password.text != _confirm.text) {
      invalid = 'The two passwords do not match.';
    }
    if (invalid != null) {
      setState(() {
        _invalid = invalid;
        _error = null;
      });
      return;
    }
    setState(() {
      _busy = true;
      _invalid = null;
      _error = null;
    });
    try {
      final linkBackend = link!.backend;
      if (ref.read(backendEndpointProvider) == null && linkBackend != null) {
        await _useBackend(linkBackend);
      }
      final auth = ref.read(authControllerProvider);
      if (_activate) {
        await auth.activate(token: link.token, password: _password.text);
      } else {
        await auth.resetPassword(token: link.token, newPassword: _password.text);
      }
      if (mounted) {
        setState(() {
          _busy = false;
          _done = true;
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

  /// Whether [error] says the token expired, was used, or is unknown (410).
  static bool _tokenGone(ApiException error) =>
      (error is ProblemException && error.status == 410) ||
      (error is HttpStatusException && error.status == 410);

  @override
  Widget build(BuildContext context) {
    final current = ref.watch(backendEndpointProvider);
    final linkBackend = _hasRouteToken ? widget.backend : null;
    final error = _error;
    return AuthLayout(
      title: _activate ? 'Activate your account' : 'Choose a new password',
      subtitle: _activate
          ? 'Set the password for your new ForeSignal account.'
          : 'Set a new password for your ForeSignal account. Every device signed in to it is signed out.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const AuthBackendLine(),
          if (linkBackend != null && current != null && linkBackend != current) ...<Widget>[
            const SizedBox(height: 8),
            ResultPanel(
              key: const Key('link.otherBackend'),
              title: 'This link is for another backend',
              tone: StatusTone.warning,
              message: 'The link names $linkBackend; the app is connected to $current.',
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  key: const Key('link.useLinkBackend'),
                  onPressed: _done || _busy ? null : () => _useBackend(linkBackend),
                  child: Text('Use $linkBackend'),
                ),
              ),
            ),
          ],
          const SizedBox(height: 12),
          if (!_hasRouteToken) ...<Widget>[
            const AuthFieldLabel('Link or token from the email'),
            TextField(
              key: const Key('link.token'),
              controller: _link,
              enabled: !_busy && !_done,
              onChanged: (_) => setState(() {}),
              autocorrect: false,
              enableSuggestions: false,
              decoration: InputDecoration(
                hintText: _activate
                    ? 'foresignal://activate?u=…&t=…'
                    : 'foresignal://reset-password?u=…&t=…',
              ),
            ),
            const SizedBox(height: 16),
          ],
          const AuthFieldLabel('New password'),
          PasswordField(
            key: const Key('link.password'),
            controller: _password,
            enabled: !_busy && !_done,
            autofillHints: const <String>[AutofillHints.newPassword],
          ),
          const SizedBox(height: 16),
          const AuthFieldLabel('Confirm new password'),
          PasswordField(
            key: const Key('link.confirm'),
            controller: _confirm,
            enabled: !_busy && !_done,
            autofillHints: const <String>[AutofillHints.newPassword],
            onSubmitted: (_) => _submit(),
          ),
          const SizedBox(height: 20),
          if (!_done)
            FilledButton(
              key: const Key('link.submit'),
              onPressed:
                  _busy || (current == null && linkBackend == null && _emailedLink?.backend == null)
                  ? null
                  : _submit,
              child: _busy
                  ? const ButtonSpinner()
                  : Text(_activate ? 'Activate account' : 'Set new password'),
            ),
          if (current == null && linkBackend == null) ...<Widget>[
            const SizedBox(height: 12),
            const ResultPanel(
              key: Key('link.noBackend'),
              title: 'No backend set',
              tone: StatusTone.warning,
              message:
                  'Paste the whole link from the email (it names the backend), or set the backend on Connect.',
            ),
          ],
          if (_invalid != null) ...<Widget>[
            const SizedBox(height: 12),
            ResultPanel(
              key: const Key('link.invalid'),
              title: 'Check the form',
              tone: StatusTone.error,
              message: _invalid,
            ),
          ],
          if (_done) ...<Widget>[
            ResultPanel(
              key: const Key('link.done'),
              title: _activate ? 'Account activated' : 'Password changed',
              message: 'Sign in with your new password.',
            ),
            const SizedBox(height: 12),
            FilledButton(
              key: const Key('link.signIn'),
              onPressed: () => context.go(loginPath),
              child: const Text('Sign in'),
            ),
          ],
          if (error != null) ...<Widget>[
            const SizedBox(height: 12),
            if (_tokenGone(error))
              ResultPanel(
                key: const Key('link.gone'),
                title: 'This link no longer works',
                tone: StatusTone.error,
                message: error is ProblemException && (error.detail ?? '').isNotEmpty
                    ? error.detail
                    : _activate
                    ? 'The activation link expired or was already used.'
                    : 'The reset link expired or was already used.',
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: _activate
                      ? const Padding(
                          padding: EdgeInsets.only(top: 4),
                          child: Text('Ask an administrator to send a new invite.'),
                        )
                      : TextButton(
                          key: const Key('link.requestNew'),
                          onPressed: () => context.go(forgotPasswordPath),
                          child: const Text('Request a new link'),
                        ),
                ),
              )
            else
              ErrorBanner(
                error: error,
                title: _activate ? 'Could not activate' : 'Could not reset the password',
              ),
          ],
          const SizedBox(height: 16),
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
              key: const Key('link.back'),
              onPressed: () => context.go(loginPath),
              child: const Text('Back to sign in'),
            ),
          ),
        ],
      ),
    );
  }
}
