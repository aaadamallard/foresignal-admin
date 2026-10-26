# ForeSignal Admin — Roadmap

One ordered list of prompts that takes the admin app from an empty repo to a working control plane over
the ForeSignal backend. Companion docs: [Product Charter](Product-Charter.md), [Screens](Screens.md),
[Architecture](Architecture.md). **The only backend reference is the vendored `openapi/OpenAPI.json`
(from the foresignal repo).** Date: 2026-10-22.

---

## 1. Process

1. Each unit of work is a prompt in `/prompts`, named `NNN-<Title>.md`.
2. [`prompts/000-Run-Sequence.md`](../prompts/000-Run-Sequence.md) runs them in order. Attended early
   (review each prompt), unattended ranges are opt-in once the shape is stable.
3. Each prompt reads the earlier completion reports, implements to its spec, **writes tests but does
   not run them**, runs `flutter analyze` + build, commits, and writes `/completion-reports/NNN-CR-*.md`.
4. **Screens.md and the `design/` mocks are directional, not exact (owner directive).** Implement as
   much of each screen as the backend API supports, in the admin design language. Where a mock shows a
   control, field, or panel the API **cannot** back, **omit it and move on** — do not match the mock
   element-for-element, and do not stall it as an owner question. Never invent an endpoint. The owner
   refines at the review gate.

## 2. Guardrails (in every prompt)

1. **`flutter analyze` is clean** and the build succeeds (`flutter build linux`, the primary desktop
   target, where the toolchain is available). **Tests are written, not run**, until the owner declares
   the project code-complete (same directive as the other ForeSignal repos).
2. **OpenAPI is the only backend contract.** Every backend call names an `operationId`; endpoints are
   **never invented** or worked around with app-side logic or a second service. A UI element a mock
   shows but the API can't support is simply **omitted** (§1.4), not an owner question. Reserve owner
   questions for a genuine backend capability gap worth raising — not cosmetic mock mismatches.
3. **Generated client is never hand-edited** (`lib/api/generated/`).
4. **Two components** (app ↔ backend); no BFF/proxy/second service.
5. **Secrets never live in the app** — admin token → platform secure store; provider keys →
   `setSourceCredentials`. The app only ever shows whether a credential is set.
6. **US English**; **AI-first, one pass, no phasing**; no `.gitlab-ci.yml`; no `CLAUDE.md` edits.
7. **Finish:** `flutter analyze` + build → commit `NNN: <Title>` → completion report → push.

## 3. The list

**One build, one pass.** Dependency/build order (scaffold → client → shell → screens → package). Every
screen group in [Screens.md](Screens.md) and every backend capability it needs is covered.

### Foundation — 001–003
| # | Prompt | What it delivers |
|---|---|---|
| 001 | Project-Scaffold | Flutter app (pinned stack), repo layout, vendored `openapi/OpenAPI.json`, Riverpod + go_router, analyze/format config, platform targets (Linux desktop primary; macOS/Windows; iOS/Android) |
| 002 | API-Client | Dart client generated from `openapi/OpenAPI.json` (`dart-dio`, never hand-edited) + thin wrapper: base URL, bearer auth, ProblemDetail/`Retry-After` mapping, SSE consumer |
| 003 | App-Shell-And-Connect | Dark theme + `ui/` primitives, platform-conditional nav (desktop full / mobile subset), the **Connect** screen (backend URL + admin token → secure store, `getSystem`/`getContract` test), error surfaces |

