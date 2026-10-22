# 010 — Vetting-And-Entities

**Goal.** Configure feed vetting (the fact, not the hype) and manage entity resolution — including the
new person/organization relationship model.

**Read first.** [Screens.md](../docs/Screens.md) §E; the foresignal 153 (de-hype/partisan) and 158
(person/org) completion reports; 003-CR.

**Build.**
- **Social & news vetting:** `getSocialSettings` / `updateSocialSettings`, `listSocialPlatforms` /
  `getSocialPlatform`; review the AI-extracted **claims** — `listClaims` / `getClaim` — showing the
  **neutral restatement**, the **framing/partisan score**, and the **source-reputation** fields added in
  153 (not the raw post); `listNarratives`, `listSocialCues`, `getSocialLeadTimes`,
  `listSocialComparisons`; import source reputation / media ratings — `importMediaRatings`.
- **Entity-resolution management:** `listEntities`, `getEntity`, `resolveEntity`, `listEntityRecords`,
  `addEntityKey`, `retractEntityKey`, `mergeEntities` — including the new `person` / `organization`
  entities and corporate keys (158).
- **Ownership-chain explorer (158):** `POST /v1/graph/ownership-chain` and `queryGraph` — walk
  ownership/affiliation edges from selected entities and surface shared-attribute links.

**Done when.** `flutter analyze` clean, build succeeds; claims show the vetting fields, entities can be
resolved/merged/keyed, and an ownership-chain query renders its paths. Write tests (do not run them).

**Commit.** `010: Vetting-And-Entities` + `completion-reports/010-CR-*.md`. Stage only this prompt's
files.
