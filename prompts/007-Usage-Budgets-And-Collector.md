# 007 — Usage-Budgets-And-Collector

**Goal.** See and bound the load the engine puts on the box.

**Read first.** [Screens.md](../docs/Screens.md) §C; 005-CR.

**Build.**
- **Usage & budgets:** per-source and global request/byte usage against budgets and spend over time
  (`getSourceUsage`, `listSourceHealth` budget state, `getStatsTop` / `getStatsTimeseries`). Mobile: a
  glance.
- **Collector / load governor (desktop):** the paced-ingestion control from backend prompt 150 —
  `getCollectorSettings` / `updateCollectorSettings`, with **`maxConcurrentPulls` as a slider (1–16)** —
  plus **live gauges** of the governor working (cap vs in-use vs waiting) from `getCollectorStatus`
  (backend prompt 160), polled. This is where the operator tunes the box to its hardware.
  **Do NOT show pull-timeout / retry-attempts / retry-delay controls:** retries are the backend's
  automatic `Retry-After`-honoring backoff (a knob there would get the instance IP-blocked by free
  sources), and fetch timeout is a per-source descriptor value, not a global setting.
- **Rate limits & retention:** `getRateLimits` / `updateRateLimits`; `getRetention` / `updateRetention`
  / `runRetention`.

**Done when.** `flutter analyze` clean, build succeeds; usage/budgets render, the concurrency slider
reads and writes `maxConcurrentPulls`, and rate-limit/retention edits round-trip. Write tests (do not
run them).

**Commit.** `007: Usage-Budgets-And-Collector` + `completion-reports/007-CR-*.md`. Stage only this
prompt's files.
