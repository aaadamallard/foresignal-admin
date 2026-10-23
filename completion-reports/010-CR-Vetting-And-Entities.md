# 010 — Vetting-And-Entities — completion report

**Implementation commit:** `c84d7807603ea0688ed8773da200f60938a5ed28`

## What was built

**Vetting section (`/vetting`, desktop only, matching the nav).** Ten tabs, following mocks E3 and E4:

- **Claims** (E3). `listClaims`, newest 200, showing what 153 added rather than the raw post:
  - the neutral restatement, with polarity, "hedged" and the lexicon type under it;
  - the source: the Admiralty grade, plus the rated outlet when one applies (factuality, lean and state affiliation on hover);
  - the framing label and score (neutral, charged or inflammatory);
  - confidence, support as posts / independent evidence groups, and status.

  Status filter chips and a claim-type field go to the query (`status`, `type`). **View** opens the claim page.
- **Narratives.** `listNarratives`: title, platforms, state, status, posts · authors · groups, origin concentration, coordination indicators and last activity.
- **Comparisons.** `listSocialComparisons`: claim, family, place, status, whether absence was detectable (p, with the reason on hover), found by, and when and at which revision it was evaluated. A row opens its claim.
- **Cues.** `listSocialCues`: trigger, queries, platforms, status (the reason on hover), posts found, cost and who created it.
- **Lead Times.** `getSocialLeadTimes`, one row per claim type, platform and region:
  - comparisons, and how many are out of sample;
  - the median and interquartile lead over physical, news and official evidence, written as signed durations (`+1h 30m`, `−15m`);
  - the training cutoff and the caveats.
- **Platforms.** `listSocialPlatforms`: name, type and mode, state (the reason on hover), credentials, and spend against the cap. **Configure** opens the platform page.
- **Media Ratings.** `importMediaRatings` with `provider=operator`:
  - paste a CSV or a JSON `{"rows": [...]}` document;
  - the header is checked before sending, and the text goes as a multipart file;
  - the result shows imported, updated, rejected and new outlets, with each row error.
- **Settings.** `getSocialSettings` / `updateSocialSettings` covers collection, velocity findings, claim extraction, source reliability (track record and per-account overrides), comparison windows, attention gaps, and cues (triggers, daily and cost caps, platforms, xAI X search).
  - `PUT` replaces the document, so an emptied field is left out and returns to its default (the hint shows the default).
  - A switch the document never had stays out until it is changed.
  - Members the form does not show go back unchanged.
  - Saves are confirmed by re-reading.
- **Entities** (E4).
  - **Resolve a key** (`resolveEntity`): takes `keyType:value` and an optional UTC as-of instant, and opens the entity that held the key. A 404 `ENTITY_NOT_FOUND` reads as "No entity held that key".
  - The `listEntities` table: name and type (and "provisional"), aliases, open keys, how many sources link, best key confidence, status, and **View**.
  - The search is a name prefix (`q`), or an exact key lookup (`key`) when the text is `keyType:value`, plus a type filter that includes `person` and `organization` (158).
- **Ownership** (158). The ownership-chain explorer (below).

**Claim page** (`/vetting/claims/:id`, `getClaim`).
- Polarity, actor, place with precision, event time, first observed, support, confidence and framing.
- Linked entities, which open their entity page.
- The source grade card: reliability, credibility and the outlet reputation.
- Every comparison (`listSocialComparisons?claimId=`): detectability with its interval, lead over physical, news and official evidence, any contradiction, and the physical evidence (supports or negates), with caveats.

**Platform page** (`/vetting/platforms/:platformId`, `getSocialPlatform`).
- **Status:** credentials (and which fields are missing), health, stream lag, deletion sync, and spend against the cap with the projection.
- Terms, collection paths and quotas.
- **Settings** through `updateSocialPlatform`, which replaces them:
  - enabled, mode, channels, deletion sync, post retention, monthly cap;
  - the adapter options (instances, replay, standing counts, full archive, comments, results per call, fields parameter);
  - members not shown (budget, prices) go back unchanged;
  - saves are confirmed by re-reading the platform.

**Entity page** (`/vetting/entities/:id`, `getEntity`).
- **Summary:** id, type, created and updated, open links per source, and attributes.
- **Keys:** key, role, confidence, origin, validity.
  - **Retract** asks first (`retractEntityKey`), then confirms the key reads back closed.
  - **Add Key** (`addEntityKey`) checks the value against its key type (an LEI is 20 characters; company and officer numbers need `JURISDICTION:`), then confirms the new key reads back on the entity.
  - A 409 `ENTITY_KEY_CONFLICT` explains that the key is open elsewhere and offers **Move the key here** (`force`).
- **Aliases** and **Records** (`listEntityRecords`, optionally including closed links).
- **Merge a duplicate** (`mergeEntities`) asks first. It is confirmed by re-reading the other id, which must now resolve to this entity.
- An **Ownership** card seeded with the entity.

**Ownership-chain explorer**, shared by the tab and the entity page.
- **Inputs:**
  - seeds: entity refs, or bare entity ids, which become `entity:<id>`;
  - hops, direction and minimum confidence;
  - edge types: owns, controls, officer of, beneficial owner, affiliated with.
