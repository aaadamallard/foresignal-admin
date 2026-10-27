# R2-011 — Onboarding-Polish — completion report

**Implementation commit:** `a534bac13f0993105b02ebbd64653773c89f2983`

**Status:** Complete. The release build was killed by earlyoom; the debug build succeeded. Tests are written and **not run**, per the owner directive.

## Final re-vendor

- **Source:** `../foresignal` commit `de54b129e17c6fe1693fe7cd4d1dcb4f3da8994e` (2026-10-26 19:22:14 -0500, "R2-026: Per-user quotas & rate limits"), the last commit to touch `docs/OpenAPI.json`. It was taken from the committed `HEAD` (`8db81935`). sha256 `eb91e6463dbf7156a704ff4bafbf4ff1b9524ceddb4611ee00d1de511a8dc5c6`.
  - It was re-checked just before the commit: `HEAD:docs/OpenAPI.json` and `openapi/OpenAPI.json` have the same sha256.
- **What a JSON comparison against R2-010's vendor found:**
  - no operations added or removed, and no status changes;
  - 11 operations changed (`createChannel`, `createTrigger`, `createView`, `createWorkspace`, `getMyQuota`, `getUserQuota`, `patchWorkspaceContext`, `putWorkspaceLayout`, `updateResourceThresholds`, `updateUserQuota`, `uploadAttachment`): new 409 `QUOTA_EXCEEDED` responses and descriptions;
  - one schema changed: `Quota` gained descriptions and minimums, and `additionalProperties: false`.
- **Client regenerated** (7.26.0): 9 changed files. Nothing was hand-edited.
- **Versions:**
  - `info.version` is `2.0.0`;
  - `openapi/VERSION` reads `2.0.0`;
  - `vendoredApiVersion` in `lib/api/contract_version.dart` is `'2.0.0'`;
  - the contract file contains `"version": "2.0.0"` (two matches), which `test/api/contract_version_test.dart` asserts.
- **These two disagree.** The prompt says "by now every v2.0 operation is backend-implemented". The vendored contract still marks **72 operations `x-foresignal-status: planned`** (828 `implemented`). They include `login`, `runSetup`, `getFirstRunStatus`, the SMTP, MFA, session, egress, aggregator, archive and backup operations. I did not start the backend to check which really work.

## What was built

- **First-run detection.** `getFirstRunStatus` (open, no credential) is read whenever the app is pointed at a backend, at launch and after Connect.
  - On the desktop, `firstRun: true` routes to **onboarding** (`/onboarding`).
  - Connect sends a first-run backend to onboarding instead of the older connect-time wizard.
  - Any other answer, including a backend without the operation, keeps today's landing.
  - The admin-token path still gets in (break-glass): onboarding's first step runs on it.
- **The onboarding wizard** chains the existing forms and owns no business logic. It has a stepper of five steps.
  - **It is resumable:** it opens at the first step `getFirstRunStatus` does not show as done (no users, then SMTP not configured, then no sources, then disk safety). Each step re-reads.
  1. **First admin.** Email, full name, password (typed twice), then `runSetup` with the bootstrap admin token.
     - The answer's `session` is stored as the signed-in session. If there is none, the wizard signs in through `login` with the same credentials.
     - The passwords are cleared.
     - `getFirstRunStatus` must then report users, or the step fails with a "not confirmed" error.
     - Without the admin token, the step explains it and links to Connect.
  2. **Email.** The SMTP card below. **Next is enabled only after a test email goes out.** **Skip email for now** asks for confirmation first, warning that activation and reset links "have to be handed to its user by hand".
  3. **Starter sources.** `enableCoreSources`, plus `enableFreeSources` when "Also every source that needs no key or setting" is ticked. Each result shows the count turned on, the ids, and how many were left off. The source count is re-read.
  4. **Disk safety.** R2-008's thresholds card (`updateResourceThresholds`) and the history cap, which ships **off** (keep everything).
  5. **Summary.** Who is signed in, the email state (set up and tested / skipped), sources collecting. Links go to Users, Email settings, Sources, Storage and the profile. **Open ForeSignal** marks the older wizard done, so it does not open on top, and goes to Sources.
