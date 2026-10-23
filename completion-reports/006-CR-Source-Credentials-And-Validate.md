# 006 — Completion Report: Source Credentials and Validate

| Field                 | Value |
| --------------------- | ----- |
| Status                | Complete |
| Implementation commit | `ae478ba24dbbd1c05566414ac70fde82f2fc9835` |
| Vendored OpenAPI      | `1.3.0`, unchanged |
| Design reference      | `design/ForeSignal Admin screens.png`, panels B3 (credentials) and B4 (testing and validation); the mock has no custom-source panel, so those screens follow `docs/Screens.md` §B |
| Screenshots           | `review/006-fetch-failed.png`, `review/006-doctor-broken.png`, `review/006-credentials-saved.png`, `review/006-credentials-probe-light.png`, `review/006-probe.png`, `review/006-health.png`, `review/006-usage.png`, `review/006-custom-created.png`, `review/006-device-key-light.png`, `review/006-mapping-test.png`, `review/006-detail-header-light.png` |

## What was built

- **Credentials** (`lib/features/sources/credentials_screen.dart`, `/sources/:id/credentials`,
  desktop).
  - One masked field per entry in the descriptor's `credentialFields`, with its label, help and
    required mark.
  - **Save** sends `setSourceCredentials`, then confirms by re-reading `getSource` and checking
    `settings.credentialsSet`.
    - The fields are cleared once the request is sent.
    - The values are never stored, logged or read back. The screen shows only **Credentials set**
      or **Not set**.
  - **Delete** (`deleteSourceCredentials`) asks first, then confirms through the same re-read.
  - **Test Credentials** runs `probeSource` and shows the result in place.
- **Test & Validate** (`source_test_screen.dart`, `/sources/:id/test`, desktop). Tabs:
  - **Fetch Now**: `fetchSourceNow`, with the outcome and the last 20 entries of `listSourceFetches`.
  - **Probe**: `probeSource`, showing the requests made (URLs as the backend redacted them) and
    the parsed records.
  - **Doctor**: `runSourceDoctor` with the probe toggle and explanation mode, then the report's
    findings and evidence. Past reports come from `listSourceDoctorReports` and open in place.
  - **Health**: `getSourceHealth`.
  - **Usage**: `getSourceUsage` over 24 hours (hourly) or 7 days (daily), with totals and a bar
    chart of requests.
  - **Latest records**: a side card on wide windows. It is `listRecords?source=<id>&limit=12` and
    nothing more — it exists only to show that records arrive, not as a place to explore them.
- **The doctor's 202.**
  - The contract lets `runSourceDoctor` and `getDoctorReport` answer 202 `DoctorRunAccepted` while a
    run is in progress. The generated client types both as returning `DoctorReport`, so a 202
    arrives as a `DioException` that carries the raw response.
  - `SourceDoctor` (`source_validate.dart`) reads that body as `DoctorRunAccepted` through the
    generated serializers. It then polls `getDoctorReport` every 2 s for up to 2 min, and says
    "running" while it waits.
- **Custom push sources** (`lib/features/sources/custom/`, `/sources/custom` and
  `/sources/custom/:id`, desktop). Reached from the catalog's **Custom Sources** button, or from
  **Push setup** on a custom source's detail page.
  - **List and create**:
    - `listCustomSources`, `createCustomSource`;
    - the formats table from `listIngestFormats`.
    - A created source is confirmed by re-reading the list. Its ingest key is shown **once**.
  - **Definition tab**: `updateCustomSource` and `deleteCustomSource` (asks first).
    - An edit starts from the stored definition and sends all of it back, so members the form does
      not show are kept: field specs, verifiers and formats.
    - The form is checked against the contract's patterns and bounds before sending: the id
      pattern, kind names, rate ranges, and a mapping that must be JSON fitting `RecordMapping`.
  - **Keys & Devices tab**:
    - `rotateIngestKey` (asks first);
    - `listIngestDevices`, `createIngestDevice`, `rotateIngestDeviceKey`.
  - **Samples & Mapping tab**:
    - `listCustomSourceSamples`;
    - `testCustomSourceMapping`, run with either the stored mapping or the one being edited in
      Definition.
- **One-time secrets** (`lib/core/ui/one_time_secret.dart`). Ingest keys and device keys are
  shown masked, with Show, Copy and "I have saved it".
  - The key exists only in that widget's state. Dismissing the panel drops it, and nothing persists
    it.
  - The device setup URLs from `IngestDeviceSetup` (Traccar, Overland, GPSLogger) contain the key, so
    they are masked as well until the operator reveals it.
