# 013 — Notifications-And-Push

**Goal.** The notification inbox and both push paths — Web Push and native (the mobile companion's
lifeline).

**Read first.** [Screens.md](../docs/Screens.md) §H; 002-CR (SSE); 003-CR.

**Build.**
- **Notification inbox (desktop + mobile):** `listNotifications`, `getNotification`,
  `getNotificationBadge`, `markNotificationsRead`, live `streamNotifications` (SSE), `executeAction`,
  `getActionConfirm`, `updatePresence`.
- **Web Push:** `getVapidPublicKey`, `createPushSubscription`, `listPushSubscriptions`,
  `verifyPushSubscription`, `deletePushSubscription`.
- **Native push:** providers configured on desktop — `listPushProviders`, `putPushProvider`,
  `deletePushProvider`, `testPushProvider`; devices registered by the mobile companion —
  `registerPushDevice`, `listPushDevices`, `updatePushDevice`, `testPushDevice`, `deletePushDevice`
  (FCM/APNs; provider secrets go to the backend, never stored in-app).

**Done when.** `flutter analyze` clean, build succeeds; the inbox updates live and marks read, a native
push provider can be configured and test-sent, and a device registers. Write tests (do not run them).

**Commit.** `013: Notifications-And-Push` + `completion-reports/013-CR-*.md`. Stage only this prompt's
files.
