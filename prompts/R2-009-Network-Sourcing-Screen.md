# R2-009 — Network / Sourcing screen

**Goal.** The `network.manage`-gated **System → Network / Sourcing** surface: the **egress pool** (add a
proxy or WireGuard route; **Test shows the exit IP**), the **rotation policy** and default route,
**per-source egress assignment**, live **egress health** — and the **first-party aggregators** (ADS-B /
AIS / datalink / satellite / ground) with their setup, endpoints, live status, and the **default-off
toggle** for each superseded public source.

**Depends on.** R2-002 (gating) — intra-admin only; it does **not** wait on the backend. The client
carries the egress and aggregator operations from the 2.0.0 vendor. Re-vendor
`../foresignal/docs/OpenAPI.json` only if it changed since R2-002.

**Read first.** The v2.0 roadmap Part C (C1 egress, C2 local ADS-B aggregator, C3 first-party
aggregators across RF/sensor domains — the local-first principle and the "keep public mirrors but
default them OFF once a first-party feed is live" rule); 014-CR (Serving/egress v1 context) and 015-CR
(System tabs); `lib/features/system/` tab idiom and `lib/features/sources/` for the per-source panel.

**Operations.** Egress: `listEgressRoutes`, `getEgressRoute`, `createEgressRoute`, `updateEgressRoute`,
`deleteEgressRoute`, `testEgressRoute` (reports the observed **exit IP**), `getEgressRouteHealth`;
`getEgressSettings` / `updateEgressSettings` (rotation policy + default route);
`assignSourceEgress` (per-source). Aggregators: `listAggregators`, `getAggregator`, `updateAggregator`,
`testAggregator`.

**Build.** A `network.manage`-gated **Network / Sourcing** tab under System, in two parts.

*Egress (the fallback for sources that can't be self-hosted):*
- **Pool.** `listEgressRoutes` as a table: name, type (HTTP/SOCKS5 proxy, WireGuard/VPN, bound
  interface/IP), enabled, the **exit IP** it last presented, and health. Add/edit a route
  (`createEgressRoute` / `updateEgressRoute`) — a proxy URL + credentials, or an imported WireGuard
  config, or a bound interface. **Proxy/VPN credentials go to the backend, encrypted, never the app**
  (show only `secretsSet`). Delete via `deleteEgressRoute` behind a confirm.
- **Test shows the exit IP.** `testEgressRoute` is the headline action — it reports the **public exit
  IP** the route presents; show it prominently (this is how the operator proves a route works and sees
  what address a source would be pulled from). `getEgressRouteHealth` gives per-route reachability /
  latency / backoff.
- **Rotation policy.** `getEgressSettings` → round-robin / random / per-source sticky /
  rotate-on-rate-limit, plus the **default route**, defaulting to **direct (off, opt-in)** →
  `updateEgressSettings`. Make clear rotation spreads legitimate collection and preserves privacy /
  resilience and still honors each host's pacer and `Retry-After` per egress — it is not for
  brute-forcing a provider's limits.
- **Per-source assignment.** `assignSourceEgress` — pin a source to a specific route (e.g. a geo-locked
  source to an in-region exit) or exclude it from rotation; surfaced both here and from the source's
  detail.

*First-party aggregators (the mission — local-first supersedes egress where a feed is self-mirrorable):*
- **List.** `listAggregators` per domain (ADS-B, AIS, aircraft datalink — ACARS/VDL/HFDL/APRS, direct
  satellite, ground sensors — seismic/SAME-EAS/radiosonde/air-quality/PWS/mesh). Each row: name, enabled,
  **mode** (own receiver vs aggregating the feed), its local **endpoint**, live **status**, last seen,
  and the **superseded public sources** it replaces.
- **Setup + endpoints.** `getAggregator` → configure the mode and the local endpoint (e.g. a local
  readsb `http://localhost` for ADS-B via the existing base-URL override) → `updateAggregator`.
  `testAggregator` proves it is live and shows its status.
- **Default-off toggle for superseded public sources.** For each aggregator that is live, present the
  **default-off** control over the public mirrors it supersedes (adsb.lol / adsb.fi / airplanes.live for
  ADS-B, the AIS mirrors, airframes.io, APRS-IS, the NOAA satellite mirrors, gpsjam, …): the public
  source stays in the catalog as a zero-setup opt-in fallback but is **off by default** once the
  first-party feed is running. Make the relationship explicit — enabling a first-party aggregator is
  what flips its mirrors off, and they can be re-enabled as a fallback.

**Done when.** `flutter analyze` is clean and `flutter build linux` succeeds; the tab appears only with
`network.manage`; an egress route can be added (creds to the backend), **Test reports the exit IP**, the
rotation policy and default route save and re-read, a source can be pinned to a route; the aggregators
list renders with mode/endpoint/status, one can be configured and tested, and its superseded public
sources show the default-off toggle. Write tests (do not run them): the egress table shows exit IP and
health; `testEgressRoute` surfaces the returned exit IP; `updateEgressSettings` round-trips the policy;
`assignSourceEgress` fires for a source; `listAggregators` renders a domain with its superseded sources
and the default-off control; secret fields show `secretsSet` only.

**Commit.** `R2-009: Network-Sourcing-Screen` + `completion-reports/R2-009-CR-*.md`. **Stage only this
prompt's files.**
