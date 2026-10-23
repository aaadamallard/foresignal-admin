# 013 — Notifications-And-Push — completion report

**Implementation commit:** `044550f92c9c0b45a8a7a6ae9ceba7e017415dc9`

## What was built

**Notifications section (`/notifications`).** Desktop has three tabs, each with its own route: Inbox, Native Push and Web Push. They use the same route-driven tab bar as Alerts. The mobile companion shows the inbox alone, and registers itself for push on its own **Device** page (`/device`, already in the mobile nav). Every page header carries this device's presence line.

All 22 operations the prompt names are called, and every write is confirmed by reading back.

- **Device id.** This is new in `lib/core/device_id.dart`.
  - The backend keys read state and presence on a client-chosen `Foresignal-Device-Id`. The app makes a version 4 UUID on first use and keeps it in `shared_preferences` under `foresignal.deviceId`. It is not a secret.
  - The id is sent on every notification call and on the SSE stream. For the stream, `SseClient.connect` gained a `headers` parameter.
- **Inbox** (`listNotifications`, `getNotificationBadge`, `streamNotifications`). Desktop and mobile.
  - Filters: Unread / All chips, an event dropdown, and a lowest-severity dropdown.
  - **Live** over `streamNotifications`:
    - `notification` events are merged by id, newest first, with a **New** marker;
    - `badge` events update the unread and critical counts;
    - the indicator is the inbox's own, now the shared `LiveIndicator`, reading Connecting…, Live, or Not live with Reconnect.
  - **Mark read** (`markNotificationsRead`): per row by `ids`, or **Mark All Read** by `upToId` up to the latest. Rows that leave the Unread view drop out.
  - Desktop shows a table and mobile shows cards. Both have **Load more** on the cursor.
- **Notification page** (`/notifications/inbox/:notificationId`, `getNotification`). Opening it marks it read.
  - **Summary:** severity, event · subtype, received, read state, and the alert with its state (it links to the alert page). The body is shown as text.
  - **Links:** each with a copy button.
  - **Act on the alert:** one button for each minted capability (Acknowledge, Snooze, Mute, Useful, Noise).
    - A button asks first. Then it checks the capability with `getActionConfirm`, which never acts, and runs it with `executeAction`.
    - The token is taken from the action URL and sent to the configured backend.
    - A used or expired capability (410) shows **Action expired** with Refresh. The result (for example "Acknowledged", or "Already acknowledged") stays on screen after the page reloads.
- **Presence** (`updatePresence`). The app shell reports `desktop` or `mobile`, mapping lifecycle states to `active`, `idle` or `background`, with a 180 s TTL.
  - It reports on connect, on each lifecycle change, and every 120 s.
  - A refusal shows as "Presence not reported", with the reason in a tooltip.
- **Native Push** (desktop).
  - **Providers** (`listPushProviders`): type, app ids, key, the secrets set, status and last test. **Add Provider** and **Configure** open the provider page.
  - **Provider page** (`/notifications/push/new-provider`, `/notifications/push/providers/:providerId`, `putPushProvider`):
    - APNs: team id, key id, key environment, time sensitive, and the `.p8` key.
    - FCM: the service-account JSON. The project id and client email are taken from it when left empty. The token endpoint defaults to Google's.
    - Saving is confirmed by re-listing.
    - **Test** (`testPushProvider`): credential only, or sent to a chosen registered device.
    - **Delete** (`deletePushProvider`) asks first.
  - **Devices** (`listPushDevices`): name, platform and app, transport and environment, token suffix, what it receives, and last sent with failures. **Test** (`testPushDevice`) shows its outcome as an icon, with the words on hover. **Edit** opens the device page.
  - **Device page** (`/notifications/push/devices/:deviceId`): the summary, then **What it receives** (`updatePushDevice`: name, content level, language, events, lowest severity, tags, rules), then **Test** and **Remove Device** (`deletePushDevice`).
