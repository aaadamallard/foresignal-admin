# 011 — Forecasting-And-Addins — completion report

**Implementation commit:** `2230623a214c4a73b924557e72cf7ff07ca4d17d`

## What was built

**Forecasting section (`/forecasting`, desktop only, matching the nav).** Eight tabs, with the Forecasters tab following mock F1:

- **Forecasters** (F1). `listForecasters`, paged:
  - name, type ("LLM", "Indicator (Bayes)", "External" and so on), status, and the track record (resolved count, plus Brier when the backend reports one);
  - **Configure** opens the forecaster page.
  - **+ Register Forecaster** opens a card that posts `registerExternalForecaster`. The id defaults to the `edp:{sourceId}/{streamId}` convention, and **Configuration from id** fills in `sourceId` / `streamId`. When it succeeds, the card opens the new forecaster's page.
- **Calibration.** `getForecastCalibration` for one forecaster, with an optional category. The response is a `oneOf`, and each kind has its own view:
  - **Binary:**
    - the Brier decomposition;
    - the method, "CORP curve", or "Binned (fewer than 50 resolved)";
    - a bins table, each bin with a reliability bar.
  - **Numeric:**
    - "Mean coverage error" and "Largest deviation";
    - quantile coverage, nominal against observed;
    - PIT bins with scaled bars, and a footnote on bins of unequal width.
- **Scores.**
  - `getForecastScorecard`, one row per forecaster and category.
  - **Compare** (`compareForecasters`): two forecasters, with the score difference and its interval.
  - **Ensemble refit** (`refitForecastEnsemble`), showing the new weights.
- **Evaluations.** `createForecastEvaluation`: forecaster, window, categories and a maximum question count.
  - The run is polled every 3 s while it is queued or running. When it finishes, its scorecard and caveats are shown.
  - `KNOWLEDGE_CUTOFF_REQUIRED` and `BACKTEST_IN_PROGRESS` each get their own message.
- **Questions.**
  - `listForecastQuestions` with status chips (open by default) and a category filter.
  - **View** opens the question page.
  - **New Question** opens the create form.
- **Providers.** `listExternalSources` with state chips (pending, active, suspended).
  - **Register Provider** (`registerExternalSource`) takes a manifest URL or a pasted manifest, plus **Approve now** and **Private network**.
  - `SOURCE_EXISTS`, `URL_NOT_ALLOWED` and `PROTOCOL_UNSUPPORTED` each get their own message.
  - The ingest key is shown once (see below).
- **Registration Tokens.** `listRegistrationTokens`:
  - create (name, expiry, maximum uses, source id prefix), with the token shown once;
  - delete, after confirming. The delete is confirmed by re-listing.
- **Protocol.**
  - `getEdpProtocol`: the supported versions and their capabilities.
  - **Validate a manifest or items** (`validateEdp`). Schema errors are listed by path and message.

**Forecaster page** (`/forecasting/forecasters/:forecasterId`).
- **Summary:** type, status, track record and configuration.
- **Settings** (`updateForecaster`):
  - name, active and the configuration JSON;
  - `PUT` replaces the configuration whole;
  - the save is confirmed by re-reading the forecaster.
- **Request an analysis**, for external forecasters only (`requestAnalysis`): question, orientation and horizon. The result is shown with its correlation id and forecast id.
- Its own Calibration, Scorecard and Evaluations panels, fixed to this forecaster.
- An unknown id shows a "No such forecaster" panel.

**Question page** (`/forecasting/questions/:questionId`, `getForecastQuestion`).
- **Summary:** type, status, category, tags, outcomes, resolver, dates, and the resolution when there is one.
- **Resolve** (`resolveForecastQuestion`), while the question is open or closed:
  - an outcome (binary, multiple or ordered) or a value (numeric), plus evidence refs and a note;
  - asks first, then confirms by re-reading the status.
- **Annul** (`annulForecastQuestion`), with a reason; it also asks first and is confirmed the same way.
- **Latest forecasts**, one per forecaster. The rationale is limited to one line, with the full text on hover.
- **History** (`getForecastQuestionHistory`).
- **Edit** while open (`updateForecastQuestion`):
  - only the changed members are patched, and a form with no changes says "Nothing changed.";
  - `RESOLVER_INVALID`, `QUESTION_IMMUTABLE` and `QUESTION_CLOSED` each get their own message.

**New question** (`/forecasting/new-question`, `createForecastQuestion`):
- title, type, outcomes, category, tags, resolution criteria, resolver, opens, closes, resolve by and dedup key;
- a template for each resolver type, checked against the contract's `EventSelector`, `ResolverArea`, `SeriesRef`, `SituationStatus` and `Severity`;
- 201 opens the new question. 200 means the dedup key already exists, so an "Already exists" panel links to that question.

**Provider page** (`/forecasting/providers/:sourceId`, `getExternalSource`).
- **Summary:** publisher, license, terms, access, capabilities, state and last seen.
- **Lifecycle:**
  - approve and suspend, each confirmed by re-read;
  - delete asks first, is confirmed by a 404 on re-read, and then returns to the list.
- **Analysis transport.** For a provider that offers analysis requests, it links to each of its `edp:{id}/{stream}` forecasters.
- **Streams**, with each stream's kind, cadence and counts.
- **Last rejected items**, each with the reason the backend gave.
- **Bindings** (`listExternalBindings`, `createExternalBinding`, `updateExternalBinding`, `deleteExternalBinding`, `previewExternalBinding`, `acceptSuggestedBindings`):
  - create, edit (`PUT`, confirmed by re-read), delete after confirming, and preview;
  - **Accept Suggested** fills in the provider's suggested configuration.
