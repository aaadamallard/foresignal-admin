# 018 — Collector-Governor-Gauges — completion report

**Implementation commit:** `1397ace3928522db16f304807871ced71b380e28`

## What was built

- **Contract re-vendored.** `../foresignal/docs/OpenAPI.json` was copied to `openapi/OpenAPI.json`.
  - Its last change in the backend repo is commit `e790589207401944da7199f1becda0e6deb53b94` (2026-10-22 21:12 -0500).
  - The new sha256 is `0d301348e69e542bcbea334353c34179c33b65187c3ed8e0f9f3bb3ebfd8a052`.
  - `info.version` is still `1.3.0`, so `openapi/VERSION` is unchanged.
  - A JSON comparison of the old and new contracts found the change purely additive:
    - operations added `{'getCollectorStatus'}`; none removed;
    - schemas added `{'CollectorStatus'}`; none removed; none changed;
    - no existing path changed.
- **Client regenerated** with `tool/generate_api.sh` (openapi-generator 7.26.0, as pinned).
  - The diff is additive only: 7 files, 184 insertions and 0 deletions.
  - It adds the new `CollectorStatus` model (two files) and `SettingsApi.getCollectorStatus()`.
  - Nothing in `lib/api/generated/` was hand-edited.
- **Live gauges on the collector screen** (Usage → Collector, `lib/features/usage/collector_gauges.dart`). They sit directly under the `maxConcurrentPulls` slider, inside the same card.
  - **Readings:** *Cap*, *In use* and *Waiting* from `getCollectorStatus`.
  - **Permit bar:** one slot per unit of the cap, filled while held. Any pulls beyond a lowered cap show in the warning color, because the contract allows `inUse` to exceed `cap` briefly after the cap is lowered.
  - **Status sentence,** e.g. "3 pulls of 6 running; none waiting." Over a lowered cap, it says no new pull starts until enough finish.
  - **Live stamp:** *Live · hh:mm:ss*.
  - **Polling:** every 2.5 s while the card is shown (`collectorStatusIntervalProvider`). The timer is canceled when the screen or tab closes, and a read is skipped while the previous one is still in flight.
  - **Failed reads:** the last snapshot stays, marked *Stale*, with the backend's answer and a Retry.
  - **Still no pull-timeout or retry controls,** as directed.
- **Preview fake** (`tool/preview/preview_usage.dart`) answers `GET /v1/settings/collector/status`:
  - `cap` is the stored `maxConcurrentPulls`;
  - demand cycles 1–8 every 3 s, so `inUse` = min(demand, cap) and `waiting` = the rest;
  - tests can fix the demand and add pulls running over a lowered cap.

## Omitted or adapted, and why

- **The gauges sit under the slider, not beside it.** The card is 760 px wide at most, and the slider row already holds its label and value. Three figures plus a bar read better on their own row, inside the same card.
- **The interval is 2.5 s,** the middle of the prompt's "~2–3 s". The backend's 429 `Retry-After` is not specially honored: a refused read shows the problem, and the next tick tries again.

## Owner questions

None.

## Wire spellings found and left alone

None new. The member names `cap`, `inUse` and `waiting` are US English.

## Secrets

None.

## Instructions found in data

None.

## Verification

- `flutter pub get`: dependencies resolved.
- `flutter analyze`: no issues.
- `flutter build linux`: built, with the regenerated client, so every existing screen compiles unchanged.
- `check_us_english.py` over lib, test, tool, review, completion-reports and README.md printed "0 British spellings".
- `test_us_english.py`: 14 tests, OK (172.7 s).
- Tests were written and **not run**, per the run rules. They are in `test/features/usage/usage_screens_test.dart`:
  - the gauges show cap, in use and waiting from `getCollectorStatus` (2 / 2 / 3), with the sentence and the live stamp;
  - they re-read while open and take a new value after 3 s;
  - no further status request is made 8 s after switching tabs;
  - a cap lowered under running pulls shows in use over the cap, with its sentence;
  - `collectorStatusLine` for a partial, a full and an over-cap snapshot.
  - The existing collector-slider save test is unchanged and still singles out the one `PUT`.
- Checked by hand in the preview build on the private Xvfb display, with real clicks:
  - **Dark theme:**
    - at cap 2, the gauges updated on their own: Waiting went 2 → 4 between two shots 5 s apart;
    - a first render showed the permit bar collapsed to zero height. It was fixed by stretching the bar's row and checked again;
    - the slider was moved to 6 and saved ("Saved and confirmed"), and the gauges followed to Cap 6;
    - four shots 3 s apart read 170 → 227 → 284 → 340 blue pixels along the bar.
  - **Light theme:** Cap 6, In use 5, one empty slot.
- Screenshots:
  - `review/018-gauges-cap2.png`
  - `review/018-gauges-cap6-saved.png`
  - `review/018-gauges-partial.png`
  - `review/018-gauges-light.png`
- **Not checked by hand:** the over-cap state (the preview's demand never exceeds a freshly saved cap; it is covered by a test), and a failed status read.
