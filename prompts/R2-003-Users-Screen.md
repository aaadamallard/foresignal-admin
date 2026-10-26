# R2-003 — Users & Roles: the Users screen

**Goal.** The admin-only **Users** management surface — the list and the per-user lifecycle (add, edit
roles, suspend/unsuspend, delete with reassign, reset password, resend invite). Adding a user triggers
the backend's welcome email. This is the Users half of a "Users & Roles" section; R2-004 adds the Roles
half on the same section.

**Depends on.** R2-002 (the permission provider and `PermissionGate`) — intra-admin only; it does
**not** wait on the backend. The client already carries the user-management operations from the 2.0.0
vendor.

**Read first.** The v2.0 roadmap Part A1/A4/A6/A7 (identity model, delete-reassign, welcome email);
R2-002-CR; `lib/core/nav.dart` and `lib/core/routes.dart` (how a section + its detail routes are
declared); an existing list+detail feature such as `lib/features/ai/` or `lib/features/sources/` for the
table/editor idiom and the `core/ui/` primitives (`data_table_card`, `section_card`, `write_confirm`,
`one_time_secret`). Re-vendor `../foresignal/docs/OpenAPI.json` only if it changed since R2-002.

**Operations.** `listUsers`, `getUser`, `createUser`, `updateUser`, `setUserRoles`, `suspendUser`,
`unsuspendUser`, `deleteUser` (with the `reassign` query flag), `adminResetUserPassword`,
`resendUserInvite`; `listRoles` (to populate the role picker); and, in the per-user editor,
`getUserQuota` / `updateUserQuota` for the optional per-user quota.

**Build.**
- **Nav.** A new **"Users & Roles"** section (e.g. `/users`), mounted only when `can('users.manage')`
  (R2-002). Desktop-only, dense. A Users tab (this prompt) and a placeholder for the Roles tab (R2-004).
- **User list.** A table from `listUsers`: email, full name, **status** (invited / active / suspended /
  disabled) as a status chip, roles, MFA on/off, last login. Filter by status and role; search by email
  / name. Row actions reach the editor.
- **Add user.** A dialog: email, full name, and one-or-more roles (from `listRoles`) → `createUser`.
  Make clear in the UI that this **sends the welcome/activation email** (full name + role(s) +
  activation link) and that the account starts `invited`. If SMTP is unconfigured the backend returns
  the activation link / a degraded result — surface it (an admin can hand the link over), do not treat
  it as a failure.
- **Edit roles.** In the editor, the role set is edited with multi-select and saved via `setUserRoles`;
  re-read `getUser` to confirm. Changing a user's own roles mid-session is allowed but note it only
  takes effect on their next permission refresh (R2-002).
- **Suspend / unsuspend.** `suspendUser` / `unsuspendUser` with a confirm; suspension revokes their
  sessions server-side — say so in the confirm.
- **Delete.** A confirm that makes the **reassign-vs-delete** decision explicit: default to
  **reassign** the user's owned config to an admin (`deleteUser` with `reassign=true`, the recommended
  default), with an alternative to delete that config (`reassign=false`), each spelled out. This is
  destructive — use the `write_confirm` idiom.
- **Reset password.** `adminResetUserPassword` — sends the user a reset link (or returns it when SMTP is
  down, surfaced like Add). **Resend invite.** `resendUserInvite` for an account still `invited`.
- **Per-user quota (optional panel).** In the editor, `getUserQuota` / `updateUserQuota` to view and set
  this user's API-rate / storage caps, gated with the rest of the admin screen.
- **Self-safety.** Prevent the signed-in admin from removing their own last admin role or deleting /
  suspending themselves into lockout — show the refusal the server gives rather than hiding the control
  entirely.

**Done when.** `flutter analyze` is clean and `flutter build linux` succeeds; the Users section appears
only with `users.manage`; a user can be added (with the welcome-email behavior surfaced), roles edited
and re-read, suspended/unsuspended, deleted with an explicit reassign choice, reset, and re-invited.
Write tests (do not run them): the list renders statuses/roles from `listUsers`; Add posts `createUser`
and shows the activation-link/degraded path; `setUserRoles` fires and the editor re-reads; delete sends
the chosen `reassign` value; the self-lockout refusal surfaces.

**Commit.** `R2-003: Users-Screen` + `completion-reports/R2-003-CR-*.md`. **Stage only this prompt's
files.**