### Screens — 004–015 (map to Screens.md groups A–K)
| # | Prompt | Screens.md | What it delivers |
|---|---|---|---|
| 004 | Onboarding-Wizard | A | First-run guided path: connect → enable core → keys → validate → alerts/push |
| 005 | Sources-Catalog-And-Config | B | `listSources`/`listSourceHealth`, source detail/config (`getSource`/`updateSource`), bulk `enableCoreSources`/`enableFreeSources` |
| 006 | Source-Credentials-And-Validate | B | `setSourceCredentials`/`deleteSourceCredentials`; fetch-now/probe/doctor/health/usage/fetches; minimal record preview; custom push sources + device keys |
| 007 | Usage-Budgets-And-Collector | C | usage/budgets, the collector governor (`getCollectorSettings`/`updateCollectorSettings`, `maxConcurrentPulls`), rate limits, retention |
| 008 | AI-Configuration | D | LLM providers CRUD/test, roles/settings/usage, prompt templates |
| 009 | Correlation-And-Analysis | E | intel recipes (list/create/update/test), analysis cycles, assessment feedback, **intel calibration** (151), **corroboration settings** (154) |
| 010 | Vetting-And-Entities | E | social vetting (claims, narratives, cues, social settings, media ratings), entity resolution (resolve/merge/keys), **person/org + ownership-chain** (158) |
| 011 | Forecasting-And-Addins | F | forecasters (register external/TimesFM, calibration, scorecard, compare), forecast questions, external providers/EDP bindings, the **analysis-request** path (155) |
| 012 | Alerts-Triggers-Escalation | G | triggers, alert inbox + feedback, escalation policies, channels, watchlists |
| 013 | Notifications-And-Push | H | notification inbox, Web Push, native push providers + devices (FCM/APNs) |
| 014 | Serving-Egress-Peers | I | sinks, exports/archive, peers/federation |
| 015 | System-Security-Diagnostics | J | all `/v1/settings/*`, security/CORS/outbound/MCP, tokens, provenance/signing, watchdog, plugins, settings backup |

### Companion & deploy — 016–017
| # | Prompt | Screens.md | What it delivers |
|---|---|---|---|
| 016 | Mobile-Companion | K | the focused mobile subset (alerts, push, source on/off + health, device registration) via platform-conditional routing |
| 017 | Build-Package-Deploy | — | `flutter build` desktop (Linux primary) + mobile; packaging; config of the backend URL |
| 018 | Collector-Governor-Gauges | C | Re-vendor the updated OpenAPI; add live cap/in-use/waiting gauges to the collector screen via `getCollectorStatus` (backend 160) — deferred from 007 |

## 4. Status

Not started. 17 prompts, built in one pass (dependency order, no phasing). Planning docs reviewed by the
owner; mocks optional per §1.4.

## 5. Version 2.0 (Release 2)

v2.0 turns the admin app from a single-token control plane into the **multi-user** console over the
v2.0 backend: email/password **login**, a **current-user + effective-permissions** context that gates
the nav and every control, an admin-only **Users & Roles** section, existing config screens scoped to
the signed-in user (global/infrastructure screens behind Operator/Admin), a **profile & preferences**
screen, and the new **Storage**, **Network / Sourcing**, **Account-Security** and **Onboarding**
screens. The backend design is in the foresignal repo's [RBAC-Design](../../foresignal/docs/RBAC-Design.md),
[Storage-Lifecycle](../../foresignal/docs/Storage-Lifecycle.md) and
[Network-Sourcing](../../foresignal/docs/Network-Sourcing.md); the new screens are in
[Screens.md](Screens.md) group L (and the gated-nav note in the navigation section).

