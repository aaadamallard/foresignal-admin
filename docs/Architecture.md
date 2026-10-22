# ForeSignal Admin — Architecture

Companion docs: [Product Charter](Product-Charter.md), [Screens](Screens.md). **The only backend
reference is the ForeSignal repo's `docs/OpenAPI.json`.** Date: 2026-10-22.

---

## 1. Components

Two runtime components, nothing between them:

1. **The ForeSignal backend** — unchanged, serves its HTTP API (`/v1/*`) and SSE streams.
2. **ForeSignal Admin** — this Flutter app, installed on the operator's desktop and phone, talking
   directly to the backend.

No BFF, no proxy, no second service. The app is **not** served by the backend (it is a native binary,
not static assets); it is pointed at the backend's URL and authenticated with the admin token.

## 2. Repo layout

```
foresignal-admin/
  docs/                 Product-Charter.md, Screens.md, Architecture.md
  design/               the screen mocks (owner-supplied) — the visual spec
  prompts/              NNN-Title.md build units (+ 000-Run-Sequence.md)
  completion-reports/   NNN-CR-Title.md, one per prompt
  openapi/              vendored copy of the backend's OpenAPI.json (the contract)
  lib/
    api/generated/      Dart client generated from openapi/ — never hand-edited
    api/                thin client wrapper (base URL, auth, SSE, error mapping)
    features/<area>/    one folder per screen group (sources, ai, alerts, settings, …)
    core/               theme, routing, secure storage, platform gating, shared widgets
    main.dart
  test/ , integration_test/
```

## 3. Stack (locked; exact versions pinned and verified at scaffold, prompt 001)

- **Flutter (stable) / Dart.** One codebase. Desktop targets **Linux (primary)**, macOS, Windows;
  mobile targets iOS, Android.
- **Generated API client:** the Dart client is generated from `openapi/OpenAPI.json` with
  **openapi-generator (`dart-dio`)** into `lib/api/generated/` and never hand-edited — the same
  discipline the web client used for its generated types. The vendored `openapi/OpenAPI.json` is
  refreshed from the backend repo; the client regenerates from it.
- **HTTP:** `dio`. **SSE:** a streaming consumer over `dio`/`http` for the backend's event streams
  (`streamAlerts`, `streamNotifications`, and the source-health/federation streams).
- **State management:** **Riverpod** — testable, no implicit globals, good fit for form-and-table
  config screens with async API state.
- **Navigation:** `go_router`, with **platform-conditional routes** so the desktop exposes the full
  admin tree and the mobile companion exposes only its subset (Charter §5).
- **Secure storage:** `flutter_secure_storage` for the admin token.
- **Notifications/push:** mobile uses FCM (`firebase_messaging`) and APNs, registering via
  `registerPushDevice`; desktop uses local notifications fed by the SSE alert/notification streams.
- Exact package and SDK versions are chosen and verified current in prompt 001 — not guessed here.

## 4. How the app talks to the backend

- **Generated client, cited by `operationId`.** Every call goes through `lib/api/generated/`; each
  screen's prompt names the `operationId`s it uses (Screens.md). The app adds no endpoint the spec
  doesn't define — a missing capability is an **owner question**, recorded, never invented.
- **Auth.** Reads are open on the backend (`security.openReads`); all configuration is a write and
  carries `Authorization: Bearer <admin token>`. The token is captured on the Connect screen and held
  in the platform secure store, never in plain files or logs.
- **Live state.** Alert, notification, and health views subscribe to the backend's **SSE** streams and
  render live; everything else is request/response with pull-to-refresh and optimistic-but-verified
  writes (write, then re-read the resource to confirm).
- **Errors.** ProblemDetail responses and `Retry-After` are mapped to typed errors and surfaced on the
  screen that caused them — a config refusal (a 4xx guard) is shown as a refusal, not a crash.

## 5. Config model

The app **surfaces** configuration; it does not own business logic. A screen reads the current state
from a `get*`, lets the operator edit within the descriptor's constraints, writes it back with a
`put*`/`post*`/`patch*`, and confirms via health or a `test*`/`fetch*` call. Where a knob the screen
needs has no endpoint, the screen doc records it as a backend gap (Screens.md "Backend gaps") rather
than computing or faking it in the app.

## 6. Secrets

- The **admin token** lives in `flutter_secure_storage`; it is the only credential the app persists.
- **Provider API keys** entered in the app are sent straight to the backend's credential store
  (`setSourceCredentials`) and are **never** stored or logged in the app. The app shows only whether a
  credential is set (`getSource` → `credentialsSet`), never a value.
- Push provider secrets (FCM/APNs) are configured on the backend via `putPushProvider`; the app passes
  them through to that endpoint and does not retain them.

## 7. Desktop vs mobile

One codebase, one set of features; the **mobile companion** mounts only the subset in Screens.md §K
(alerts, notifications, source on/off + health, push registration) via platform-conditional routing
and layout. Desktop uses a multi-pane, information-dense layout; mobile uses a focused, stack-based
one. Shared: the API layer, auth, theme, models, and the alert/notification/health features.

## 8. Build, deploy & distribution

- `flutter build` per platform. Linux desktop is the primary target (the operator's box); macOS and
  Windows desktop and the iOS/Android companion build from the same source.
- The app is standalone — it is **not** bundled into or served by the backend. It ships as a native
  binary/app the operator installs and points at their backend URL.
- No `.gitlab-ci.yml` is added or modified.

## 9. Testing

- **Unit + widget:** `flutter test`, written in the same pass as the code; a screen that writes config
  is proven by asserting the request it issues and the state it renders after re-reading — not by
  asking a widget what it was told.
- **Integration:** `integration_test` against a real backend or an intercepted/mocked API, for the
  end-to-end config flows (connect → enable a source → set a key → validate).
- **Every prompt:** `flutter analyze` is clean and `flutter build` (the relevant target) succeeds.
  Per the ForeSignal convention, tests are **written but not run** until the owner declares
  code-complete and runs the full suite.
- Generated code (`lib/api/generated/`) is excluded from analysis edits and never hand-modified.

## 10. Conventions

- **US English** in all code, identifiers, UI strings, comments, and commits.
- **OpenAPI is the only backend reference**; generated code is never hand-edited.
- **AI-first, one pass, no phasing** — nothing deferred, no TODOs, no traditional estimates.
- **Two components only**; no BFF/proxy/second service.
- `CLAUDE.md`/`CONVENTIONS.md` are never modified.
