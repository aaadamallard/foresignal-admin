# R2-009 — Network-Sourcing-Screen — completion report

**Implementation commit:** `9e0694b07e0eed027161aa319286ef21df843ce4`

**Status:** Complete. The release build was killed by earlyoom again; the debug build succeeded (see Verification).

## What was built

- **Contract re-vendored**, because the committed backend contract changed after R2-008.
  - Source: `../foresignal` commit `c43231f664e23cd2d5fc65626f44aca805b12626` (2026-10-26 19:01:40 -0500, "R2-024: Multi-factor authentication (TOTP + recovery codes)"), the last commit to touch `docs/OpenAPI.json`. It was taken from the committed `HEAD` (`1d3e068f`). New sha256 `321da05dd18056bfebbf0233bf194526485398d3d3a3721cda431d2ee68d8b0b`. `info.version` is still `2.0.0`.
  - A JSON comparison found no operations added or removed and no status changes.
    - Eight operations changed: `disableMfa`, `enrollMfa`, `getMfaRecoveryCodes`, `verifyMfa`, `login`, `listAggregators`, `testAggregator`, `updateAggregator`.
    - Two schemas changed: `MfaStatus` gained `recoveryCodes`. `SessionToken.token` and `expiresAt` are now nullable while `mfaRequired`.
    - The aggregator changes add ground sensors (R2-023): every domain is now implemented, and ground sensors take no endpoint.
  - Client regenerated (7.26.0): 11 changed files. Nothing was hand-edited.
- **System → Network / Sourcing** (`/system/network`):
  - The tab is shown only with `network.manage`. Opening the route without it shows the permission panel.
  - The System section is now reachable with `network.manage` alone.
- **First-party aggregators** (`listAggregators`) come first, local-first. They are a table:
  - domain (ADS-B, AIS, aircraft datalink, direct satellite, ground sensors), name, enabled, mode, local endpoint, live status (with `statusReason`), last seen, and the number of public sources superseded;
  - "Not on this server" when `implemented` is false.
  - **Picking a row opens its setup** (`getAggregator`), with:
    - an enabled switch and a mode (own receiver, aggregated feed, or both);
    - the local endpoint, with a per-domain hint (for example `http://readsb/data/aircraft.json`). It is hidden for ground sensors, which take none;
    - the domain settings as JSON, with the contract's per-domain members listed.
  - **Save** (`updateAggregator`) replaces the configuration whole and is confirmed by re-reading. It also refreshes the source list, because it flips mirrors.
  - **Test** (`testAggregator`) shows live / reachable / not reachable, the sample object count and the message.
  - **Default-off toggle for superseded sources.** The setup lists every superseded public source as a chip; each opens that source's page, where it can be turned back on as a fallback.
    - The `disableSupersededSources` switch reads "Public mirrors off by default while this is live".
    - The text says enabling the aggregator is what turns them off, they stay in the catalog, and turning it off (or the aggregator going down) turns them back on.
    - It says "Live now: the sources below are held off" when that is in effect.
- **Egress pool** (`listEgressRoutes`, which follows `nextCursor`):
  - name, type (HTTP proxy, SOCKS5 proxy, WireGuard / VPN, bound interface / IP);
  - enabled (On / Off / **Unavailable** with `unavailableReason`);
  - the **exit IP** last presented;
  - health (Reachable · latency, Backing off until…, Unreachable, Not checked).
