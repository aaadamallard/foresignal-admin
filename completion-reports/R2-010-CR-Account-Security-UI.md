# R2-010 — Account-Security-UI — completion report

**Implementation commit:** `47d557365f6a710daef94c0ab0f420443086147c`

**Status:** Complete for the user's own account. The admin's reach into another user's MFA and sessions is not built, because the contract has no such operations (owner question 1). The release build was killed by earlyoom; the debug build succeeded.

## What was built

- **Contract re-vendored**, because the committed backend contract changed after R2-009.
  - Source: `../foresignal` commit `0a4cd6401fb8011fd69c1398ed12a7fb612e411b` (2026-10-26 19:07:47 -0500, "R2-025: User-owned API token management"), the last commit to touch `docs/OpenAPI.json`. It was taken from the committed `HEAD` (`4c0da89f`). New sha256 `82a02d9d9aa1e96c29fe7093293d67eb5a918d0711bc08ea569b1a3a5c8e5bfc`. `info.version` is still `2.0.0`.
  - A JSON comparison found:
    - no operations added or removed, and no status changes;
    - `createMyToken`, `listMyTokens` and `revokeMyToken` changed: any signed-in session, no longer `self.workspaces`; revoked tokens stay listed; a scope wider than the caller is 403 `TOKEN_EXCEEDS_USER`;
    - `ApiToken.createdVia` gained `self`.
  - Client regenerated (7.26.0): 6 changed files. Nothing was hand-edited.
- **New dependency: `flutter_svg` ^2.3.0**, added with `flutter pub add`. The lock shows `flutter_svg 2.3.0` plus `path_parsing`, `vector_graphics`, `vector_graphics_codec` and `vector_graphics_compiler`. It draws the server's `qrSvg`; nothing in the app rendered SVG before.
- **A Security section on the Profile screen**, under the quota, for the signed-in user's own account. It has three cards.
- **Two-Factor Sign-In (TOTP).**
  - An On/Off chip, from `getMe`'s `user.mfaEnabled` and then from each `MfaStatus` answered.
  - **Off: Set Up**, using `enrollMfa`:
    - It shows the QR (`qrSvg`, on white so phones can scan it in dark mode) and the key for manual entry (selectable, with copy). If there is no QR or it cannot be drawn, it says to type the key.
    - Then a 6-digit code field. `verifyMfa` turns MFA on and the chip flips.
    - **The recovery codes appear once** through `OneTimeSecret`: masked until revealed, copyable, gone once dismissed. They come from the `recoveryCodes` that the activating `verifyMfa` answer carries. `getMfaRecoveryCodes` is called only if a server leaves them out.
  - **On:**
    - **New Recovery Codes** asks for confirmation (the old set stops working), then `getMfaRecoveryCodes` shows the new set once.
    - **Turn Off** re-authenticates with a code, a recovery code, or the password, then calls `disableMfa`. The password is sent once and cleared.
  - **The policy.** For an Admin or Operator (by tier, or `MfaStatus.required`) a note says their role requires two-factor sign-in and an administrator reset is the way out.
    - Turn Off still asks the server.
    - A 409 `MFA_REQUIRED` shows a "Your role requires two-factor sign-in" panel with the server's refusal, and MFA stays On.
- **Sessions** (`listSessions`, which follows `nextCursor`):
  - Columns: the **This session** chip on the `current` row, signed in, last seen, idle expiry, absolute expiry, device (user agent) and IP.
  - **Revoke** one (`revokeSession`), or **Sign Out Everywhere Else** (`revokeAllSessions`), each behind a confirm, then re-listed.
  - **Revoking the current session signs out here.** The stored session is cleared and the app goes to the sign-in page.
- **API tokens** (`listMyTokens`):
  - Columns: name, scope, prefix, restrictions (same text as the admin Tokens screen), last used, expires. A revoked token shows **Revoked**.
  - **New Token** (`createMyToken`) reuses the admin screen's `TokenDraft` and `RestrictionFields`: scope, expiry, private sources, license policy floor, and sources / kinds / area / endpoints / rate. It never names a principal: the caller owns it.
  - The new value is shown **once** through `OneTimeSecret`, after the token is confirmed in the list. It is never stored or logged.
  - **Revoke** (`revokeMyToken`) is behind a confirm and is confirmed by re-reading (the token must read as revoked or be gone).

