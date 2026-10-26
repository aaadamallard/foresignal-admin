# R2-006 — Profile-Preferences — completion report

**Implementation commit:** `0abae45aead9ad73d41596b2d0947b85bea6be75`

**Status:** Complete.

## What was built

- **Contract re-vendored**, because the committed backend contract changed after R2-005.
  - Source: `../foresignal` commit `40a736dca61be3c6635e316cf345b43386a7e664` (2026-10-26 17:41:37 -0500, "R2-017: Backup & restore"), from the committed `HEAD`. New sha256 `9d4440b6eb155a503c7db6d50b89a663042e66e255a1bf3ce9ead3a5620d6b34`. `info.version` is still `2.0.0`.
  - A JSON comparison found no operations added or removed and no status changes. Changed: four operations (`listBackups`, `restoreBackup`, `runBackup`, `updateBackupSettings`) and four schemas (`Backup`, `BackupRunRequest`, `BackupSettings`, `BackupSettingsInput`).
  - Client regenerated (7.26.0): 13 changed files and one new model (`BackupFilesInner`). Nothing was hand-edited. The existing `system/backup.dart` still analyzes clean against it.
- **`/profile`** (`ProfileScreen`) is in the shell on every form factor and needs no permission.
  - You reach it by clicking your name in the sidebar footer (`shell.profile`), or through the account menu's new **Profile** item on the compact bar.
  - Without a session, it explains that a profile belongs to a signed-in user (the admin token belongs to no user) and offers Sign in.
- **Account card**, from `getMe`: name, email, handle, two-factor state, last sign-in, and the user's **roles** as chips.
  - It is read-only. I found no self-update for name or email: the `/v1/me*` operations in the vendored contract are `getMe`, preferences, notification preferences, sources, LLM budget, MFA, tokens and quota.
  - A footnote says an admin changes name, email and roles on Users & Roles.
- **Password card.** It says plainly that this server changes a password through an emailed link, with no old-and-new form.
  - **Change password** sends `requestPasswordReset` (no credential) for the signed-in user's email.
  - It then says: check your email; the link opens this app's Reset password screen; it works once and expires; your current password keeps working until you use it; and if nothing arrives, the server may have no email set up.
- **Preferences card** (`self.preferences`; without it, the denied panel shows), from `getMyPreferences`:
  - **Timezone** is a searchable picker over every IANA zone this build knows, plus UTC. Empty uses the server's zone.
  - **Language** is a BCP 47 tag, and **Theme** is system, light or dark.
  - **Email** and **push** notification switches, and **quiet hours** (`HH:MM-HH:MM`, checked before sending).
  - **Display options** (`ui`) is a JSON object, checked before sending.
  - **Save** sends `updateMyPreferences`, re-reads it and compares each value the user gave.
    - The body carries every member as read, so a member this build doesn't know goes back unchanged.
    - `notifications` writes through to every delivery, so only the members the user changed are sent. Sending an unchanged `emailEnabled: true` back would turn *every* email delivery on.
  - A saved theme also switches the app's own theme.
- **The user's timezone is honored** wherever the app renders instants.
  - Every timestamp goes through `utcText` (and `whenText`, which calls it). That function now formats in the user's zone with its abbreviation (`2026-07-01 07:00:00 CDT`), through the new `DisplayZone` and `package:timezone`. It stays in UTC until the zone is known.
  - The zone comes from `getMyPreferences`, then `getMe`'s `principal.timezone`.
  - The app root applies it and rebuilds every widget when it changes, keeping widget state.
  - Stored and sent times stay UTC, as do typed date inputs, which are labeled UTC.
- **Notification deliveries card**, from `listMyNotificationPreferences`:
  - Each delivery shows its channel type and settings, an on/off switch, and event-type chips (Mentions, Shares, Reports, Chronicles, Assessments, Comment replies).
  - **Save** sends `replaceMyNotificationPreferences` with every delivery, less the read-only members (`principalId`, timestamps, `channelId`, `secretFields`). Secrets are not sent, so the stored ones are kept. It then re-reads and compares.
  - A delivery with no event type is refused before sending (`minItems: 1`).
- **My quota**, from `getMyQuota`, is read-only: each limit (or "Instance default"), storage in readable units, and every usage figure the server reports.
- **Unknown values.** A member, theme, timezone or event type this build hasn't seen is shown as sent, kept selected, and written back unchanged.

## Omitted or adapted, and why

- **Adding or removing a notification delivery is not built.** The prompt asks for per-category toggles. A new delivery needs a full channel definition with secrets, which is the channel editor's job.
- **The usage-chart labels "Times are UTC."** (AI spend, Usage) stay. Those buckets and budget windows are defined in UTC.
- **New dependency:** `timezone` (`^0.11.2`, resolved to 0.11.2, which was already in the lock file as a transitive dependency). It is pure Dart and carries the 10-year IANA data. Nothing else was added.

## Owner questions

1. **Should the app's local theme follow the server's `theme` preference at sign-in**, or only when the user saves it here (as now)? Today a device keeps its own choice until then.

## Wire spellings found and left alone

`timezone`, `locale`, `theme` (`system`, `light`, `dark`), `emailEnabled`, `pushEnabled`, `quietHours`, `ui`, and the event types (`mention`, `share`, `report`, `chronicle`, `assessment`, `comment-reply`). All are US English.

## Secrets

None stored. Channel secrets are never sent from this screen, so the server keeps the stored ones.

## Instructions found in data

None.

## Verification

- `flutter pub get`: dependencies resolved.
- `flutter analyze`: "No issues found!", before and after the re-vendor.
- `flutter build linux` (release) **succeeded** both times: "✓ Built build/linux/x64/release/bundle/foresignal_admin".
- **US English.** A grep of the new files and of the added diff lines for common British spellings found none.
- Tests were written and **not run**, per the run rules. They are in `test/features/profile/profile_screen_test.dart`:
  - identity and roles render from `getMe`, and the quota glance renders;
  - preferences load from `getMyPreferences`, and Save sends `updateMyPreferences` with the edit and without `notifications` (nothing there changed), then re-reads and shows "Saved and confirmed";
  - an unseen theme value (`high-contrast`) and an unseen member (`startPage`) are sent back unchanged, and so is `ui`;
  - toggling an event type and a delivery's switch sends `replaceMyNotificationPreferences`:
    - the unseen event type (`digest`) is kept, and the id is kept;
    - no read-only members are sent;
    - the channel config is unchanged;
    - the list is re-read;
  - Change password sends `requestPasswordReset` for the current email with no Authorization header and shows the explanation;
  - the update body sends only the notification members that changed;
  - `DisplayZone` formats in UTC, then in America/Chicago with "CDT", then falls back to UTC for an unknown zone.
