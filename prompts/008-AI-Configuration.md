# 008 — AI-Configuration

**Goal.** Configure the AI the engine uses — providers, roles, and spend.

**Read first.** [Screens.md](../docs/Screens.md) §D; 003-CR.

**Build.**
- **LLM providers:** add / edit / remove / test providers and list each provider's models —
  `listLlmProviders`, `getLlmProvider`, `createLlmProvider`, `updateLlmProvider`, `deleteLlmProvider`,
  `testLlmProvider`, `listLlmProviderModels`. Provider secrets go to the backend, never stored in-app.
- **Roles, options & usage:** which model does which job, options, prompt templates, and LLM spend over
  time — `getLlmSettings`, `updateLlmSettings`, `getLlmUsage`, `getPromptTemplate`.

**Done when.** `flutter analyze` clean, build succeeds; a provider can be added and tested, roles edited
and re-read, and usage renders. Write tests (do not run them).

**Commit.** `008: AI-Configuration` + `completion-reports/008-CR-*.md`. Stage only this prompt's files.
