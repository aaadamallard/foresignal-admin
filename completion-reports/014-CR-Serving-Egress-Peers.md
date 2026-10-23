# 014 — Serving-Egress-Peers — completion report

**Implementation commit:** `dc0beec09da915953b8fe83d2943ce60c191da8e`

## What was built

**Serving section (`/serving`, desktop).** It has four tabs, each with its own route: Sinks, Exports, Archive and Peers. They use the same route-driven tab bar as Alerts. There is no Serving mock in `design/`, so the pages follow the style already established. All 30 operations the prompt names are called. Every write is confirmed by reading back.

- **Sinks** (`listSinks`, `listSinkTypes`).
  - The **sinks table** shows each sink's name and id, type, delivery (state mirror or change feed · push or serve), state and last update.
  - The **Sink Types** card lists each type's kind, modes, secret fields and description.
- **Sink page** (`/serving/new-sink`, `/serving/sinks/:sinkId`).
  - **New sink.** Pick a type first. The config then starts from the type's JSON schema: each required property gets its default, else the enum's first value, else an empty value of its type. The schema's properties are listed beside the config, with their types, defaults and descriptions.
  - **Settings** (`createSink`, `updateSink`, `getSink`):
    - id, name and enabled;
    - the config as a JSON object;
    - one obscured field for each of the type's secrets, with **Remove** and **Keep** for stored ones;
    - the filter: sources, kinds, bounding box, place, watchlist and private sources.

    A save is confirmed by `getSink`, including that `secretsSet` matches what was typed or removed.
  - **Status** (`getSinkStatus`):
    - state, lag, last delivered, last error and failing-since;
    - connected clients for serve sinks;
    - records the egress guard denied, by reason and by source.

    **Resync** (`resyncSink`) asks first.
  - **Test** (`testSink`): a kind and a timeout. The result names the phase that failed.
  - **Delete** (`deleteSink`) asks first and confirms the sink is gone.
- **Exports** (`listExports`): jobs filtered by kind and status, with **Load more** on the cursor. The list polls every 3 s while any job is queued or running.
- **New job** (`/serving/new-export`), one form for each kind:
  - **Export** (`createExport`): format, mode (current, history, as of an instant, at a seq), time field and range, scope, a field allowlist, flatten, private, and personal use. GPX is refused unless the mode is history.
  - **Snapshot** (`createSnapshot`): at a seq or an instant (not both), scope, and an expiry.
  - **Pack** (`createPack`): a bounding box or place, zooms 0–14 in order, vector layers, a raster frame, or both. A 413 `PACK_TOO_LARGE` shows its problem panel.
- **Job page** (`/serving/exports/:exportId`, `getExport`). It polls while the job is active.
  - The summary covers status, progress, rows, size, the spec, and the license summary: each license with its sources and rows, the attributions, and what was left out with the reason.
  - **Downloads** (`downloadExport`) shows the absolute URL of each file and of the zip bundle (`?bundle=zip`). Each has a copy button and there is a curl example. The app links to the download and does not stream bytes.
  - **Manifest** (`getExportManifest`) loads on request. `EXPORT_NOT_READY` shows its own panel.
  - **Delete** (`deleteExport`) cancels an active job or deletes a finished one, after asking. For a canceled job, it accepts the job staying listed with the canceled status.
- **Archive.**
  - **Settings** (`getArchiveSettings`, `updateArchiveSettings`):
    - enabled, target (local or S3), directory, sources and keep-local;
    - for S3: the endpoint, bucket, prefix, region and path style, plus write-only access and secret keys.

    A save is confirmed by reading back, including `secretsSet`.
  - **Holds** (`listHolds`, `createHold`, `deleteHold`):
    - the table shows each hold's name and reason, what it covers, its bounds, the rows and bytes held, and when it expires;
    - **Add Hold** validates the name and reason, instants, and seqs in order;
    - a delete asks first and is confirmed by re-listing.
  - **Catalog** (`getArchiveCatalog`): filtered by source and date range, with Load more. Opening a partition shows its files, sizes, checksums, where each is stored and when it was uploaded, and its license summary.
- **Peers** (`listPeers`, `getFederationInfo`).
  - **This Instance** shows what peers see: name, instance id and key-set URL (each with copy), version, capabilities and clock.
  - The **peers table** shows each peer's name and base URL, mode, state, last seq, lag, reliability and last update.