- **Web Push** (desktop).
  - **VAPID public key** (`getVapidPublicKey`), with copy. A 404 reads as not configured.
  - **Subscriptions** (`listPushSubscriptions`): name and endpoint host, kind · payload, what it receives, status and last sent.
    - **Verify** (`verifyPushSubscription`) takes the code from the verify push.
    - **Delete** (`deletePushSubscription`) asks first, naming the subscription.
  - **Add a subscription** (`createPushSubscription`): name, the browser's `PushSubscription` JSON (endpoint and keys, nothing else sent), kind, payload format, language and filters. It is created pending.
- **This Phone** (mobile `/device`, `registerPushDevice`).
  - The phone's token comes from Firebase Messaging: the FCM registration token on Android, and the APNs device token on iOS (sandbox in a debug build, production in a release build). The app id is the build's own: `com.foresignal.foresignal_admin` on Android and `com.foresignal.foresignalAdmin` on iOS, which `--dart-define=APP_ID` can override.
  - When no token can be had, **Enter a Token by Hand** takes the transport, environment, app id and token.
  - **Register This Phone** sends the name, content level and filters. Once the device lists back as registered, the page shows that device's card: tune, test and remove.
- **Shared changes.**
  - `jsonCall` and `jsonObjectCall` take extra `headers`.
  - `FormActions` puts its status line beneath the buttons below 520 px wide, so a failure panel on a phone gets the full width instead of a sliver.
  - The preview gained `tool/preview/preview_notifications.dart`, a contract-shaped fake for every operation above, including the live stream.

## Omitted or adapted, and why

- **`listClients` is not built.** It is in the contract but outside the prompt's list.
- **Mark-read is sent as plain JSON.** The generated `markNotificationsRead` takes its body as a `JsonObject` and hands it to dio unserialized, so it fails before sending. The preview showed "Converting object to an encodable object failed: Instance of 'MapJsonObject'". The app sends it through `jsonObjectCall` with the device header.
- **Links are copied, not opened.** The app has no URL launcher, so each link has a copy button.
- **The notification body is shown as plain text.** The contract calls it markdown, so `**bold**` shows its asterisks. There is no markdown renderer in the app.
- **There is no single read for a provider or a device.** The contract has no `getPushProvider` or `getPushDevice`, so their pages read from the lists.
- **Firebase is not initialized on desktop.** On Linux, macOS and Windows the Device page says native registration runs on Android and iOS, and offers manual entry.
- **The "Saved and confirmed" time is local, while table times are UTC.** That is the shared write-status line from earlier passes; it was not changed in this pass.

## Owner questions

- **The app has no Firebase configuration.** `find . -name google-services.json -o -name GoogleService-Info.plist` finds nothing. `android/` applies no Google services plugin. The only `.entitlements` files are macOS ones, and the iOS project has no `aps-environment` and no `UIBackgroundModes` entry.
  - Until those exist, `Firebase.initializeApp()` fails on the phone and the Device page falls back to manual entry. **Which Firebase project should the app use, and should the iOS push entitlement be added?** iOS platform judgment is yours.
- **Does the backend expect the FCM registration token or a Firebase Installation ID?**
  - `firebase_messaging` 17.0.0 deprecates `getToken()` in favor of `register()` / `onRegistered`, which yield an installation ID for direct send.
  - The contract's `PushDeviceInput.token` does not say which. The app sends the registration token, which FCM HTTP v1 sends to, with an `ignore` and a comment.
- **Is choosing the APNs environment by build mode right?** Debug → sandbox, release → production. A TestFlight build is a release build, so it would register as production.
- **The generated client cannot send `markNotificationsRead`.** The same `JsonObject` body pattern is in `muteTrigger`, `createReportBlock` and `ingestRecordsFormat`.
  - `muteTrigger` already goes through `jsonCall`. Nothing calls the other two yet.
  - **Should the contract give these bodies a named schema, or should the generator be configured to serialize `JsonObject`?**

## Wire spellings found and left alone

None in the 013 files. The scanner reports none, and no allow regions were added. The contract's 429 descriptions use the British spelling of "honor" before `Retry-After`. That text is the contract's, is not in the app, and was not touched.

## Secrets

