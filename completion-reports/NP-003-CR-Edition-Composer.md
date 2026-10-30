# NP-003 — Edition composer — completion report

**Implementation commit:** `e95d181aa3ccc2fbab7797f6f2c93670dac163b9`

**Status:** Complete. `flutter analyze` clean; the debug Linux build succeeded. Tests are written
and **not run**, per the owner directive.

## What was built

A new **Editions** section (`lib/features/editions/`), mounted on the desktop rail (icon
`newspaper`), gated `intel.read` to view. Its edition CRUD operations need only a signed-in session
(the contract marks create/update/delete/run/preview `x-foresignal-scope: agent`,
`x-foresignal-permission: None`), so the section's `writePermissions` is empty — anyone who can see
it can compose. Route tree: `/editions` (list), `/editions/new` (create), `/editions/:briefingId`
(edit), registered in the router's desktop section map.

- **`editions_screen.dart`** — the list (`listBriefings`): name, enabled/paused, schedule +
  timezone, output language, last-run status chip, owner (shared vs user-owned). A **New Edition**
  button and row-tap both open the composer.
- **`edition_composer_screen.dart`** — the composer, create and edit:
  - **Edition:** name (required), enabled, cron `schedule` (required, 5-field validated) +
    `timezone`, `mode` (digest / LLM), `instructions`, `outputLanguage` (BCP 47, empty = owner
    default).
  - **Feed & sections:** a source/kind picker reusing the **source catalog** (`listSources`) as
    `FilterChip`s, so the operator picks the feed visually; `placeIds`, saved `viewId`, `lookback`,
    `maxItemsPerKind`, and the source-health and weekly alert-quality section toggles — the
    `BriefingScope`.
  - **Spoken edition:** a `voice` and `mp3`/`opus` format bound to `audio` (null = text only).
  - **Preview / Run now / Save / Delete.** `previewBriefing` (POST `/v1/briefings/preview`) renders
    a sample run without enabling the schedule; `runBriefing` runs on demand; create is
    `createBriefing`, edit is `updateBriefing` then a re-read; `deleteBriefing` returns to the list.
- **`edition_preview.dart`** — `EditionPreviewCard` renders a `BriefingRun`: status/mode/audio/
  breaking chips, the `contentMarkdown` in a scrollable box, and the citations. It already honors
  the edition's `includeProvenance` / `includeCorroboration` flags (shows each item's `provenance`
  / `corroboration`), so **NP-004 only has to add the toggles** — "reflect the toggle in the
  preview (NP-003)".

## Edit preserves what it does not touch

The save body is built by **overlaying** the edited fields on the loaded edition (minus the
read-only server-owned members: `id`, `createdAt`, `updatedAt`, `nextRunAt`, `lastRunAt`,
`lastRunStatus`, `warnings`, `ownerUserId`). So an edition's **NP-004** members — `deliveryTargets`,
`site`, `breakingNews`, `includeProvenance`, `includeCorroboration`, `channelIds` — survive a
NP-003 edit untouched, per "never remove functionality". A test asserts this.

## Ownership — a contract gap

The prompt: "Assigning an edition to a user is the operator's (`users.manage`)". The 2.1.0 contract
does **not** allow it: `Briefing.ownerUserId` is **`readOnly`** — "the creating user for a signed-in
session, null for a briefing created with an API token". `BriefingInput` carries no owner field, so
there is no endpoint or field to assign an edition to another user. The list shows owner (shared vs
user-owned) read-only; assignment is not buildable against this contract.

### Question for the owner

1. **Owner assignment.** Given `ownerUserId` is read-only and `BriefingInput` has no owner field,
   there is no way to assign an edition to a specific user from the admin console. Is owner
   assignment expected to arrive in a later backend prompt, or is the creating-session ownership
   the intended model? I built owner as a read-only column.

## Tests written (not run)

`test/features/editions/editions_test.dart` (a self-contained in-memory editions backend delegating
to `sourcesBackend` for the shell and the source catalog):

- the list shows editions and the New button;
- **create** round-trips the feed (`scope.sources`), schedule and output language; the store gains
  the edition;
- **preview** posts the composed edition to `/v1/briefings/preview` and renders the run card;
- **edit preserves** `deliveryTargets`, `site.shareable` and `includeProvenance`, and does not send
  back `ownerUserId`/`id`;
- an edition with no name is refused before any request;
- **delete** removes the edition and returns to the list.

## Build gate

- `flutter analyze`: **clean**.
- `flutter build linux --debug` (capped): **succeeded**. Release not run for the host-memory reason
  in the NP-001 CR.
