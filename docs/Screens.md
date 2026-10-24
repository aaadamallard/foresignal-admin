# ForeSignal Admin — Screens

Written descriptions of the screens the admin app needs, grouped by function. Each screen names the
backend **operationId**s it uses (the only backend contract). Platform tags: **D** = desktop, **M** =
mobile companion, **D/M** = both (often fuller on desktop). This is the spec the `design/` mocks and
the `prompts/` will build against. Date: 2026-10-22.

**Design intent.** This is a control plane, not a data viewer. Screens are dense, form-and-table
driven, status-forward. The recurring pattern for anything configurable is **see state → edit → test →
confirm it worked (health/outcome)** — never "admire the data." Record previews, where they appear, are
small and exist only to prove a source works.

---

## A. Onboarding & connection

- **Connect (D/M).** Enter the backend URL, capture/paste the admin token (`fsr_…`), test the
  connection, and read capabilities. Stores the token in the platform secure store. Ops: `getSystem`,
  `getContract`, `getServerSettings`. A failed auth or version mismatch is shown here, not buried.
- **First-run wizard (D).** Optional guided path that chains the setup below: connect → enable the core
  sources → set any keys → validate → configure alerts + push. Composes the screens; owns no logic.
  Ops: `enableCoreSources` (+ the screens it links to).

## B. Sources

- **Source catalog (D/M).** Every registered source with status, enabled, health, credential state,
  interval, budget, and usage. Filter by category/kind/enabled/credentialed/health. Bulk actions.
  Ops: `listSources`, `listSourceHealth`, `enableCoreSources`, `enableFreeSources`. (M: browse,
  enable/disable, health only.)
- **Source detail & config (D).** One source: its descriptor (requiresCredentials, params, mode,
  interval, budget, retention, ingest policy, egress), edited and saved. Ops: `getSource`,
  `updateSource`.
- **Credentials / API keys (D).** Set and remove the provider keys a source needs; field names come
  from the descriptor. Keys go to the backend vault, never stored or logged in-app. Ops:
  `setSourceCredentials`, `deleteSourceCredentials`.
- **Test & validate (D).** Prove a source pulls → stores → is retrievable: fetch-now, probe, doctor,
  the per-fetch provenance log, a small last-records preview, health, and usage. Ops: `fetchSourceNow`,
  `probeSource`, `runSourceDoctor`, `getDoctorReport`, `listSourceDoctorReports`, `listSourceFetches`,
  `getSourceHealth`, `getSourceUsage` (+ a minimal `listRecords?source=` preview).
- **Custom push sources & device keys (D).** Inbound webhooks and remote stations: create/edit/delete
  custom sources, manage device-scoped ingest keys, test a mapping over captured samples. Ops:
  `listCustomSources`, `createCustomSource`, `updateCustomSource`, `deleteCustomSource`,
  `createIngestDevice`, `listIngestDevices`, `rotateIngestDeviceKey`, `rotateIngestKey`,
  `testCustomSourceMapping`, `listCustomSourceSamples`, `listIngestFormats`.

## C. Data usage, budgets & collector load

- **Usage & budgets (D/M).** Per-source and global request/byte usage against budgets, and spend over
  time. Ops: `getSourceUsage`, `listSourceHealth` (budget state), `getStatsTop`/`getStatsTimeseries`
  (Stats). (M: a glance.)
- **Collector / load governor (D).** The paced-ingestion controls — **max simultaneous pulls** and the
  other collector settings (the governor from backend prompt 150). This is where the operator tunes the
  box to its hardware. Ops: `getCollectorSettings`, `updateCollectorSettings`.
- **Rate limits & retention (D).** Request rate-limit policy; retention windows and run-now. Ops:
  `getRateLimits`, `updateRateLimits`, `getRetention`, `updateRetention`, `runRetention`.

## D. AI configuration

- **LLM providers (D).** Add/edit/remove/test LLM providers; list each provider's models. Ops:
  `listLlmProviders`, `getLlmProvider`, `createLlmProvider`, `updateLlmProvider`, `deleteLlmProvider`,
  `testLlmProvider`, `listLlmProviderModels`.
- **LLM roles, options & usage (D).** Which model does which job (assessment, Ask, vetting, …),
  options, prompt templates, and LLM spend over time. Ops: `getLlmSettings`, `updateLlmSettings`,
  `getLlmUsage`, `getPromptTemplate`.

## E. Analysis, correlation & feed vetting

- **Correlation recipes (D).** List, edit, and test the intel correlation recipes; inspect and manage
  canonical intel events (cross-source corroboration — members added/merged). Ops: `listIntelRecipes`,
  `updateRecipe`, `testRecipe`, `listIntelEvents`, `getIntelEvent`, `updateIntelEvent`,
  `addIntelEventMember`, `removeIntelEventMember`, `mergeIntelEvent`.
- **Analysis cycles (D).** Configure and run the scheduled AI analysis cycles; review runs and
  maintenance. Ops: `listAnalysisCycles`, `createAnalysisCycle`, `updateAnalysisCycle`,
  `deleteAnalysisCycle`, `runAnalysisCycle`, `listCycleRuns`, `getCycleRun`, `runAnalysisMaintenance`.
