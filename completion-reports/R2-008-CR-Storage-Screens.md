# R2-008 — Storage-Screens — completion report

**Implementation commit:** `c6cb210e5e229408ccd25efd64c42602539aec6a`

**Status:** Complete. The release build was killed by earlyoom twice; the debug build succeeded (see Verification).

## What was built

- **Contract re-vendored**, because the committed backend contract changed after R2-007.
  - Source: `../foresignal` commit `66babdde7c3fc16550314f31033d75470e0cc0f6` (2026-10-26 18:39:47 -0500, "R2-022: Direct satellite reception"), the last commit to touch `docs/OpenAPI.json`. It was taken from the committed `HEAD` (`6de77369`). New sha256 `217323f0c7f73a5814f00c1e157eb727339ccac5aa4f887f1453dc26ca48818c`. `info.version` is still `2.0.0`.
  - A JSON comparison found:
    - no operations added or removed, and no status changes;
    - three aggregator operations changed (`listAggregators`, `testAggregator`, `updateAggregator`);
    - no schema changes outside the docs.
  - Client regenerated (7.26.0): 3 changed files (`aggregators_api.dart`, `aggregator.dart`, `aggregator_config.dart`). Nothing was hand-edited.
- **A new Storage section** (`/storage`; desktop; read and write need `storage.manage`), placed before Users in the nav. It has four tabs, each its own route: Resources, Retention, Archive and Backup.
- **Resources** (`/storage`):
  - **Live gauges.** `getResourceStatus` drives the disk, memory and database gauges.
    - It is re-read every 5 s while the tab is shown. A read is skipped while one is in flight.
    - Each gauge shows used and free amounts and its own status, plus any `warnings` codes.
    - A failed read keeps the last values and the gauges are marked **Stale**, with the error shown.
  - **Thresholds.** These are edited per resource (disk, memory) and per level (warn, critical).
    - Each level has an on/off switch, a free-percent slider and an optional free-GB amount.
    - Critical must be below warn.
    - The alert channels are chips from `listChannels`.
  - `updateResourceThresholds` replaces the whole value, so the members this build does not edit (`sourceStorm`, the backlog) go back as read. The save is confirmed by re-reading.
- **Retention** (`/storage/retention`): the history cap.
  - The controls are `capHistory` (off by default), `maxDays`, `maxDbGb` and `overwriteOldest`.
  - **Every save and every run shows `previewRetention` first.**
    - The preview lists what would be pruned: subsystem and kind, cutoff, rows and size, a total, and the database cap as the next run would find it.
    - It must be confirmed before anything is sent.
  - The save PUTs the whole retention object: the per-subsystem windows go back unchanged, because `updateRetention` replaces the whole object. It is confirmed by re-reading. **Run Retention Now** POSTs `runRetention` and shows the result.
