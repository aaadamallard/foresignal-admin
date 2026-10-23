# 015 — System-Security-Diagnostics — completion report

**Implementation commit:** `2a4cdf85889273e1b86f209eed25eb0231c5f4b2`

## What was built

**System section (`/system`, desktop).** It has eight tabs, each with its own route: Overview, Server, Security, Tokens, Signing, Plugins, Operations and Backup. There is no System mock in `design/`, so the pages follow the style already established. Every write is confirmed by reading back.

- **Overview** (`getSystem`, `getContract`).
  - **Instance:** status, version and API version, mode, start time, uptime and whether reads are open; each system and security warning as a panel; one chip per feature flag.
  - Cards for the database, records, sources, ingest (scheduler, writer, queue, catch-up), streams and delivery, AI/search/MCP, serving (sinks, exports, archive, holds), rasters (with the disk quota in the warning color past its limit) and limits.
  - **Client Contract:** contract, context-schema and deep-link versions, object and relation types.
  - **History Storage:** one row per tier, with partitions, rows, size, window, headroom and downsampled leaves.
- **Settings groups.** One form engine (`FieldsForm`) drives every settings resource:
  - Each field has a kind: text, URL, email, integer, number, toggle, choice, multiple choice, lines, duration, instant, bounding box, JSON object or `key = value` lines.
  - Each field is checked before sending, and a group can add its own check.
  - The PUT body starts from the stored object, so members the form does not edit go back unchanged. Read-only members (`warnings`) are dropped.
  - The re-read must hold every member that was sent (`sentDifference`). A null matches an absent member, and instants match by the moment they name.
  - The backend's field errors land on their fields; any other refusal shows as an error panel with its code.
- **Server** (`getServerSettings`, `updateServerSettings`): public base URL, time zone, contact email, the five client-link templates, the Web Push contact, private push hosts and push language. The backend's warnings show above the form.
- **Security**:
  - **Access** (`getSecuritySettings`, `updateSecuritySettings`): open reads, observers, open metrics, MLAT positions and the anonymous restriction. The restriction covers sources, kinds, area, endpoints (each checked as `METHOD /v1/…`) and requests per minute.
  - **CORS** (`getCors`, `updateCors`): read and write origins.
  - **Outbound** (`getOutboundSettings`, `updateOutboundSettings`): allowed and denied hosts and CIDRs.
  - **MCP sign-in** (`getMcpAuthSettings`, `updateMcpAuthSettings`): mode, issuer, audience, key-set URL, scope map (read or agent only), scope claim and algorithms. An identity provider without an issuer is refused before sending.
  - **Rate limits** (`getRateLimits`, `updateRateLimits`): the 007 panel, reused.
- **Tokens:**
  - **Admin Token** (`rotateAdminToken`): asks first, then:
    - shows the new token **once**;
    - writes it to the app's connection store, keeping it saved or session-only as it was;
    - confirms by reading the server settings with it.
  - **API Tokens** (`listTokens`, `createToken`, `updateToken`, `revokeToken`):
    - The table shows each token's name, prefix, principal, scope (and device, for paired ones), last use, expiry, limits (license policy and restriction) and state.
    - **New Token**: name, scope, expiry, principal, private sources, license policy, and a restriction for non-admin scopes. The value is shown once.
    - **License policy** edits the floor of one token.
    - **Revoke** asks first. It is not offered for the bootstrap token, which the contract refuses with `BOOTSTRAP_TOKEN`.
  - **Pairing Codes** (`listPairingCodes`, `createPairingCode`, `deletePairingCode`): name, scope (read or agent), lifetime, private sources, principal and restriction. The code and its pairing link are shown once.
  - **Feed Keys** (`listFeedKeys`, `createFeedKey`, `revokeFeedKey`): name, path prefixes, expiry within 365 days, private sources, and a restriction that must limit sources, kinds or area. The key and its ready-made URLs are shown once.
  - **Tile Keys** (`listTileKeys`, `createTileKey`, `revokeTileKey`): name, the contract's path prefixes as chips, lifetime up to 30 days, and an optional restriction. The key and its URL base are shown once.
  - **Stream and Tile Tickets** (`createStreamTicket`): purpose, narrower paths and a tile lifetime. The ticket is shown once with its expiry and where it is used.
- **Signing:**
  - **Signing Keys** (`getSystemJwks`, `rotateSigningKey`): the key-set URL with copy, and each key's id, algorithm and public key. Rotation asks first and is confirmed by the new kid appearing in the key set.
  - **Attributions** (`getAttributions`): filtered by sources, kinds and license policy. The table shows the source, the text, the license (its URL as a tooltip), whether a map must display it, and the record count. The one-line footer text can be copied.
