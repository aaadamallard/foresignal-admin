# R2-000 — Release 2 (v2.0) Run Sequence & Parallel-Build Plan

> The v2.0 admin-app prompts (multi-user RBAC + the platform screens). They build the Flutter UI against the backend's v2.0 contract (API 2.0.0). Each screen **re-vendors** the updated `openapi/OpenAPI.json` and regenerates the client as its backend operations land — the generated client is never hand-edited. Run in order, or fan out per the graph below.

## How to run (same driver as `000-Run-Sequence.md`, applied to `R2-*.md`)

1. **Start clean.** Owner stop (`completion-reports/RUN-STATUS.md`) → stop. Planner changes under `docs/`, `prompts/`, `design/`, `openapi/` → commit as `Planner: update roadmap and prompts`, push.
2. **Next prompt:** lowest `R2-NNN-*.md` with no `completion-reports/R2-NNN-CR-*.md` whose dependencies (below) are done — **including the backend prompt(s) it consumes**, confirmed by their completion reports in the `foresignal` repo.
3. **Execute completely:** implement; **write its tests**; re-vendor the contract + regenerate the client if it needs new backend ops; `flutter pub get` && `flutter analyze` (clean) && `flutter build linux`. Commit `R2-NNN: <Title>`, write `completion-reports/R2-NNN-CR-<Name>.md` with the 40-char hash, commit `R2-NNN: completion report`, push.
4. **⚠ DO NOT RUN TESTS** (`flutter test` / `integration_test`) until the owner declares R2 code-complete — the standing directive applies. The only commands are `flutter pub get`, `flutter analyze`, `flutter build`. Write tests; never execute them.
5. Verify clean tree + `origin/main` == `HEAD` + report has a hash; continue. Stop conditions, `RUN-STATUS.md` format, and always-apply rules are those in `000-Run-Sequence.md`; secrets never in the app; the generated client is never hand-edited.

## Parallel-build plan

Admin work trails the backend: an admin screen can start once its **backend operations are implemented** (their `foresignal` completion reports exist) **and** the contract is re-vendored here. Within the admin repo the spine is small; the screens are then largely independent.

**Spine (serial):** `R2-001` Login & session → `R2-002` Current-user & permission gating. (Can start as soon as backend `R2-003`/`R2-004` are done + re-vendored.)

**Fan out after `R2-002`** (each when its backend dependency lands):
- `R2-003` Users screen ← backend `R2-005`
- `R2-004` Roles screen ← backend `R2-006`
- `R2-005` Per-user config scoping ← backend `R2-008…R2-013`
- `R2-006` Profile & preferences ← backend `R2-012`
- `R2-007` LLM & channels UI ← backend `R2-009`, `R2-011`
- `R2-008` Storage screens ← backend `R2-014…R2-017`
- `R2-009` Network / Sourcing screen ← backend `R2-018…R2-023`
- `R2-010` Account security UI ← backend `R2-024`, `R2-025`

**Last (serial):** `R2-011` Onboarding wizard + polish ← backend `R2-027` + all admin screens above.

## Prompts (dependencies in parentheses)
- **R2-001** Login & session. *(backend R2-003)*
- **R2-002** Current-user & permission gating. *(R2-001; backend R2-004)*
- **R2-003** Admin-only Users screen. *(R2-002; backend R2-005)*
- **R2-004** Roles screen. *(R2-002; backend R2-006)*
- **R2-005** Per-user config scoping. *(R2-002; backend R2-008…R2-013)*
- **R2-006** Profile & preferences. *(R2-002; backend R2-012)*
- **R2-007** Per-user + shared LLM and channels UI. *(R2-002; backend R2-009, R2-011)*
- **R2-008** Storage screens (disk/retention/archival/backup). *(R2-002; backend R2-014…R2-017)*
- **R2-009** Network / Sourcing screen (egress + first-party aggregators). *(R2-002; backend R2-018…R2-023)*
- **R2-010** Account security UI (MFA, sessions, tokens). *(R2-002; backend R2-024, R2-025)*
- **R2-011** Onboarding wizard + polish. *(all admin screens; backend R2-027)*
