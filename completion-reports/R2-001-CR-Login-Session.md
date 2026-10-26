# R2-001 — Login-Session — completion report

**Implementation commit:** `2ebed168727152804f68695d10368e826f212e14`

**Status:** Complete, except for the release Linux build. Host memory blocked it; a debug build of the same tree succeeded (see Verification).

## What was built

- **Contract re-vendored (the one-time 1.5.0 → 2.0.0 bump).**
  - `../foresignal/docs/OpenAPI.json` was copied to `openapi/OpenAPI.json`. Its last change in the backend repo is commit `52d4bd467641373cb8e7d7352ee94def77093d7a` (2026-10-26 16:47 -0500, "R2-014"). The new sha256 is `b690b23590fd18e9af12989b70bf8c250acc42435ea188ae45201b1cdbe400d5`.
  - `openapi/VERSION` and `vendoredApiVersion` (`lib/api/contract_version.dart`) both read `2.0.0`.
  - A JSON comparison of the old and new contracts found no operations or schemas removed.
    - 75 operations were added, all `x-foresignal-status: planned`: Auth, Users, Roles, MFA, Tokens, Preferences, Quotas, Egress, Aggregators, Backups, Archive, Resources, SMTP, first-run and setup.
    - 72 schemas were added.
    - Nine schemas gained members: `Me.user` and `Me.permissions`; `Channel.global`; `ChannelInput.global`; `LlmProvider` and `LlmProviderInput` gained `shared`, `ownerPrincipalId` and the per-user caps; `SavedView` and `TriggerRule` gained `ownerPrincipalId`; `AuditEvent` gained `userId`, `userEmail` and the actor kind `user`; `ClientLinks` gained `activate` and `passwordReset`.
    - `Channel.ownerPrincipalId` changed from a `oneOf` with null to a nullable string. It is still `String?` in the client.
    - The other path changes are description text only.
- **Client regenerated** with `tool/generate_api.sh` (openapi-generator 7.26.0, as pinned).
  - The diff is additive: 51 changed files, plus the new API and model files.
  - Every removed line is a doc comment, the old version string, or an equality or `toString` line that moved to make room for a new member.
  - Nothing in `lib/api/generated/` was hand-edited. `pubspec.lock` follows the package's version (1.3.0 → 2.0.0).
- **Session store** (`lib/api/session_store.dart`).
  - `StoredSession` holds the token, `tokenPrefix`, `userId`, the email signed in with, `expiresAt`, `idleExpiresAt`, `permissions` and `scopes`.
  - `SecureSessionStore` keeps it as JSON under `foresignal.session` in `flutter_secure_storage`, and nowhere else. When the secure store refuses (no Secret Service on Linux), it holds the session for this run only, the same rule as the connection store.
  - `SessionController` keeps the state and the store in step:
    - `restore` runs at startup and drops a session past `expiresAt`;
    - `signedIn` stores a new session;
    - `clear` runs on logout and after a password reset;
    - `ended` runs on a 401, and `acknowledgeEnded` clears the notice once it has been shown.
  - `main.dart` installs the secure store and restores the session before the first frame.
- **Auth interceptor precedence** (`AdminAuthInterceptor`).
  - The session token wins; the pasted admin token is the fallback.
  - Reads stay open. A write with neither credential is still refused before it is sent.
  - The four open sign-in operations (`login`, `activateAccount`, `resetPassword`, `requestPasswordReset`) are always sent with no `Authorization`, so a stale session cannot spoil them. Without that exemption, the old write guard would have refused them before sending.
  - Each request records which credential it carried. A 401 to a request that carried the *current* session token clears the session and reports it once. A 401 to an admin-token request, or to a session that was already replaced, changes nothing.
- **Login** (`/login`, outside the shell; `lib/features/auth/login_screen.dart`).
  - Email and password go to `login`. On success the session is stored and the app opens on its first section.
  - Refusals are shown on the screen:
    - a 401 says "The email or password was not accepted.";
    - a 403 (suspended, disabled or invited) shows the server's own `detail`;
    - a 429 shows the wait time;
    - any other failure appears in the shared error banner.
  - `mfaRequired` stores nothing, shows an *Authentication code* field, and sends the login again with `mfaCode`.
  - Links lead to Forgot password, the activation landing, and Connect ("Use an admin token instead").
- **Logout.** The shell has an account control: the user's email and Sign out in the desktop sidebar, a menu in the phone's app bar, or Sign in when nobody is signed in. Sign out calls `logout`, then clears the session whatever the backend answered.
- **Forgot password** (`/forgot-password`): an email goes to `requestPasswordReset`, and the screen always shows the same neutral "if that account exists, a reset link was sent" result.
- **Reset and activate landing** (`/reset-password`, `/activate`; `token_link_screen.dart`).
  - It takes the link's token from the route's `t` query and its backend from `u`, which is what `ClientLinks.passwordReset` and `ClientLinks.activate` put in an email.
  - Without them, the person pastes the whole link or the bare token.
  - The new password is entered twice; a mismatch is refused before anything is sent. Then it calls `resetPassword` or `activateAccount` (both answer 204 with no session) and leads to Login.
  - A 410 shows the server's reason. For a reset it offers "Request a new link"; for an activation it says to ask an administrator for a new invite.
  - A link naming a different backend from the one connected says so and offers to switch. With no backend set, the link's own backend is used.
