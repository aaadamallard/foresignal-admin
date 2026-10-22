# 012 — Alerts-Triggers-Escalation

**Goal.** Author the rules that turn signal into alerts, and work the alert inbox.

**Read first.** [Screens.md](../docs/Screens.md) §G; 002-CR (SSE); 003-CR.

**Build.**
- **Trigger rules:** author / edit / test / mute, scoped to a view/situation/watchlist — the `Triggers`
  operations (`listTriggers`, `createTrigger`, `updateTrigger`, `testTrigger`, `muteTrigger`; confirm
  the exact operationIds in `openapi/OpenAPI.json`).
- **Alert inbox (desktop + mobile):** `listAlerts`, `getAlert`, `acknowledgeAlert`, `snoozeAlert` /
  `unsnoozeAlert`, `resolveAlert`, `setAlertFeedback`, and **live** `streamAlerts` (SSE).
- **Escalation policies:** `listEscalationPolicies`, `getEscalationPolicy`, `createEscalationPolicy`,
  `updateEscalationPolicy`, `deleteEscalationPolicy`, `getAlertEscalation`.
- **Channels:** `listChannels`, `listChannelTypes`, `getChannel`, `createChannel`, `updateChannel`,
  `deleteChannel`, `testChannel`, `listChannelDeliveries`.
- **Watchlists:** the `Watchlists` operations that scope triggers/alerts.

**Done when.** `flutter analyze` clean, build succeeds; a trigger can be authored and tested, the inbox
updates live and alerts can be acked/snoozed/resolved, and a channel sends a test. Write tests (do not
run them).

**Commit.** `012: Alerts-Triggers-Escalation` + `completion-reports/012-CR-*.md`. Stage only this
prompt's files.
