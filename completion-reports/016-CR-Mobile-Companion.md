# 016 — Mobile-Companion — completion report

**Implementation commit:** `091c52d272dcb6842e8c2923fa5b2951f27fd55d`

## What was built

The mobile companion is the same app with a different shell and route set. It is not a second app. On Android and iOS, `formFactorProvider` is `mobile`. `sectionRoutesFor(FormFactor.mobile)` then mounts only the §K subset:

- **Sources** (`/sources`);
- **Alerts** (`/alerts`, the inbox and the alert page);
- **Notifications** (`/notifications`, the inbox and the notification page);
- **Device** (`/device`).

Connect is also mounted. Every configuration-heavy section stays desktop-only, and a desktop route opened on a phone does not exist. The shell is stack-based: an app bar with the theme switch and backend indicator, the page, and a bottom navigation bar.

Most of the subset was built by earlier prompts and is reused unchanged:

- **Alert inbox + live alerts, acknowledge, snooze, resolve** (012): cards on mobile, live on `streamAlerts`, and the alert page with its actions.
- **Notification inbox** (013): cards, live on `streamNotifications`, the badge, and mark read.
- **Source on/off + health glance** (005/007): the list with health and a switch per source, plus the usage glance card. There are no configuration forms.
- **Native-push device registration** (013): **This Phone** registers through `registerPushDevice` and confirms the registration through `listPushDevices`.

New in this prompt is **push arrival**, which was the missing part of "Alert inbox + push". It lives in `lib/features/notifications/push_arrival.dart` and `push_arrival_banner.dart`.

- **`PushArrival`** parses both wire shapes of `NativePushPayload`:
  - the FCM data message (string members `v`, `id`, `a`, `s`, `ev`, `l`, `t`, `c`);
  - the APNs body (`e` as an object or as JSON text, plus `aps.alert` and `aps.category`).
  - Tapping a push opens the alert page when `a` names an alert, otherwise the notification page. A test push (`id` 0) opens nothing.
  - The heading is the visible title, then `t`, then a line built from the severity and event ("Warning alert").
- **`PushArrivalSource`** is overridable, like `PushTokenSource`.
  - `FirebasePushArrivalSource` merges `FirebaseMessaging.onMessage` (in front) with `onMessageOpenedApp` and taps on the app's own local notifications.
  - The launch comes from `getInitialMessage()` or the local plugin's `getNotificationAppLaunchDetails()`.
  - Desktop builds, and phones without Firebase set up, get `NoPushArrivals`.
- **`PushArrivalBanner`** is mounted in the mobile shell only.
  - A push arriving while the app is in front shows a severity-colored banner above the page, with **Open** and **Dismiss**. It also refreshes the badge and that alert; the inbox lists are already live on their streams.
  - A tapped push, or the one that launched the app, goes straight to its page.
- **Android background display.** FCM data messages are not shown by the OS, so `firebaseBackgroundMessage` posts one itself. It is a `@pragma('vm:entry-point')` handler registered in `main` through `installPushBackgroundHandler()`.
  - It posts with `flutter_local_notifications` (already a dependency since 001, unused until now) in the channel `foresignal_alerts`.
  - Warning and critical use high importance.
  - The payload is the arrival's data, so a tap parses back to the same arrival.
  - iOS needs no handler: APNs alerts are displayed by the OS.
- **The Android build was fixed.** Before this prompt, `flutter build apk --debug` failed on the unchanged tree:

  ```
  Execution failed for task ':app:checkDebugAarMetadata'.
  1.  Dependency ':flutter_local_notifications' requires core library desugaring to be enabled for :app.
  ```

  `android/app/build.gradle.kts` now enables `isCoreLibraryDesugaringEnabled` and adds `coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.4")`. That coordinate is the one the plugin's own README (22.3.2) gives. The debug APK now builds.
- **Preview.** `--dart-define=PUSH=true` with `FORM_FACTOR=mobile` delivers one FCM-shaped data message for the newest firing critical alert, 4 s after start. This lets the banner be shown without Firebase.

## Omitted or adapted, and why