- **Shared fixes, seen in the screenshots:**
  - `PageHeader` actions are vertically centered. The compact **Credentials** button had sat
    higher than **Test Source**.
  - The Overview and Health timestamps now use the same `YYYY-MM-DD HH:MM:SS` UTC form as the rest
    of the screens, instead of raw ISO strings.
- **Preview:** `tool/preview/preview_validate.dart` answers every operation above from the schemas.
  It keeps state: credentials set or deleted, fetch log entries, a doctor run returning 202 and then
  its report, custom sources, devices and rotations. It drops any credential value sent to it. The
  tests reuse it, each with fresh state.
- **Tests written, not run** (owner directive):
  - `test/features/sources/custom_source_draft_test.dart` covers:
    - id, kinds, rate and mapping validation;
    - a stored mapping that cannot be cleared;
    - edits that keep the id and drop read-only members;
    - conversion to `CustomSourceInput`;
    - `maskSecret`.
  - `test/features/sources/validate_screens_test.dart`:
    - credentials: the save body, the re-read, a cleared field, delete behind a confirm, a probe;
    - Fetch Now and the doctor's 202, then the report;
    - custom source create with a one-time key, and an invalid id that sends nothing;
    - a device key masked in its setup URL until revealed;
    - the stored mapping test.

## Verification

- `flutter analyze`: `No issues found!`
- `flutter build linux`: `✓ Built build/linux/x64/release/bundle/foresignal_admin`
- **Driven with real input** on the private `Xvfb :99` display: the preview bundle, XTest clicks
  and keys, in both dark and light. No live backend was used.
  - **ACLED, before credentials:**
    - Fetch Now showed "Fetch failed · HTTP 401 Unauthorized" and a FAILED row in Recent fetches.
    - Run Doctor went through the 202 and polled to "Doctor: broken", with the AUTH_FAILED finding
      and its suggested action.
  - **ACLED credentials:**
    - Typing a key and pressing Save showed **"Credentials set"** and "Saved and confirmed", and
      the field went back to empty.
    - Test Credentials showed "Probe succeeded", 200, 3 records parsed.
  - **OpenSky:**
    - The Probe tab listed the redacted request and 3 parsed records.
    - Health and Usage rendered.
    - Usage drew 24 hourly bars.
  - **Custom sources:**
    - Creating `custom-river-gauge` showed its ingest key once and added it to the list.
    - On the Backyard Weather Station, Add Device showed the device key, with the Traccar URL
      masked; Show revealed both.
    - Test stored mapping reported 1 record.
- **Problems the real run found, all fixed and re-verified on screen:**
  - the probe result touched the save status line;
  - the Credentials and Test Source buttons were misaligned;
  - the one-time panel spent a separate row on its dismiss button;
  - the device setup URL showed the key in cleartext while the key itself was masked;
  - the timestamps were raw ISO strings.
- **Not checked on screen:** **Test & Validate** on a *custom* source. The preview lists custom
  sources only through `listCustomSources`, not `listSources`, so that route had no source to open.
  The contract does not say whether `listSources` includes custom sources.
- US English: `check_us_english.py` over `lib/*.dart lib/api/*.dart lib/core lib/features test tool
  review` printed `0 British spellings`. Run over all of `lib`, it also reports wire names in
  `lib/api/generated/.openapi-generator/FILES`. That is the generated client's file list, made from
  the contract's schema names, so it was left unchanged.
- **Working tree on resuming.** `lib/api/generated` showed 3,477 modified files. The changes were
  formatting only (line wrapping), left over from an earlier comparison regeneration in this
  session; `openapi/` was unchanged. I restored them with `git checkout -- lib/api/generated` before
  doing anything else, so the committed client is exactly what it was in 005.

## Owner decision needed

**Custom source fields cannot be cleared**, for the same reason given in 005: the generated
serializer drops `null`s. `updateCustomSource` is a PUT of a whole `CustomSourceInput`. The contract
does not say that an omitted member keeps its stored value; it says so only for verifier secrets.
So the form sends back every stored member. A stored `mapping` or
`recordTtl` can be changed but not removed, and the form says so beside the field. Options 1 to 3
in the 005 report apply here unchanged.
