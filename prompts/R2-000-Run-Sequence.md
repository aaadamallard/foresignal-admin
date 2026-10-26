# R2-000 — Release 2 (v2.0) Run Sequence & Parallel-Build Plan

> The v2.0 admin-app prompts (multi-user RBAC + the platform screens). They build the Flutter UI against the **committed v2.0 contract** (`../foresignal/docs/OpenAPI.json`, API 2.0.0) — the contract is the interface, so this track runs **in parallel** with the backend and does **not** wait on it. `R2-001` does the one-time 1.5.0→2.0.0 re-vendor; later prompts re-vendor again only if the committed contract has changed since — the generated client is never hand-edited. An operation the backend has not implemented yet simply surfaces its error on-screen (the directional policy from 018). Run in order, or fan out per the graph below.

## How to run (same driver as `000-Run-Sequence.md`, applied to `R2-*.md`)

1. **Start clean.** Owner stop (`completion-reports/RUN-STATUS.md`) → stop. Planner changes under `docs/`, `prompts/`, `design/`, `openapi/` → commit as `Planner: update roadmap and prompts`, push.
2. **Next prompt:** lowest `R2-NNN-*.md` with no `completion-reports/R2-NNN-CR-*.md` whose dependencies (below) are done. **Dependencies are intra-admin only** — the login + permission-gating spine; there is no backend-completion wait.
3. **Execute completely:** implement; **write its tests**; re-vendor the contract + regenerate the client only if the committed contract has changed since the last vendor (`R2-001` does the one-time 2.0.0 re-vendor); `flutter pub get` && `flutter analyze` (clean) && `flutter build linux`. Commit `R2-NNN: <Title>`, write `completion-reports/R2-NNN-CR-<Name>.md` with the 40-char hash, commit `R2-NNN: completion report`, push.
4. **⚠ DO NOT RUN TESTS** (`flutter test` / `integration_test`) until the owner declares R2 code-complete — the standing directive applies. The only commands are `flutter pub get`, `flutter analyze`, `flutter build`. Write tests; never execute them.
5. Verify clean tree + `origin/main` == `HEAD` + report has a hash; continue. Stop conditions, `RUN-STATUS.md` format, and always-apply rules are those in `000-Run-Sequence.md`; secrets never in the app; the generated client is never hand-edited.

## Parallel-build plan

The admin builds against the **committed 2.0.0 contract** (re-vendored here in `R2-001`) and runs in parallel with the backend — it does **not** wait on the backend implementation. The **only** dependencies are intra-admin: a small login + permission-gating spine, after which the screens are independent.

**Spine (serial):** `R2-001` Login & session (does the one-time 1.5.0→2.0.0 re-vendor — the spine start) → `R2-002` Current-user & permission gating.

**Fan out after `R2-002`** — `R2-003`…`R2-010` are independent and build **in parallel** (no backend wait); each gates against the permission provider from `R2-002`:
- `R2-003` Users screen
- `R2-004` Roles screen *(also builds on the Users & Roles section from `R2-003`)*
- `R2-005` Per-user config scoping
- `R2-006` Profile & preferences
- `R2-007` LLM & channels UI *(also builds on the per-user scoping from `R2-005`)*
- `R2-008` Storage screens
- `R2-009` Network / Sourcing screen
- `R2-010` Account security UI *(also attaches to the Profile screen from `R2-006`)*

**Last (serial):** `R2-011` Onboarding wizard + polish — it composes all the admin screens above and does the final re-vendor.

## Prompts (intra-admin dependencies in parentheses — no backend wait)
- **R2-001** Login & session. *(none — runs first; does the one-time 2.0.0 re-vendor)*
- **R2-002** Current-user & permission gating. *(R2-001)*
- **R2-003** Admin-only Users screen. *(R2-002)*
- **R2-004** Roles screen. *(R2-002, R2-003)*
- **R2-005** Per-user config scoping. *(R2-002)*
- **R2-006** Profile & preferences. *(R2-002)*
- **R2-007** Per-user + shared LLM and channels UI. *(R2-002, R2-005)*
- **R2-008** Storage screens (disk/retention/archival/backup). *(R2-002)*
- **R2-009** Network / Sourcing screen (egress + first-party aggregators). *(R2-002)*
- **R2-010** Account security UI (MFA, sessions, tokens). *(R2-002, R2-006)*
- **R2-011** Onboarding wizard + polish. *(all admin screens above)*
