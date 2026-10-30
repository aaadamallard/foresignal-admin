# NP-001 — Vendor OpenAPI 2.1.0 — completion report

**Implementation commit:** `44c70918629c383940add7775df9481fbae280e0`

**Status:** Complete. `flutter analyze` clean; the debug Linux build succeeded. The release
`flutter build linux` could not be run to completion on this host right now (see "Build gate"),
so verification used the debug build, the path the R2 run established. Tests are written and
**not run**, per the owner directive.

## The re-vendor

- **Source:** `../foresignal/docs/OpenAPI.json`, `info.version` **2.1.0**. Copied byte-for-byte —
  `cmp` reports the vendored `openapi/OpenAPI.json` identical to the source; sha256 begins
  `874b6bc0138c6db3…`.
- **`openapi/VERSION`** set to `2.1.0`.
- **Client regenerated** with `tool/generate_api.sh` (openapi-generator 7.26.0, dart-dio +
  built_value). 3744 Dart files written; 63 changed from the 2.0.0 client. Nothing hand-edited.
- **`pubspec.lock`**: the only change is the path dependency `foresignal_api` version `2.0.0` →
  `2.1.0` (it takes `openapi/VERSION`), a side effect of regeneration.

## The 2.0.0 → 2.1.0 delta (JSON comparison, old vendored vs new)

Fully **additive** — no operations or schemas removed, matching the prompt's prediction.

- **7 operations added** (all `x-foresignal-status: implemented`):
  `getTranslationSettings`, `updateTranslationSettings`, `listMyEditions`, `getEditionSite`,
  `openEditionSiteShareLink`, `getMyNewsSubscriptions`, `updateMyNewsSubscriptions`.
- **9 schemas added:** `TranslationSettings`, `TranslationSettingsInput`, `EditionSummary`,
  `EditionSite`, `DeliveryTarget`, `BreakingNewsConfig`, `NewsSubscription`,
  `NewsSubscriptionUpdate`, `NewsSubscriptionView`.
- The edition CRUD operations NP-003 uses (`listBriefings`, `createBriefing`, `getBriefing`,
  `updateBriefing`, `deleteBriefing`, `runBriefing`, `previewBriefing`) already existed at 2.0.0;
  2.1.0 extends the `Briefing`/`BriefingInput` surface additively (the newspaper fields NP-003/004
  bind to). No call site broke, so nothing had to be narrowed.

## Resolved: the R2 "planned operations" question

The R2-011 CR flagged that the 2.0.0 contract still marked **72 operations
`x-foresignal-status: planned`**. In the 2.1.0 contract **all 906 operations are `implemented`**;
there are **no** `planned` operations left. The backend NP campaign (NP-007 flips them) has
activated the v2.0 surface.

## Version pin

- `lib/api/contract_version.dart`: `vendoredApiVersion = '2.1.0'`.
- `test/api/contract_version_test.dart`: the pin test now asserts `2.1.0` and that the contract
  contains `"version": "2.1.0"`.

## Tests written (not run)

- `test/api/contract_version_test.dart` — updated: `vendoredApiVersion` is `2.1.0`; the spec
  contains `"version": "2.1.0"`; `openapi/VERSION` matches the pin.
- `test/api/newspaper_contract_test.dart` — new: the vendored spec carries the seven 2.1.0
  newspaper schemas, and the regenerated client exposes the translation operations
  (`SettingsApi`) and the edition/briefing operations (`BriefingsApi`). These reference generated
  method tear-offs, so `flutter analyze` fails if any is renamed or dropped.

## Build gate

- `flutter analyze`: **clean** ("No issues found!").
- `flutter build linux` (release): **not completed on this host now.** The host was at 17 GiB
  used (the owner's real backend `java` at 6.9 GB plus its PostgreSQL), leaving ~6 GiB; the
  capped (11 G) release build's `kernel_snapshot_program` AOT step hit the cap and failed, exactly
  the OOM pattern the R2 CRs recorded. `tool/capped_build.sh`'s own header says not to run a
  release build beside the running server.
- `flutter build linux --debug` (capped): **succeeded** — `✓ Built
  build/linux/x64/debug/bundle/foresignal_admin`. With `analyze` clean and the debug AOT-free
  build clean, the code compiles; the release failure is memory contention, not a defect.

## Questions for the owner

1. **Release build vs. the running backend.** As in the R2 run, a release `flutter build linux`
   needs ~11 G and cannot share the host with the live server (≈7.5 GiB) within 23 GiB of RAM.
   Verification continues to use the debug build. Confirm that remains acceptable for the NP run,
   or tell me when the server can be stopped for a release build.
