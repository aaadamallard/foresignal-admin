# R2-013 — Translation configuration

**Goal.** Let the operator define the system's **news translation** needs: which target language(s)
foreign news is translated into, which fields (title / excerpt / body), the engine and the budget
cap — and, where the sourcing model allows, a per-source translation override. This is the
"determine translation needs" part of building the automated newspaper.

**Depends on.** R2-012 (2.1.0 vendor), R2-002 (gating). Backend `R2-029` provides the endpoints;
this is the admin screen over them.

**Read first.** `lib/features/system/` (settings screens) and `lib/features/network/` /
`lib/features/sources/` (source configuration), to place translation settings beside the existing
operator config; the vendored `TranslationSettings` schema.

**Operations.** `getTranslationSettings`, `updateTranslationSettings`. (Per-source translation
override, if the vendored source schema carries one, edits through the existing sourcing screen.)

**Build.**
- A Translation settings panel (gated `system.settings`): target language(s), the fields to
  translate, the engine, the min source-language confidence, and the per-window budget cap — bound to
  `get`/`updateTranslationSettings`. Show the LLM budget context so the operator sees the cost lever
  (reuse the budget surfacing from R2-007).
- Where the vendored source/collection schema exposes a per-source target/override, surface it in the
  sourcing screen so an operator can translate a specific outlet differently (or not at all).
- Test before trust: after save, re-read and show the effective settings — never "admire the config".
- Any provider/engine secret goes to the backend, never stored or logged in-app.

**Done when.** `flutter analyze` clean and `flutter build linux` succeeds; the operator can set and
re-read translation target(s)/fields/engine/budget; a per-source override (if present in the schema)
is editable. Write tests (do not run): settings round-trip and re-read; disabling translation is
reflected.

**Commit.** `R2-013: Translation-Configuration` + `completion-reports/R2-013-CR-*.md`. **Stage only
this prompt's files.**