- **Assessment feedback & quality (D).** Review assessments and submit quality feedback that drives
  calibration. Ops: `listAssessments`, `getLatestAssessment`, `submitAssessmentFeedback`,
  `getIntelBoard`.
- **Social & news vetting (D).** The "strip the post, keep the fact" surface: configure which platforms
  are collected and how, review the **claims** AI extracted (not the raw posts), narratives, cues and
  lead-times, and import source reputation / media ratings. Ops: `getSocialSettings`,
  `updateSocialSettings`, `listSocialPlatforms`, `getSocialPlatform`, `listClaims`, `getClaim`,
  `listSocialCues`, `getSocialLeadTimes`, `listSocialComparisons`, `importMediaRatings`.
- **Entity-resolution management (D).** The Benjis-style foundation: search entities, inspect their
  linked records and keys, assert/retract keys, and merge duplicates so every downstream graph and
  correlation rests on correct identities. Ops: `listEntities`, `getEntity`, `resolveEntity`,
  `listEntityRecords`, `addEntityKey`, `retractEntityKey`, `mergeEntities`.

## F. Forecasting & external add-ins (EDP)

- **Forecasters & calibration (D).** Register and manage forecasters (this is where **TimesFM** plugs
  in as an external forecaster), compare them, and read the calibration and scorecard — the "are the
  predictions actually right" surface. Ops: `listForecasters`, `updateForecaster`,
  `getForecastCalibration`, `getForecastScorecard`, `compareForecasters`, `refitForecastEnsemble`,
  `createForecastEvaluation`, `getForecastEvaluation`.
- **Forecast questions (D).** Create/edit/resolve/annul the ledger questions the forecasters answer.
  Ops: `listForecastQuestions`, `getForecastQuestion`, `createForecastQuestion`,
  `updateForecastQuestion`, `resolveForecastQuestion`, `annulForecastQuestion`,
  `getForecastQuestionHistory`.
- **External providers & add-ins (D).** The EDP control surface — register, approve, suspend, and
  delete external sources (TimesFM, a relationship-intelligence analyzer, any external enricher),
  manage registration tokens and the source manifest, create and preview the **bindings** that route a
  provider's output back into series/questions/entities, and link provider questions. Ops:
  `listExternalSources`, `getExternalSource`, `registerExternalSource`, `approveExternalSource`,
  `suspendExternalSource`, `deleteExternalSource`, `listRegistrationTokens`, `createRegistrationToken`,
  `deleteRegistrationToken`, `updateExternalSourceManifest`, `listExternalBindings`,
  `createExternalBinding`, `updateExternalBinding`, `deleteExternalBinding`, `previewExternalBinding`,
  `acceptSuggestedBindings`, `createExternalQuestionLink`, `getEdpProtocol`, `validateEdp`.

## G. Alerts, triggers, escalation & channels

- **Trigger rules (D).** Author, edit, test, and mute the rules that turn thresholds/patterns into
  alerts, scoped to a view/situation/watchlist. Ops: the `Triggers` set (`listTriggers`,
  `createTrigger`, `updateTrigger`, `testTrigger`, `muteTrigger` — confirm exact ids at build).
