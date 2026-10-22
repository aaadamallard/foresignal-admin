# 003 — Completion Report: App Shell and Connect

| Field                 | Value |
| --------------------- | ----- |
| Status                | Complete |
| Implementation commit | `567f1248ddb148921bb9953791de1a1ca9a9375d` |
| Vendored OpenAPI      | `1.3.0`, unchanged |
| Design reference      | `design/ForeSignal Admin screens.png` (owner-supplied during this prompt; panel A1) |
| Screenshots           | `review/003-connect-dark.png`, `review/003-connect-light.png`, `review/003-shell-section-light.png` |

## What was built

- **Design language from the mocks.** `lib/core/theme.dart` holds an `AdminPalette` theme extension.
  The **dark** palette is sampled from the mock sheet (navy background, `#060B12` sidebar, `#0F1B27`
  cards, `#1885FB` primary, green/amber/red status). A **light** palette has the same roles. Widgets
  read colors only through `AdminPalette.of(context)`, so every screen renders in both themes.
- **Theme switch (owner request).** `lib/core/theme_mode.dart`: Dark (default, as in the mocks),
  Light, or Match system, picked from a button at the foot of the sidebar (desktop) or in the app bar
  (mobile). The choice is saved with `shared_preferences` 2.5.6 (new dependency; it is a preference,
  not a secret) and restored at startup.
- **Shell.** `lib/features/shell/app_shell.dart`:
  - **Desktop:** the mocks' sidebar. It has the ForeSignal mark, then **Connect first**, then Sources,
    Usage, AI, Analysis, Vetting, Forecasting, Alerts, Notifications, Serving and System. The selected
    row is a blue pill. At the foot are the connected host and the theme button.
  - **Mobile:** a bottom bar with Connect plus the Screens.md §K subset (Sources, Alerts,
    Notifications, Device).
  - The global error surface is a dismissible banner fed by `FlutterError.onError` and
    `PlatformDispatcher.onError`. A widget that fails to build shows a compact inline error instead
    of the red screen.
- **Routing.** `lib/core/router.dart`: go_router with **platform-conditional routes**. On mobile, the
  routes for desktop-only sections are not registered at all. Every route redirects to Connect until
  a backend URL is set. Later prompts register their screens in `sectionRoutes`; until then a section
  shows its name and summary.
- **UI primitives** (`lib/core/ui/`), matching the mocks:
  - `PageHeader` + `Breadcrumbs`, `SectionCard`, `KeyValueList`, `ResultPanel` (the green "Connection
    successful" box);
  - `StatusLabel` (dot + text) and `StatusChip`;
  - `DataTableCard`, `CountTab`, `SearchField`, `FilterDropdown`;
  - `TonalButton` (row "Edit"), `DangerButton`, `FormActions` (Reset + Save Changes);
  - `ErrorBanner` (a ProblemDetail with its code and field errors, a missing token, an unreachable
    backend), `AsyncView`;
  - the **write-then-confirm** helper `writeThenConfirm` + `WriteStatusLine`.
- **Connect (Screens §A, mock A1).** `lib/features/connect/`:
  - Backend URL, admin token (show/hide), "Save token in secure storage" (ticked by default; unticked
    holds the token for the session only), Test Connection.
  - The test calls `getSystem`, `getContract` and `getServerSettings`. `getServerSettings` is
    admin-scope, so it is how the token is checked: 401 means rejected, 403 means not admin.
  - The result panel shows Version, Environment (`SystemInfo.mode`), OpenAPI compatibility
    (`apiVersion` against the vendored `1.3.0`: exact / same major / incompatible), Server time (the
    response's `Date` header), and the token's status.
  - Below the panel: status, open reads, client contract, public base URL, time zone, capability flags
    and backend warnings.
  - A rejected token saves nothing and says so. Auth failures and version mismatches are shown on the
    screen, never as a crash.
  - The URL and token go to `flutter_secure_storage` (`SecureConnectionStore`), which is wired into
    002's auth interceptor through `adminTokenStoreProvider`. `main.dart` restores both at startup.
- **Preview entry point.** `tool/preview/preview_main.dart` runs the real app against a fake backend
  that answers with bodies shaped by the contract's schemas (`SystemInfo`, `Contract`,
  `ServerSettings`). It is how screens are shown without any live ForeSignal. It is a separate build
  target and does not ship.
- **Tests written, not run** (owner directive):
  - `test/features/connect/connect_controller_test.dart`: admin, rejected, 403, no token, session-only
    token, incompatible version, unreachable backend, bad URL.
  - `connect_screen_test.dart`: real `enterText`/`tap`; asserts the request headers and the stored
    token.
  - `test/core/router_test.dart`: the desktop and mobile subsets, Connect first, the redirect, no
    desktop route on mobile.
  - `test/core/theme_test.dart`: palettes, persistence, switching the running app from the menu.
  - `test/core/write_confirm_test.dart`.
  - `test/api/contract_version_test.dart`: a guard that `vendoredApiVersion` equals `openapi/VERSION`.
  - The updated smoke tests and the shared `test/support/test_app.dart`.

## Defect found in 002, fixed here

002's Linux build passed only because nothing imported the generated client. The first real build
that pulled it in failed:

> `The language version override has to be the same in the library and its part(s).`

The package sits inside the app's `lib/`, so the compiler reaches its part files under two packages:
`foresignal_api` at language 2.18 (the template's SDK floor) and the app at 3.12.
`tool/generate_api.sh` now gives the generated package the app's SDK constraint (`^3.12.0`) before
`build_runner`. The client was regenerated. Formatting under 3.12 rewrote 3,477 generated files; the
API surface is unchanged (`Generated 3494 Dart files`).

## Verification

- `flutter analyze`: `No issues found!`
- `flutter build linux`: `✓ Built build/linux/x64/release/bundle/foresignal_admin`. This build now
  compiles the generated client.
- **Driven with real input.** The preview bundle was run on the X display and operated with XTest
  events at window coordinates: a click in Backend URL, typing `http://foresignal.local:8080`, a
  click in Admin token, typing the preview token, then a click on Test Connection. The window showed
  "Connection successful", Version 1.3.0, Environment full, OpenAPI Compatible (1.3.0), Server time
  2026-10-22 16:30:00 UTC, and Admin token Accepted (admin). The sidebar foot changed to the
  connected host (`review/003-connect-dark.png`).
- Clicking the sidebar theme button and choosing **Light** re-rendered the running app in the light
  palette (`review/003-connect-light.png`). Clicking Sources showed the section page in light
  (`review/003-shell-section-light.png`).
- No live backend was used. At the owner's direction, the old backend container
  (`foresignal-foresignal-1`) was stopped; `foresignal-db-1` was left running.
- US English: `check_us_english.py` over `lib/*.dart lib/api/*.dart lib/core lib/features test tool
  integration_test`: `0 British spellings`.

## Owner notes (none blocking)

1. **"Save token in secure storage" is on by default.** The mock shows it unticked. Unticked keeps the
   token for the session only, so the app forgets it on restart. Say if the default should flip.
2. **The mobile shell has no mock.** It uses the same palette with a bottom bar; 016 builds it out.
