# 011 — Forecasting-And-Addins

**Goal.** Manage forecasters and calibration, author forecast questions, and wire external add-ins
(TimesFM and other analyzers) through the EDP.

**Read first.** [Screens.md](../docs/Screens.md) §F; the foresignal 152 (quantile calibration) and 155
(on-demand external forecaster) completion reports; 003-CR.

**Build.**
- **Forecasters & calibration:** `listForecasters`, `updateForecaster`, **register an external
  forecaster** (155 — name/configure a TimesFM provider independent of its auto id), `getForecastCalibration`
  (now also the **numeric/quantile** PIT/reliability from 152), `getForecastScorecard`,
  `compareForecasters`, `refitForecastEnsemble`, `createForecastEvaluation` / `getForecastEvaluation`.
- **Forecast questions:** `listForecastQuestions`, `getForecastQuestion`, `createForecastQuestion`,
  `updateForecastQuestion`, `resolveForecastQuestion`, `annulForecastQuestion`,
  `getForecastQuestionHistory`.
- **External providers / EDP:** `listExternalSources`, `getExternalSource`, `registerExternalSource`,
  `approveExternalSource`, `suspendExternalSource`, `deleteExternalSource`, registration tokens,
  `updateExternalSourceManifest`, bindings (`listExternalBindings` / `createExternalBinding` /
  `updateExternalBinding` / `deleteExternalBinding` / `previewExternalBinding` /
  `acceptSuggestedBindings`), `createExternalQuestionLink`, `getEdpProtocol`, `validateEdp`. Surface the
  **analysis-request / on-demand** config (155) where the manifest declares it.

**Done when.** `flutter analyze` clean, build succeeds; an external forecaster can be registered/named,
numeric calibration renders, questions round-trip, and an EDP binding can be created/previewed. Write
tests (do not run them).

**Commit.** `011: Forecasting-And-Addins` + `completion-reports/011-CR-*.md`. Stage only this prompt's
files.
