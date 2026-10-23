# 009 — Correlation-And-Analysis — completion report

**Implementation commit:** `8fc44f67d1d2d78dfbcd00659c681b955e2b9b10`

## What was built

**Analysis section (`/analysis`, desktop only, matching the nav).** Seven tabs, following mocks E1 and E2:

- **Overview.** `getIntelBoard` shows:
  - top situations;
  - latest assessments;
  - forecasts due in 7 days;
  - band changes in 24 hours;
  - ensemble and operator Brier skill;
  - benchmarks;
  - any sections the backend shortened.
- **Recipes** (E1). A table of `listIntelRecipes` with:
  - name, type, seeds, origin and version;
  - status (Active, Disabled, or Error with the last error on hover);
  - last run;
  - an Edit & Test action.

  **New Recipe** opens `/analysis/new-recipe`.
- **Events.** `listIntelEvents`:
  - filtered by status chips (emerging and active by default) and by type;
  - shows confidence, marked `*` while the scope is uncalibrated;
  - shows evidence quality, members and when it was updated.
- **Cycles** (E2). `listAnalysisCycles` shows:
  - name, cadence and cron with time zone;
  - roles and next run;
  - status;
  - a **Run** action (`runAnalysisCycle`), which links to the run it started or shows the refusal.

  **New Cycle** is in the header. **Run Maintenance** (`runAnalysisMaintenance`) shows each step's status, with any step error on hover.
- **Assessments.** By cadence:
  - the latest one in full (`getLatestAssessment`; a 404 reads as "none yet");
  - earlier ones, which expand on click;
  - BLUF judgments with estimative term and probability;
  - sections, marked when written by an LLM;
  - feedback through `submitAssessmentFeedback`: Useful / Not useful / Wrong, a comment of up to 4000 characters, and the recorded confirmation.
- **Calibration.** For each scope (`getIntelCalibration`):
  - calibrated or not, with resolved outcomes against the minimum;
  - Brier score and the fitted time;
  - a reliability table, where each bin draws its observed frequency as a bar and its mean forecast as a tick.
- **Corroboration.** The 154 policy (`get/updateIntelCorroboration`):
  - event evidence quality, situation activation, and automatic corroboration;
  - `PUT` replaces the policy, so an emptied field is left out and returns to its default (the hint shows the default);
  - written then confirmed by re-reading.

**Recipe page** (`/analysis/recipes/:id`, `/analysis/new-recipe`).
- **A bundled recipe:**
  - only Enabled and the parameter overrides can change;
  - the definition is shown read-only;
  - `updateRecipe` gets `enabled` and `params` only.
- **An operator recipe:**
  - edits the full definition: type, seed (kinds, sources, conditions), joins (add / remove; kinds, conditions, distance, same region, same entity, shared attribute (157), window, member role, signal family, weight), thresholds, deduplication, quiet period, reopen window, contradictions and severity map;
  - members of the definition that the form does not show are sent back unchanged.
- **Save** is confirmed by re-listing, because the contract has no single-recipe read. The definition is compared as canonical JSON.
- **Test** (`testRecipe`) replays the saved recipe over a record sequence range and lists the events it would have made.

**Event page** (`/analysis/events/:id`).
- Inference: confidence and method, calibrated or raw, evidence, time, regions and detector.
- The labeled speculation and its alternatives.
- **Edit:** title, status, severity and notes.
  - Only changed members are sent, with `If-Match` set to the version last read.
  - A 409 `EVENT_VERSION_CONFLICT` keeps the edits on screen and offers Reload.
- **Members:** role, member, observed time, family and weight, and why it joined.
  - Remove asks first.
  - Add takes a record (source, external id and sequence), an alert, an anomaly or an event.
- **Merge** into another event id asks first, confirms that the event reads back as merged, then opens the target.
- The change log.

**Cycle page** (`/analysis/cycles/:id`, `/analysis/new-cycle`).
- **Fields:** schedule (name, cadence, cron, time zone, enabled), roles, analyst profile, forecaster providers and samples, scope (regions, themes, situations, cadence-matching or listed hypothesis sets, sources, categories), limits, notify channels and priority.
- `PUT` replaces the whole cycle, and saves are confirmed by re-reading.
- Its runs list, **Run Now**, and Delete with a confirmation step (a 409 while a run is in progress is shown).

**Run page** (`/analysis/runs/:id`).
- Summary: started, finished, tokens, assessment, previous run (a link), manifest and warnings.
- Each role's status and reason, provider, model and effort, tokens, forecasts and proposals, and prompt template id and version.
- A packet summary.
- Any maintenance it ran.

**Shared:** `lib/api/wire_names.dart`.
- Generated enum Dart names differ from their wire names (`redTeam` is `red-team`, `notUseful` is `not_useful`).
- `wireOf` reads the wire name through the serializers, and `wireLabel` / `wireText` turn it into words for display.

**Preview:** the contract-shaped fake is `tool/preview/preview_analysis.dart`.

## Omitted or adapted, and why

- **Clearing an event's severity override.** `IntelEventPatch.severity` clears the override when it is `null`, but the generated serializer drops nulls. The page can set a severity but cannot clear an override, and the field's help says so.
  - **Owner decision** (the same null-dropping question as 005 and 007).
- **Recipe Description column (mock E1).** `CorrelationRecipe` has no description. The table shows type and seeds instead.
- **Cycle "Last run" column (mock E2).** `AnalysisCycle` has only `lastRunId`, not a time. Fetching each cycle's runs on every list load was not worth it, so the cycle page lists its runs.
- **Recipe delete.** The contract has no delete operation. Disable is the way to stop a recipe.
- **Testing unsaved recipe edits.** `testRecipe` takes a recipe id, so it tests the saved definition, and the card says so.
- **Rendering assessment markdown.** No markdown renderer is a dependency, so sections are shown as selectable text.

## For the owner to decide

1. **Severity override clearing.** See above: should the client be allowed to send explicit nulls?
2. **Scope.** The cycle, run and maintenance operations need `agent` or `admin` scope. An admin token covers them. A read-only token sees 403 refusals in the banners.

## Verification

- `flutter analyze`: no issues.
- `flutter build linux`: built.
- `check_us_english.py` over lib, test, tool, review and completion-reports printed "0 British spellings".
- Tests were written and **not run**, per the run rules:
  - `test/features/analysis/analysis_drafts_test.dart`
  - `test/features/analysis/analysis_screens_test.dart`
- Checked by hand in the preview build on the private Xvfb display, with real clicks, in dark and light themes:
  - board;
  - recipes table;
  - an operator recipe edited and saved (version 2 → 3), then tested over a sequence range;
  - events filtered;
  - an event note saved and confirmed against its version;
  - a member removed after confirming;
  - cycles table;
  - maintenance steps;
  - a cycle run opened on its run page;
  - assessment feedback recorded;
  - calibration;
  - corroboration saved with an emptied field returning to its default;
  - a new cycle created.
- Fixed after looking at the screens:
  - a render error from a `Flexible` inside the form-actions `Wrap`;
  - oversized dropdown text;
  - the "Saved and confirmed" line lost when a save re-read the record;
  - a member-remove confirmation clipped at the table edge;
  - "Llm" origin labels;
  - the calibration window shown as `P90D`;
  - a stretched feedback chip.
- Screenshots in `review/`:
  - `009-board.png`
  - `009-recipes.png`
  - `009-cycles-maintenance.png`
  - `009-run.png`
  - `009-calibration.png`
  - `009-corroboration-saved.png`
  - `009-event-remove-confirm-light.png`
  - `009-event-saved-light.png`
  - `009-cycle-created-light.png`
