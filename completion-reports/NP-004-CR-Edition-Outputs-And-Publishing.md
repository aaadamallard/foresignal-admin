# NP-004 — Edition outputs & publishing — completion report

**Implementation commit:** `cf41b4f66826797105bb5ba32fc2ffb4efc77d3c`

**Status:** Complete. `flutter analyze` clean; the debug Linux build succeeded. Tests are written
and **not run**, per the owner directive. This completes the automated-newspaper admin surface
(NP-001…NP-004).

## What was built

Four cards added to the edition composer (`edition_composer_screen.dart`), plus
`edition_outputs.dart` (the hosted-site card and the channel helper) and an `editionSiteProvider`.
All persist through the composer's existing overlay save (`updateBriefing`), so they compose with
the NP-003 fields and nothing is dropped.

- **Output targets** (`deliveryTargets`). Add/remove targets: `kind` = **channel** (format
  **email** / **push** / **alert**, bound to a channel from `listChannels`), **website** (format
  `html`), or **podcast** (format `audio`). The format dropdown is constrained by the kind, a
  channel target requires a channel, and channel secrets stay in the backend (only the channel's
  id/name are shown). Empty targets fall back to "every bound channel", as the schema says.
- **Website** (`site` + `getEditionSite`). `site.enabled` hosts the page; `site.shareable` keeps a
  read-only, revocable share link (the switch is disabled unless hosting is on). For a saved
  edition, `EditionSiteCard` reads `getEditionSite` and shows the **canonical**, **feed-key** and
  **share** URLs, each with a copy affordance (the reused `CopyLine`). Issuing/revoking the share
  link is toggling `site.shareable` and saving — the contract's model (`BriefingInput.site`), with
  `EditionSite.shareUrl` reflecting the result.
- **Breaking news** (`breakingNews` = `BreakingNewsConfig`). Enable, the trigger `ruleIds`, the
  minimum `Severity` (info/warning/critical) and the `cooldownMinutes`, so a matching alert fires
  an off-schedule edition.
- **Badges** (`includeProvenance` / `includeCorroboration`). Toggles, and the live state is passed
  into the NP-003 `EditionPreviewCard`, so the preview shows each item's provenance / corroboration
  the moment the toggle flips — "reflect the toggle in the preview (NP-003)".

## Operations used

`updateBriefing` (persists `deliveryTargets`, `site`, `breakingNews`, `includeProvenance`,
`includeCorroboration`), `getEditionSite` (the three site URLs), `listChannels` (bind channel
targets). `previewBriefing` (NP-003) renders the badge reflection.

## A note on the share-link operation

The prompt listed `openEditionSiteShareLink`. In the 2.1.0 contract that operationId is the
**public read** of a shared site (`GET /v1/k/{key}/site`, `open` scope) — not an operator action.
The operator issues/revokes the share link through the edition's `site.shareable` flag (persisted
by `updateBriefing`), and `getEditionSite.shareUrl` carries the resulting link. That is what this
screen does; the generic `/v1/share-links` CRUD was not needed.

## Audio-capable channels

The spoken edition comes from the edition's `audio.voice` (NP-003). The `email` format attaches the
audio and `podcast`/`audio` delivers it, per the `DeliveryTarget.format` descriptions, so no
per-channel audio-capability probe is needed in the target UI — the format choice carries it.

## Tests written (not run)

`test/features/editions/edition_outputs_test.dart` (a publishing backend answering briefings,
`listChannels` and `getEditionSite`, delegating the rest to `sourcesBackend`):

- adding a channel target persists `{kind:channel, format:email, channelId:ch1}`;
- the hosted-site card shows the canonical URL and the share link when the edition is shared;
- toggling **Shareable** and saving persists `site.shareable: true`;
- the breaking-news config round-trips (enabled, ruleIds, severity, cooldown);
- the badge toggles persist and the preview reflects provenance live (corroboration stays off);
- a **website** target needs no channel and takes `html`.

## Build gate

- `flutter analyze`: **clean**.
- `flutter build linux --debug` (capped): **succeeded**. Release not run for the host-memory reason
  in the NP-001 CR.

## Questions for the owner

1. **Share link via `site.shareable`.** I implemented issue/revoke as the `site.shareable` toggle
   (the contract's edition-level model), not the generic `/v1/share-links` API. Confirm that is the
   intended operator flow.
