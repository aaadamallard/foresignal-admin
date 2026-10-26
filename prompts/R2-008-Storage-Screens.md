# R2-008 — Storage, retention, archival & backup

**Goal.** The operator's storage-lifecycle control plane: **live disk/memory/DB gauges** with the
**threshold slider**, a **retention cap** control with a prune **preview**, **cold-storage archival**
config + inventory, and **backup/restore** (run, schedule, history). One `storage.manage`-gated area
over the backend's resource/retention/archive/backup machinery.

**Depends on.** R2-002 (gating). Backend-landed across prompts **R2-014…R2-017** (disk/resource
monitoring, retention control, cold-storage archival, backup/restore); the client carries the
operations from the 2.0.0 vendor. Re-vendor `../foresignal/docs/OpenAPI.json` only if it changed since
R2-002.

**Read first.** The v2.0 roadmap Part B (B1 monitoring + thresholds, B2 retention, B3 archival, B4
backup); 007-CR (the existing retention/rate-limit panels under `lib/features/usage/`) and 015-CR (the
existing settings-export/import, which is config backup, distinct from the DB backup here);
`lib/core/ui/` (`section_card`, `data_table_card`, `write_confirm`, a gauge/bar primitive like
`reliability_bar` / `stacked_bar_chart`).

**Operations.** Resources: `getResourceStatus` (disk/memory/database gauges + warnings),
`getResourceThresholds` / `updateResourceThresholds` (the slider + alert channels). Retention:
`getRetention` / `updateRetention` / `runRetention`, and `previewRetention` (what a cap would prune).
Archive: `listArchives`, `runArchive`, `restoreArchive`, `getArchiveSettings` / `updateArchiveSettings`.
Backup: `listBackups`, `runBackup`, `restoreBackup`, `getBackupSettings` / `updateBackupSettings`.

**Build.** A `storage.manage`-gated **Storage** area (a new nav section or a tabbed group under System —
match the existing System tab idiom), with four tabs:
- **Resources.** Live gauges for **disk**, **memory**, and **database** from `getResourceStatus`
  (polled while the tab is open, the 018 gauge idiom — poll, skip a read while one is in flight, keep
  the last snapshot marked *Stale* on a failed read), with the server's `warnings` shown. The
  **threshold slider**: `getResourceThresholds` → a warn threshold and a critical threshold for free
  disk (% / GB) and memory, plus which **alert channels** fire on a breach (ties into the channel
  system) → `updateResourceThresholds`, re-read to confirm.
- **Retention.** A **cap-history** checkbox (default **off** — keep everything) and a single knob: keep
  at most N days and/or keep the DB under N GB, overwrite-oldest-first, driving `updateRetention` over
  the per-subsystem windows. Before saving, `previewRetention` shows **what would be pruned** (counts /
  sizes per subsystem) so the operator sees the consequence first. `runRetention` runs it now behind a
  `write_confirm`.
- **Archive.** `getArchiveSettings` → configure the **archive target** (external disk first; S3/Glacier
  the same shape), the cutoff age, and the schedule → `updateArchiveSettings`. `runArchive` kicks an
  offload (select-older-than → export + checksum → mark archived → purge-from-hot) behind a confirm;
  `listArchives` is the **inventory** (id, cutoff, target, size, item count, checksum,
  purged-from-hot, restored-at); `restoreArchive` pulls one back. When a target is configured, make
  clear archival is archive-then-purge rather than hard-delete (the retention tie-in).
- **Backup.** `getBackupSettings` → DB-backup **target**, **schedule**, and how many to keep →
  `updateBackupSettings`. `runBackup` now; `listBackups` the **history** (id, type, status, size,
  target, checksum, label); `restoreBackup` restores one behind a strong `write_confirm` (this is a
  destructive, instance-wide action — spell out what it replaces). Backup/archive target secrets (e.g.
  S3 keys) go to the backend, never the app; the app shows only `secretsSet`.

**Done when.** `flutter analyze` is clean and `flutter build linux` succeeds; the Storage area appears
only with `storage.manage`; the gauges poll live, the thresholds save and re-read, the retention cap
shows a preview before saving and can run, archival configures/runs/lists/restores, and backup
runs/lists/restores behind confirms. Write tests (do not run them): the gauges render disk/memory/DB
from `getResourceStatus` and go *Stale* on a failed read; `updateResourceThresholds` round-trips;
`previewRetention` is shown before `updateRetention`/`runRetention`; archive and backup lists render and
their run/restore actions fire behind confirms; secret fields show `secretsSet` only.

**Commit.** `R2-008: Storage-Screens` + `completion-reports/R2-008-CR-*.md`. **Stage only this prompt's
files.**