- **Peer page** (`/serving/new-peer`, `/serving/peers/:peerId`, `getPeer`).
  - **Settings** (`createPeer`, `updatePeer`):
    - id, name, base URL, mode (pull or receive, fixed once created) and enabled;
    - the remote token, which is required to register a pull peer;
    - the Admiralty reliability grade and same-operator;
    - a write-only exchange key, with Remove;
    - the selection: sources, kinds, bounding box, place, maximum age, backfill, live, hop limit and track TTL.

    A save is confirmed by `getPeer`, including `exchangeKeySet`.
  - **Replication:**
    - the health panel (a key-mismatch panel explains a stopped peer);
    - state, last seq, lag, last error, the remote instance, the pinned key, whether a token and an exchange key are set, the ingest key prefix and sources;
    - for pull peers: **Resync** (`resyncPeer`), which asks first, and **Re-pin Key**, which asks first, is offered only when a key is pinned, and saves the peer with `pinnedKid: null` so the next verified contact is trusted.
  - **Test** (`testPeer`): reachability, latency, signature, and whether the key matches the pin. A first successful test pins the key (TOFU).
  - **Ingest Key**, for receive peers (`rotatePeerIngestKey`): it asks first, then shows the new key **once** with copy.
  - **Delete** (`deletePeer`) asks first.
- **Shared changes.** `lib/core/routes.dart` and `lib/core/router.dart` gained the serving routes.
- **Preview fake.** The preview gained `tool/preview/preview_serving.dart`, a contract-shaped fake for every operation above:
  - jobs that move from queued to running to done over 10 s;
  - the 413 for a pack;
  - a key-mismatched peer that a re-pin clears.

## Omitted or adapted, and why

