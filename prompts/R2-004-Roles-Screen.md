# R2-004 — Users & Roles: the Roles screen

**Goal.** The **Roles** half of the "Users & Roles" section: the built-in roles shown read-only, custom
roles created and deleted, and a **permission editor** that composes a role from the permission catalog.

**Depends on.** R2-002 (permission provider / gating) and R2-003 (the Users & Roles section exists; this
adds its Roles tab) — intra-admin only; it does **not** wait on the backend. The client carries the
role-management operations from the 2.0.0 vendor.

**Read first.** The v2.0 roadmap Part A2 (role set, catalog groups, built-ins = named permission
subsets); R2-003-CR; `lib/core/ui/` (`section_card`, `data_table_card`, `write_confirm`) and the editor
idiom from R2-003. Re-vendor `../foresignal/docs/OpenAPI.json` only if it changed since R2-003.

**Operations.** `listRoles`, `getRole`, `createRole`, `updateRole`, `deleteRole`, `listPermissions`.

**Build.**
- **Roles tab** on the Users & Roles section, mounted when `can('roles.manage')`. (With only
  `users.manage` the operator sees Users but not Roles; with both, both tabs.)
- **Role list.** From `listRoles`: name, description, **built-in vs custom** (the `builtIn` flag),
  permission count, and `userCount` where the server provides it. Built-in rows are marked and open
  read-only.
- **Permission editor.** From `listPermissions`, grouped by the catalog **group** (Identity,
  Platform/global, Self-service, Data), each permission a checkbox with its description. A role is the
  set of checked keys. For a **built-in** role the editor is read-only (the server protects it); for a
  **custom** role it is editable and saved via `updateRole`, then re-read with `getRole` to confirm.
  Permission keys are **wire strings** — render and send them as-is; a key the build has not seen is
  shown and preserved, never dropped.
- **Create custom role.** Name + description + an initial permission set → `createRole`. A convenience
  of "start from an existing role's permissions" (copy its set into a new custom role) is welcome but
  not required.
- **Delete custom role.** `deleteRole` behind a `write_confirm`. Built-ins cannot be deleted (the
  control is absent / disabled); a custom role still assigned to users shows the server's refusal or its
  reassignment requirement rather than silently failing.
- **Cross-link.** From a role, a way back to the Users list filtered to that role (reuse R2-003's role
  filter) so "who has this" is one click.

**Done when.** `flutter analyze` is clean and `flutter build linux` succeeds; built-in roles are
read-only and undeletable, a custom role can be created, its permissions edited through the grouped
editor and re-read, and deleted. Write tests (do not run them): the list distinguishes built-in from
custom; the editor groups permissions by catalog group and is read-only for a built-in; create/update
post the checked key set and re-read; delete is blocked for built-ins and confirmed for customs.

**Commit.** `R2-004: Roles-Screen` + `completion-reports/R2-004-CR-*.md`. **Stage only this prompt's
files.**
