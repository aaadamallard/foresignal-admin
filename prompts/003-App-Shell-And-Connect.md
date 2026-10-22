# 003 — App-Shell-And-Connect

**Goal.** The shell and the **Connect** screen — the entry point that makes the app usable against a
backend.

**Read first.** [Architecture.md](../docs/Architecture.md) §4, §7; [Screens.md](../docs/Screens.md) §A;
002-CR.

**Build.**
- Dark theme + `lib/core/` UI primitives: cards, labeled forms, data tables, status chips, a
  write-then-confirm pattern helper.
- **go_router** with **platform-conditional** routes: desktop exposes the full nav (Sources, Usage, AI,
  Analysis, Vetting, Forecasting, Alerts, Notifications, Serving, System); mobile exposes only the
  Screens.md §K subset. A global error surface/boundary.
- **Connect screen (Screens §A):** backend URL + admin token input → store the token in
  `flutter_secure_storage`; test the connection with `getSystem`, `getContract`, `getServerSettings`;
  show capabilities + API version; surface an auth failure or version mismatch clearly (not a crash).
  Wire the stored token into the 002 client's auth injection.

**Done when.** `flutter analyze` clean, `flutter build linux` succeeds; connecting to a running backend
shows its capabilities and the token persists in the secure store. Write tests (do not run them).

**Commit.** `003: App-Shell-And-Connect` + `completion-reports/003-CR-*.md`. Stage only this prompt's
files.
