import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';

/// What a sign-in attempt came to. A refusal (wrong password, a suspended
/// account, rate limiting) is thrown as an [ApiException] instead.
sealed class LoginOutcome {
  const LoginOutcome();
}

/// The backend issued a session; it is stored and in use.
class LoginSignedIn extends LoginOutcome {
  /// Creates the outcome.
  const LoginSignedIn(this.session);

  /// The stored session.
  final StoredSession session;
}

/// The account has MFA enrolled and the attempt carried no code: the login
/// must be sent again with one. Nothing was stored.
class LoginMfaRequired extends LoginOutcome {
  /// Creates the outcome.
  const LoginMfaRequired();
}

/// Which emailed link a token came from.
enum EmailedLinkKind {
  /// The welcome email's account activation link (`activateAccount`).
  activate,

  /// The password reset email's link (`resetPassword`).
  reset,
}

/// What an emailed link carries: the single-use token and, when the link
/// names one, the backend's public base URL.
class EmailedLink {
  /// Creates a link.
  const EmailedLink({required this.token, this.backend, this.kind});

  /// The single-use token (`t`).
  final String token;

  /// The backend's public base URL (`u`), when the link carried one.
  final Uri? backend;

  /// The kind the link names, when it names one.
  final EmailedLinkKind? kind;

  /// Reads what a person pasted: a whole link
  /// (`foresignal://activate?u=…&t=…`, the `ClientLinks.activate` and
  /// `ClientLinks.passwordReset` defaults, or an https link with the same
  /// query) or the bare token. Returns `null` for blank input.
  static EmailedLink? parse(String input) {
    final text = input.trim();
    if (text.isEmpty) {
      return null;
    }
    final uri = Uri.tryParse(text);
    if (uri == null || !uri.hasScheme || !uri.queryParameters.containsKey('t')) {
      return EmailedLink(token: text);
    }
    final token = uri.queryParameters['t']!.trim();
    Uri? backend;
    final u = uri.queryParameters['u'];
    if (u != null && u.trim().isNotEmpty) {
      try {
        backend = parseBackendUrl(u);
      } on FormatException {
        backend = null;
      }
    }
    // `foresignal://activate?…` names the kind in the host; an https link
    // in the last path segment.
    final name = uri.host.isNotEmpty && uri.pathSegments.isEmpty
        ? uri.host
        : (uri.pathSegments.isEmpty ? '' : uri.pathSegments.last);
    final kind = switch (name) {
      'activate' => EmailedLinkKind.activate,
      'reset-password' || 'reset' => EmailedLinkKind.reset,
      _ => null,
    };
    return EmailedLink(token: token, backend: backend, kind: kind);
  }
}

/// The sign-in operations — `login`, `logout`, `requestPasswordReset`,
/// `resetPassword` and `activateAccount` — and the session they leave behind.
class AuthController {
  /// Creates the controller over [ref].
  AuthController(this.ref);

  /// The container's [Ref].
  final Ref ref;

  ForesignalApi get _api => ref.read(foresignalApiProvider);

  /// Signs in with [email] and [password] (and [mfaCode] when the account
  /// asks for one). On success the session is stored in the secure store and
  /// becomes the credential every later call carries.
  Future<LoginOutcome> signIn({
    required String email,
    required String password,
    String? mfaCode,
  }) async {
    final code = mfaCode?.trim();
    final token = await callApiRequired(
      () => _api.getAuthApi().login(
        loginRequest: LoginRequest(
          (b) => b
            ..email = email.trim()
            ..password = password
            ..mfaCode = code == null || code.isEmpty ? null : code,
        ),
      ),
    );
    if (token.mfaRequired ?? false) {
      return const LoginMfaRequired();
    }
    final session = StoredSession(
      token: token.token,
      tokenPrefix: token.tokenPrefix,
      userId: token.userId,
      email: email.trim(),
      expiresAt: token.expiresAt,
      idleExpiresAt: token.idleExpiresAt,
      permissions: List<String>.unmodifiable(token.permissions ?? const <String>[]),
      scopes: List<String>.unmodifiable(token.scopes ?? const <String>[]),
    );
    await ref.read(sessionControllerProvider.notifier).signedIn(session);
    return LoginSignedIn(session);
  }

  /// Signs out: asks the backend to revoke the session (`logout`), then
  /// clears it here whatever the backend answered, so a backend that is
  /// down never keeps a person signed in. Returns the backend's failure, if
  /// any, for the screen to mention.
  Future<ApiException?> signOut() async {
    ApiException? failure;
    if (ref.read(sessionControllerProvider).signedIn) {
      try {
        await callApi(() => _api.getAuthApi().logout());
      } on ApiException catch (error) {
        failure = error;
      }
    }
    await ref.read(sessionControllerProvider.notifier).clear();
    return failure;
  }

  /// Asks for a password-reset email for [email] (`requestPasswordReset`).
  /// The backend answers the same whether or not the account exists.
  Future<void> requestPasswordReset(String email) async {
    await callApi(
      () => _api.getAuthApi().requestPasswordReset(
        passwordResetRequest: PasswordResetRequest((b) => b..email = email.trim()),
      ),
    );
  }

  /// Sets a new password from an emailed reset [token] (`resetPassword`).
  /// The backend revokes every session the user had, so any stored here is
  /// cleared too.
  Future<void> resetPassword({required String token, required String newPassword}) async {
    await callApi(
      () => _api.getAuthApi().resetPassword(
        passwordReset: PasswordReset(
          (b) => b
            ..token = token
            ..newPassword = newPassword,
        ),
      ),
    );
    await ref.read(sessionControllerProvider.notifier).clear();
  }

  /// Sets an invited user's first password from the emailed activation
  /// [token] (`activateAccount`).
  Future<void> activate({required String token, required String password}) async {
    await callApi(
      () => _api.getAuthApi().activateAccount(
        accountActivation: AccountActivation(
          (b) => b
            ..token = token
            ..password = password,
        ),
      ),
    );
  }
}

/// The app's [AuthController].
final authControllerProvider = Provider<AuthController>(AuthController.new);

/// The sentence a refused sign-in shows, from the backend's answer: a wrong
/// email or password, a suspended or not-yet-activated account (with the
/// server's own reason), or rate limiting. `null` for failures the error
/// banner explains better (an unreachable backend, a 5xx).
String? loginRefusal(ApiException error) {
  if (error is! ProblemException) {
    return error is HttpStatusException && error.status == 401
        ? 'The email or password was not accepted.'
        : null;
  }
  final reason = error.detail == null || error.detail!.isEmpty ? null : error.detail;
  return switch (error.status) {
    401 => 'The email or password was not accepted.',
    403 =>
      reason == null
          ? 'This account cannot sign in (${error.code ?? error.title}).'
          : 'This account cannot sign in: $reason',
    429 =>
      'Too many attempts. ${error.retryAfter == null ? 'Wait a moment' : 'Wait ${error.retryAfter!.inSeconds} s'}, then try again.',
    _ => null,
  };
}