- **The only backend contract is the re-vendored `openapi/OpenAPI.json`** (API **2.0.0**), as always;
  the generated client (`lib/api/generated/`) is never hand-edited. The admin builds against the
  committed 2.0.0 contract and runs **in parallel** with the backend — it does **not** wait on the
  backend implementation. An operation the backend has not implemented yet simply surfaces its error
  on-screen (the app's directional policy from §1.4). The only dependencies are intra-admin: the
  login + permission-gating spine (R2-001 → R2-002), after which the screens fan out in parallel.
- **Numbering:** admin v2.0 prompts continue from **019** (v1 ended at 018). The Release-2 driver labels
  them **R2-001 … R2-011** in `prompts/000-Run-Sequence.md`; each R2-NNN is prompt 18 + NNN.
- Same guardrails as §2: `flutter analyze` clean + build; tests written not run; secrets never in the
  app (the session bearer and admin token go to the platform secure store, provider keys to the vault);
  US English; no `.gitlab-ci.yml`; no `CLAUDE.md` edits. §1.4 still holds — a control a mock shows but
  the API can't back is omitted, not stalled as an owner question.

| R2 | Prompt | Screens.md | What it delivers |
|---|---|---|---|
| R2-001 | 019 Login-And-Session | L | email+password login; session → secure store; forgot-password; admin token kept as machine fallback. Ops: `login`, `logout`, `requestPasswordReset`, `resetPassword`, `activateAccount` |
| R2-002 | 020 Current-User-And-Permission-Gating | L | effective-permissions provider from `getMe`; nav + control gating; permission-denied/empty states |
| R2-003 | 021 Users-Screen | L | admin-only user CRUD: list/add/edit-roles/suspend/delete/reset/resend, add→welcome email. Ops: `listUsers`, `createUser`, `getUser`, `updateUser`, `deleteUser`, `setUserRoles`, `suspendUser`, `unsuspendUser`, `adminResetUserPassword`, `resendUserInvite` |
| R2-004 | 022 Roles-Screen | L | built-in + custom roles with a permission editor. Ops: `listRoles`, `getRole`, `createRole`, `updateRole`, `deleteRole`, `listPermissions` |
| R2-005 | 023 Per-User-Config-Scoping | L | existing screens scoped to the current user; global/infrastructure screens behind Operator/Admin. Ops: `getMySources`, `updateMySources` |
| R2-006 | 024 Profile-And-Preferences | L | name, password, timezone, notification prefs. Ops: `getMe`, `getMyPreferences`, `updateMyPreferences`, `listMyNotificationPreferences`, `replaceMyNotificationPreferences` |
| R2-007 | 025 Per-User-And-Shared-LLM-And-Channels | D/G | per-user vs shared LLM providers and channels, with per-user budget. Ops: existing LLM/channel sets + `getMyLlmBudget` |
| R2-008 | 026 Storage-Screens | L | disk/memory/DB gauges + threshold slider; retention cap control + preview; archival config + inventory; backup/restore. Ops: `getResourceStatus`, `getRetention`, `updateRetention`, `previewRetention`, `runRetention`, `getArchiveSettings`, `updateArchiveSettings`, `getArchiveCatalog`, `getBackupSettings`, `updateBackupSettings` |
| R2-009 | 027 Network-Sourcing-Screen | L | egress pool + Test-shows-exit-IP; rotation policy; per-source assignment; egress health; first-party aggregators (ADS-B/AIS/datalink/satellite/ground sensors) with the default-off toggle for each superseded public source. Ops: `listEgressRoutes`, `createEgressRoute`, `getEgressRoute`, `updateEgressRoute`, `deleteEgressRoute`, `testEgressRoute`, `getEgressRouteHealth`, `getEgressSettings`, `updateEgressSettings`, `assignSourceEgress`, `listSources`, `updateSource` |
| R2-010 | 028 Account-Security-UI | L | MFA setup; session list/revoke; API-token management. Ops: `enrollMfa`, `verifyMfa`, `disableMfa`, `getMfaRecoveryCodes`, `listSessions`, `revokeSession`, `revokeAllSessions`, `listMyTokens`, `createMyToken`, `revokeMyToken` |
| R2-011 | 029 Onboarding-And-Polish | A, L | onboarding wizard (first admin → SMTP → starter sources → retention/disk thresholds); finish + commit the mobile companion push; permission-denied/empty-state polish; final re-vendor; both suites green. Ops: `getFirstRunStatus` + the screens it chains |

**Status:** not started. 11 prompts (019–029), built in one pass against the committed 2.0.0 contract,
in parallel with the backend (no backend wait). No phasing.
