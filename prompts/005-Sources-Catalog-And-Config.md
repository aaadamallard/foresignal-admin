# 005 — Sources-Catalog-And-Config

**Goal.** Browse every source and configure one — the heart of "get it set up."

**Read first.** [Screens.md](../docs/Screens.md) §B (the full operationId list); 003-CR.

**Build.**
- **Catalog** (desktop: full; mobile: browse + enable/disable + health): a table from `listSources` +
  `listSourceHealth` with filters (category/kind/enabled/credentialed/health) and status chips; bulk
  actions `enableCoreSources` and `enableFreeSources`.
- **Detail / config** (desktop): a form over `getSource` → edit interval, budget, params, retention,
  ingest policy, and egress **within the descriptor's constraints**, saved with `updateSource`, then
  **re-read to confirm** (write-then-verify).

**Done when.** `flutter analyze` clean, build succeeds; the catalog lists and filters live sources,
bulk-enable works, and a source's settings edit round-trips (saved, then re-read). Write tests (do not
run them).

**Commit.** `005: Sources-Catalog-And-Config` + `completion-reports/005-CR-*.md`. Stage only this
prompt's files.
