# R2-007 — Per-user & shared LLM and channels

**Goal.** Make AI configuration and notification channels multi-user: **shared** (admin-managed)
providers and channels alongside each user's **personal** ones, with **per-user USD budgets**. This
takes v1's single-tenant AI screen (prompt 008) and v1's channels (prompt 012) into the owner model.

**Depends on.** R2-002 (gating) and R2-005 (per-user scoping). Backend-landed with prompts **R2-009
(Per-User-Channels)** and **R2-011 (LLM-Shared-Personal)**; the client carries the operations from the
2.0.0 vendor. Re-vendor `../foresignal/docs/OpenAPI.json` only if it changed since R2-005.

**Read first.** The v2.0 roadmap Part A4/A5 (LLM shared + personal, per-user budgets; per-user
channels); 008-CR and 012/013-CR; `lib/features/ai/` and the channels work under
`lib/features/alerts/`/`lib/features/notifications/`.

**Operations.** LLM: `listLlmProviders`, `getLlmProvider`, `createLlmProvider`, `updateLlmProvider`,
`deleteLlmProvider`, `testLlmProvider`, `listLlmProviderModels`, `getLlmSettings`, `updateLlmSettings`,
`getLlmUsage`, and `getMyLlmBudget` (the user's own per-provider budget/balance). Channels:
`listChannels`, `listChannelTypes`, `getChannel`, `createChannel`, `updateChannel`, `deleteChannel`,
`testChannel`, `listChannelDeliveries`.

**Build.**
- **Shared vs personal providers.** The LLM providers list is split (or filtered) into **Shared**
  (owner-less, managed under `llm.shared.manage` — Operator/Admin) and **Personal** (the signed-in
  user's own, under `self.llm`). Read the owner/shared distinction from whatever field the vendored
  provider schema exposes; when creating, the owner is set by which list you add to (a personal provider
  uses the user's own key; a shared provider is the instance key). A user without `llm.shared.manage`
  sees shared providers as read-only (they can use them) and manages only their personal ones. Provider
  **API keys go to the backend credential store, never stored or logged in-app** (the app shows only
  `apiKeySet`) — unchanged from v1.
- **Per-user budgets.** Surface each provider's USD caps (`hourlyCapUsd` / `dailyCapUsd` /
  `monthlyCapUsd` and the `pricing`) and, from `getMyLlmBudget`, the signed-in user's spend/remaining
  against them, so a user sees their own balance. Editing the caps on a **personal** provider is the
  user's; on a **shared** provider it is the operator's.
- **Roles / settings / usage.** `getLlmSettings` / `updateLlmSettings` (which model does which job) and
  `getLlmUsage` remain, scoped appropriately — the user sees their own usage; the operator sees the
  shared/instance view. `listLlmProviderModels` populates model pickers.
- **Per-user channels.** The channels screen shows the signed-in user's **own** channels
  (`self.channels`) for create/edit/test/delete, and — for an Operator/Admin (`channels.global`) —
  the **global** channels too, clearly labeled. `testChannel` and `listChannelDeliveries` prove a
  channel works. Channel secrets (webhook tokens, SMTP creds on a channel, push keys) go to the backend,
  never the app.
- **Test before trust.** Keep the v1 pattern: `testLlmProvider` / `testChannel` and a re-read confirm a
  change took — not "admire the config".

**Done when.** `flutter analyze` is clean and `flutter build linux` succeeds; providers and channels are
split into shared (operator-gated, read-only for others) and personal/own; a personal provider can be
added with its key sent to the backend and tested; the signed-in user's USD budget/balance renders from
`getMyLlmBudget`; own channels create/test/delete and global channels appear only for the gated roles.
Write tests (do not run them): the provider list separates shared from personal and marks shared
read-only without `llm.shared.manage`; creating a personal provider sends the key to the backend and
shows `apiKeySet`; `getMyLlmBudget` drives the balance; a non-operator's channel list omits globals.

**Commit.** `R2-007: LLM-Channels-UI` + `completion-reports/R2-007-CR-*.md`. **Stage only this prompt's
files.**
