# 005 — Completion Report: Sources Catalog and Config

| Field                 | Value |
| --------------------- | ----- |
| Status                | Complete |
| Implementation commit | `61b79d43b92eadb683279dd4711a044c38c0b7ca` |
| Vendored OpenAPI      | `1.3.0`, unchanged |
| Design reference      | `design/ForeSignal Admin screens.png`, panels B1 and B2 |
| Screenshots           | `review/005-catalog-light.png`, `review/005-bulk-enable-light.png`, `review/005-source-overview-light.png`, `review/005-source-config-saved-dark.png` |

## What was built

- **Catalog** (`lib/features/sources/sources_catalog_screen.dart`, `/sources`). Mock B1.
  - A table from `listSources`. Hovering a health status shows the reason and last error from
    `listSourceHealth`.
  - Columns: Name, Kind, an Enabled switch, Health, Credentials (Set / Not set / Not needed),
    Interval, and today's usage against the daily budget.
  - Count tabs: All / Enabled / Disabled. The counts follow the other filters.
  - Filters: search (id or name), kind, mode, credential state and health. The contract's
    `SourceSummary` has no category field, so kind is used for that filter.
  - **Enable Core Sources** (`enableCoreSources`) and **Enable Free Sources** (`enableFreeSources`)
    show what they enabled and how many they left disabled, then re-read the catalog.
  - The **Enabled switch** sends `updateSource {enabled}` and re-reads with `getSource`. A refusal,
    such as 409 `CREDENTIALS_REQUIRED`, is shown as a banner, and the switch stays where the backend
    left it.
  - On **mobile**: a list with health and the switch, no bulk actions, and no detail route.
- **Detail** (`source_detail_screen.dart`, `/sources/:id`, desktop only). Mock B2.
  - Header: breadcrumbs, the Enabled switch, health, **Credentials** (when the descriptor has
    credential fields) and **Test Source**. Those two link to 006's paths and land on Sources until
    006 is merged.
  - Tabs:
    - **Overview** — the descriptor and its terms.
    - **Configuration** — the settings form.
    - **Health & Usage** — the `SourceHealth` fields.
- **The settings form** (`source_config.dart`; the logic is plain Dart with no widgets). Every field
  in `SourceSettingsUpdate`, bounded by what the descriptor allows:
  - **Collection:** interval (polled sources only, at least `minInterval`); budget per minute and per
    day; monthly cap (paid sources only).
  - **Parameters:** one editor per `ParamSpec` type. `allowed` values become a dropdown, a
    `string-list` is checked against `allowed`, a JSON value must parse, and required parameters are
    enforced.
  - **Storage and sharing:**
    - retention (STANDARD history) or downsample interval (TRACK);
    - region tagging;
    - semantic search (only when `embedFields` is declared);
    - activity stats;
    - private, locked on when the descriptor is private;
    - egress (only when `egressOverridable`);
    - reliability.
  - **Ingest policy:** an override with ALL / SAMPLED / LATEST and their fields. It is checked
    against the contract's bounds: `minInterval` is at least 2 s and no longer than the keyframe, and
    `edgeMinInterval` is no longer than `minInterval`. It is converted to and from JSON with the
    generated client's serializers.
  - **Save** sends only the fields that changed. It then re-reads the source and compares each field
    sent; durations are compared by length, so `30m` and `PT30M` match. The result is "Saved and
    confirmed" or the difference. Field errors from a backend 400 appear under their fields.
- **Shared pieces.**
  - `lib/core/format/duration_text.dart`: the contract's duration strings.
  - `sourceDetailProvider` and `SourceWrites` (write-then-confirm).
  - `HealthLabel` moved out of the wizard into `source_widgets.dart`.
  - The router's screen registry now depends on the form factor (`sectionRoutesFor`), so a
    desktop-only screen has no route on mobile.
- **Shared UI fixes**, seen in the screenshots:
  - `PageHeader` right-aligns its actions on wide windows, as in the mocks. The wizard's
    **Skip setup** moved right with this.
  - `FormActions` keeps Reset / Save at the right edge when a status line sits beside them.
- **Dependencies:** `built_collection` 5.1.2 and `built_value` 8.13.0. Both were already resolved
  through the generated client and are now direct dependencies at the same versions, because the
  form builds `BuiltMap` and `JsonObject` values.
- **Preview:** `tool/preview/preview_sources.dart` is a fake source backend that keeps its state and
  follows the schemas (summary, detail, health, both bulk enables, PUT with the 409). The tests reuse
  it, each with a fresh copy.
- **Tests written, not run** (owner directive):
  - `test/core/format/duration_text_test.dart`;
  - `test/features/sources/source_filter_test.dart`;
  - `source_config_test.dart`: minimal diffs, duration normalization, the interval floor, budgets,
    parameters, a stored override that cannot be cleared, TRACK fields, ingest-policy bounds,
    confirm and mismatch;
  - `sources_screens_test.dart`: list and filter; the switch PUT then re-read; the 409; Enable Free;
    row to detail; a settings save that is re-read and confirmed; the interval floor sending no
    request; the mobile subset.

## Verification

- `flutter analyze`: `No issues found!`
- `flutter build linux`: `✓ Built build/linux/x64/release/bundle/foresignal_admin`
- **Driven with real input**: the preview bundle, XTest clicks and keys, no live backend.
  - The GDACS switch went to enabled and Healthy after the re-read. The NASA FIRMS switch showed
    "HTTP 409 · CREDENTIALS_REQUIRED" and stayed off.
  - On USGS Earthquakes, I changed the interval from 5m to 30m and minMagnitude from 2.5 to 4, then
    pressed Save. The form showed **"Saved and confirmed"**, and the re-read form showed 30m and 4.
    The catalog's Interval column showed 30m.
  - Enable Free Sources enabled celestrak-gp, gdacs, nws-alerts and usgs-earthquakes, and left 1
    disabled.
  - Switching to light re-rendered the catalog and the detail page.
- **A bug the real run found and I fixed.** On the first save, the backend held the change but the
  "Saved and confirmed" line disappeared: the form was keyed by the `SourceDetail` it showed, so the
  re-read replaced it. The form is now keyed by source id and refills itself from each re-read. I
  re-verified with the run above.
- **Display used.** Partway through, the owner was using the desktop, and XTest moves the real
  pointer. I moved the preview to a private virtual display (`Xvfb :99`, unpacked from the Ubuntu
  `xvfb` package into the session scratchpad, not installed system-wide). All later driving and
  screenshots used it, and nothing touched the owner's screen after that.
- US English: `check_us_english.py` over `lib/*.dart lib/api/*.dart lib/core lib/features test tool
  integration_test` printed `0 British spellings`. The contract's field `licence` (`licence`,
  `licenceTerms`) is read under its real name inside `us-english-allow` regions; everything shown on
  screen says "License".

## Owner decision needed

**The generated client cannot clear an override.** The `dart-dio` serializer leaves out every `null`
field. `updateSource` treats an explicit `null` as "revert to the descriptor default" (retention,
downsample interval, ingest policy, egress, reliability, the monthly cap), so the app can **change**
those overrides but not **remove** them. The form says so beside each one instead of failing
silently. Options:

1. Accept it.
2. Allow one scoped exception to "every call goes through the generated client" (Architecture §58)
   for `null`-valued `updateSource` fields.
3. Fix the serialization in `tool/generate_api.sh`, for example by switching the generator's null
   handling, then regenerate.

Which one should I take?