- **Connect stays.** The URL, the admin token and the `getSystem`/`getContract`/`getServerSettings` checks are unchanged. A note at the top says normal use is signing in, and that the admin token is the machine and break-glass fallback. It has a Sign in button.
- **Session expiry.** The router listens to the session. When the backend ends it, the router goes to Login once, and Login shows "Your session ended — Sign in again to continue." The notice is acknowledged there, so leaving Login does not bounce back.
- **Related updates:**
  - `AdminTokenRequiredException` now says "Sign in to make this change, or enter an admin token on the Connect screen." Its banner heading is "Sign-in required".
  - Device presence reporting also runs for a signed-in session, not only with an admin token.
  - The router sends every route to Connect while no backend is set, except Connect itself and the four sign-in pages.

## Omitted or adapted, and why

- **Login is not forced.** Reads are open (`security.openReads`) and the app has always worked read-only without a token. Forcing Login would remove that, so the app instead offers Sign in from the shell and from Connect, and goes to Login when a session ends.
- **"Clear it on password change."** The 2.0.0 contract has no self-service change-password operation; its only password operations are `resetPassword` and the admin's `adminResetUserPassword`. The session is cleared after a successful `resetPassword`, which the contract says revokes all of the user's sessions.
- **OS-level handling of `foresignal://` links is not registered** (Android intent filter, iOS URL type, Linux desktop entry). The routes accept `t` and `u`, and the landing accepts a pasted link. See Owner questions.

## Owner questions

1. **Should the app register the `foresignal://` scheme with each OS** (the `ClientLinks.activate` and `ClientLinks.passwordReset` defaults), so that tapping an emailed link opens the landing directly? Today the person pastes the link.
2. **No US English guard covers this repository.** The backend's `checkUsEnglish` scans only `src/main`, `src/test` and `docs/*.md` of `foresignal`, and the MeshDTN guard is out of bounds. Should the admin app get its own guard? For this pass, my own grep of the changed files for common British spellings found none.
3. **The release build runs out of memory on this host right now** (Verification). Will you free memory, or should the run keep going with debug builds as the compile proof?

## Wire spellings found and left alone

None new. The permission keys and auth members (`mfaRequired`, `idleExpiresAt`, `tokenPrefix`) are US English.

## Secrets

None committed. The session token lives only in the secure store, or in memory when that store refuses, and is never logged.

## Instructions found in data

None.

## Verification

- `flutter pub get`: dependencies resolved.
- `flutter analyze`: "No issues found!"
- `flutter build linux` (release) **failed in this environment, three times**, at `kernel_snapshot_program`.
  - The journal shows earlyoom sending SIGTERM to `dart:frontend_s` at about 3.4–3.6 GB RSS, at 17:02:47, 17:04:20, 17:05:54 and 17:07:46. Swap was full (0 of 4095 MiB free) and available memory was at 10%.
  - The memory was held by:
    - the docker backend `java -jar /app/foresignal.jar` (7.1 GB RSS, up 7 h);
    - its postgres;
    - a Gradle/javac compile from the parallel backend track.
  - I did not stop any of them.
- `flutter build linux --debug` succeeded: "✓ Built build/linux/x64/debug/bundle/foresignal_admin".
- Tests were written and **not run**, per the run rules:
  - `test/api/session_store_test.dart`:
    - JSON round-trip;
    - in-memory store round-trips and clears;
    - secure store persists across instances and clears;
    - a refusing store keeps the session for the run;
    - the controller restores, drops an expired session, signs in and clears, and notices an ended session once.
  - `test/api/admin_auth_interceptor_test.dart`:
    - the session token wins over the admin token;
    - the admin token still authorizes a write with no session;
    - the open sign-in operations carry no credential;
    - a 401 to a session request clears it and reports it once;
    - a 401 to an admin-token request leaves it alone.
  - `test/features/auth/auth_screens_test.dart`:
    - login success stores the session, routes home, and later calls carry it;
    - a rejected credential renders the refusal and stores nothing;
    - a suspended account shows the server reason;
    - `mfaRequired` shows the code field and resubmits with `mfaCode`;
    - forgot password posts the email and shows the neutral result;
    - reset posts `resetPassword` with the link token;
    - activate posts `activateAccount` with the link token;
    - mismatched passwords are refused before sending;
    - a 410 shows the reason and "Request a new link";
    - a 401 to a signed-in call opens Login with the ended notice;
    - `EmailedLink.parse` reads a link or a bare token.
  - `test/api/contract_version_test.dart`: VERSION and `vendoredApiVersion` agree, and both are 2.0.0.
  - Fixtures moved to 2.0.0: `test/support/test_app.dart` and the two Connect tests.
- Not checked by hand in the preview. The run rules for R2 allow only pub get, analyze and build.
