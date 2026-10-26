# R2-011 — Onboarding wizard, SMTP settings & polish

**Goal.** Make a fresh v2.0 instance usable without hand-editing: a **first-run onboarding wizard**
(create the first admin → configure SMTP → enable a starter source set → set retention/disk
thresholds), an **SMTP settings** screen, and the **polish pass** — consistent permission-denied and
empty states across the app. This is the **last admin prompt**; it closes the v2.0 contract with a
**final re-vendor** and leaves both test suites complete.

**Depends on.** R2-001…R2-010 (the wizard composes their screens — it owns no business logic, it chains
them). Backend-landed with prompt **R2-027 (first-run/onboarding bootstrap + the API → 2.0.0
close-out)**; the client carries the operations from the 2.0.0 vendor.

**Read first.** The v2.0 roadmap Part A6/A8 and Part D (C4 onboarding); 004-CR (the v1 first-run wizard
this replaces/extends) and R2-001-CR through R2-010-CR; `lib/features/setup/` (the existing wizard store
+ screen), `lib/features/connect/`, and the panels from R2-003/R2-006/R2-008.

**Final re-vendor.** Copy `../foresignal/docs/OpenAPI.json` to `openapi/OpenAPI.json` and regenerate via
`tool/generate_api.sh`. By now every v2.0 operation is backend-implemented; confirm the contract's
`info.version` is `2.0.0`, that `openapi/VERSION` and `vendoredApiVersion` (`lib/api/contract_version.dart`)
both read `2.0.0`, and that the contract-version test still passes. Additive/refinement only — existing
screens compile unchanged.

**Operations.** First-run: `getFirstRunStatus`, `runSetup` (create the first admin + seed). SMTP:
`getSmtpSettings`, `updateSmtpSettings`, `testSmtpSettings`. Starter sources: `enableCoreSources`
(the existing bulk enable). Thresholds: `getResourceThresholds` / `updateResourceThresholds` (from
R2-008). Plus `getMe` to decide whether onboarding is needed.

**Build.**
- **First-run detection.** On launch, `getFirstRunStatus`: if the instance has **no users**, route to
  the onboarding wizard (the bootstrap/admin-token path still gets in — break-glass); otherwise go to
  login (R2-001).
- **Onboarding wizard (desktop).** A guided, step-by-step flow that composes existing screens:
  1. **Create the first admin** — email + full name + password → `runSetup`, then sign that admin in
     (store the session, R2-001).
  2. **SMTP** — the settings below, with a `testSmtpSettings` send before moving on (skippable with a
     clear warning that activation/reset emails won't deliver and links must be handed over by hand).
  3. **Starter sources** — `enableCoreSources` (and the free set), so the instance collects something
     out of the box.
  4. **Retention / disk thresholds** — the R2-008 threshold slider (`updateResourceThresholds`) and the
     retention default (ship **off** — keep everything), so disk safety is set from day one.
  A final summary with links to the full screens. The wizard is resumable and each step re-reads to
  confirm; it never invents a step the contract can't back.
- **SMTP settings screen.** A standalone `system.settings`-gated screen: `getSmtpSettings` → host, port,
  TLS, credentials, and **from-address** (default `info@remoteidsystems.com`) → `updateSmtpSettings`;
  `testSmtpSettings` sends a test to a given address and shows the result. SMTP credentials go to the
  backend, never the app (show only `secretsSet`). This is the screen the onboarding SMTP step reuses.
- **Polish: denied + empty states.** Sweep every section so that (a) a **permission-denied** screen —
  the shared panel from R2-002 — is what a user without the permission sees (naming the permission), not
  a blank or broken page, and (b) every list/table has a real **empty state** (what it is, and the one
  action that fills it) rather than a bare "no data". Confirm the gated nav, Back controls, and error
  surfaces hold across the new v2.0 screens.

**Done when.** `flutter analyze` is clean and `flutter build linux` succeeds; a first-run instance (no
users) lands in the wizard, which creates the admin, configures and test-sends SMTP, enables starter
sources, and sets thresholds, then drops into the signed-in app; the SMTP screen reads/writes/tests with
secrets kept server-side; every section shows a named permission-denied panel and a real empty state;
`openapi/VERSION` and `vendoredApiVersion` are `2.0.0` with the contract-version test green. The full
v2.0 **widget and integration test suites are written and compile cleanly** — per the standing owner
directive carried in `000-Run-Sequence.md`, **tests are written, never run, until the owner declares the
project code-complete** (the only commands this prompt runs are `flutter pub get`, `flutter analyze`,
`flutter build`); "both suites green" is the owner's code-complete run, and this prompt leaves them
complete and analyze-clean for it. Write these tests: first-run detection routes to the wizard; `runSetup`
creates the admin and signs in; the SMTP step and screen read/write/test and keep secrets server-side;
`enableCoreSources` and `updateResourceThresholds` fire from the wizard; a denied section renders the
named panel; an empty list renders its empty state.

**Commit.** `R2-011: Onboarding-Polish` + `completion-reports/R2-011-CR-*.md`. **Stage only this
prompt's files** (the final re-vendored spec + regenerated client + version files, the wizard, the SMTP
screen, the denied/empty-state polish, and their tests).
