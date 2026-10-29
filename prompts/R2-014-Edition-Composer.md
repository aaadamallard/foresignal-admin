# R2-014 — Edition composer

**Goal.** The heart of the admin newspaper feature: **define and customize an edition** — pick its
news feed (sources/outlets and the per-user or shared scope), compose its sections, set the schedule,
the output language and the voice, and **preview** it before it ships. This is "define and customize
the news feed, select sources" from the control plane.

**Depends on.** R2-012 (2.1.0 vendor), R2-013 (translation), R2-002 (gating). Backend `R2-030`
(editions) + the existing briefing endpoints provide the operations.

**Read first.** The vendored briefing/edition schemas (`BriefingInput`, `BriefingScope`,
`EditionSummary`) and any existing briefing UI; `lib/features/` for where an "Editions" area fits
(a new `lib/features/editions/`); the preview endpoint (`previewBriefing`).

**Operations.** Edition CRUD over the briefing endpoints (`listBriefings`/`createBriefing`/
`getBriefing`/`updateBriefing`/`deleteBriefing`/`runBriefing`/`previewBriefing`), `listMyEditions`,
and the source/collection list to pick the feed.

**Build.**
- An **Editions** screen: list editions; create/edit an edition with its `BriefingScope` (sources/
  outlets, kinds, region/places, a saved view), its sections, its cron `schedule` + timezone, its
  `outputLanguage`, and a voice for the spoken version. Selecting sources reuses the source/collection
  catalog so the operator picks the feed visually.
- **Preview**: `previewBriefing` renders a sample edition (text, and the section layout) so the
  operator sees the result before enabling the schedule — "test before trust", not "admire the config".
- **Run now**: `runBriefing` produces a run on demand for inspection.
- Ownership: an edition can be scoped/owned per the vendored owner field (shared vs a specific user),
  gated appropriately; a user-owned edition follows that user's data (backend R2-030). Assigning an
  edition to a user is the operator's (`users.manage`); editing one's own is `self`.

**Done when.** `flutter analyze` clean and `flutter build linux` succeeds; an operator can compose an
edition (feed/scope, sections, schedule, language, voice), preview and run it, and save it. Write
tests (do not run): create→preview→save round-trips; the scope reflects the chosen sources; the
schedule and output language persist.

**Commit.** `R2-014: Edition-Composer` + `completion-reports/R2-014-CR-*.md`. **Stage only this
prompt's files.**
