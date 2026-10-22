# 002 — API-Client

**Goal.** Generate the Dart client from the vendored OpenAPI and wrap it so every screen talks to the
backend through one typed, authenticated layer.

**Read first.** [Architecture.md](../docs/Architecture.md) §3–4; `openapi/OpenAPI.json`; 001-CR.

**Build.**
- **Generate** the Dart client (`dart-dio`) from `openapi/OpenAPI.json` into `lib/api/generated/` —
  committed and **never hand-edited** — plus a `make`/dart script to regenerate it from the vendored
  spec.
- A thin wrapper in `lib/api/`: configurable **base URL**; `Authorization: Bearer <admin token>`
  injection reading from a secure-token service (a provider stub here; the Connect screen wires the real
  value in 003); **ProblemDetail** + `Retry-After` mapping to typed errors; a Riverpod provider exposing
  the client. Reads are callable without a token; writes require it.
- An **SSE consumer** for the backend's `text/event-stream` endpoints (`streamAlerts`,
  `streamNotifications`, …): reconnect with backoff and `Last-Event-ID` resume.

**Done when.** `flutter analyze` clean, `flutter build linux` succeeds; the generated client is present
and the wrapper compiles. Write tests for error mapping and SSE parsing (do not run them).

**Commit.** `002: API-Client` + `completion-reports/002-CR-*.md`. Stage only this prompt's files.
