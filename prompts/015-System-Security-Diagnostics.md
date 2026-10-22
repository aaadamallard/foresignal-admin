# 015 — System-Security-Diagnostics

**Goal.** The instance's settings, security, keys, diagnostics, and backup — the operator's control over
the box itself.

**Read first.** [Screens.md](../docs/Screens.md) §J; [Architecture.md](../docs/Architecture.md) §6; 003-CR.

**Build.**
- **System & server:** `getSystem`, `getContract`, `getServerSettings`, `updateServerSettings`.
- **Security & access:** `getSecuritySettings` / `updateSecuritySettings` (open-reads, token policy),
  `getCors` / `updateCors`, `getOutboundSettings` / `updateOutboundSettings`, `getMcpAuthSettings` /
  `updateMcpAuthSettings`, `getRateLimits` / `updateRateLimits`.
- **Other settings:** `getMetricSettings` / `updateMetricSettings`, `getNotificationSettings` /
  `updateNotificationSettings`, `getInfraRules` / `updateInfraRules`, `getWeatherSettings` /
  `updateWeatherSettings`, `getWatchdogSettings` / `updateWatchdogSettings`.
- **Tokens & keys:** the `Tokens` operations (admin/read tokens, stream tickets, tile keys — confirm the
  operationIds in `openapi/OpenAPI.json`).
- **Provenance & signing:** `getAttributions`, `rotateSigningKey`, `getSystemJwks`.
- **Plugins:** `listPlugins`, `getPlugin`, `updatePlugin`, `updatePluginSettings`.
- **Settings backup:** `exportSettings`, `importSettings`.

**Done when.** `flutter analyze` clean, build succeeds; each settings group reads and writes with
re-read confirmation, a plugin toggles, and settings export/import round-trips. Write tests (do not run
them).

**Commit.** `015: System-Security-Diagnostics` + `completion-reports/015-CR-*.md`. Stage only this
prompt's files.
