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
