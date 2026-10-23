# 012 — Alerts-Triggers-Escalation — completion report

**Implementation commit:** `3a0ce9ff5b59a4ebb0b7d2ff799ff83b774d9160`

## What was built

**Alerts section (`/alerts`).** Five tabs on desktop, each with its own route: Inbox, Triggers, Escalation, Channels and Watchlists. There is no alerts mock, so the screens follow the style the other sections set from the design PNG. The mobile companion shows the inbox alone.

- **Inbox** (`listAlerts`, `streamAlerts`). Available on desktop and mobile.
  - State chips: Open (the default, firing and acknowledged), Firing, Acknowledged, Resolved and All. There is also a minimum-severity dropdown.
  - **Live** over `streamAlerts`, through the 002 SSE client, which reconnects with `Last-Event-ID`.
    - `alert`, `alert.updated`, `alert.resolved` and `alert.enriched` events are merged by id, newest first. A stale `rev` is ignored, and an alert that leaves the filter leaves the list.
    - A `reset` that asks for a resync reloads the list.
    - A new alert carries a **New** marker.
    - The indicator reads Connecting…, Live, or Not live with **Reconnect**.
  - Desktop shows a table: severity, message, rule · source, fired, state, and icon actions (acknowledge, resolve, open). Mobile shows cards with the same actions. Both have **Load more** on the cursor.
- **Alert page** (`/alerts/inbox/:alertId`). Desktop and mobile.
  - **Summary** (`getAlert`) and the stored record copy.
  - **Work this alert:**
    - feedback chips and a note;
    - **Acknowledge** (`acknowledgeAlert`), **Resolve** (`resolveAlert`) and **Record Feedback** (`setAlertFeedback`);
    - **Snooze** for a duration or until an instant (`snoozeAlert`), and **Unsnooze** (`unsnoozeAlert`);
    - every write is confirmed by re-reading the alert.
  - **Escalation** (`getAlertEscalation`). A 404 means the rule has no policy, and the card is left out.
- **Triggers** (`listTriggers`).
  - Table columns: name with tags, type · mode, severity, sources, status (Enabled, Disabled, Muted, Snoozed), last fired, open / all, and **Edit**.
  - **New Trigger** opens the form.
- **Trigger page** (`/alerts/triggers/:ruleId`, `/alerts/new-trigger`; `getTrigger`, `createTrigger`, `updateTrigger`).
  - Fields: name, enabled, type, mode (record rules), severity, sources, kinds, tags, conditions (a JSON array), window (a template for each windowed type), cooldown, message template and escalation policy.
  - **Scope to a watchlist** adds an `inWatchlist` condition.
  - **More settings** carries every other `TriggerRuleInput` member as JSON (geofence, near, autoResolve, activeWindow and so on). `PUT` replaces the rule whole, so nothing is lost.
  - The save is confirmed by re-reading the rule.
  - **Activity:** counts, feedback, window groups, and the latest alerts including suppressed ones.
  - **Mute or snooze:** `muteTrigger` (1 hour to 7 days), `snoozeTrigger` (up to 7 days), `unmuteTrigger` and `unsnoozeTrigger`.
  - **Test against stored data** (`testTrigger`): since, until, a limit, and a **simulate** switch. It shows the matches and the window evaluations.
  - **Delete** (`deleteTrigger`) asks first and is confirmed by a 404 on re-read.
- **Escalation** (`listEscalationPolicies`).
  - **Policy page** (`getEscalationPolicy`, `createEscalationPolicy`, `updateEscalationPolicy`):
    - steps, each with minutes after firing, channels and native push;
    - add and remove steps;
    - repeat (every, max times) and stop-on (resolve, snooze);
    - the save is confirmed by re-read.
  - **Delete** (`deleteEscalationPolicy`). `POLICY_IN_USE` gets its own panel.
- **Channels** (`listChannels`, `listChannelTypes`).
  - Table columns: type, events, lowest severity, status (including failures in the last 24 h), last delivery, **Test** (`testChannel`) and **Configure**.
  - **Channel page** (`getChannel`, `createChannel`, `updateChannel`):
    - a new channel starts with a type picker;
    - the form is built from the type's `configFields` and `secretFields`;
    - wildcard secrets such as `header.<Name>` are entered as a JSON object;
    - secrets are sent only when creating or when one is typed, with a warning that a sent `secrets` object replaces them all;
    - `URL_NOT_ALLOWED` gets its own message;
    - **Send Test**;
    - **Deliveries** (`listChannelDeliveries`) with a status filter;
    - **Delete** (`deleteChannel`), confirmed by a 404.
- **Watchlists** (`listWatchlists`, `createWatchlist`).
  - **Watchlist page** (`getWatchlist`, `updateWatchlist`, `deleteWatchlist`):
    - items (`listWatchlistItems`) with prefix search and paging, and remove after confirming (`removeWatchlistItems`);
    - **Add items** (`addWatchlistItems`), one per line as `value` or `value, label`, with the identity's format as a hint;
    - **Import** (`importWatchlist`) from pasted CSV or a JSON array, merge or replace (replace asks first), with a dry run on by default;
    - **Export** (`exportWatchlist`) shown with **Copy**.

**JSON calls.** `lib/api/json_calls.dart` adds `jsonCall`, `jsonObjectCall` and `jsonArrayCall` over the configured backend Dio. Trigger rules and channels are read and written through them rather than the generated client; see the first two owner questions for why. Everything else uses the generated client.

