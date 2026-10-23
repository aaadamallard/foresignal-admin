# 007 — Usage-Budgets-And-Collector — completion report

**Implementation commit:** `f44a1f439de89860faad9183d4b68dfc7d805652`

## What was built

- **Usage section (`/usage`, desktop)** in four tabs that follow mock C1:
  - **Usage & Budgets:**
    - Tiles: requests today against the summed daily budgets of non-disabled sources, the last hour (with refused requests and bytes), and spend against the monthly caps. All come from `listSourceHealth`.
    - A **stacked request chart**: `getSourceUsage` for every enabled source, with the top 5 by requests each kept as their own series and the rest folded into a neutral "Other".
    - **Records written** (`getStatsTimeseries`, `measure=versions`) and **Top sources** (`getStatsTop`, `by=source`).
    - A **budget table**, fullest budget first, with today, pulled per hour, refused and spend.
    - A day / week / month window selector.
    - A source whose usage can't be read is listed under the chart and doesn't fail it.
  - **Collector Settings:**
    - `maxConcurrentPulls` as a 1–16 slider (`getCollectorSettings` / `updateCollectorSettings`).
    - Saving goes through write-then-confirm.
    - Text explains what the change does.
    - As the prompt directs, there are no timeout or retry controls.
  - **Rate Limits:** every member of `RateLimitSettings`, including the nested `stream` pair and the optional `metricsPerMinute`. The whole object is sent, so members the form doesn't show return unchanged.
  - **Retention:**
    - Every duration member of `RetentionSettings`, with per-source and per-kind overrides edited as `name = duration` lines.
    - Checked in the client: every window is at least 1h; the TRACK raw window is shorter than the TRACK window; the downsample interval is at least 30 s and no longer than the raw window.
    - **Run retention** (`runRetention`) asks first, then shows the counts deleted.
- **Mobile:** a usage glance card at the top of the Sources screen showing requests today against budget, a budget bar, the last hour, and spend.
- **Chart** (`lib/core/ui/stacked_bar_chart.dart`):
  - A categorical palette in fixed order, separately for light and dark, checked with the dataviz palette validator against both card surfaces.
  - Light mode gave a contrast WARN, so every series is also labeled in the legend with its total, and the numbers are in the Top list and the budget table.
  - A single series gets no legend.
  - 2px gaps between segments, a recessive grid, and a tooltip per bar.
- Both themes.
- Preview fakes: `tool/preview/preview_usage.dart`.
- The preview gained `--dart-define=FORM_FACTOR=mobile`.

## Omitted, and why

- **Live collector gauges (cap / in use / waiting):**
  - The prompt names `getCollectorStatus` (backend prompt 160), but the vendored contract doesn't have it. `grep -c "getCollectorStatus" openapi/OpenAPI.json` printed `0`.
  - The only collector operations are `getCollectorSettings` and `updateCollectorSettings`.
  - Omitted per the owner's instruction to skip what the API can't back.
- **Clearing a nullable setting** (`metricsPerMinute`, `trackRawWindow`):
  - The generated client's serializer drops nulls, so the form can change these but can't clear them, and says so in the field error.
  - This is the same owner decision left open in 005.

## For the owner to decide

1. **Where the mobile usage glance lives.** The two sections of Screens.md disagree:
   - Screens.md §C marks Usage & budgets "(D/M)" with "Mobile: a glance", and prompt 007 says the same.
   - §K's mobile companion list has no Usage entry, only "source on/off + health glance".
   - A sixth mobile nav destination also made "Notifications" wrap.
   - I put the glance on the mobile Sources screen and kept `/usage` desktop-only.
   - Which document should change?
2. **Retention minimums.** The `RetentionSettings` description says "every duration ≥ 1h", but `trackDownsampleInterval`'s own description allows 30 s. The form follows the member's description (30 s).

## Other changes

- `sameDuration` moved from `source_config.dart` to `lib/core/format/duration_text.dart` so retention can share it.
- `byteText` (decimal units) was added to `source_widgets.dart` and is used by the source test results and usage.
- `/usage` is registered in `sectionRoutesFor` for desktop only.

## Verification

- `flutter analyze`: no issues.
- `flutter build linux`: built.
- US English guard: `check_us_english.py` over lib, test, tool, review and completion-reports printed "0 British spellings".
- Tests were written and **not run**, per the run rules:
  - `test/features/usage/usage_summary_test.dart`
  - `test/features/usage/settings_drafts_test.dart`
  - `test/features/usage/usage_screens_test.dart`
- Checked by hand in the preview build on a private Xvfb display, with real clicks:
  - Usage & Budgets in dark and light.
  - Collector 2 → 6, saved and confirmed; the re-read showed 6.
  - Rate limit Read 600 → 900, saved and confirmed.
  - Retention Ask 30m refused with "At least 1h"; Alerts 120d saved and confirmed.
  - Retention run: the confirm step, then the result.
  - The mobile glance at 420×860.
- Screenshots in `review/`:
  - `007-usage-light.png`
  - `007-collector-saved.png`
  - `007-rate-limits-saved.png`
  - `007-retention-saved.png`
  - `007-retention-run.png`
  - `007-usage-glance-mobile.png`