- **Trace Chains** (`POST /v1/graph/ownership-chain`):
  - lists every node reached, with its weakest edge label;
  - shows each path as seed → hop → hop with its relation types;
  - with two or more seeds, adds a **Shared by the seeds** table.
- **Neighborhood** (`queryGraph`, up to two hops) lists each relation: from, type, to, confidence, label and validity.
- Entity nodes open their entity page.

**Shared.** `wireText` now reads an upper-case wire name as a sentence: `CO_ASSERTED` → "Co asserted", `ACTIVE` → "Active". This applies app-wide, and single letters (grades) are unchanged. `PathDraft` / `PathDraftForm` (`lib/features/vetting/`) edit a replace-on-`PUT` JSON document by dot path.

**Preview:** the contract-shaped fake is `tool/preview/preview_vetting.dart`. The preview adapter now keeps a multipart body as text instead of decoding it as JSON.

## Omitted or adapted, and why

- **"+ Add Person" (mock E4).** The contract has no create operation for entities. They are created when a record resolves its keys. To attach an identity to a person or organization, add a key on its page.
- **Claim platform filter and text search (mock E3).** `listClaims` filters by narrative, situation, type, status, box and time, not by platform or text. The tab has status chips and a claim-type field instead.
- **Provider-run media ratings imports.** The request body is optional in the contract (`requestBody.required: false`), so `provider` alone should run a Wikidata, partisan-web, AllSides or MBFC import. But the multipart schema marks `file` required, and the generated method takes only that form with `file` required. A provider-only run cannot be sent. Only the operator import is built.
  - **Owner decision:** should the spec change so the generated client can send no body, or should provider runs stay off the admin app?
- **The JSON and CSV body variants.** The contract also accepts `application/json` (`{"rows": [...]}`) and `text/csv` bodies. The generated method sends only multipart, so a pasted JSON document goes up as a `ratings.json` file part. Whether the backend reads JSON from the file part is not stated in the contract.
  - **Owner question:** confirm, or the card should accept CSV only.
- **`updateSocialPlatform`.** The prompt lists only the platform reads. The platform page also writes settings, because Screens §E and mock E3 say platforms are configured here.
- **Claim status "mixed".** Narratives have a `mixed` status but claims do not (`Claim.status` has no `mixed` in the contract), so the claim filter does not offer it.

## Wire spellings found and left alone

<!-- us-english-allow-start: names a contract wire field it must not respell -->
- **`licence`** is a required member of the contract's "Operator rating row" (the inline schema of the `importMediaRatings` request body), and so a CSV column. It crosses the wire, so it is not respelled.
  - It lives in one constant, `ratingsTermsColumn` in `vetting_drafts.dart`, inside a `us-english-allow` region with its reason.
  - Every other use (the CSV header, the hint, the tests) is built from that constant.
<!-- us-english-allow-end -->

## Verification

- `flutter analyze`: no issues.
- `flutter build linux`: built.
- `check_us_english.py` over lib, test, tool, review and completion-reports printed "0 British spellings".
- Tests were written and **not run**, per the run rules:
  - `test/features/vetting/vetting_drafts_test.dart`
  - `test/features/vetting/vetting_screens_test.dart`
  - two new `wireText` cases in `test/features/analysis/analysis_drafts_test.dart`
- Checked by hand in the preview build on the private Xvfb display, with real clicks, in dark and light themes:
  - claims table, and a claim page;
  - platforms table;
  - Reddit platform settings saved (monthly cap) and confirmed;
  - social settings saved with an emptied field returning to its default;
  - narratives, comparisons, cues and lead times;
  - a two-row CSV imported, with one row rejected;
  - a key resolved both ways (none, and opened);
  - a key retracted after confirming;
  - a key refused with `ENTITY_KEY_CONFLICT`, then moved with **Move the key here**;
  - a duplicate merged after confirming;
  - chains traced from an entity and from two seeds (with a shared owner);
  - the neighborhood graph.
- Fixed after looking at the screens:
  - a comparisons load failure from a fake contradiction reason outside the contract enum;
  - "Llm extraction" wording;
  - switch rows that did not line up with the other form rows;
  - quota windows shown as `PT1M`;
  - "Saved and confirmed" banners stretched across the card;
  - upper-case enum labels;
  - the seed shown as a raw ref in chain paths;
  - linked records not refreshing after a key change.
  - `010-entity-key-retracted.png` and `010-entity-merged.png` were taken before the upper-case fix and still show `ACTIVE` / `ANCHOR`. The later shots show the fix.
- Screenshots in `review/`:
  - `010-claims.png`
  - `010-claim.png`
  - `010-platforms.png`
  - `010-platform-saved.png`
  - `010-entities.png`
  - `010-resolve-none.png`
  - `010-resolve-opened.png`
  - `010-entity-key-retracted.png`
  - `010-entity-merged.png`
  - `010-ownership-chains.png`
  - `010-settings-saved-light.png`
  - `010-lead-times-light.png`
  - `010-comparisons-light.png`
  - `010-ratings-import-light.png`
  - `010-entity-key-conflict-light.png`
  - `010-entity-key-moved-light.png`
  - `010-ownership-shared-light.png`
  - `010-ownership-graph-light.png`