- **No action buttons on the tray notification.** The contract names `FORESIGNAL_ALERT_ACTIONABLE` as a category "for firing alerts with actions (033)", but it does not say which actions a native category carries, or which call a button should make. Only the web `PushPayload` lists `actions`, with URLs. The notification therefore opens the alert page, where acknowledge, snooze and resolve already work.
- **Token refresh is not re-registered.** `onTokenRefresh` is not watched. After the OS rotates the token, the device page shows it unregistered and a tap registers it again.
- **`l` is not interpreted, and `t` is shown as the title.** The contract gives both as bare strings with no description.
- **A push tapped while the app is not connected opens Connect.** The router sends every route there until a backend is set. The push is not queued for after connecting.
- **Push does not reach this build yet.** The app's Firebase configuration (`google-services.json`, `GoogleService-Info.plist`) is still absent, as reported in 013.
  - On a phone, `Firebase.initializeApp()` fails, and the source falls back to no arrivals.
  - The banner, tap routing and background display were checked through the preview source and the tests, not through a real push.
- **iOS was not built.** It needs Xcode on the MacBook, so it is owner-deferred. Android was built (`flutter build apk --debug`) but not installed on a phone.
- **The first Android build installed SDK packages.** Gradle accepted the license for, and installed, **Android SDK Platform 34** into `/home/adamallard/Android/Sdk/platforms/android-34`. The build did this itself, but it is a change to your SDK directory.

## Owner questions

1. **Which Firebase project should the app use?** Until its configuration files are added, push neither registers nor arrives on a phone. (Carried from 013.)
2. **What do the FCM data members `l` and `t` hold?** They also appear as `e.l` in APNs. The app shows `t` as the title and leaves `l` alone.
3. **Should a firing alert's notification carry Acknowledge and Snooze buttons?** If so, which call should each make, and with which credential from a tray action? The contract's native category `FORESIGNAL_ALERT_ACTIONABLE` is named but not defined.
4. **Should the app re-register on a token refresh by itself?** It would call `registerPushDevice` again with the new token.

## Wire spellings found and left alone

None new. The FCM data keys are single letters, the category values are upper-case identifiers (`FORESIGNAL_ALERT`), and the channel id `foresignal_alerts` is the app's own.

## Secrets

None added. Push tokens are never logged or shown; the banner shows only the push's own visible text. No Firebase configuration or key was committed.

## Instructions found in data

None.

## Verification

- `flutter pub get`: dependencies resolved.
- `flutter analyze`: no issues.
- `flutter build linux`: built.
- `flutter build apk --debug`:
  - before the change, failed (the desugaring error above);
  - after it, `✓ Built build/app/outputs/flutter-apk/app-debug.apk`.
- iOS was not built (owner-deferred).
- `check_us_english.py` over lib, test, tool, review and completion-reports printed "0 British spellings".
- `test_us_english.py`: 14 tests, OK (173.7 s).
- Tests were written and **not run**, per the run rules.
  - `test/features/notifications/push_arrival_test.dart`:
    - parsing FCM data and an APNs body, including `e` as JSON text;
    - a test push and a foreign message;
    - the payload round trip;
    - on mobile, a push in front shows the banner without moving the page, and **Open** goes to the alert;
    - the banner can be dismissed;
    - a tray tap and a launching push go to the alert;
    - the desktop shell does not listen.
  - The route subset itself is covered by the existing `test/core/router_test.dart` ("mobile only the §K subset", "a desktop-only route does not exist on mobile").
- Checked by hand in the mobile preview (420 × 860) on the private Xvfb display, with real clicks:
  - **Dark theme:**
    - a critical alert's push arrived in front and showed the banner over the live inbox;
    - **Open** went to alert 4107 and cleared the banner;
    - **Acknowledge** set it Acknowledged;
    - a source was switched on from the Sources glance (Enabled 3 → 4, health Healthy);
    - the notification inbox and This Phone.
  - **Light theme:** the banner over the inbox, then dismissed. A new alert arrived on the live stream at the same time.
- Screenshots:
  - `review/016-push-banner.png`
  - `review/016-push-opened-alert.png`
  - `review/016-alert-acknowledged.png`
  - `review/016-sources-switched-on.png`
  - `review/016-notifications-mobile.png`
  - `review/016-device-mobile.png`
  - `review/016-push-banner-light.png`
  - `review/016-banner-dismissed-light.png`
- **Not checked by hand:**
  - a real FCM or APNs push;
  - the Android background notification and a tap on it;
  - a launch from a notification;
  - snooze and resolve on mobile (already covered in 012).