- **Question links:** create and delete. `QUESTION_ALREADY_LINKED` gets its own message.
- **Manifest:**
  - validate against this source;
  - save, which shows any `breakingChanges` the backend reports.

**Shared.**
- `ReliabilityBar` moved from the analysis screen to `lib/core/ui/reliability_bar.dart`. It gained a `max`, so PIT densities above 1 scale correctly.
- `parseInstantText` / `instantText` moved to `lib/core/format/instant_text.dart`. `vetting_drafts.dart` re-exports them.

These two moves touch the 009 and 010 files: `analysis_screen.dart`, `entity_screen.dart`, `vetting_drafts.dart` and its test.

**Preview:** the contract-shaped fake is `tool/preview/preview_forecasting.dart`.

## Omitted or adapted, and why

- **No evaluation list.** The contract has `createForecastEvaluation` and `getForecastEvaluation` but no list operation. The Evaluations tab shows only runs started or opened in this session.
- **No single-forecaster read.** There is no `getForecaster`, so the forecaster page and save confirmation read the forecaster from `listForecasters`.
- **Manifests lose unknown members.** The manifest editor round-trips through the generated `EdpManifest` model, so members outside the schema are dropped on save. The card's footnote says so.
- **Mock F1 parts with no API** were left out, per the run instructions.

## Owner questions

- **The forecaster id pattern contradicts itself.**
  - The contract's pattern `^[a-z0-9][a-z0-9._:-]{0,127}$` has no `/`.
  - Its description says external ids are conventionally `edp:{sourceId}/{streamId}`.
  - The app follows the description and accepts `/` (`forecasterIdPattern`, with a doc comment).
  - **Which one should change?**
- **Path parameters are not percent-encoded by the generated client** (`lib/api/generated/lib/src/api_util.dart:39`, `encodeQueryParameter` returns strings as-is).
  - Unencoded, a slash id such as `edp:kalshi/odds` sends `/v1/forecasts/forecasters/edp:kalshi/odds`, which reaches the wrong route.
  - The app therefore calls `updateForecaster` with `Uri.encodeComponent(id)`, giving `edp%3Akalshi%2Fodds`.
  - **Does the backend router decode `%2F` in that segment?** The contract does not say.

## Wire spellings found and left alone

<!-- us-english-allow-start: names contract wire values it must not respell -->
- **`licence`** is a member of the EDP manifest's source info. It lives in one constant, `edpLicenseMember` in `edp_provider_screen.dart`, inside an allow region. The preview fake's use is in an allow region too.
- **`cancelled`** is an evaluation status value. It appears once, in `forecastingTone`, inside an allow region. The UI shows "Canceled".
<!-- us-english-allow-end -->

## Secrets

The provider ingest key (from `registerExternalSource`) and the registration token (from `createRegistrationToken`) are each shown once in a `OneTimeSecret` panel. They are never stored or logged.

One known quirk: the ingest-key panel stays up if you leave the tab and come back, until it is dismissed.

## Instructions found in data

None.

## Verification

- `flutter analyze`: no issues.
- `flutter build linux`: built.
- `check_us_english.py` over lib, test, tool, review and completion-reports printed "0 British spellings".
- Tests were written and **not run**, per the run rules:
  - `test/features/forecasting/forecasting_drafts_test.dart`
  - `test/features/forecasting/forecasting_screens_test.dart`
  - the moved `parseInstantText` cases in `test/features/vetting/vetting_drafts_test.dart`
- Checked by hand in the preview build on the private Xvfb display, with real clicks:
  - **Dark theme:**
    - an external forecaster registered, then its page opened;
    - renamed, saved and confirmed;
    - an analysis requested and the forecast recorded;
    - numeric calibration (quantiles and PIT), and the scorecard;
    - an evaluation polled from running to done, with its scorecard;
    - the questions list;
    - tags edited and confirmed;
    - a question resolved after confirming;
    - a question created from the alert-fired template, which then opened its page;
    - the providers list and a provider page;
    - a binding created from the suggested configuration, then previewed.
  - **Light theme:**
    - a private URL refused with `URL_NOT_ALLOWED`;
    - registered with **Private network**, and the ingest key shown once;
    - approved, then deleted;
    - a token created with its secret shown once;
    - the protocol tab;
    - binary calibration.
- **Not checked by hand end to end:**
  - a manifest save that reports breaking changes;
  - question history beyond its first render.
- Fixed after looking at the screens:
  - "Llm" as a type label;
  - an empty Brier column for numeric forecasters;
  - caveats rendered as raw maps;
  - "Saved and confirmed" left up after starting an evaluation;
  - rejected items shown through the validation view as "0 items valid";
  - "Method Corp";
  - long summary labels wrapping;
  - the PIT footnote wording;
  - a provider list load failure from fake schema errors that were strings rather than the contract's `{path, message}` objects;
  - the `/` in forecaster ids reaching the wrong route.
- Screenshots in `review/`:
  - `011-forecaster-registered.png`
  - `011-forecaster-saved.png`
  - `011-analysis-request.png`
  - `011-calibration-numeric.png`
  - `011-calibration-pit.png`
  - `011-questions.png`
  - `011-question-edited.png`
  - `011-question-resolved.png`
  - `011-question-created.png`
  - `011-providers.png`
  - `011-provider.png`
  - `011-binding-preview.png`
  - `011-provider-registered-light.png`
  - `011-provider-approved-light.png`
  - `011-token-created-light.png`
  - `011-calibration-binary-light.png`
