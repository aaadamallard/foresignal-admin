# 008 — AI-Configuration — completion report

**Implementation commit:** `8cfa274473dc307deeb8057d95b3c50523ab0739`

## What was built

**AI section (`/ai`, desktop only, matching the nav).** Five tabs, following mocks D1 and D2:

- **Providers** (D1). A table of `listLlmProviders` showing:
  - name, type, models and roles;
  - tokens today against the daily budget;
  - status, with the last error on hover;
  - an Edit action.

  **Add Provider** opens `/ai/new-provider`. A row opens `/ai/providers/:id`.
- **Roles** (D2). Chat, Embedding and Text to speech, each with:
  - a provider choice;
  - the model and settings that provider brings;
  - a client check that the provider can serve the role, matching the 400 reasons in the contract (disabled, no chat model, no embedding model and dimensions, Anthropic as embedding, a non-OpenAI-compatible speech provider).
- **Options.**
  - Ask, Enrichment, Log content, private records to local providers, and the Ask token budget (at least 1000).
  - Roles and Options are one form over `getLlmSettings` / `updateLlmSettings`. `PUT` replaces the object and an omitted member takes its default, so every member is sent each time.
  - A role set to "Not assigned" is omitted, which unassigns it.
- **Prompt Templates.** Looks up `getPromptTemplate` by id and shows the version, role, SHA-256 and text, with a chip for each version.
- **Usage.**
  - `getLlmUsage` per provider over 24h / 7d / 30d.
  - Tiles: requests (with errors and refused), input tokens (with cached), and output tokens.
  - Tokens over time stacked by provider, in the 007 chart and palette.
  - A per-provider table with today's tokens against the daily budget.

**Provider page.**
- **Fields:** connection (name and type fixed once added, base URL, write-only API key, enabled), models, generation (effort, max tokens, temperature, extra headers, local), limits, and speech (OpenAI-compatible only).
- **Client checks** use the bounds in `LlmProviderInput`:
  - id pattern;
  - an http(s) base URL with no user info or fragment;
  - numeric ranges and a real `YYYY-MM-DD` date;
  - reserved headers;
  - no temperature for Anthropic;
  - speech options only on OpenAI-compatible providers.
- **Save** uses `createLlmProvider` / `updateLlmProvider`, then re-reads with `getLlmProvider` to confirm.
- **List Models** calls `listLlmProviderModels`, and a row's Chat / Embedding button fills the field.
- **Test Provider** calls `testLlmProvider` and shows success or failure, the refusal category, latency, tokens, stop reason and reply.
- **Delete** asks first, then confirms by re-listing. A 409 `LLM_PROVIDER_IN_USE` is shown with the backend's reason.

**The API key never stays in the app.** It is sent only when typed, the field is cleared as soon as the request is sent, and the page shows only `apiKeySet`. Leaving the field empty on an edit keeps the stored key, as `updateLlmProvider` documents.

**Shared changes:**
- `StackedUsage.fromPoints` generalizes the 007 stacking. `combine` now delegates to it.
- `bucketText` in `usage_screen.dart` is now public so AI usage can share it.
- Routes `aiPath`, `aiNewProviderPath` and `aiProviderPath` are added.

**Preview:** the contract-shaped LLM fake is `tool/preview/preview_llm.dart`.

## Omitted or adapted, and why

- **Spend in money.** Screens §D says "LLM spend over time", but `LlmUsagePoint` reports requests and tokens, not money. Usage shows tokens. No dollar figure is invented.
- **A list of prompt templates.** The contract has only `getPromptTemplate`, and template ids appear only in assessment and cycle-run manifests. The tab therefore loads a template by id.
- **Per-role temperature and max tokens (as in mock D2).** In the contract these belong to the provider (`options`), not to the role. The Roles tab shows the provider's options, and they are edited on the provider page.
- **Models count column (mock D1).** It would call each provider's model listing on every page load. The table shows the configured models instead, and the full listing is on the provider page.
- **Provider type is fixed after creation.** `updateLlmProvider` would accept a new type, but changing the type of an existing id seemed unsafe.
  - **Owner decision:** should the type be editable?

## For the owner to decide

1. **`allowPrivateLocal`.** The contract says it "is accepted only as false until prompt 039". The switch is shown with that note, and the backend's refusal appears if it is turned on.
   - Should the switch be hidden until 039 instead?
2. **Clearing a provider member.** `updateLlmProvider` replaces the whole provider, so leaving a member out returns it to its default. The null-dropping serializer is therefore not a problem here, unlike 005 and 007.

## Verification

- `flutter analyze`: no issues.
- `flutter build linux`: built.
- `check_us_english.py` over lib, test, tool, review and completion-reports printed "0 British spellings".
- Tests were written and **not run**, per the run rules:
  - `test/features/ai/provider_draft_test.dart`
  - `test/features/ai/llm_settings_draft_test.dart`
  - `test/features/ai/ai_screens_test.dart`
- Checked by hand in the preview build on the private Xvfb display, with real clicks:
  - providers table;
  - Text to speech assigned to `kokoro`, saved and confirmed;
  - usage tab;
  - model list;
  - test result;
  - delete of an in-use provider refused with the 409 reason;
  - a provider added in light theme (key shown only as "Key set", defaults filled by the backend);
  - a template loaded by id.
- Fixed after looking at the screens:
  - oversized role dropdown text;
  - content running full width inside the scroll view;
  - "1 errors";
  - raw context-window numbers;
  - a stale Reset after saving roles;
  - a test re-read that would have discarded unsaved edits.
- Screenshots in `review/`:
  - `008-roles-saved.png`
  - `008-usage.png`
  - `008-provider-test-delete.png`
  - `008-provider-added-light.png`
  - `008-prompt-template-light.png`