- **Plugins** (`listPlugins`, `updatePluginSettings`, `getPlugin`, `updatePlugin`):
  - the subsystem switch, confirmed by `listPlugins`;
  - each plugin's version, ABI, kind, state, approval, whether its hash matches, sources and load time;
  - a plugin's card shows the declared and file hashes. **Approve and Enable** needs "I have reviewed the file" ticked and sends the file's hash. It is offered only when the file hashes to what `plugin.json` declares, as the contract requires; otherwise the card says why. **Disable** always works.
- **Operations:**
  - **Notifications** (`getNotificationSettings`, `updateNotificationSettings`): pause until, what is sent while paused, chat commands, image links and language.
  - **Watchdog** (`getWatchdogSettings`, `updateWatchdogSettings`): heartbeat and failure URLs, interval (at least 30 s), method, and the ingest canary.
  - **Weather** (`getWeatherSettings`, `updateWeatherSettings`): alert context, default area and place buffer.
  - **Metric Projections** (`getMetricSettings`, `updateMetricSettings`): the table of gauges; **Add Projection** checks a Prometheus-safe unique name and label names; delete asks first. Each change replaces the whole list and is confirmed by reading it back.
  - **Infrastructure Rules** (`getInfraRules`, `updateInfraRules`): the rule-set version and six rules. Opening one edits its switch, method, relation, confidence and parameters.
- **Backup:**
  - **Export** (`exportSettings`): optional places and watchlists. It shows the export time, version, what the bundle holds, its size, its warnings and the JSON. **Save File** writes it and reads it back to check. **Copy** and **Use for Import** are also offered.
  - **Import** (`importSettings`): from a file or pasted, checked as an object with `sources`. It asks first, then is confirmed by exporting again: the retention, CORS, notification and watchdog objects must read back as imported. The import report lists the sources applied, unknown sources and the counts.
- **Shared changes.** `lib/core/routes.dart` and `lib/core/router.dart` gained the system routes. The preview gained `tool/preview/preview_system.dart`, a contract-shaped fake for every operation above, wired into `preview_main.dart`. The preview's 401 check now compares against the fake's current admin token, so rotation works in the preview.

## Omitted or adapted, and why

- **Not built:**
  - `claimPairingCode` and `updateCurrentTokenDevice`: they are called by the device that pairs, not by an admin. They belong to the 016 companion.
  - `getPairingCodeQr`: the contract serves the QR code as SVG, and the app has no SVG renderer (`grep svg pubspec.yaml` finds nothing). The code and the pairing link are shown, with copy.
  - `getJwks` (`/.well-known/jwks.json`) and `getOpenApiDocument`: public documents. The Signing tab uses `getSystemJwks` and shows the public key-set URL.
- **Raw JSON instead of the generated client** for the settings resources, `getSystem`, `getAttributions` and the bundle:
  - The generated serializer drops top-level null members, and the settings forms must send nulls.
  - A replace must also carry back members the app does not know.
  - The attributions query parameter has a wire name in the contract's spelling (see below).
  - Tokens, keys, plugins, signing and the contract use the generated client.
- **What the import confirms.** The import panel and its confirmation question name only what the contract says an import replaces: retention, CORS, notifications and watchdog. A bundle also carries `server` and `security`; their effect is not claimed (see Owner questions).
- **No per-token revoke or policy for revoked tokens.** A revoked token is listed with its state only.
- **Signing keys show no status.** `Jwk` carries no active/retired status, so the table cannot say which key is active. Only the key just rotated in is marked "New".
- **Noticed and not changed** (outside this prompt):
  - The "Saved and confirmed" chip shows local time, while tables show `whenText` times in UTC. The preview shows both side by side, five hours apart.
  - A create form's status line shows the previous write's chip (for example a revoke) until the next write.

## Owner questions

- **Does an import apply a bundle's `server` and `security` sections?** `exportSettings` includes them, but `importSettings` lists only sources, triggers, channels, retention, CORS, notifications and watchdog. If they are applied, the import confirmation should check them too.
- **Should the app show pairing QR codes?** Adding an SVG package (for example `flutter_svg`) would let it show `getPairingCodeQr`. Today a phone must type the code or open the link.
- **Should `Jwk` (or another read) say which signing key is active?** `SigningKeyInfo` has `status`, but only rotation returns it.

## Wire spellings found and left alone

These are the contract's own names. They sit in `us-english-allow` regions and are not changed:

<!-- us-english-allow-start: names contract wire values it must not respell -->

- `licencePolicy`: an `ApiToken` member, a token-create member and the `getAttributions` query parameter (`system_drafts.dart`, `preview_system.dart`).
- `licence` and `licenceUrl`: `Attribution` members (same files). The UI calls them "License".

<!-- us-english-allow-end -->

`check_us_english.py` reported "0 British spellings".

## Secrets