- **SMTP settings: System → Email** (`/system/smtp`), shown only with `system.settings`.
  - `getSmtpSettings` fills: on/off, server, port, security (STARTTLS / TLS / none), user name, password, from-address (an unset one shows the contract default `info@remoteidsystems.com`) and from-name.
  - `updateSmtpSettings` is confirmed by re-reading.
  - **The password is write-only.** It is obscured, sent only when typed (an omitted password keeps the stored one), then cleared. The page shows only "Password: set / not set", from `secretsSet`.
  - **Send Test Email** (`testSmtpSettings`) sends to a given address and shows the server's reply and the time.
- **Polish: permission-denied states.** R2-002's section guard already renders the named panel for a section the user may not see ("Storage is not available to your account … This needs the storage.manage permission."). The v2.0 screens add the same inside a section:
  - the System tabs that need a permission are hidden, and a deep link shows the panel (Network / Sourcing, Email);
  - Users' tabs and Profile preferences were done in R2-003 and R2-006.
- **Polish: empty states.** Every table's empty message now says what the list is and names the one control on that screen that fills it (for example "No API tokens yet. New Token mints one."). Where no control fills a list, it says what produces the rows, or which filter to widen.
  - 65 messages in 26 v1 files, done by a delegated sweep that I checked: only the `empty:` strings changed, plus one test expectation (`test/features/alerts/alerts_screens_test.dart`, still a `findsNothing`).
  - Plus the v2.0 lists (egress, archives, backups, API tokens, sessions, aggregators).
  - Three messages were left as they were because they already say this (`'The provider listed no models.'`, `'The manifest declares no streams.'`, `'The backend offers no sink types.'`).

## Omitted or adapted, and why

- **"Otherwise go to login" is not forced on every launch.** A user without a session or admin token can still browse an open-reads backend (`security.openReads`), and redirecting them to sign in at every start would remove that. Sign-in stays one click away in the shell, as R2-001 left it. Should a non-first-run launch always land on login?
- **The wizard's thresholds step reuses the R2-008 card as is.** It shows free-percent sliders and GB fields per level, not a single slider.
- **Passwords are only required to be non-empty and to match.** The contract states no password policy, and I did not invent one; the server's refusal is shown.

## Owner questions

1. **The contract still marks 72 v2.0 operations `planned`** (see Final re-vendor). Is the marker behind, or is the backend?
2. **Should a launch that is not a first run go straight to login**, ending open-reads browsing without a credential? (See above.)
3. **The release build fails every time now.** earlyoom killed the Dart frontend at 6683 MiB RSS. Each prompt from R2-008 on was verified with `--debug`.

## Wire spellings found and left alone

`firstRun`, `hasUsers`, `smtpConfigured`, `sourcesEnabled`, `fullName`, `fromAddress`, `fromName`, `secretsSet`, `starttls`, `sentAt`, `enable-core`, `enable-free`. All are US English.

## Secrets

None stored. The first admin's password is held in two obscured fields until `runSetup` (and, if needed, `login`), then cleared. The session goes to the platform secure store as every sign-in does. The SMTP password is write-only (sent when typed, then cleared; only `secretsSet` is shown). Nothing is logged.

## Instructions found in data

None.

## Verification

- `flutter pub get`: dependencies resolved.
- `flutter analyze`: "No issues found!". This covers `lib/`, `test/` and `integration_test/`; `analysis_options.yaml` excludes only `lib/api/generated/**` and `build/**`.
- **`flutter build linux` (release) failed:** "Build process failed". The journal shows `earlyoom: sending SIGTERM to process 1092540 … "dart:frontend_s" … VmRSS 6683 MiB`.
- **`flutter build linux --debug` succeeded:** "✓ Built build/linux/x64/debug/bundle/foresignal_admin".
- **US English.** A grep of every added diff line and the new files for common British spellings found none.
- Tests were written and **not run**.
  - **Widget tests**, in `test/features/onboarding/onboarding_test.dart`:
    - a first-run backend lands in onboarding, and one with users does not;
    - `runSetup` is sent with the bootstrap token, and the returned session is stored;
    - without a session in the answer, the wizard signs in with `login`;
    - the SMTP step needs a test send, or a skip past the warning;
    - `enableCoreSources`, `enableFreeSources` and `updateResourceThresholds` fire from the wizard, then the summary and finish;
    - the SMTP screen reads, writes (password only when typed) and tests, and shows only `secretsSet`;
    - a denied section shows the named panel;
    - an empty list shows its empty state and the action that fills it.
  - **Integration test**, `integration_test/v2_onboarding_test.dart`: a fresh instance is onboarded end to end and opens signed in, with the account security section on the profile. It sits beside the existing launch smoke test.
