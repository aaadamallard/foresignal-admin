# R2-006 — Profile & preferences

**Goal.** The signed-in user's own **profile** screen: who they are and their roles, a password change,
timezone and display preferences, and notification preferences — the self-service counterpart to the
admin's Users screen.

**Depends on.** R2-001 (session) and R2-002 (current-user provider). The preferences operations land
with backend prompt **R2-012 (per-user preferences/views)**; the password-reset path reuses backend
**R2-002/R2-003 (account lifecycle, auth)** and **R2-007 (transactional email)**. The client carries
these from the 2.0.0 vendor. Re-vendor `../foresignal/docs/OpenAPI.json` only if it changed since R2-002.

**Operations.** `getMe` (identity + roles); `getMyPreferences` / `updateMyPreferences` (the
`UserPreferences`: `timezone`, `locale`, `theme`, `notifications`, `ui`); `listMyNotificationPreferences`
/ `replaceMyNotificationPreferences`; and, for the password change, `requestPasswordReset` (see below).

**Build.**
- **Profile route.** A `/profile` screen reachable from the app shell (an account menu / the user's name
  in the sidebar), on every form factor. It needs no special permission — it is always the current
  user's own.
- **Identity panel.** From `getMe`: full name, email, the user's **roles** (read-only here — roles are
  changed by an admin on R2-003), MFA state, last login. If the vendored contract exposes no
  self-update for the display name, show it read-only (do not invent an endpoint); if it does, allow the
  edit and re-read.
- **Password change.** The v2.0 contract has **no authenticated change-password operation** — the
  self-service path is the reset flow. So "Change password" triggers `requestPasswordReset` for the
  signed-in user's email and tells them to follow the emailed link (which lands on R2-001's reset
  screen). State this plainly rather than presenting an old/new-password form that has nothing to call.
- **Preferences.** `getMyPreferences` → an editor for `timezone` (a searchable zone picker), `locale`,
  `theme`, and the `ui` options → `updateMyPreferences`, re-read to confirm. Honor the user's timezone
  where the app renders instants for them.
- **Notification preferences.** `listMyNotificationPreferences` → per-category delivery toggles →
  `replaceMyNotificationPreferences`, re-read to confirm. (These are the same preferences the backend
  uses to route a user's alerts/notifications.)
- **My quota (glance).** `getMyQuota` shown read-only — the user's API-rate / storage caps and current
  usage, so they understand a limit when they hit one. Admins set these on R2-003.
- **Unknown values.** A preference value a newer server sends that this build has not seen is shown as
  sent, kept selected, and written back unchanged (the Screens.md rule).

**Done when.** `flutter analyze` is clean and `flutter build linux` succeeds; the profile shows identity
and roles from `getMe`, the password-change action sends a reset email with a clear explanation,
timezone/theme/UI and notification preferences edit and re-read through their operations, and the quota
glance renders. Write tests (do not run them): preferences load from `getMyPreferences` and save via
`updateMyPreferences` then re-read; notification toggles call `replaceMyNotificationPreferences`;
"Change password" invokes `requestPasswordReset` for the current email; an unseen preference value is
preserved on save.

**Commit.** `R2-006: Profile-Preferences` + `completion-reports/R2-006-CR-*.md`. **Stage only this
prompt's files.**
