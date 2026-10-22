# 014 — Serving-Egress-Peers

**Goal.** Configure how the engine serves data out — sinks, exports/archive, and multi-instance peering.

**Read first.** [Screens.md](../docs/Screens.md) §I; 003-CR.

**Build.**
- **Sinks:** `listSinks`, `listSinkTypes`, `getSink`, `createSink`, `updateSink`, `deleteSink`,
  `testSink`, `getSinkStatus`, `resyncSink`.
- **Exports & archive:** `listExports`, `createExport`, `getExport`, `deleteExport`, `getExportManifest`,
  `createSnapshot`, `createPack`; `getArchiveCatalog`, `listHolds`, `createHold`, `deleteHold`,
  `getArchiveSettings`, `updateArchiveSettings`. (Downloads are backend-mediated; the app links to
  `downloadExport`, it does not stream bytes itself.)
- **Peers & federation:** `listPeers`, `createPeer`, `updatePeer`, `deletePeer`, `testPeer`,
  `rotatePeerIngestKey`, `resyncPeer`; `getFederationInfo`.

**Done when.** `flutter analyze` clean, build succeeds; a sink can be created/tested and its status
shown, an export started and listed, and a peer registered/tested. Write tests (do not run them).

**Commit.** `014: Serving-Egress-Peers` + `completion-reports/014-CR-*.md`. Stage only this prompt's
files.