- **Test shows the exit IP.** `testEgressRoute` is a button on each row. The result panel shows the **exit IP** in large selectable text, with latency, time and message. The table's exit IP updates with it.
- **Health.** `getEgressRouteHealth` shows reachability, latency, consecutive failures, backoff, the last error, and the sources a rate limit is holding off the route.
- **Add / edit a route** (`createEgressRoute` / `updateEgressRoute`):
  - per type: a proxy URL (scheme://host:port, credentials refused in the URL) with a user name and password; an imported WireGuard profile; or a bound interface / IP.
  - Confirmed by re-reading the route.
  - **Credentials go to the backend, never the app.** The fields are obscured, sent only when typed, then cleared. The form shows only "Username: set / Password: set" (`secretsSet`).
  - A WireGuard route carries a note that the server cannot bring a tunnel up itself, so the route reads as unavailable until the tunnel is up.
- **Delete** (`deleteEgressRoute`) is behind a confirm.
- **Rotation** (`getEgressSettings` / `updateEgressSettings`):
  - the policy: direct (the default, no routing), round-robin, random, per-source sticky, or rotate-on-rate-limit;
  - the default route (none = direct);
  - confirmed by re-reading.
  - The card says rotation spreads legitimate collection for privacy and resilience, still honors each host's pacer and `Retry-After` per route, and is not a way around a provider's limits.
- **Per-source assignment** (`assignSourceEgress`) sets a pin to a route (or the rotation), plus exclude-from-rotation. It appears in two places:
  - on the Network tab, with a source picker;
  - on a source's own page, Health tab, for a user with `network.manage`.

## Omitted or adapted, and why

- **One fix outside this prompt's surface.** The re-vendor made `SessionToken.expiresAt` nullable, which broke `auth_controller.dart` at compile time. Sign-in now:
  - still returns the MFA challenge when `mfaRequired`;
  - otherwise refuses an answer without a token or expiry as an unexpected reply, instead of storing a session it cannot use.
  - Two tests were added to `test/features/auth/auth_screens_test.dart`.
- **The aggregator `config` is edited as JSON.** The members differ by domain and are extensible (ground sensors alone have six sensor objects). The help line lists the contract's members for each domain. The mode and endpoint, which the prompt names, are their own fields.

## Owner questions

1. **There is no way to read a source's current egress assignment.** The contract has `assignSourceEgress` (PUT) but no GET. Neither the source nor the health schemas carry the pin. The card therefore starts at "the rotation, not excluded" and says the server does not report the current assignment. Should the backend add a read, for example on `getSource` or a `GET /v1/sources/{id}/egress`?
2. **Every egress and aggregator operation is `x-foresignal-status: planned`.** Where the backend has not shipped one, the card shows its error on-screen.
3. **The release build still does not fit.** earlyoom killed the Dart frontend again at 6662 MiB RSS. I fell back to `--debug`, as in R2-008.

## Wire spellings found and left alone

`exitIp`, `boundInterface`, `secretsSet`, `wireguardConfig`, `unavailableReason`, `backoffUntil`, `consecutiveThrottles`, `defaultRoute`, `excludeFromRotation`, `routeId`, `round-robin`, `per-source-sticky`, `rotate-on-rate-limit`, `supersededSources`, `disableSupersededSources`, `lastSeenAt`, `statusReason`, `ground-sensors`. All are US English.

## Secrets

None stored. Proxy user names and passwords and WireGuard profiles are held only in obscured fields until the request is built, then cleared. They are never shown and never logged; only `secretsSet` is displayed. Aggregators carry no credentials (the contract refuses them in endpoints).

## Instructions found in data

None.

## Verification

- `flutter pub get`: dependencies resolved.
- `flutter analyze`: "No issues found!" before the re-vendor. After it there was one error ("The argument type 'DateTime?' can't be assigned to the parameter type 'DateTime'", `auth_controller.dart:126`). After the fix above: "No issues found!".
- **`flutter build linux` (release) failed:** "ERROR: Target kernel_snapshot_program failed: Exception". The journal shows `earlyoom: sending SIGTERM to process 1071098 … "dart:frontend_s" … VmRSS 6662 MiB`.
- **`flutter build linux --debug` succeeded:** "✓ Built build/linux/x64/debug/bundle/foresignal_admin".
- **US English.** A grep of the added diff lines and the new network files for common British spellings found none.
- Tests were written and **not run**, per the run rules. They are in `test/features/network/network_screen_test.dart`:
  - the tab appears only with `network.manage`;
  - the egress table shows exit IP and health;
  - Test shows the exit IP `testEgressRoute` returned;
  - a route's health lists the sources held off it;
  - adding a proxy sends its credentials once, and they are never shown;
  - editing shows `secretsSet` only, with an empty, obscured password;
  - `updateEgressSettings` round-trips the policy and default route;
  - `assignSourceEgress` fires from the source's own page;
  - `listAggregators` renders a domain with mode, endpoint, status and its superseded sources, and the default-off toggle is on;
  - an aggregator is configured with `updateAggregator` and tested.

  Plus two sign-in tests in `test/features/auth/auth_screens_test.dart`.
