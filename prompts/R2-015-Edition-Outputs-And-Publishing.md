# R2-015 — Edition outputs & publishing

**Goal.** Configure **how an edition is delivered and published**: the output targets (email, push,
alerts), the hosted + shareable website, breaking-news triggers, and the provenance/corroboration
badges. This is "define the various ways we want the output formatted… email, push, a website the
user sees, alerts" from the control plane.

**Depends on.** R2-014 (edition composer), R2-012 (2.1.0 vendor), R2-002 (gating). Backend `R2-031`
(targets), `R2-032` (hosted/shareable site), `R2-033` (breaking-news), `R2-034` (provenance) provide
the operations and fields.

**Read first.** The vendored `DeliveryTarget`, `BreakingNewsConfig`, `EditionSite` schemas and the
edition's `includeProvenance`/`includeCorroboration` fields; `lib/features/notifications/` /
`lib/features/alerts/` (existing channels) and the hosting/share-link surfacing pattern.

**Operations.** `getEditionSite` (canonical/feed-key/share URLs), the channels list
(`listChannels`/`listChannelTypes`) to bind targets, and the edition update endpoints to persist
`deliveryTargets`, `breakingNews`, `site` and the provenance flags.

**Build.**
- **Output targets.** Add/remove `deliveryTargets` on an edition: **email**, **push**, **alert**
  (bound to existing channels) and **website**/**podcast**. Each target names its format; audio-capable
  channels get the spoken edition (reuse the channel audio support). Channel secrets stay in the
  backend.
- **Website.** Show the edition's **hosted site** URL (`getEditionSite`) and a **shareable read-only**
  link the operator can issue/revoke, with a copy affordance — the "website the user sees".
- **Breaking news.** Edit `BreakingNewsConfig` (enable, which trigger rules, min severity, cooldown)
  so a matching alert fires an off-schedule edition.
- **Badges.** Toggle `includeProvenance` / `includeCorroboration`, so each item shows why it is in
  the paper and how corroborated it is; reflect the toggle in the preview (R2-014).
- Test before trust: after configuring a target, a test send / re-read confirms it, and the site URL
  is fetched to confirm it renders.

**Done when.** `flutter analyze` clean and `flutter build linux` succeeds; an operator can attach
email/push/alert targets, see and share the hosted site URL, set breaking-news triggers, and toggle
the provenance/corroboration badges — a complete automated newspaper configured end to end. Write
tests (do not run): a target persists and maps to a channel; the share URL issues and revokes;
breaking-news config round-trips; the badge toggles persist.

**Commit.** `R2-015: Edition-Outputs-And-Publishing` + `completion-reports/R2-015-CR-*.md`. **Stage
only this prompt's files.**
