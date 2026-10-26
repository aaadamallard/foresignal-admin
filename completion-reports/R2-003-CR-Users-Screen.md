# R2-003 — Users-Screen — completion report

**Implementation commit:** `3b9ff88f4ac37a8c3cabe2ff2b9db5a487e16cfc`

**Status:** Complete, except for the release Linux build. Host memory blocked it, as in R2-001 and R2-002; a debug build succeeded.

## What was built

- **Contract re-vendored**, because it changed after R2-002.
  - Source: `../foresignal` commit `f10bc7813f53854c6c9975e5b5b3e5abd239d0dc` (2026-10-26 17:02:57 -0500). New sha256 `2823cd9d756cf9ee368995581196536102bbb7dd13d5c60315379d8f9aec17fc`. `info.version` is still `2.0.0`.
  - A JSON comparison found no operations added, removed or re-statused. One operation changed beyond its description: `previewRetention`. Three schemas changed: `RetentionPreview`, `RetentionRunResult` and `RetentionSettings`, which gained database-cap members.
  - Client regenerated with `tool/generate_api.sh` (7.26.0): 13 changed files and 4 new model files (`RetentionPreviewDbCap`, `RetentionRunResultDbCap`). Every removed line is an equality or `toString` member that moved. Nothing was hand-edited.
- **Nav.** A new desktop section, **Users & Roles** (`/users`, `Icons.manage_accounts`), sits before System. It is mounted when the user holds `users.manage` or `roles.manage`.
  - It has a **Users** tab (`users.manage`) and a **Roles** tab (`/users/roles`, `roles.manage`, a placeholder that R2-004 fills).
  - Each tab is mounted only for its permission. The section opens on the first tab the user may see. A deep link to a tab they may not see shows the permission-denied panel above the tabs they can see.
- **User list** (`UsersPanel`). The table from `listUsers` follows every `nextCursor`, up to 20 pages of 500.
  - Columns: name with email, **status** chip (active, invited, suspended, disabled; an unknown status shows as sent), roles, MFA on/off, last sign-in.
  - Status and search (`q`) filter on the server; the role filter applies locally.
  - The empty state tells you how to add the first user.
  - A row opens the editor.
  - `?role=<id>` opens the list pre-filtered (`usersWithRolePath`, for R2-004's "who has this").
- **Add user** (`AddUserDialog`).
  - Email, full name, one or more roles (chips) and "Email the activation link" (`sendInvite`, on by default) go to `createUser`.
  - The dialog says the account starts invited and that the backend emails the welcome message with name, roles and activation link.
  - The result shows the created user. When the returned `activation` (`UserLinkIssued`) says the email did not leave (no SMTP, or `sendInvite: false`), the one-time token is shown through `OneTimeSecret`, with how the person uses it ("Have an activation link?" on the sign-in screen). This is a hand-over, not a failure.
- **User editor** (`/users/{id}`, `UserScreen`). Each change is written, then re-read with `getUser` (or `getUserQuota`) and compared through `writeThenConfirm`.
  - **Profile:** full name and email via `updateUser`.
  - **Roles:** a chip set via `setUserRoles`. A role the user holds but the picker does not offer still shows, selected.
    - A footnote says a signed-in user picks the change up on their next permission refresh.
    - When the admin edits their own roles, their permissions are re-read at once (`refreshAccess`).
  - **Access:**
    - **Suspend** asks for confirmation, saying every session is revoked at once and the account and what it owns are kept. **Unsuspend** needs no confirmation.
    - **Send password reset** calls `adminResetUserPassword`; **Resend invite** (only while invited) calls `resendUserInvite`. Both show the `UserLinkIssued` result the same way as Add.
  - **Quota:** the five `Quota` limits via `getUserQuota`/`updateUserQuota`. Empty means the instance default; anything but a whole number is refused before sending.
  - **Delete:** an explicit choice.
    - "Reassign what they own to an admin (recommended)" is the default and sends `reassign=true`.
    - "Delete what they own too" sends `reassign=false`. Each choice spells out what happens to the user's trigger rules, channels, personal LLM providers and saved views.
    - A confirm row ("This cannot be undone") comes first. On success the app returns to the list with the outcome the backend reported.
- **Self-safety.** The signed-in admin's own record is marked "You", and the confirms say when an action targets their own account. Nothing is hidden. The server's refusal (`409 LAST_ADMIN` and similar) shows in the card's status line with its code and detail.
- **Gating.** Every write control is wrapped in `PermissionGate(users.manage)`.

## Omitted or adapted, and why

- **The role picker without `roles.manage`.** `listRoles` needs `roles.manage`, so an admin with `users.manage` alone gets a 403 there. In that case the picker offers the roles already held by listed users (`roleChoicesProvider`). The contract has no other role listing for that admin, and inventing the built-in role ids would mean hard-coding them.
- **A user's `dataRestriction` (R2-013) is not edited here.** This prompt did not ask for it, and `updateUser` sends only the name and email, so the restriction is left as it is ("absent leaves it").

## Owner questions

1. **Should an admin with `users.manage` but not `roles.manage` be able to read the role list** for the picker? Today `listRoles` refuses them, and the picker falls back to the roles already in use.

## Wire spellings found and left alone

The user statuses (`invited`, `active`, `suspended`, `disabled`), `ownedConfigDisposition` (`reassigned`, `deleted`) and `UserLinkIssued.kind` (`activation`, `reset`). All are US English.

## Secrets

None stored. The activation or reset token a non-emailed link returns lives only in the `OneTimeSecret` that shows it.

## Instructions found in data

None.

## Verification

- `flutter pub get`: dependencies resolved.
- `flutter analyze`: "No issues found!"
- `flutter build linux` (release) failed at `kernel_snapshot_program`. earlyoom sent SIGTERM to `dart:frontend_s` (VmRSS 3381 MiB) at 17:25:57, with swap 4066 of 4095 MiB used. This is the same host-memory condition as before.
- `flutter build linux --debug` succeeded: "✓ Built build/linux/x64/debug/bundle/foresignal_admin".
- Tests were written and **not run**, per the run rules. They are in `test/features/users/users_screens_test.dart`:
  - the section is mounted with `users.manage` or `roles.manage`, and not for an Operator or a Viewer;
  - the list renders names, emails, statuses, roles and MFA from `listUsers`;
  - Add posts `createUser` with the email, name, chosen role ids and `sendInvite: true`, then shows the created user and the hand-over token;
  - Save Roles posts `setUserRoles` with the new set, then re-reads `getUser` and shows "Saved and confirmed";
  - delete with "Delete what they own too" sends `reassign=false` and returns to the list, and the default sends `reassign=true`;
  - suspending yourself when the server answers `409 LAST_ADMIN` shows the code and the server's detail.