## Omitted or adapted, and why

- **Admin reach into another user's MFA and sessions is not built.** `listSessions` says that to revoke another user's sessions "an admin uses the user-management API (D2)". The user-management operations under `/v1/users/{id}` are `getUser`, `updateUser`, `deleteUser`, `setUserRoles`, `suspendUser`, `unsuspendUser`, `resendUserInvite`, `adminResetUserPassword`, `getUserQuota` and `updateUserQuota`. None of them resets MFA or revokes one session. A script over the vendored contract's paths found them; the list is in Verification. `suspendUser` revokes all of a user's sessions, and R2-003's Users screen already offers it.
- **The token card is not gated on `self.workspaces`.** It was in my first draft, from the contract as vendored earlier. The R2-025 contract makes these operations open to any signed-in session, so the card is shown to every signed-in user.

## Owner questions

1. **The prompt asks for the admin to reset a user's MFA and revoke any session, but the contract has neither.** `disableMfa` itself says "an administrator reset is the way out" of `MFA_REQUIRED`, yet no operation performs that reset. Should the backend add, for example, `POST /v1/users/{id}/mfa/reset` and `GET`/`DELETE /v1/users/{id}/sessions`?
2. **The MFA state at page load comes from `getMe` (`user.mfaEnabled`).** There is no `GET /v1/me/mfa`, so `enrolledAt` and `required` are known only after a verify or disable. Until then, "required" is inferred from the Admin/Operator tier. Is that the intended read?
3. **Every one of these operations is `x-foresignal-status: planned`.** Until the backend ships them, the cards show its error.
4. **The release build failed again** (earlyoom, Dart frontend at 6709 MiB RSS), so I fell back to `--debug`.

## Wire spellings found and left alone

`mfaEnabled`, `otpauthUri`, `qrSvg`, `recoveryCodes`, `enrolledAt`, `idleExpiresAt`, `ipAddress`, `userAgent`, `revokedAt`, `lastUsedAt`, `tokenPrefix`, `privateAccess`, `createdVia`. All are US English. The contract's own `licencePolicy` member is reached only through the existing `licensePolicyMember` constant in `system_drafts.dart`, which is unchanged.

## Secrets

None stored. The TOTP key is shown only during enrollment and dropped when it ends. Recovery codes and new API token values exist only in `OneTimeSecret` until dismissed. The password typed to turn MFA off is sent once and cleared. Nothing is logged.

## Instructions found in data

None.

## Verification

- `flutter pub get` (through `flutter pub add flutter_svg`): "Changed 5 dependencies!".
- `flutter analyze`: "No issues found!" before and after the re-vendor. It found one wrong `show` name and, after the R2-025 change, one unused import; both were fixed before the final run.
- **`flutter build linux` (release) failed twice**, at "Build process failed". The journal shows `earlyoom: sending SIGTERM to process 1080063 … "dart:frontend_s" … VmRSS 6709 MiB`.
- **`flutter build linux --debug` succeeded:** "✓ Built build/linux/x64/debug/bundle/foresignal_admin".
- **The search behind "the contract has no admin MFA reset or per-user session revoke"** was a Python listing of every vendored path that starts with `/v1/users/{id}` or contains `mfa`. It printed only the ten user operations named above, plus the four `/v1/me/mfa/*` operations.
- **US English.** A grep of the added diff lines and the new files for common British spellings found none.
- Tests were written and **not run**, per the run rules. They are in `test/features/profile/account_security_test.dart`:
  - enrolling shows the QR and key, and `verifyMfa` flips the chip to On;
  - the first recovery codes are shown once, masked, through the one-time idiom;
  - new codes are made only after a confirm;
  - a policy-required user's Turn Off surfaces the `MFA_REQUIRED` refusal, and MFA stays On;
  - `listSessions` marks the current session, and sign-out-others fires only after a confirm;
  - revoking the current session lands on sign-in;
  - the token card needs only a session;
  - `createMyToken` sends no principal and shows the value once, masked;
  - `revokeMyToken` fires after a confirm and the row reads Revoked.