**The 004 setup wizard.** `AlertingSetup` now reads triggers and channels through `jsonArrayCall`. Through the generated client, a single windowed rule made the "Configure alerts" step fail.

**Preview:** `tool/preview/preview_alerts.dart` is the contract-shaped fake.
- Alerts are seeded relative to the current time.
- A live `text/event-stream` sends a new alert 12 s after the first connection, then every 40 s, six in total. Writes publish `alert.updated` and `alert.resolved`.
- The `mqtt` channel type is the contract's own example. The other types' fields are illustrative.

## Omitted or adapted, and why

- **No view or situation scope on rules.** `TriggerRuleInput` has no view or situation member. Its members are listed in `openapi/OpenAPI.json` under `TriggerRuleInput.properties`; the nearest are `geofence` and `geofenceRef`. So a rule can be scoped by sources, kinds, conditions, a watchlist condition or a geofence (in More settings), but not to a view or situation.
- **Trigger tuning is left out.** These operations are in the contract but outside the prompt's list: `getTriggerBaseline`, `rebuildBaseline`, `getTriggerWindowState`, `listTuningLog`, `undoTuning`, `applyTuningSuggestion` and `dismissTuningSuggestion`. The same goes for `getChannelAirtime`, `getChannelInteractiveStatus` and `republishMqttChannel`.
- **CSV import is sent as JSON.** The generated `importWatchlist` always sends `application/json`, so pasted CSV is parsed in the app and sent as a JSON array of items. The contract also accepts `text/csv`.
- **Escalation "Next step" shows the backend's integer as is.** The contract does not say whether it counts from 0 or 1.
- **Config field labels come from the wire name** (for example "Url"), through the shared `wireText`. `ChannelType.configFields` has no label member.

## Owner questions

- **`TriggerRuleInput.window` cannot be read by the generated client.**
  - It is a `oneOf` of `CountWindow`, `AbsenceWindow` and `AnomalyWindow` with no discriminator.
  - A window document matches more than one of them, so the generated deserializer refuses every windowed rule, and with it the whole `listTriggers` response: "more than one match found".
  - The app works around it with JSON calls.
  - **Should the contract add a discriminator (for example the rule's `type`), or make the window a single schema?**
- **`Channel.config` / `ChannelInput.config` lose their type-specific members in the generated model.**
  - Both declare `additionalProperties: true`. The generated model keeps only the declared properties, so a webhook's `url` or an MQTT broker never reaches the backend or the screen.
  - The app uses JSON calls for channels.
  - **Should the generator be configured to keep additional properties, or should the contract declare each type's config?**
- **What separates tags within a CSV cell?** The contract does not say for `importWatchlist` or `exportWatchlist`. The app assumes `;`.
- **Does `Escalation.nextStep` count from 0 or 1?**

## Wire spellings found and left alone

None. The scanner reports none in the 012 files, and no allow regions were added.

## Secrets

- Channel secrets are write-only. The form never shows them; only the names the backend reports as set (`secretFields`) are listed.
- Nothing is stored or logged.

## Instructions found in data

None.

## Verification

- `flutter analyze`: no issues.
- `flutter build linux`: built.
- `check_us_english.py` over lib, test, tool, review and completion-reports printed "0 British spellings".
- `test_us_english.py`: 14 tests, OK.
- Tests were written and **not run**, per the run rules:
  - `test/features/alerts/alerts_drafts_test.dart`
  - `test/features/alerts/alerts_screens_test.dart`
- Checked by hand in the preview build on the private Xvfb display, with real clicks:
  - **Dark theme:**
    - the inbox loaded and went Live, and a live alert arrived with its New marker;
    - the triggers list, including the count, absence and anomaly rules;
    - a windowed rule saved and confirmed;
    - a rule tested against stored data;
    - an alert acknowledged with Useful feedback, which also stopped its escalation, then snoozed;
    - the escalation and channels lists;
    - a webhook channel opened with its URL shown, and a test sent ("Sent in 184 ms");
    - the watchlists list;
    - an item added;
    - the CSV export shown.
  - **Light theme:** the inbox and a trigger page.
  - **Mobile:** the inbox as cards, and an alert page.
- **Not checked by hand:** Resolve, creating a trigger, policy or channel, a policy edit, and an import. The screen tests cover the policy-in-use refusal and the import dry run.
- Fixed after looking at the screens:
  - "Unexpected response HTTP 200" on the Triggers tab, from the generated `oneOf` failure;
  - channel config missing from the form;
  - the tab bar showing the previous tab after going back to Inbox. The tab is now driven by the route alone;
  - the inbox table cutting off State and Actions;
  - the fake's alerts out of fire-time order, its fixed dates in the past, and a mute that had already expired;
  - the fake's add-items reply counting the new item as unchanged.
- Screenshots in `review/`:
  - `012-inbox.png`
  - `012-alert.png`
  - `012-triggers.png`
  - `012-trigger-edit.png`
  - `012-trigger-test.png`
  - `012-escalation.png`
  - `012-channels.png`
  - `012-channel.png`
  - `012-channel-test.png`
  - `012-watchlists.png`
  - `012-watchlist.png`
  - `012-watchlist-export.png`
  - `012-inbox-light.png`
  - `012-trigger-light.png`
  - `012-inbox-mobile.png`
  - `012-alert-mobile.png`
