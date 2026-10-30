# NP-000 — Automated Newspaper admin run sequence (API 2.1.0)

> **Index only — not an executable prompt** (skipped like `000`). It drives the **admin console** side
> of the Automated Newspaper feature (`NP-001`…`NP-004`) at API **2.1.0** — the operator surface for
> composing and publishing editions. Separate from the finished R2 (RBAC) campaign.

Run as usual: **one** Claude Code session at the repo root, **runs all prompts in order straight
through to the end without pausing**. Do not stop at per-prompt gates; any question or decision goes
into that prompt's completion report and the run continues. Only stop on a hard failure the run
cannot get past (e.g. compile cannot be made to pass).

## Prerequisite (hard dependency)

This campaign vendors and builds on the backend's **2.1.0** spec, which the **backend** Automated
Newspaper campaign (`foresignal` `NP-001`…`NP-007`) produces. **Do not start this until that backend
campaign is merged** (`../foresignal/docs/OpenAPI.json` at `info.version` 2.1.0). `NP-001` is the
vendor step; the rest build on it.

## To start this campaign

The R2 campaign is finished (`completion-reports/RUN-STATUS.md` says "Finished"). Clear/replace that
marker, then hand this session `NP-000`; it runs `NP-001` first.

## The prompts

| # | Title | What it does |
|---|---|---|
| NP-001 | Vendor OpenAPI 2.1.0 | Re-vendor the 2.1.0 spec, regenerate the Dart client, compile clean |
| NP-002 | Translation configuration | Operator sets target language(s), fields, engine, budget; per-source override |
| NP-003 | Edition composer | Define/customize an edition — feed/sources, sections, schedule, language, voice, preview |
| NP-004 | Edition outputs & publishing | Targets (email/push/website/alerts), hosted+shareable URL, breaking-news rules, provenance toggles |

## Standing rules (same as the R2 admin campaign)

- **OpenAPI is the only backend contract;** re-vendor `../foresignal/docs/OpenAPI.json` (2.1.0) in
  `NP-001`; the Dart client under `lib/api/generated/` is generated, never hand-edited.
- **Secrets never live in the app** — provider/engine/channel keys go to the backend; the app shows
  only that a secret is set.
- **Gate every screen** on the signed-in permissions (the R2-002 pattern).
- **Compile-only gate, every prompt:** `flutter analyze` clean and `flutter build linux` succeeds.
  Tests are written, not run.
- **No pausing;** after each prompt commit `NP-00N: <Title>`, write
  `completion-reports/NP-00N-CR-<Name>.md` (implementation hash + any questions), and continue
  straight to the next prompt. Stage only each prompt's files.
