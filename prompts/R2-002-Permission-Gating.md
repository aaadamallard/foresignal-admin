# R2-002 — Current User & Permission Gating

**Goal.** The second half of the spine: a **current-user + effective-permissions** context that the
whole app reads, and the **gating** it drives — nav sections and write controls appear only when the
signed-in user holds the permission behind them. After this, every later R2 screen declares the
permission it needs instead of re-deriving it.

**Depends on.** R2-001 (a session exists and is stored) — intra-admin only; it does **not** wait on the
backend. The client carries the effective-permission operations from the 2.0.0 vendor. Everything from
R2-003 onward gates against the provider this prompt creates.

**Read first.** The v2.0 roadmap Part A2 (the permission catalog and built-in roles) and A7; 003-CR and
R2-001-CR; `lib/core/nav.dart`, `lib/features/shell/app_shell.dart`, `lib/core/router.dart`,
`lib/core/ui/` (the shared surfaces). The contract was vendored at 2.0.0 in R2-001; re-vendor again only
if `../foresignal/docs/OpenAPI.json` has changed since (keeps the generated client current as backend
ops land) — the version stays 2.0.0.

**Build.**
- **Effective-permissions provider.** A Riverpod provider holding the current principal and the **set of
  effective permissions** (the union of the user's roles). Seed it from the `permissions` the `login`
  `SessionToken` returned (R2-001), and refresh it from `getMe` on app start and after a role change,
  reading whichever field the vendored contract exposes (the session token's `permissions`, and the
  `Me`/principal payload). A single `bool can(String permission)` is the one question the UI asks;
  expose convenience checks for the role tiers the catalog defines (Admin / Operator / Editor / Viewer /
  Auditor) as unions of permissions, not as hard-coded role names.
- **Permission keys as constants.** A `Permissions` constants file mirroring the catalog groups —
  Identity (`users.manage`, `roles.manage`), Platform/global (`system.settings`, `collection.manage`,
  `collector.settings`, `llm.shared.manage`, `channels.global`, `storage.manage`, `network.manage`,
  `audit.read`), Self-service (`self.sources`, `self.alerts`, `self.channels`, `self.llm`, `self.views`,
  `self.preferences`, `self.workspaces`), Data (`data.read`, `data.export`, `intel.read`,
  `forecast.read`). These are **wire strings** — do not "correct" or re-spell them; a key the build has
  not seen is still honored (shown/checked as the server sent it).
- **Gate the nav.** Give `NavSection` an optional required permission (or set). The shell mounts a
  section only when `can(...)` is true (on top of the existing form-factor filter), so a Viewer never
  sees Users, System, or Serving. A deep link to a route the user cannot see resolves to a
  permission-denied surface, not a blank page.
- **Gate the controls.** A small reusable pattern — a `PermissionGate` widget / helper — that hides or
  disables a write control (and shows a quiet "needs <permission>" affordance on a disabled one) when
  `can(...)` is false. Reads stay visible to anyone who can open the screen.
- **Denied + expired surfaces.** A shared **permission-denied** panel for a 403 (shows the permission
  the action needed) and the **session-ended → login** behavior from R2-001 for a 401, both drawn
  through the existing error surfaces so a page that failed to authorize still has its Back control.
- **Fallback for the admin token.** When the app is running on the pasted admin token (no session),
  treat it as full access (break-glass) so the machine path keeps working; the permission model governs
  real users.

**Done when.** `flutter analyze` is clean and `flutter build linux` succeeds; the nav shows only the
sections the signed-in user's permissions allow, gated write controls hide/disable without them, a 403
renders the denied panel naming the permission, and the admin-token fallback still sees everything.
Write tests (do not run them): `can(...)` returns the union of two roles' permissions; the nav list for
a Viewer vs an Admin differs as expected; `PermissionGate` hides a control without the permission and
shows it with it; a 403 renders the denied panel.

**Commit.** `R2-002: Permission-Gating` + `completion-reports/R2-002-CR-*.md`. **Stage only this
prompt's files** (the permissions provider + constants, the nav/shell/router changes, the gate widget
and denied panel, any re-vendor, and their tests).
