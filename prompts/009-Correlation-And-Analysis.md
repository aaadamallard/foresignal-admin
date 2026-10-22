# 009 — Correlation-And-Analysis

**Goal.** Configure and watch the engine's correlation, scheduled AI analysis, confidence calibration,
and corroboration policy.

**Read first.** [Screens.md](../docs/Screens.md) §E; the foresignal 151/154/157 completion reports
(calibration, corroboration settings, author-able recipes); 003-CR.

**Build.**
- **Correlation recipes:** list / author / edit / test — `listIntelRecipes`, `createRecipe`,
  `updateRecipe`, `testRecipe` (dry-run); the recipe editor supports the **shared-attribute join** (157).
  Inspect and manage intel events — `listIntelEvents`, `getIntelEvent`, `updateIntelEvent`,
  `addIntelEventMember` / `removeIntelEventMember`, `mergeIntelEvent`.
- **Analysis cycles:** `listAnalysisCycles`, `createAnalysisCycle`, `updateAnalysisCycle`,
  `deleteAnalysisCycle`, `runAnalysisCycle`, `listCycleRuns`, `getCycleRun`, `runAnalysisMaintenance`.
- **Assessment feedback & intel board:** `listAssessments`, `getLatestAssessment`,
  `submitAssessmentFeedback`, `getIntelBoard`.
- **Confidence calibration (151):** show the intel calibration — reliability table, Brier, sample size —
  via the `getIntelCalibration` read endpoint.
- **Corroboration settings (154):** the tunable "promote to trusted" policy — `GET`/`PUT`
  `/v1/intel/corroboration` (families, independent groups, modalities).

**Done when.** `flutter analyze` clean, build succeeds; a recipe can be authored/tested, cycles managed,
calibration shown, and corroboration thresholds edited and re-read. Write tests (do not run them).

**Commit.** `009: Correlation-And-Analysis` + `completion-reports/009-CR-*.md`. Stage only this prompt's
files.
