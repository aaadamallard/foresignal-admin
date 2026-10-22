# 006 — Source-Credentials-And-Validate

**Goal.** Set a source's provider keys and prove it pulls → stores → is retrievable — "test and
validate," not visualize.

**Read first.** [Screens.md](../docs/Screens.md) §B; [Architecture.md](../docs/Architecture.md) §6
(secrets); 005-CR.

**Build.**
- **Credentials:** `setSourceCredentials` / `deleteSourceCredentials`; field names come from the
  descriptor. **Secrets go straight to the backend vault and are never stored or logged in the app**;
  the UI shows only whether a credential is set (`getSource` → `credentialsSet`), never a value.
- **Test & validate:** `fetchSourceNow`, `probeSource`, `runSourceDoctor` + `getDoctorReport` /
  `listSourceDoctorReports`, `listSourceFetches`, `getSourceHealth`, `getSourceUsage`, and a **minimal**
  last-records preview (`listRecords?source=`) — strictly to confirm the source works, not an
  exploration surface.
- **Custom push sources & device keys:** `listCustomSources` / `createCustomSource` / `updateCustomSource`
  / `deleteCustomSource`; `createIngestDevice` / `listIngestDevices` / `rotateIngestDeviceKey` /
  `rotateIngestKey`; `testCustomSourceMapping`; `listCustomSourceSamples`; `listIngestFormats`.

**Done when.** `flutter analyze` clean, build succeeds; a key can be set (and shows only as set),
fetch-now/probe/doctor/health/usage render, and a custom source + device key round-trip. Write tests
(do not run them).

**Commit.** `006: Source-Credentials-And-Validate` + `completion-reports/006-CR-*.md`. Stage only this
prompt's files.
