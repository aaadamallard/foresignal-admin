# R2-001 — Login & Session

**Goal.** Turn the admin app from a single-token tool into a multi-user one: an **email + password
login** whose session token is held in the platform secure store, with the pasted admin token kept as
a **machine/break-glass fallback**. Plus the **forgot-password** and **activation** flows that the
emailed links land on. This is the first half of the v2.0 spine (R2-002 is the other half); nearly
every later R2 screen assumes a signed-in user exists.

**Depends on.** Nothing earlier in the admin R2 track — this runs first, against the committed 2.0.0
contract (it does the one-time 1.5.0→2.0.0 re-vendor below). It does **not** wait on the backend; the
client carries the auth operations from the 2.0.0 vendor, and an operation the backend has not
implemented yet surfaces its error on-screen (the directional policy from 018). Everything after it
(R2-002…R2-011) assumes the session + secure store this prompt builds.

**Read first.** The v2.0 roadmap Part A3/A6/A7 (auth, transactional email, admin app); Screens.md §A
(Connect) and Architecture.md §4/§6 (auth, secrets); 003-CR (App-Shell-And-Connect); and the existing
`lib/api/admin_token_store.dart`, `lib/api/admin_auth_interceptor.dart`,
`lib/features/connect/connect_controller.dart`, `lib/core/routes.dart`.

**Re-vendor the contract (the one-time 2.0.0 bump).** Copy `../foresignal/docs/OpenAPI.json` to
`openapi/OpenAPI.json` and regenerate with `tool/generate_api.sh` (openapi-generator 7.26.0, pinned —
never hand-edit `lib/api/generated/`). The backend contract is now **2.0.0**, a deliberate major break
(per-user semantics), so:
- update `openapi/VERSION` to the contract's `info.version` (`2.0.0`), and
- update `vendoredApiVersion` in `lib/api/contract_version.dart` to match — the contract-version test
  keeps the two in step.
Regeneration is additive for every existing screen (new operations and schemas only), so they compile
unchanged. The v2.0 auth operations are carried by status `planned` in the contract; the generator
ignores that status and still generates their client methods, so wire them now — if the backend has
not landed one at runtime it answers with an error that the app already surfaces on-screen (it never
crashes), per the directional policy from 018.

**Build.**
- **Session store (secure).** A `SessionStore` (session token + its `tokenPrefix`, `expiresAt`,
  `idleExpiresAt`, and the `permissions`/`scopes` the login returned) persisted via
  `flutter_secure_storage`, parallel to the existing admin-token store. The session token is a
  credential — never written to plain files or logs. Clear it on logout, on a 401, and on password
  change.
- **Auth interceptor precedence.** Extend `AdminAuthInterceptor` so the **session token wins** when
  present; the pasted admin token is the fallback (break-glass / machine use). Reads stay open; a write
  with neither credential is still refused before it is sent (the existing behavior).
- **Login screen (`/login`, outside the shell).** Email + password → `login`. On success, store the
  `SessionToken` and route to the app home. Surface a rejected credential as a refusal, a suspended or
  invited account with the server's reason, and — when `login` returns `mfaRequired` — an MFA-code
  field that resubmits with `mfaCode` (the full MFA enrollment UI is R2-010; here, just accept the code
  at sign-in). **Logout** calls `logout` and clears the session store.
- **Forgot password.** A link from the login screen → an email field → `requestPasswordReset`. Always
  show the same neutral "if that account exists, a reset link was sent" result (no account enumeration).
- **Reset / activate landing.** A screen that consumes the token from an emailed link: a new password
  (twice, with the confirm) → `resetPassword` for a reset, or `activateAccount` for an invited user's
  first sign-in. On success, route to login (or straight in if the contract returns a session). An
  expired or used token shows the server's reason and offers "request a new link".
- **Connect screen stays.** The backend URL capture and the pasted-admin-token field remain on Connect
  as the machine fallback and first-run break-glass; add a clear note that normal use is Login. The
  version/`getSystem`/`getContract` checks there are unchanged.
- **Session-expiry handling.** On any 401 from a session-authenticated call, clear the session and route
  to `/login` (with a one-line "your session ended, sign in again"); do not loop.

**Done when.** `flutter analyze` is clean and `flutter build linux` succeeds; `openapi/VERSION` and
`vendoredApiVersion` both read `2.0.0` and the contract-version test passes; a login stores the session
and reaches the app, logout clears it, the forgot-password and reset/activate screens call their
operations, and the admin-token fallback still authorizes a write when no session is present. Write
tests (do not run them): the session store round-trips and clears; the interceptor prefers the session
token over the admin token; login success/rejection/`mfaRequired` each render correctly; reset/activate
post the right operation with the link token.

**Commit.** `R2-001: Login-Session` + `completion-reports/R2-001-CR-*.md`. **Stage only this prompt's
files** (the re-vendored spec, the regenerated client, `contract_version.dart`, the session store, the
interceptor, the login/forgot/reset screens, routes, and their tests).