- **Alert Builder (D).** The guided way to build a rule, as a three-node flow read left to right:
  **Dataset** (multi-select sources, with an advisory LLM relevance check that rates each source and
  gives a one-line reason; flagged sources get a one-click Omit and nothing is dropped automatically) →
  **Trigger** (kinds, then conditions as field · operator · value, ANDed, with a dry run of the saved
  rule) → **Delivery** (channel types as checkboxes; each expands to its existing channels or creates
  one; saving routes the rule's alerts to the chosen channels through their `ruleIds`). A new rule
  starts empty; a stored one opens populated, and every member the flow does not edit is kept. Ops:
  `listSources`, `getSource`, `analyzeTriggerSources`, `createTrigger`, `updateTrigger`, `getTrigger`,
  `testTrigger`, `muteTrigger`, `snoozeTrigger`, `listChannelTypes`, `listChannels`, `createChannel`,
  `updateChannel`, `testChannel`.
- **Alert inbox (D/M).** List newest-first, acknowledge, snooze/unsnooze, resolve, and record
  alert-quality feedback; live via SSE. Ops: `listAlerts`, `getAlert`, `acknowledgeAlert`,
  `snoozeAlert`, `unsnoozeAlert`, `resolveAlert`, `setAlertFeedback`, `streamAlerts`. (M: primary
  consumer.)
- **Escalation policies (D).** Create/edit/delete escalation policies; see an alert's escalation state.
  Ops: `listEscalationPolicies`, `getEscalationPolicy`, `createEscalationPolicy`,
  `updateEscalationPolicy`, `deleteEscalationPolicy`, `getAlertEscalation`.
- **Channels (D).** Create/edit/test/delete notification channels, see types and recent deliveries.
  Ops: `listChannels`, `listChannelTypes`, `getChannel`, `createChannel`, `updateChannel`,
  `deleteChannel`, `testChannel`, `listChannelDeliveries`.
- **Watchlists (D).** Define the watchlists that scope triggers and alerts. Ops: the `Watchlists` set
  (`listWatchlists`, etc. — confirm exact ids at build).

## H. Notifications & push

- **Notification inbox (D/M).** List, mark read, badge counts, live stream, and execute notification
  actions. Ops: `listNotifications`, `getNotification`, `getNotificationBadge`, `markNotificationsRead`,
  `streamNotifications`, `executeAction`, `getActionConfirm`, `updatePresence`.
- **Web Push (D).** VAPID key and browser subscriptions (for any web consumer the operator also runs).
  Ops: `getVapidPublicKey`, `createPushSubscription`, `listPushSubscriptions`, `verifyPushSubscription`,
  `deletePushSubscription`.
- **Native push (D config / M register).** FCM/APNs **providers** configured on desktop; the mobile
  companion registers itself as a **device** so phone push works. Ops: `listPushProviders`,
  `putPushProvider`, `deletePushProvider`, `testPushProvider`, `registerPushDevice`, `listPushDevices`,
  `updatePushDevice`, `testPushDevice`, `deletePushDevice`.

## I. Serving, egress & multi-instance

- **Sinks (D).** Stream records out: create/edit/test/delete sinks, see types, status, resync. Ops:
  `listSinks`, `listSinkTypes`, `getSink`, `createSink`, `updateSink`, `deleteSink`, `testSink`,
  `getSinkStatus`, `resyncSink`.
- **Exports & archive (D).** Export jobs, offline packs, snapshots; cold-archive catalog, holds, and
  settings. Ops: `listExports`, `createExport`, `getExport`, `deleteExport`, `downloadExport`,
  `getExportManifest`, `createSnapshot`, `createPack`; `getArchiveCatalog`, `listHolds`, `createHold`,
  `deleteHold`, `getArchiveSettings`, `updateArchiveSettings`.
- **Peers & federation (D).** Register/test/resync peers; federation identity and streams. Ops:
  `listPeers`, `createPeer`, `updatePeer`, `deletePeer`, `testPeer`, `rotatePeerIngestKey`,
  `resyncPeer`; `getFederationInfo`.

## J. System, security & diagnostics

- **System & server settings (D).** Capabilities/contract and server settings. Ops: `getSystem`,
  `getContract`, `getServerSettings`, `updateServerSettings`.
- **Security & access (D).** Security settings (open-reads, token policy), CORS, outbound-URL policy,
  MCP auth, rate limits. Ops: `getSecuritySettings`, `updateSecuritySettings`, `getCors`, `updateCors`,
  `getOutboundSettings`, `updateOutboundSettings`, `getMcpAuthSettings`, `updateMcpAuthSettings`.
- **Tokens & keys (D).** Admin/read tokens, stream tickets, tile keys. Ops: the `Tokens` set (confirm
  exact ids at build).
- **Provenance & signing (D).** Aggregated attributions; rotate the instance signing key; JWKS. Ops:
  `getAttributions`, `rotateSigningKey`, `getSystemJwks`.
- **Watchdog & plugins (D).** Watchdog thresholds; enable/disable plugins. Ops: `getWatchdogSettings`,
  `updateWatchdogSettings`, `listPlugins`, `getPlugin`, `updatePlugin`, `updatePluginSettings`.
- **Settings backup (D).** Export/import all settings for backup and restore. Ops: `exportSettings`,
  `importSettings`.

## K. Mobile companion (subset — same codebase)

A focused operator-on-the-go surface built from the shared code: the **Alert inbox** + push, the
**Notification inbox**, **source on/off + health glance**, and **native-push device registration**. No
configuration-heavy screens; those stay desktop-only via platform-conditional routing.

---

## Backend gaps (owner questions — the interlock with the backend roadmap)

Config this app will want that the API may not fully express today. Each is a candidate backend
endpoint, not something the app invents:

- **AI vetting / corroboration tuning.** LLM providers, roles, and `getSocialSettings` exist, but the
  *claim-extraction → corroboration-threshold → de-hype* controls (how many independent sources, which
  modalities, how spin is stripped to the verifiable core) may need an explicit config surface.
- **Source-reputation weighting.** `importMediaRatings` exists; a tunable weighting of a source's
  track record in corroboration may not.
- **A named TimesFM forecaster config.** TimesFM integrates via the generic EDP (register external
  source + bindings + `updateForecaster`); a first-class "forecaster add-in" config may be worth a
  dedicated surface.
- **Relationship-intelligence analytics config.** Entity resolution and the graph exist; the
  fraud/relationship analytics tuning (ownership-chain, shared-attribute recipes) may be thin.
- **Native-push verification detail.** Providers/devices exist; confirm the full FCM/APNs credential
  shape when building section H.

Resolve each against the backend as the two tracks advance; where the backend grows a knob, the screen
that needs it gets built or completed.
