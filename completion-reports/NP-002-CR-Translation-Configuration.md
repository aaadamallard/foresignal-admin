# NP-002 — Translation configuration — completion report

**Implementation commit:** `ac7f740d7cadf71bd14e22595f07b976c5fb103f`

**Status:** Complete. `flutter analyze` clean; the debug Linux build succeeded. Tests are written
and **not run**, per the owner directive.

## What was built

A **Translation** tab in System (`lib/features/system/translation_settings.dart`), gated
`system.settings` (the R2-002 pattern: a new `SystemTab.translation` with
`needs: Permissions.systemSettings`, the route auto-registered by the System router loop, and the
Save button inside a `PermissionGate`). Bound to `getTranslationSettings` / `updateTranslationSettings`
(`GET`/`PUT /v1/settings/translation`) through the same raw-JSON `jsonCall`/`jsonObjectCall` path
the SMTP panel uses.

The form edits every member of `TranslationSettings`:

- **Master switch** (`enabled`) — off, nothing is translated.
- **Target languages** (`targetLanguages`) — a space/comma-separated box, parsed to a
  de-duplicated list, each validated against the contract's BCP 47 pattern
  (`^[A-Za-z]{2,3}(-[A-Za-z0-9]{2,8})*$`), capped at 10, required while translation is on.
- **Fields** (`fields`) — `title` and `excerpt` checkboxes. The field is `x-extensible-enum`, so
  any value the backend has grown beyond those two is **kept** (held in `_extraFields`, shown in a
  footnote, re-sent on save) rather than dropped — per "never remove functionality".
- **Engine** (`engine`) — a dropdown over the known `llm` plus whatever the backend currently
  holds (`x-extensible-enum`, so an unknown current value is never silently replaced).
- **Min source confidence** (`minSourceLanguageConfidence`) — 0–1, default 0.8.
- **Budget** (`budget.window` + `budget.capUsd`) — the window (hour/day/month) and a USD cap,
  empty meaning no separate cap.

**Cost lever surfaced.** The read-only `spend` window from the GET (spent USD, window, reset time)
shows as an info chip, and the R2-007 budget widget (`MyLlmBudgetCard`) is reused beneath the form
— shown only when the operator has `self.llm`, so it never errors for one who cannot read it.

**Test before trust.** Save uses `writeThenConfirm`: PUT, then re-read `getTranslationSettings`,
confirming `enabled`, `engine`, the target-language set, the field set and the budget match what
was sent; a mismatch surfaces as "Saved, but not confirmed". On success the provider is
invalidated so the panel re-reads the effective settings — never "admire the config".

**Secrets.** No provider/engine key is entered or shown here; the engine is only named. Keys stay
in the backend (the schema's `TranslationSettingsInput` carries none).

## Per-source override — not in the contract

The prompt's conditional "where the vendored source/collection schema exposes a per-source
target/override". It does **not**. Searched every schema: no `Source*`/`Collection*` schema carries
a `translation`/`language` override property; the only translation-related fields anywhere are the
read-only `NewsArticle`/`NewsStory` `translatedTitle`/`translatedExcerpt`/`translationProvenance`
outputs. Translation is a single global `TranslationSettings` resource at 2.1.0, so there is no
per-source override to surface, and nothing was added to the sourcing screen.

## Preview / test harness

`tool/preview/preview_system.dart` gained a `/v1/settings/translation` default and the path joined
the generic settings GET/PUT handler, so the private-display preview and the widget tests drive the
real screen against a faithful fake.

## Tests written (not run)

`test/features/system/translation_settings_test.dart`:

- reads the effective settings (switch, `en es`, the spend chip);
- changing the target languages round-trips (PUT body and stored value), the resource is re-read
  (GET count > 1), and "Saved and confirmed" shows;
- duplicate / whitespace-separated tags normalize to `['en','fr']`;
- **disabling** translation persists (PUT `enabled:false`, stored `false`) and the re-read switch
  reads off;
- a non-BCP-47 tag is refused before any PUT is sent.

## Build gate

- `flutter analyze`: **clean**.
- `flutter build linux --debug` (capped): **succeeded**. The release build was not run for the same
  host-memory reason recorded in NP-001 (the owner's backend is running); see the NP-001 CR
  question.

## Questions for the owner

1. **`MyLlmBudgetCard` reuse.** I surfaced the overall LLM budget via the R2-007 card, gated on
   `self.llm`. If you would rather the translation tab show only the translation-specific `spend`
   (and not the operator's personal LLM budget), say so and I will drop the reused card.
