# ForeSignal Admin — Product Charter

Date: 2026-10-22. Companion docs: [Screens](Screens.md), [Architecture](Architecture.md).
**The only backend reference is the ForeSignal repo's `docs/OpenAPI.json`.**

---

## 1. What this is

ForeSignal Admin is the **control plane** for a self-hosted ForeSignal backend — the app an operator
uses to **set up, configure, test, tune, secure, alert on, and monitor** the data engine. It is **not**
a data-visualization client.

ForeSignal's value is the backend: acquisition, correlation, AI analysis, forecasting, alerting, and
serving. This app is what turns that engine from a server you SSH into and hand-edit into a system a
person can actually operate. Visualization is deliberately *someone else's* job — any number of
disposable, purpose-built viz clients can consume the same API. This app makes the engine configurable
and operable so those clients, the alerts, and the briefings all have something **correct** to stand
on.

## 2. The story it must satisfy

An operator installs ForeSignal on a Linux server at home. With **only this app** — no SSH, no
hand-edited YAML, no Postman — they can:

- point the app at the backend and capture the admin token;
- browse the source catalog, set provider API keys, enable sources, **test and validate** each one
  (fetch-now, probe, doctor, health, last-records), and watch data actually flow;
- manage data usage, budgets, and the collector's concurrency so the box is never overwhelmed;
- configure the **AI** (LLM providers, roles, prompt templates) and how analysis, correlation, and
  feed **vetting** behave;
- wire **external add-ins** — TimesFM forecasting, Benjis-style relationship intelligence, other
  external analyzers — through the EDP;
- author alerts and trigger rules, route them to channels and escalation, and receive **push**
  notifications (with a mobile companion from the same codebase);
- monitor health, diagnostics, provenance, calibration, and usage.

When done, they have a fully working, tuned, alerting ForeSignal — configured entirely from this app.

## 3. Scope

**In.** Onboarding/connection; source configuration + credentials + test/validate + health + usage;
data-usage, budget, and collector-load governance; AI/LLM configuration; correlation, analysis, and
feed-vetting configuration (to the extent the API exposes it); external providers and add-ins (EDP,
incl. TimesFM and relationship-intelligence); entity-resolution management; alerts, trigger rules,
escalation, channels, notifications, Web **and** native push; sinks, exports, archive; peers and
federation; plugins; every `/v1/settings/*`; system, security, provenance, signing keys, diagnostics;
forecast calibration and the analysis/assessment feedback loops.

**Out.** Data visualization — maps, globes, dossiers-as-exploration, analyst workbenches, time
scrubbing, "look at the data" surfaces. Those are separate viz clients over the same API. This app may
show **minimal** record previews and counts **only** to validate that a source works — never as an
exploration surface.

## 4. Shape — two components

Same discipline as the rest of ForeSignal: **two runtime components — the backend and this app.** No
BFF, no proxy, no second service. The app is a native Flutter client that talks **directly** to the
backend over its HTTP API plus SSE. Unlike a static web client, it is **not served by the backend** —
it is installed on the operator's desktop and phone and points at the backend's URL.

## 5. Stack (locked; exact versions verified at scaffold, prompt 001)

- **Flutter / Dart**, one codebase → **desktop** (Linux primary — the operator's workstation/server —
  plus macOS and Windows) and a **mobile companion** (iOS, Android).
- The Dart API client is **generated from `docs/OpenAPI.json`** and never hand-edited (the same rule
  the web client applied to its generated types).
- Desktop carries the full admin weight; the mobile companion is the focused subset — alerts, push,
  source on/off, health glance. Shared codebase, platform-conditional screens.
- **Rationale:** no 3D or heavy visualization is needed here (that was the only reason the viz client
  was not Flutter); one codebase covers desktop and mobile; Dart-from-OpenAPI keeps the app a faithful
  mirror of the contract.

## 6. Principles (carried from the ForeSignal standards)

- **OpenAPI is the only backend contract.** Every screen action names an `operationId`. A knob the app
  needs that the API does not expose is an **owner question / backend gap** — recorded in the screen
  doc and the completion report, never invented, never worked around with app-side logic or a second
  service.
- **The app configures; it does not compute.** No business logic the backend should own. It is a
  faithful front end over the API.
- **AI-first, one pass, no phasing.** Everything in a prompt's scope ships in one pass — no "phase 2",
  no backlog, no TODO, no deferral, no traditional time estimates.
- **US English** everywhere — code, identifiers, UI strings, comments, commits.
- **Secrets never live in the app.** Provider API keys entered in the app go straight to the backend's
  credential store (`setSourceCredentials`); they are never persisted or logged client-side. The admin
  token lives in the platform secure store.
- **Tests are written in the same pass; the owner runs the suite.** `flutter analyze` and a build run
  every prompt; the full test run is the owner's at code-complete (the convention the other ForeSignal
  repos use).
- **Generated code is never hand-edited. No CI-file changes. No `CLAUDE.md`/`CONVENTIONS.md` edits.**

## 7. Success criteria

A fresh backend plus this app becomes a fully configured, running, tuned, alerting ForeSignal, set up
end to end from the app: provider keys in the backend's vault, the right sources enabled and validated,
AI and add-ins configured, alerts routed, push working on desktop and phone, usage and health visible —
with nothing that required SSH, a text editor, or Postman.
