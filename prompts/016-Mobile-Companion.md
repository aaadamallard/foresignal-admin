# 016 — Mobile-Companion

**Goal.** The focused operator-on-the-go surface, from the same codebase — not a second app.

**Read first.** [Screens.md](../docs/Screens.md) §K; [Architecture.md](../docs/Architecture.md) §7;
003-CR; 012-CR; 013-CR.

**Build.** Via platform-conditional routing (mobile mounts only this subset), reusing the shared API,
auth, theme, and the alert/notification/health features:
- **Alert inbox + push** (from 012/013): live alerts, acknowledge/snooze/resolve, push arrival.
- **Notification inbox** (from 013).
- **Source on/off + health glance** (from 005): enable/disable a source and see health; no config-heavy
  forms.
- **Native-push device registration** (from 013): the companion registers itself via
  `registerPushDevice` so phone push works.

No configuration-heavy screens on mobile; the desktop keeps those. Layout is a focused, stack-based
mobile shell.

**Done when.** `flutter analyze` clean; the mobile target builds (and `flutter build linux` still
succeeds for desktop); the mobile routes expose only the subset. Write tests (do not run them).

**Commit.** `016: Mobile-Companion` + `completion-reports/016-CR-*.md`. Stage only this prompt's files.
