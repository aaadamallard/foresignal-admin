# R2-002 — Permission-Gating — completion report

**Implementation commit:** `cecd5acb7176d51ae980f23aaeef4e6aaa108302`

**Status:** Complete, except for the release Linux build. Host memory blocked it, as in R2-001; a debug build succeeded.

## What was built

- **Permission keys as constants** (`lib/core/permissions.dart`).
  - `Permissions` holds the 21 catalog keys in their four groups (Identity, Platform, Self-service, Data), with group sets and `all`.
  - The keys are wire strings. They were taken from the backend's `ai.foresignal.security.user.Permissions` enum, which is the code, not the design document. Nothing re-spells them, and a key this build has not seen is honored as sent.
  - `RoleTier` gives Admin, Operator, Editor, Viewer and Auditor as unions of permissions, matching the backend's `BuiltInRole`:
    - Admin: every permission;
    - Operator: Platform + Data;
    - Editor: Self + Data;
    - Viewer: `data.read`, `self.views`, `self.preferences`;
    - Auditor: `audit.read`, `data.read`.
- **Effective-permissions provider** (`lib/core/access.dart`).
  - `accessProvider` yields an `AccessState` with the credential kind (session, admin token or none), the permission set, the `getMe` user and the email.
  - It is seeded from the `permissions` the login returned (R2-001). `meProvider` reads `getMe` whenever a session is present, which covers app start and every sign-in, and `Me.permissions` replaces the seed. The refreshed set is also written back to the stored session.
  - `refreshAccess` re-reads it after a role change.
  - `can(String)` is the one question the UI asks. Alongside it are `canAny`, `holdsTier(RoleTier)`, and `isAdmin`/`isOperator`/`isEditor`/`isViewer`/`isAuditor`. Those are permission unions, never role names, so a custom role with the same permissions passes.
- **Admin-token fallback.** With no session, the stored admin token is full access (`AccessKind.adminToken`). Connect invalidates `adminTokenPresentProvider` when the token is saved or forgotten.
  - With no credential at all, the app keeps every section visible, as before, because reads are open. It may change nothing, which matches the interceptor's existing write refusal.
- **Gated nav.**
  - `NavSection` gained `readPermissions` (any one shows it) and `writePermissions` (any one allows changes).
  - Each section's sets were taken from the `x-foresignal-permission` of the operations it calls in the 2.0.0 contract. For example, Serving is shown by `system.settings`, `data.export`, `storage.manage` or `network.manage`; System by `system.settings`, `users.manage`, `audit.read` or `storage.manage`.
  - The shell mounts a section only when `canSee` is true, on top of the form-factor filter. A Viewer sees Connect, Sources, Vetting, Alerts and Notifications, and never System or Serving. Users does not exist yet (R2-003).
- **Deep links.**
  - Every section's route still exists.
  - The shell wraps each page in `SectionAccessGuard`. A section the user may not see renders the shared permission-denied panel, naming the permissions that would open it. A deep link therefore lands on that panel, not a blank page.
  - A section a signed-in user may see but not change shows a quiet "View only. Changes here need …" line above the page.
- **Gated controls** (`lib/core/ui/permission_gate.dart`, exported from `core/ui/ui.dart`):
  - `PermissionGate(permission:)` and `PermissionGate.any(anyOf:)` disable a write control, with a "Needs users.manage" tooltip and a small lock (`GateMode.disable`), or leave it out (`GateMode.hide`).
  - `PermissionBuilder` is for controls that take `onPressed: allowed ? … : null` themselves.
  - Reads are never gated.
- **Denied and expired surfaces.**
  - `PermissionDeniedPanel` is the shared 403 surface. `ErrorBanner`, the surface every screen already uses, now draws it for a 403 that is a permission refusal: code `PERMISSION_DENIED`, or a body with `requiredPermission`. The panel names the permission from the body.
  - The page's Back control stays, because the panel is drawn inside the page.
  - A token-scope 403 (`INSUFFICIENT_SCOPE`) keeps the existing banner.
  - The 401 → Login behavior is R2-001's.
- **Shell account control.** It shows the `getMe` user's full name when known.

## Omitted or adapted, and why

- **Existing screens' individual write buttons are not wrapped one by one.**
  - Their section's `writePermissions` drives the "View only" line, and any write the backend refuses renders the denied panel naming the permission.
  - `PermissionGate` and `PermissionBuilder` are the pattern R2-003 onward uses on its own controls.
  - Wrapping every existing button (some 60 screens) would be a wide change to code this prompt does not otherwise touch. It can be done when each screen is revisited.
- **No re-vendor in this prompt.** The backend contract changed after this prompt's code was committed (`../foresignal` commit `f10bc781`, 17:02:57 -0500). It is re-vendored at the start of R2-003.

## Owner questions

1. **The contract and the backend disagree on the 403 body.** The backend's `TokenFilter`, `ChannelScope` and `LlmProviderScope` send `requiredPermission` with `PERMISSION_DENIED`, but the contract's `Problem` schema does not list that member. The app reads it from the body as sent. Should the contract add it?
2. **Anonymous use keeps every section visible** (open reads), with changes refused before sending, as before. Should an instance with sign-in require it instead, by redirecting to Login when neither a session nor an admin token is present?

## Wire spellings found and left alone

The 21 permission keys, all US English.

## Secrets

None.

## Instructions found in data

None.

## Verification

- `flutter pub get`: dependencies resolved.
- `flutter analyze`: "No issues found!"
- `flutter build linux` (release) failed again at `kernel_snapshot_program`. The journal shows earlyoom sending SIGTERM to `dart:frontend_s` (VmRSS 3101 MiB) at 17:15:27, with swap full. The same host-memory condition as R2-001; nothing was stopped.
- `flutter build linux --debug` succeeded: "✓ Built build/linux/x64/debug/bundle/foresignal_admin".
- Tests were written and **not run**, per the run rules. They are in `test/core/access_test.dart`:
  - `can()` is the union of the Viewer and Auditor permissions, with the tier checks;
  - an unknown key is honored;
  - the admin token has full access, and anonymous use changes nothing but sees every section;
  - the tiers match the catalog matrix;
  - the desktop nav for a Viewer is Connect, Sources, Vetting, Alerts and Notifications, and for an Admin (or the admin token) every section;
  - `PermissionGate` hides without the permission, disables with the lock and "Needs users.manage" tooltip, and shows the control with the permission;
  - a 403 `PERMISSION_DENIED` renders the denied panel naming `users.manage`;
  - a Viewer's deep link to `/system` renders the section-denied panel, with System missing from the sidebar;
  - `getMe` permissions replace the login's and are written back to the stored session.
