# R2-010 — Account security

**Goal.** The signed-in user's **account-security** surface: **MFA** enrollment/verify/disable with
recovery codes, their **active sessions** (list and revoke), and their **user-owned API tokens**
(mint/scope/revoke). Plus the admin's reach into the same where the contract allows (reset a user's MFA,
revoke any session).

**Depends on.** R2-001 (session, and the MFA-at-login code field already accepted) and R2-006 (the
profile screen this attaches to) — intra-admin only; it does **not** wait on the backend. The client
carries the MFA, session, and API-token operations from the 2.0.0 vendor. Re-vendor
`../foresignal/docs/OpenAPI.json` only if it changed since R2-006.

**Read first.** The v2.0 roadmap Part D (C1 MFA, C2 session & token management); R2-001-CR and R2-006-CR;
`lib/core/ui/` (`one_time_secret`, `write_confirm`, `data_table_card`). The user-owned API tokens carry
the same area/path/tile-key restrictions as the existing admin/read tokens (prompt 015's Tokens screen).

**Operations.** MFA: `enrollMfa` (returns the secret + `otpauthUri` + a `qrSvg`), `verifyMfa`,
`disableMfa`, `getMfaRecoveryCodes`. Sessions: `listSessions`, `revokeSession`, `revokeAllSessions`.
User tokens: `listMyTokens`, `createMyToken`, `revokeMyToken`.

**Build.** A **Security** section on the Profile screen (R2-006), the current user's own, with three
parts.
- **MFA (TOTP).** When off: **Enroll** → `enrollMfa` shows the QR (`qrSvg`) and the secret for manual
  entry, then a code field → `verifyMfa` turns it on and reveals the **recovery codes**
  (`getMfaRecoveryCodes`) through the `one_time_secret` idiom (shown once, copy, acknowledge). When on:
  show enrolled state, let the user view/regenerate recovery codes, and **Disable** (`disableMfa`,
  reauth/confirm). Reflect the policy that MFA is **required for Admin/Operator** — such a user cannot
  disable it below the requirement (show the server's refusal). The sign-in MFA-code field already
  exists from R2-001; this is the enrollment side.
- **Sessions.** `listSessions` as a table: created, last seen, idle/absolute expiry, user agent, IP,
  and **which row is the current session** (`current`). **Revoke** one (`revokeSession`) or **revoke all
  others** (`revokeAllSessions`) behind a confirm; revoking the current session signs the user out
  (route to login). An admin viewing another user (from R2-003) can revoke that user's sessions where
  the contract scopes it to them.
- **API tokens.** `listMyTokens` → the user's own machine tokens with their scope/area/path/tile-key
  restrictions and last use. **Mint** (`createMyToken`) with a scope and the restriction set; the new
  token value is shown **once** via `one_time_secret` and never again (never stored or logged in-app).
  **Revoke** (`revokeMyToken`) behind a confirm.

**Done when.** `flutter analyze` is clean and `flutter build linux` succeeds; a user can enroll MFA
(QR + verify), see and regenerate recovery codes shown once, and disable it (unless policy-required);
list their sessions with the current one marked and revoke one or all-others (current-session revoke
logs out); mint a scoped API token shown once and revoke it. Write tests (do not run them): enroll shows
the `qrSvg`/secret and `verifyMfa` flips state; recovery codes render through the one-time idiom;
`listSessions` marks `current` and revoke-all-others fires; `createMyToken` shows the value once and
`revokeMyToken` confirms; a policy-required user's Disable surfaces the refusal.

**Commit.** `R2-010: Account-Security-UI` + `completion-reports/R2-010-CR-*.md`. **Stage only this
prompt's files.**
