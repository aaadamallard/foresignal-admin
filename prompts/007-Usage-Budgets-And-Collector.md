# 007 — Usage-Budgets-And-Collector

**Goal.** See and bound the load the engine puts on the box.

**Read first.** [Screens.md](../docs/Screens.md) §C; 005-CR.

**Build.**
- **Usage & budgets:** per-source and global request/byte usage against budgets and spend over time
  (`getSourceUsage`, `listSourceHealth` budget state, `getStatsTop` / `getStatsTimeseries`). Mobile: a
  glance.
- **Collector / load governor (desktop):** the paced-ingestion controls from backend prompt 150 —
  `getCollectorSettings` / `updateCollectorSettings`, with **`maxConcurrentPulls` as a slider (1–16)**.
  This is where the operator tunes the box to its hardware.
- **Rate limits & retention:** `getRateLimits` / `updateRateLimits`; `getRetention` / `updateRetention`
  / `runRetention`.

**Done when.** `flutter analyze` clean, build succeeds; usage/budgets render, the concurrency slider
reads and writes `maxConcurrentPulls`, and rate-limit/retention edits round-trip. Write tests (do not
run them).

**Commit.** `007: Usage-Budgets-And-Collector` + `completion-reports/007-CR-*.md`. Stage only this
prompt's files.
