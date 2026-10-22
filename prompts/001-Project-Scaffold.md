# 001 — Project-Scaffold

**Goal.** Stand up the Flutter app and the locked stack so the repo builds and runs.

**Read first.** [Architecture.md](../docs/Architecture.md) §2–3, [Product-Charter.md](../docs/Product-Charter.md) §5,
[Screens.md](../docs/Screens.md).

**Build.**
- `flutter create` the app with desktop targets **linux (primary)**, macos, windows, and mobile ios,
  android. Dart null-safety, strict lints.
- Pin the stack (choose and record the **current stable** versions at scaffold — do not guess): Flutter
  stable; **Riverpod** (state), **go_router** (nav), **dio** (HTTP), **flutter_secure_storage** (admin
  token), a local-notifications package (desktop), **firebase_messaging** (mobile push); dev tooling
  **openapi-generator** (`dart-dio`).
- Repo layout per Architecture §2: `lib/api/generated/`, `lib/api/`, `lib/features/`, `lib/core/`,
  `test/`, `integration_test/`. Vendor the backend contract: copy the foresignal repo's current
  `docs/OpenAPI.json` (API 1.3.0) to `openapi/OpenAPI.json`. Create an empty `design/` for owner mocks.
- `analysis_options.yaml` with strict lints; a format config. A runnable placeholder home ("ForeSignal
  Admin") so `flutter run`/`flutter build linux` work.

**Done when.** `flutter analyze` is clean and `flutter build linux` succeeds; the app runs. Write a smoke
widget test (do not run it).

**Commit.** `001: Project-Scaffold` + `completion-reports/001-CR-*.md`. Stage only this prompt's files;
US English; the generated client dir stays empty until 002.