- **Not built** (each is in the contract under these tags but not in the prompt's list):
  - `listHoldVersions`, `createPlacePack`, `createProductExport` and `downloadExportFile`;
  - the federation data plane: `listFederationChanges`, `streamFederation`, `getFederationSnapshot`, `federationIngest`, `getFederationBundle`, `receiveFederationBundle` and `receiveChronicleSketches`. These are instance-to-instance operations, not admin screens.
- **`getPeer` is used although the prompt does not list it.** It is the peer page's read and its write confirmation.
- **`updatePeer` and Re-pin are sent as plain JSON** through `jsonCall`. The generated serializer drops top-level null members, and both need to send nulls: `pinnedKid: null` to re-pin, and `exchangeKey: null` to remove the key. Sinks and archive settings use the generated client. A probe confirmed that `SinkUpdate` keeps a null secret, because it is nested.
- **Downloads are links and not opened.** The app has no URL launcher (`grep url_launcher pubspec.yaml` finds nothing) and the prompt says to link, not stream. The URLs are copied, with a curl example. They need the admin token, and the app never puts the token in the example.
- **The archive catalog is paged by the contract's cursor.** There is no per-partition read, so a partition opens from the listed row.
- **The fake's sink config schemas are illustrative.** The contract types `configSchema` as a JSON object and names no types. The six types in the preview (MQTT state, Cursor on Target, CloudEvents webhook, readsb JSON, SBS BaseStation, NMEA AIVDM) are invented to exercise the form.
- **Noticed and not changed** (it is outside this prompt). The 012 forms are keyed by `updatedAt`, so they are rebuilt whenever the list refreshes after a save, and lose their "Saved" line. 013 fixed the same thing in the push provider form. The affected forms are:
  - `lib/features/alerts/channels.dart:320`
  - `lib/features/alerts/triggers.dart:214`
  - `lib/features/alerts/escalation.dart:145`
  - `lib/features/alerts/watchlists.dart:332`

## Owner questions

- **Should the app open downloads and links itself?** Adding `url_launcher` would let Downloads, and the 013 notification links, open in the browser. The download still needs the bearer token, which a browser link cannot carry. **Should the backend offer signed or short-lived download URLs?**
- **Should the contract give `PeerUpdate` an explicit way to re-pin?** Today a re-pin means sending `pinnedKid: null` in a full replace, which the generated client cannot express.

## Wire spellings found and left alone

These are the contract's own names. They sit in `us-english-allow` regions and are not changed:

<!-- us-english-allow-start: names contract wire values it must not respell -->

- `licenceSummary`, `licences` and `licence`: export, job and partition members (`serving_drafts.dart` and the preview fake).
- `CANCELLED`: an `ExportJob.status` value. The UI shows it as "Canceled".
- The egress guard's denied-reason codes, which use the contract's spelling: `serving_widgets.dart`, which shows them in US English.

<!-- us-english-allow-end -->

Two comments that quoted these names were reworded to avoid them. After that the scanner reported "0 British spellings".

## Secrets

- Sink secrets, the S3 access and secret keys, the peer token and the peer exchange key are all write-only.
  - They are sent only when typed, or as null when removed.
  - Their fields are obscured and cleared after a save.
  - The app shows only which secrets are set (`secretsSet`, `exchangeKeySet`, token set).
- The ingest key is shown once after rotation, with copy. Afterwards only its prefix is shown.
- Nothing is stored in the app or logged. The curl example uses the placeholder `<admin token>`.
- The preview fake's keys are random strings made at run time, plus the made-up prefix `fsp_k3Zq`.

## Instructions found in data

None. A search of `openapi/OpenAPI.json` for instruction-like text (`ignore previous`, `you must`, `as an AI`, `Claude`, `system prompt`) found only:

- a description of the anthropic provider's temperature;
- descriptions of the LLM prompt-template feature.

Neither addresses the reader.

## Verification

- `flutter pub get`: dependencies resolved.
- `flutter analyze`: no issues.
- `flutter build linux`: built.
- `check_us_english.py` over lib, test, tool, review and completion-reports printed "0 British spellings".
- `test_us_english.py`: 14 tests, OK (173.6 s).
- Tests were written and **not run**, per the run rules:
  - `test/features/serving/serving_drafts_test.dart`: bounding boxes, integer checks, the config template and fields, the sink, export, snapshot, pack, hold, archive and peer drafts, and the test texts.
  - `test/features/serving/serving_screens_test.dart`:
    - the sinks tab;
    - adding a hold, and one refused without a reason;
    - a failed peer test and the re-pin body;
    - Re-pin hidden for a receive peer;
    - an ingest-key rotation;
    - registering a pull peer, refused without its token.
- Checked by hand in the preview build on the private Xvfb display, with real clicks and typing:
  - **Dark theme:**
    - **Sinks.** A Cursor on Target serve sink was created, saved and confirmed, then tested ("Passed"), with its status shown. A failing webhook showed its error and denied counts.
    - **Exports.**
      - An export started, polled from Queued to Running to Done, its manifest loaded, the download URLs were shown, and the job listed.
      - A pack over the size limit was refused with `PACK_TOO_LARGE`.
    - **Archive.**
      - Settings were saved and confirmed, with the access key cleared.
      - A hold was added, then deleted after confirming.
      - The catalog was filtered and a partition opened.
    - **Peers.**
      - A peer was registered and tested, and its key TOFU-pinned.
      - The mismatched peer failed its test, was re-pinned, and passed a retest.
      - A receive peer's ingest key was rotated and shown once.
  - **Light theme:** the sinks tab, the peers tab, and a failed peer test.
- **Not checked by hand:** deleting a sink, peer or job; Load more; resyncing a sink or peer; and the snapshot form.
- Fixed after looking at the screens:
  - the Exports list failing ("Unexpected response") because the fake's license terms lacked required fields. The fake was fixed, and one bad item failing the whole list is noted;
  - the holds table overflowing;
  - the partition detail opening off-screen below the catalog;
  - a config template that gave an enum field an empty string;
  - the peer test text running the error into the list ("…the pin, The peer signs…") and repeating "Failed" under "Test failed". `014-peer-key-mismatch.png` predates this fix; `014-peer-test-failed-light.png` shows it fixed;
  - Re-pin offered for a peer with nothing pinned;
  - copy buttons stranded at the far edge, away from their values.
- Screenshots in `review/`:
  - Sinks:
    - `014-sinks.png`
    - `014-sinks-light.png`
    - `014-sink-new.png`
    - `014-sink-created-tested.png`
    - `014-sink-test.png`
  - Exports:
    - `014-exports.png`
    - `014-job-running.png`
    - `014-job-done-manifest.png`
    - `014-job-downloads.png`
    - `014-exports-listed.png`
    - `014-pack-too-large.png`
  - Archive:
    - `014-archive-settings.png`
    - `014-archive-saved.png`
    - `014-holds.png`
    - `014-hold-added-delete-confirm.png`
    - `014-catalog-partition.png`
  - Peers:
    - `014-peers.png`
    - `014-peers-light.png`
    - `014-peer-registered-tested.png`
    - `014-peer-key-mismatch.png`
    - `014-peer-test-failed-light.png`
    - `014-peer-repinned.png`
    - `014-ingest-key-rotated.png`
