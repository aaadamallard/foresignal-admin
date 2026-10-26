# R2-005 — Per-user config scoping

**Goal.** Make the existing configuration screens operate on the **signed-in user** over the shared
substrate, and keep the **global / infrastructure** screens behind Operator/Admin. The same code now
serves "my sources / my alerts / my channels / my preferences" to every user, while the instance-wide
knobs (the collection union, the collector governor, shared LLM, global channels, server/security,
serving) are gated. This is where v1's single-operator screens become multi-user.

**Depends on.** R2-002 (the permission provider / nav + control gating). It builds on the v1 features in
`lib/features/sources/`, `lib/features/ai/`, `lib/features/alerts/`, `lib/features/notifications/`, and
`lib/features/system/`. Backend-landed across prompts **R2-008…R2-013** (per-user alerts, channels,
source views, LLM, preferences/views, data-access gating); the client carries the new operations from
the 2.0.0 vendor. Re-vendor `../foresignal/docs/OpenAPI.json` only if it changed since R2-002.

**The split (what moves where).**
- **Shared collection vs my sources.** The source catalog gets two levels. A user's own
  **enabled-source view** is `getMySources` / `updateMySources` (needs `self.sources`) — enable/disable
  for me, my display prefs; this is what a non-operator sees. The **instance collection** (which sources
  the paced collector actually pulls — the union) is `getCollectionSources` / `updateCollectionSources`
  (needs `collection.manage`, Operator/Admin). Make the relationship visible: enabling a source for
  myself adds it to the union; a source in the collection but not in my view is not mine to see. One
  pull feeds everyone — say so, don't imply per-user pulling.
- **Per-user alerts / channels / views / preferences.** Trigger rules (alerts), channels, saved views,
  and preferences now carry an owner; the existing screens operate on the signed-in user's own, gated by
  `self.alerts` / `self.channels` / `self.views` / `self.preferences`. An item the user does not own is
  not shown as theirs.
- **Operator-global surfaces, gated.** Behind the platform permissions (R2-002): the collector governor
  and rate limits / retention (`collector.settings`), **shared** LLM providers (`llm.shared.manage`,
  see R2-007), **global** channels (`channels.global`), System / Security / Tokens / Signing / Plugins
  (`system.settings`), Serving (its own permission), Usage/Stats as the instance figures. A Viewer or
  Editor never sees these.

**Build.**
- Thread the current-user context (R2-002) through the sources, alerts, channels, notifications and
  preferences features so each reads/writes the **me-scoped** operation and renders only the user's own
  items.
- Add the **collection** view to the sources area as an Operator/Admin-gated panel/tab distinct from
  "my sources", wired to `getCollectionSources` / `updateCollectionSources`, with the union relationship
  explained inline.
- Apply the nav/control gating from R2-002 to every global screen so its section and its writes
  disappear for users without the permission — verified by the nav differing between a Viewer, an
  Editor, an Operator and an Admin.
- Where a v1 screen assumed global config that is now per-user, keep the global editor for the
  Operator/Admin and add the per-user editor for everyone — do not delete the operator capability, scope
  it.

**Done when.** `flutter analyze` is clean and `flutter build linux` succeeds; a non-operator user sees
and edits only their own sources/alerts/channels/preferences via the me-scoped operations; the
collection, collector, shared-LLM, global-channel and system/serving screens are present only for the
gated roles; enabling a source for myself is shown to join the shared collection union. Write tests (do
not run them): the sources screen calls `getMySources`/`updateMySources` for a self-service user and
`getCollectionSources` for an operator; a non-operator's nav omits the global sections; a per-user alert
list shows only owned rules.

**Commit.** `R2-005: Per-User-Config-Scoping` + `completion-reports/R2-005-CR-*.md`. **Stage only this
prompt's files.**
