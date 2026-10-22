# 004 — Completion Report: Onboarding Wizard

| Field                 | Value |
| --------------------- | ----- |
| Status                | Complete |
| Implementation commit | `13e709f5e6ce103af827048a5c21bb8e21bbb5ed` |
| Vendored OpenAPI      | `1.3.0`, unchanged |
| Design reference      | `design/ForeSignal Admin screens.png`, panel "First-run wizard" |
| Screenshots           | `review/004-wizard-connect-dark.png`, `review/004-wizard-core-sources-dark.png`, `review/004-wizard-provider-keys-dark.png`, `review/004-wizard-core-sources-light.png` |

## What was built

- **The wizard** (`lib/features/setup/setup_wizard_screen.dart`, route `/setup`, **desktop only**;
  the route is not registered on mobile). It follows the mock: a "Welcome to ForeSignal" header with
  **Skip setup**, a numbered stepper on the left, and the step in a card ("Step N of 7") with
  Back / Next / Finish. Any step can be opened from the stepper.
- **The seven steps.** Each one reads live backend state and owns no business logic:
  1. **Connect** — the same `ConnectForm` as the Connect screen. 003's screen was split into
     `ConnectForm` and `ConnectionDetails` so both places use one form.
  2. **Enable core sources** — the registered and enabled counts from `listSources`, and an **Enable
     Core Sources** button that calls `enableCoreSources`. It shows the response (which sources were
     enabled and how many were left disabled) in the green result panel, then re-reads the catalog.
  3. **Set provider keys** — the sources where `credentialsRequired` is true and `credentialsSet` is
     not. **Set key** deep-links to `/sources/:id/credentials` (006).
  4. **Validate sources** — the enabled sources with their `listSourceHealth` status. **Test**
     deep-links to `/sources/:id/test` (006).
  5. **Configure alerts** — the trigger and channel counts from `listTriggers` and `listChannels`,
     with links to `/alerts/triggers` and `/alerts/channels` (012).
  6. **Configure push** — the push providers and devices from `listPushProviders` and
     `listPushDevices`, with a link to `/notifications/push` (013).
  7. **Review and finish** — a status row each for connection, sources, provider keys, health,
     alerts and push.
- **When it opens.** It opens on its own the first time an admin token connects on desktop. After
  **Skip** or **Finish** it does not open again; the choice is stored with `shared_preferences` under
  `foresignal.setupWizard` (`SetupWizardStore`). It can be reopened at any time from the **Setup
  wizard** button on the Connect screen. Skip and Finish go to Sources.
- **Shared paths.** `lib/core/routes.dart` holds the paths the wizard links to, so 005, 006, 012 and
  013 mount their screens at the same paths. `sourceListProvider` and `sourceHealthProvider`
  (`lib/features/sources/source_providers.dart`) are the start of 005's data layer.
- **Links to screens that do not exist yet.** The router's `onException` sends any path that is not
  mounted to its section root. Until 005, 006, 012 and 013 land, **Set key**, **Test** and the alert
  and push links open the section page, not the screen they name.
- **Preview.** The fake backend now keeps source state: `enable-core` enables the core sources that
  need no key. It also answers triggers, channels and push with bodies shaped like the contract's
  schemas. `--dart-define=CONNECTED=true` starts the preview already connected.
- **Tests written, not run** (owner directive): `test/features/setup/setup_wizard_test.dart` covers:
  - walking the steps with Next and Back;
  - Enable Core Sources sending an authorized POST and re-reading the catalog;
  - the provider-keys filter;
  - Skip recording `skipped` and Finish recording `completed`;
  - a deep link to an unmounted path landing on its section;
  - the wizard opening on the first admin connection and staying closed once finished;
  - the route not existing on mobile;
  - `sectionRootOf`.

  `test/support/test_app.dart` gained a `wizardStore` override.

## Verification

- `flutter analyze`: `No issues found!`
- `flutter build linux`: `✓ Built build/linux/x64/release/bundle/foresignal_admin`
- **Driven with real input** (preview bundle, XTest clicks at window coordinates, no live backend):
  - Test Connection on the Connect screen opened the wizard at step 1 with "Connection successful".
  - Next went to step 2, which showed 7 registered and 3 enabled.
  - Enable Core Sources showed "Enabled 3 sources: celestrak-gp, nws-alerts, usgs-earthquakes",
    and the re-read count changed to 6 enabled.
  - Step 3 listed ACLED and NASA FIRMS with credentials "Not set".
  - On step 7, the screenshot showed "1 rules" and "1 providers". **I fixed the plural; that fix has
    not been re-screenshotted.**
  - Choosing Light from the theme menu re-rendered the wizard in light.
  - Skip setup landed on Sources.
- US English: `check_us_english.py` over `lib/*.dart lib/api/*.dart lib/core lib/features test tool
  integration_test` printed `0 British spellings`.

## Owner notes (none blocking)

1. Some parts of the wizard mock are not built; only what the contract supports is.
2. While the wizard is open, the sidebar highlights **Connect**: the wizard is reached from Connect
   and is not a section of its own.
3. A step's result (for example, step 2's result panel) clears when you leave the step. The counts
   are re-read from the backend, so nothing is lost.
