# NP-001 — Vendor OpenAPI 2.1.0

**Goal.** Bring the admin app onto the backend's **2.1.0** contract — the automated-newspaper surface
(translation settings, per-user editions, news subscriptions, output targets, hosted/shareable site,
breaking-news, provenance) — by re-vendoring the spec and regenerating the Dart client, compiling
cleanly before the newspaper screens are built on it.

**Depends on.** The backend newspaper set (foresignal `NP-001`…`NP-007`) being merged so
`../foresignal/docs/OpenAPI.json` is at `info.version` 2.1.0 with the ops **active** (NP-007 flips
them). Intra-admin: this is the foundation `NP-002`…`NP-004` compile against.

**Read first.** `openapi/VERSION` and `openapi/OpenAPI.json` (the vendored copy), the generation
script that writes `lib/api/generated/`, and how the last vendor bump (the 2.0.0 one) updated the
version-pin tests. README §"OpenAPI is the only backend contract".

**Operations.** None called here — this prompt moves the contract and regenerates types.

**Build.**
- Replace `openapi/OpenAPI.json` with a byte-for-byte copy of `../foresignal/docs/OpenAPI.json`
  (2.1.0) and record `openapi/VERSION` = `2.1.0`.
- Regenerate the Dart client under `lib/api/generated/` with the project's generator; **never
  hand-edit** generated files.
- Fix any compile fallout from additive 2.1.0 changes (new/extended schemas). The delta is additive
  (no removals); if a generated type shifts in a way that breaks a call site, narrow it to today's
  behavior and record it — do not invent behavior.
- Update whatever test/constant pins the admin's built-for spec version to `2.1.0` (the equivalent of
  the 2.0.0 pin), leaving unrelated version strings untouched.

**Done when.** `openapi/VERSION` is `2.1.0`, the Dart client is regenerated, `flutter analyze` is
clean and `flutter build linux` succeeds, and the version pin reads 2.1.0. Write tests (do not run
them): the vendored `info.version` is 2.1.0 and the newspaper operations are present in the generated
client.

**Commit.** `NP-001: Vendor OpenAPI 2.1.0` + `completion-reports/NP-001-CR-*.md` with the
implementation hash. **Stage only this prompt's files.**
