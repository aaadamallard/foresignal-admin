# 001 — Completion Report: Project Scaffold

| Field                    | Value |
| ------------------------ | ----- |
| Status                   | Complete |
| Implementation commit    | `f57d91ccde6c5f35cca8cb4a455f03aef1f289a7` |
| Vendored OpenAPI version | `1.3.0` (`info.version`; OpenAPI 3.1.0, 647 paths, 821 operations, 1110 schemas) |
| Spec source              | `~/Documents/GitLab/foresignal/docs/OpenAPI.json`, last changed in backend commit `704b5539f5faaea9bd114846d9a2457ba32a8e83`; sha256 `bf758854eb8cb4c81c794b7dce792b938e93ec3159e363683ce79940a8817956`; `cmp` against the vendored copy: identical |
| Screenshot               | `review/001-project-scaffold.png` |

## What was built

- `flutter create` with project name `foresignal_admin`, org `com.foresignal`, platforms linux, macos,
  windows, ios, android. Window/app labels set to "ForeSignal Admin" on every platform runner.
- Toolchain: Flutter 3.44.0 stable, Dart 3.12.0 (the installed SDK).
- Stack pinned **exactly** in `pubspec.yaml`, each the latest stable release on pub.dev as looked up on
  2026-10-22: flutter_riverpod 3.4.3, go_router 18.1.1, dio 5.11.1, flutter_secure_storage 11.2.0,
  flutter_local_notifications 22.3.2 (desktop notifications), firebase_core 5.0.0 +
  firebase_messaging 17.0.0 (mobile push), flutter_lints 6.0.0, integration_test (SDK).
- Code generator: **openapi-generator 7.26.0** (`dart-dio`) — the current release on Maven Central
  (`maven-metadata.xml` `<release>7.26.0</release>`). It is a JVM tool, not a pub package; prompt 002
  adds the script that fetches that exact jar and generates the client.
- Layout per Architecture §2: `lib/api/generated/` (empty but for a README until 002), `lib/core/`,
  `lib/features/`, `test/`, `integration_test/`, `openapi/OpenAPI.json` + `openapi/VERSION`, empty
  `design/` (README only).
- `analysis_options.yaml`: flutter_lints plus `strict-casts`, `strict-inference`, `strict-raw-types`
  and a set of extra lints including `public_member_api_docs`; the generated client is excluded.
  Formatter page width 100.
- `lib/main.dart` + `lib/app.dart`: a `ProviderScope` → `MaterialApp.router` (go_router) placeholder
  home reading "ForeSignal Admin".
- Tests written, **not run** (owner directive): `test/app_smoke_test.dart`,
  `integration_test/app_smoke_test.dart`.
- `README.md` replaced (it was GitLab's template).

## Verification

- `flutter pub get`: resolved.
- `flutter analyze`: `No issues found!`
- `dart format --output=none --set-exit-if-changed lib test integration_test`: 0 changed.
- `flutter build linux`: `✓ Built build/linux/x64/release/bundle/foresignal_admin`.
- Ran the release bundle on the X display and captured the window with `import -window`:
  `review/001-project-scaffold.png` shows "ForeSignal Admin" centered on the dark theme.
- US English: `python3 ~/Documents/GitLab/meshdtn/style/check_us_english.py .` reports 836 hits — 834 in
  the vendored `openapi/OpenAPI.json` (the backend's; not changeable here) and 2 in
  `linux/flutter/ephemeral/` (Flutter engine headers, gitignored). None in any file this prompt wrote.

## Owner notes and questions (none blocking)

1. **Bundle/application id.** `com.foresignal.foresignal_admin` (from `--org com.foresignal`) was a
   choice, not a given. Change it before any store submission if you want a different id.
2. **Flutter SDK.** The installed 3.44.0 (2026-05-15) reports a newer stable is available. The SDK was
   not upgraded (a machine-wide change); every pinned package resolves against 3.44.0.
3. **Android licenses** are not all accepted (`flutter doctor`); this matters from the first Android
   build (016/017).
4. **Firebase on desktop.** firebase_messaging has no Linux implementation; it is in the dependency set
   for the mobile companion and is never initialized on desktop.