- Provider keys (the APNs `.p8` and the FCM service-account JSON) are write-only.
  - They are sent in `secrets` only when typed, and the fields are cleared after a save.
  - The provider shows only the names the backend reports as set (`secretFields`).
  - Nothing is stored in the app or logged.
- Push tokens are sent once, to register. The app shows only the backend's six-character `tokenSuffix`.
- The device id is not a secret. It is stored in `shared_preferences`.
- The preview and test data use placeholder keys: a service account whose `private_key` is the text `PREVIEW-NOT-A-KEY`, and made-up hex tokens. The VAPID value in the preview fake is a public key.

## Instructions found in data

None.

## Verification

- `flutter analyze`: no issues.
- `flutter build linux`: built.
- `check_us_english.py` over lib, test, tool, review and completion-reports printed "0 British spellings".
- `test_us_english.py`: 14 tests, OK (174.7 s).
- Tests were written and **not run**, per the run rules:
  - `test/features/notifications/notifications_drafts_test.dart`
  - `test/features/notifications/notifications_screens_test.dart`
  - `test/core/device_id_test.dart`
  - `test/api/sse_client_test.dart`: a new case, extra headers sent on every attempt.
- Checked by hand in the preview build on the private Xvfb display, with real clicks and typing:
  - **Dark theme, desktop:**
    - the inbox loaded and went Live, and a streamed notification arrived at the top with New;
    - a row marked read left the Unread view, and the badge went from 6 to 5;
    - a notification page marked itself read;
    - Acknowledge asked first, ran, and the alert reads Acknowledged with the result kept;
    - an FCM provider added from a service account, with the project and email filled from it;
    - a provider saved ("Saved and confirmed") and test-sent to a device ("Succeeded: credential obtained, sent, HTTP 200");
    - a device tested from the list;
    - a device's filters saved and a test sent;
    - a Web Push subscription added (pending), a wrong code refused (`VERIFY_FAILED`), the right code verified it (Active), and it was deleted.
  - **Light theme:** the inbox and Web Push.
  - **Mobile (420 × 860):**
    - the inbox as cards;
    - a notification page;
    - This Phone with no platform token;
    - a hand-entered FCM token refused because no provider serves the app (`PUSH_PROVIDER_NOT_CONFIGURED`);
    - a non-hex APNs token refused by validation;
    - an APNs token registered, with the device card shown.
- **Not checked by hand:** deleting a provider, removing a device, Load more, and the event and severity filters. The screen tests cover the expired-action path, presence, and the refused registration.
- Fixed after looking at the screens:
  - mark-read failing in the generated client (above);
  - presence not reported until two minutes after connecting. It now reports on connect;
  - the action result vanishing when the refreshed page had no actions left;
  - "Ios" for the platform;
  - test results overflowing the provider card and the device table;
  - the provider form losing its "Saved" line when the list refreshed (it was keyed by `updatedAt`);
  - the raw payload format ("foresignal") in the subscriptions table;
  - a delete prompt that did not name the subscription;
  - the failure panel squeezed beside the button on a phone;
  - two problem codes in the fake that the contract does not name.
- Screenshots in `review/`:
  - Inbox:
    - `013-inbox-live.png`
    - `013-inbox-mark-read.png`
    - `013-inbox-light.png`
  - Notification page:
    - `013-notification-detail.png`
    - `013-notification-action.png`
  - Native Push:
    - `013-native-push.png`
    - `013-provider-new.png` (the service-account JSON typed; the red errors beneath are from the save attempt before it was typed)
    - `013-provider-saved.png`
    - `013-provider-edit-test.png`
    - `013-device.png`
    - `013-device-edit.png`
  - Web Push:
    - `013-webpush-verify-wrong.png`
    - `013-webpush-verified.png`
    - `013-webpush-deleted.png`
    - `013-webpush-light.png`
  - Mobile:
    - `013-mobile-inbox.png`
    - `013-mobile-detail.png`
    - `013-mobile-device.png`
    - `013-mobile-manual-token.png`
    - `013-mobile-register-refused.png`
    - `013-mobile-registered.png`
