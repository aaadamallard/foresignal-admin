# R2-004 — Roles-Screen — completion report

**Implementation commit:** `21dea4ab3ba412522be267fe5b05c5780b6ff144`

**Status:** Complete, except for the release Linux build. Host memory blocked it, as in R2-001 to R2-003; a debug build succeeded.

## What was built

- **Contract re-vendored**, because the committed backend contract changed after R2-003.
  - Source: `../foresignal` commit `31e718681e541ca9cccc466415daa1618d769901` (2026-10-26 17:28:39 -0500, "R2-016: Cold-storage archival"). Vendored from the committed `HEAD`, not the working tree. New sha256 `9ad4972b15521b31c6196554e48f3e3602904c0ad946d7c81867d9c2dfc9e669`. `info.version` is still `2.0.0`.
  - A JSON comparison found no operations added or removed and no status changes. Four operations changed beyond their descriptions (`listArchives`, `restoreArchive`, `runArchive`, `updateArchiveSettings`), and two schemas changed (`Archive`, `ArchiveSettings`).
  - Client regenerated with `tool/generate_api.sh` (7.26.0): 14 changed files and one new model (`ArchiveFilesInner`). Nothing was hand-edited. No app code uses the archive client yet; R2-008 will.
- **Roles tab** (`/users/roles`, `roles.manage`), replacing R2-003's placeholder. `RolesPanel` is a table from `listRoles` with:
  - role name and description;
  - a **Kind** chip, Built-in or Custom;
  - the number of permissions granted;
  - the number of users holding the role (`userCount`; "—" when the server omits it).
  - A row opens the role. **New role** (gated on `roles.manage`) opens an empty editor.
- **Role editor** (`/users/roles/{id}` and `/users/roles/new`, `RoleScreen`):
  - Name and description fields.
  - **Permission editor** built from `listPermissions`. The checkboxes, each with the key and its catalog description, are grouped by the catalog's `group`: Identity, Platform (global), Self-service, Data. A group this build doesn't know follows under its own name.
  - **Unknown keys are kept.** A key the role holds but the catalog doesn't list appears under "Not in the catalog", checked, and is sent back on save unless it is unchecked.
  - **Built-in roles are read-only.** A note says why, every checkbox is disabled, and there is no Save or Delete.
  - **Start from** (new roles only) copies an existing role's permissions into the editor.
  - **Save.**
    - A new role is created with `createRole`, re-read with `getRole` and compared; the app then opens the new role.
    - An existing custom role is saved with `updateRole` and re-read through `writeThenConfirm`. The name and the exact key set are compared, and the result shows as "Saved and confirmed" or as the difference.
    - An empty name is refused before sending.
  - **Delete** (custom roles only, `deleteRole`) is behind a confirm row ("This cannot be undone"). When the role has holders, the card says that the server refuses to delete a role that is still assigned. The server's refusal (409 code and detail) shows in the card's status line. On success the app returns to the Roles tab.
  - **Who has this** (with the count when known) opens the Users list filtered to the role (`usersWithRolePath`, from R2-003).
  - Every write control is wrapped in `PermissionGate(roles.manage)`.
- **Routes.** `usersNewRolePath` and `usersRolePath(id)` were added, nested under the `roles` route. `new` comes before `:roleId`.

## Omitted or adapted, and why

- **The Permissions column counts keys; it doesn't list them.** A role can hold all 21 keys, so the list stays readable. The editor shows the full set.

## Owner questions

1. **Release build.** `flutter build linux` (release) was killed by earlyoom again, at 17:33:23: `dart:frontend_s` reached VmRSS 3267 MiB, with swap at 4093 of 4095 MiB used. The memory is held by the backend docker java, postgres and the parallel backend Gradle, and I did not stop any of them. Do you want the release build run once the backend track is idle, or is the debug build acceptable as compile proof for this run?

## Wire spellings found and left alone

The permission group keys (`identity`, `platform`, `self`, `data`) and the permission keys. All are US English.

## Secrets

None.

## Instructions found in data

None.

## Verification

- `flutter pub get`: dependencies resolved.
- `flutter analyze`: "No issues found!" Run both before and after the re-vendor.
- `flutter build linux` (release) failed at `kernel_snapshot_program` because earlyoom killed the compiler (see Owner questions).
- `flutter build linux --debug` succeeded: "✓ Built build/linux/x64/debug/bundle/foresignal_admin".
- **US English.** There is still no ForeSignal guard covering admin. A grep of the changed files for common British spellings found none.
- Tests were written and **not run**, per the run rules. They are in `test/features/users/roles_screens_test.dart`:
  - the list distinguishes built-in from custom roles;
  - the editor groups by catalog group, and a built-in is read-only (checkboxes disabled, no Save or Delete);
  - a key outside the catalog is shown and kept: `updateRole` posts the checked set including it, then `getRole` is re-read and "Saved and confirmed" shows;
  - create posts `createRole` with the name and checked keys, re-reads the new role, and opens it;
  - delete of a custom role happens only after the confirm;
  - a 409 refusal of a delete is shown;
  - Who has this opens the Users list filtered to the role.
