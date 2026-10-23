# 018 — Collector governor live gauges

**Goal.** Add the live **cap / in-use / waiting** gauges to the collector screen — deferred from 007
because the endpoint didn't exist then. Backend prompt 160 added `GET /v1/settings/collector/status`.

**Read first.** [Screens.md](../docs/Screens.md) §C; 007-CR (the collector/governor screen);
[Architecture.md](../docs/Architecture.md) §3–4.

**Build.**
- **Re-vendor the contract:** copy the foresignal repo's current `docs/OpenAPI.json`
  (`../foresignal/docs/OpenAPI.json`, now including `getCollectorStatus`) to `openapi/OpenAPI.json` and
  **regenerate the Dart client**. This is additive — nothing was removed — so every existing screen
  still compiles unchanged.
- On the **collector / governor screen** (from 007), add live gauges — **cap vs in-use vs waiting** —
  from `getCollectorStatus`, polled every ~2–3 s while the screen is open, next to the
  `maxConcurrentPulls` slider. Still **no** pull-timeout / retry controls (per the governor directive).
- If `getCollectorStatus` is somehow still absent from the vendored contract, omit the gauges and note
  it (the directional-mocks policy) — do not stall.

**Done when.** `flutter analyze` clean, `flutter build linux` succeeds; the collector screen shows the
live gauges from `getCollectorStatus`; existing screens are unaffected. Write tests (do not run them).

**Commit.** `018: Collector-Governor-Gauges` + `completion-reports/018-CR-*.md`. **Stage only this
prompt's files** (the regenerated client, the vendored spec, the collector screen).