- New token, admin token, pairing code, feed key, tile key and ticket values are shown **once** in the one-time panel: masked until revealed, with copy, then dismissed. Afterwards only prefixes are shown.
- After rotation, the admin token goes to the app's connection store only. It is never shown again or logged.
- The backup panel says secrets are never in a bundle. The app adds none.
- The preview fake's tokens, keys and hashes are random strings made at run time from a seeded generator.
- During verification the exported bundle was saved to the session scratchpad, not to the home directory.

## Instructions found in data

None. A search of `openapi/OpenAPI.json` for instruction-like text (`ignore previous`, `you must`, `as an AI`, `Claude`, `system prompt`) found only:

- a news-reliability note about a prompt template's version;
- the anthropic provider's example model.

Neither addresses the reader.

## Verification

- `flutter pub get`: dependencies resolved.
- `flutter analyze`: no issues.
- `flutter build linux`: built.
- `check_us_english.py` over lib, test, tool, review and completion-reports printed "0 British spellings".
- `test_us_english.py`: 14 tests, OK (169.2 s).
- Tests were written and **not run**, per the run rules:
  - `test/features/system/system_drafts_test.dart`: field checks, `settingsBody`, defaults, `sentDifference`, the MCP check, metric projections, the restriction, token, pairing, feed-key, tile-key and ticket drafts, and the bundle helpers (`bundleProblem`, `bundleFileName`, `importReportLines`, `importDifference`, `bundleCounts`).
  - `test/features/system/system_screens_test.dart`:
    - the overview;
    - a server save that keeps unedited members;
    - an MCP identity provider refused without an issuer;
    - image links refused without https;
    - a token created with a restriction and shown once;
    - the bootstrap token not revocable, a paired one revoked;
    - an admin-token rotation updating the store and the next request;
    - a plugin approved with its file hash, and a mismatched one not offered;
    - an export → import round trip.
- Checked by hand in the preview build on the private Xvfb display, with real clicks and typing:
  - **Dark theme:**
    - **Overview** with warnings, cards and history tiers.
    - **Server**: an http public URL saved and confirmed; the insecure-URL warning appeared.
    - **Security**: MCP set to an identity provider without an issuer, refused on the field.
    - **Tokens**:
      - a token created with a policy and a restriction, then revealed;
      - a policy edited and a token revoked, both confirmed;
      - the admin token rotated and confirmed with the new token;
      - a pairing code, a feed key and a tile key created;
      - a tile key revoked;
      - a stream ticket minted.
    - **Signing**: the key rotated, confirmed by its kid; attributions filtered by sources and "no non-commercial".
    - **Plugins**: a plugin approved and enabled.
    - **Operations**:
      - image links refused with `IMAGE_LINKS_REQUIRE_HTTPS`;
      - a metric projection added;
      - an infrastructure rule switched on.
    - **Backup**: exported with places, saved to a file (2147 bytes, read back), used for import, imported, and confirmed.
  - **Light theme:** the overview, tokens, a hash-mismatched plugin, and an export.
- **Not checked by hand:** deleting a pairing code or a metric projection; disabling a plugin; the plugin subsystem switch; loading a bundle from a file; the CORS, outbound, watchdog and weather saves.
- Fixed after looking at the screens:
  - "1 sessions" on the overview;
  - the token table running off the card (Device folded into Scope; Policy and Restrictions merged into Limits);
  - revoked tokens showing no state;
  - "Saved and confirmed" after minting a ticket, which nothing re-reads;
  - pairing codes missing the contract's restriction and principal;
  - "Ed25519 (Ed25519)";
  - a license link colored like a link that could not open;
  - Approve offered for a plugin whose file does not match its declared hash;
  - "Get" for the watchdog method;
  - the export summary counting its own warnings and reading "pushproviders".
- Screenshots in `review/`:
  - Overview:
    - `015-overview.png`
    - `015-overview-detail.png`
    - `015-overview-light.png`
  - Settings:
    - `015-server-saved.png`
    - `015-server-saved-warning.png`
    - `015-mcp-issuer-required.png`
    - `015-image-links-need-https.png`
    - `015-metric-projection-added.png`
    - `015-infra-rule-saved.png`
  - Tokens:
    - `015-token-created.png`
    - `015-token-policy.png`
    - `015-token-revoked.png`
    - `015-tokens-light.png`
    - `015-admin-token-rotated.png`
    - `015-pairing-form.png`
    - `015-pairing-code.png`
    - `015-feed-key-created.png`
    - `015-tile-key-created.png`
    - `015-stream-ticket.png`
  - Signing:
    - `015-signing-rotated.png`
    - `015-attributions.png`
  - Plugins:
    - `015-plugin-approved.png`
    - `015-plugin-mismatch-light.png`
  - Backup:
    - `015-export-saved.png`
    - `015-import-confirmed.png`
    - `015-export-light.png`