- **Archive** (`/storage/archive`):
  - **The archive target.** The existing archive settings form now offers three targets:
    - External disk (`local`), S3 (`s3`) and S3 Glacier (`glacier`).
    - A storage class (the contract's eight values). GLACIER and DEEP_ARCHIVE are required for a Glacier target and refused for a plain S3 target.
    - **Cutoff** and **Schedule** fields.
    - An "Archive, then purge" note.
  - **Run Archive.** It takes an optional past cutoff date and a **dry run** option (on by default). A confirm comes before `runArchive`. The result shows the row count.
  - **Archives** (`listArchives`, which follows `nextCursor`): the inventory.
    - Columns: created, status, target, cutoff, rows, size, and whether the data is still in the database.
    - A purged segment has **Restore**, which is confirmed before `restoreArchive {confirm: true}`. The confirm warns that a Glacier segment is thawed first.
- **Backup** (`/storage/backup`):
  - **Settings** (`getBackupSettings` / `updateBackupSettings`):
    - on/off, a six-field UTC cron schedule, and the target (data directory, external disk with an absolute path, or S3 with endpoint, bucket, prefix, region and path-style);
    - keep count (1–10000; empty keeps every backup) and include configuration.
    - Confirmed by re-reading.
  - **S3 keys are write-only.** The fields start empty and are obscured. They are sent only when typed, then cleared. The page shows only **Access key: set / not set** and **Secret key: set / not set**, from `secretsSet`.
  - **Back Up Now.** It takes a type (or as configured) and an optional label, with a confirm before `runBackup`.
  - **Backups** (`listBackups`): the history. A complete backup has **Restore**.
    - The restore warning spells out what it replaces: for a database backup, every table is replaced with the backup from that date, and everything written since is lost. It tells the operator to pause collection first and restart the server afterwards.
    - The Restore button stays disabled until the backup id is typed. Then `restoreBackup {confirm: true}` is sent.

## Omitted or adapted, and why

- **The retention preview reflects the saved policy, not the edits.** The contract's `previewRetention` takes no parameters. Before a save, the preview shows what the policy now saved would prune, and the confirm says so. It is re-read under the new cap before any run.
- **The archive settings form used to drop members it did not edit.** `ArchiveDraft` now keeps the settings as read and sends every member back, with the new `cutoff`, `schedule` and `s3.storageClass` included. Before this change, a save from the Serving → Archive tab would have cleared a cutoff or schedule set elsewhere. The write-only secrets and `secretsSet` are still never echoed.
- **The per-subsystem retention windows stay on Usage → Retention.** The Storage tab links to them in text rather than duplicating the editor.

## Owner questions

1. **Every storage operation except `runRetention` is `x-foresignal-status: planned`.** Until the backend ships them, each card shows the backend's error on-screen.
2. **Release builds no longer fit next to the current workload.** `flutter build linux` (release) was killed twice by earlyoom. The journal shows the Dart frontend at 9161 MiB and 8515 MiB RSS. `free -h` showed 12 Gi of 23 Gi already in use. Do you want me to keep falling back to `--debug` for the remaining prompts, or wait for memory to be freed?

## Wire spellings found and left alone

`capHistory`, `maxDays`, `maxDbGb`, `overwriteOldest`, `warnFreePercent`, `criticalFreePercent`, `warnFreeBytes`, `criticalFreeBytes`, `alertChannels`, `storageClass`, `purgedFromHot`, `secretsSet`, `includeConfig`, `keepBackups`, `pathStyle`, `dryRun`, and the storage-class values (`STANDARD_IA`, `DEEP_ARCHIVE`…). All are US English.

## Secrets

None stored. The backup S3 access and secret keys are held only in obscured fields until the request is built, then cleared. They are never shown and never logged; the page shows only `secretsSet`. The archive S3 keys are unchanged from v1.

## Instructions found in data

None.

## Verification

- `flutter pub get`: dependencies resolved.
- `flutter analyze`: "No issues found!", before and after the re-vendor.
- **`flutter build linux` (release) failed twice:** "ERROR: Target kernel_snapshot_program failed: Exception". `journalctl` shows the cause:
  - `earlyoom: sending SIGTERM to process 1054505 … "dart:frontend_s" … VmRSS 9161 MiB`
  - `earlyoom: sending SIGTERM to process 1060286 … "dart:frontend_s" … VmRSS 8515 MiB`
- **`flutter build linux --debug` succeeded:** "✓ Built build/linux/x64/debug/bundle/foresignal_admin".
- **US English.** A grep of the added diff lines and the new storage files for common British spellings found none.
- Tests were written and **not run**, per the run rules. They are in `test/features/storage/storage_screens_test.dart`:
  - the gauges show disk, memory and database, then go Stale when a read fails;
  - thresholds save the whole object (unedited members kept) and are re-read;
  - a cap save shows the preview first, and PUTs only after the confirm, with the windows kept;
  - a retention run is previewed, and runs only after the confirm;
  - the archive inventory renders, and its run (dry run, cutoff) and restore fire only after a confirm;
  - a future cutoff is refused before anything is sent;
  - backup secrets show only set/not set, and a typed key is sent once and then cleared;
  - a backup runs after a confirm, and a restore needs the id typed.
