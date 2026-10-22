# 017 — Build-Package-Deploy

**Goal.** Make the app installable on the operator's desktop and phone, standalone against their
backend.

**Read first.** [Architecture.md](../docs/Architecture.md) §8; [Product-Charter.md](../docs/Product-Charter.md) §4–5;
001-CR.

**Build.**
- Build configs for **desktop — Linux (primary), macOS, Windows** — and **mobile — iOS, Android**, from
  the one codebase.
- Packaging per platform (a Linux bundle/AppImage or equivalent; the standard mobile bundles).
- Backend-URL configuration at first run (the Connect screen) with the value persisted; the app is
  **standalone** — never served by or bundled into the backend.
- A short `README`/run doc: how to point the app at a backend and where the admin token comes from
  (the backend's first-start banner).

**Done when.** `flutter analyze` clean; `flutter build linux` (and the other targets where their
toolchains are available) succeed; packaging steps are documented and run where possible. Write tests
(do not run them). Anything a platform toolchain blocks is recorded as owner-deferred, not a failure.

**Commit.** `017: Build-Package-Deploy` + `completion-reports/017-CR-*.md`. Stage only this prompt's
files.
