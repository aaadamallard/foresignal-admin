# R2-007 — LLM-Channels-UI — completion report

**Implementation commit:** `f4d9fa53644a6d425369aec5d94740dfd2a4fca6`

**Status:** Complete. One owner question: the prompt and the contract disagree on whether non-operators see global channels.

## What was built

- **Contract re-vendored**, because the committed backend contract changed after R2-006.
  - Source: `../foresignal` commit `ea5bb471156f4826c6b27b065c068172aae7b27f` (2026-10-26 18:17:51 -0500, "R2-019: Aggregator surface + local ADS-B aggregator"), from the committed `HEAD`. New sha256 `46071a660e6db6d1d9e655813a86bdef376f67efa9106e5c83f8801887d064a5`. `info.version` is still `2.0.0`.
  - A JSON comparison found no operations added or removed and no status changes. Twelve egress and aggregator operations changed, and three schemas (`Aggregator`, `EgressHealth`, `EgressRoute`).
  - Client regenerated (7.26.0): 16 changed files and one new model (`EgressHealthSourcesInner`). Nothing was hand-edited.
- **Providers: shared vs personal.** Which kind a provider is comes from the vendored `LlmProvider.shared` and `ownerPrincipalId`.
  - **Shared providers**:
    - With `llm.shared.manage`, the card says they use the instance's keys and each user spends within their share.
    - Without it, they are read-only: "Managed by an operator for everyone. You can use them within your share." The row button reads **View**.
  - **Your personal providers** (or **Personal providers**, with every owner, for an admin who manages users) have an Owner column.
  - Both tables gained a **Monthly cap** column: the provider cap, and "$10.00 each" for a shared provider's per-user cap.
  - **Add Personal Provider** shows for a session with `self.llm`. **Add Shared Provider** is gated on `llm.shared.manage`; it reads "Add Provider" when the user cannot own one, for example on the admin token.
- **Adding a provider** (`/ai/new-provider?kind=personal|shared`):
  - The default kind is personal for a session that may own one. A user who holds both permissions gets a Personal/Shared switch. The admin token always adds shared.
  - The header says whose key it uses.
  - The draft sends `shared` on create; a replace keeps the kind, as the contract says. The API key goes to the backend once and the field is cleared, unchanged from v1. The page then shows `apiKeySet`, never the key.
  - The re-read also confirms the kind.
- **A shared provider opened without `llm.shared.manage`**:
  - shows a "Shared provider" note;
  - gates Save, Test Provider and Delete (lock and "Needs llm.shared.manage");
  - shows an ownership chip in the header.
  - A personal provider's actions need `self.llm`.
  - Test (`probeLlmProvider`, unsaved settings) needs `llm.shared.manage`, as the contract declares. A personal provider is tested once saved, with `testLlmProvider`.
- **Per-user caps.** A shared provider's Budget card gains "Each user's share": per-user hourly, daily and monthly caps (`perUser*CapUsd`).
  - They are validated like the other caps (4 places, and a price is needed first), sent only for a shared provider, and confirmed on re-read.
- **My LLM budget**, from `getMyLlmBudget`, sits above the providers for a session with `self.llm`. It shows the total spent this UTC month, then per provider: kind, cap (the user's share or their own cap), spent and remaining.
- **AI tabs.** Roles, Options and Usage are the shared configuration's (`getLlmSettings` and `getLlmUsage` need `llm.shared.manage`), so they are mounted only with that permission. Prompt Templates declares no permission and stays. A user's own usage is their budget.
- **Channels.**
  - The list shows the global channels only with `channels.global`. Everyone sees their own; an admin who manages users sees all, with owners.
  - New Channel offers a **Mine / Global** switch to a user who holds both. A user with only one gets that kind, and `global` is sent on create. The admin token leaves the choice to the server, which always makes it global.
  - Test, deliveries and delete are unchanged, and the global-channel note from R2-005 stays.

## Omitted or adapted, and why

- **One R2-005 behavior was changed on purpose.** R2-005 kept global channels in every signed-in user's list. This prompt says a non-operator's list omits them, so the list now keeps unowned channels only with `channels.global`.
  - The R2-005 test was rewritten to match ("a non-operator's channel list keeps only their own channels").
  - One existing exact-body test (`provider_draft_test.dart`, the Anthropic create) gained `'shared': true`, because creates now name the kind.

## Owner questions

1. **These two disagree; which should change?**
   - **The prompt** says a non-operator's channel list omits global channels.
   - **The contract** (`listChannels`, v2.0) says a signed-in user "see[s] their own channels and the global ones", and that "a user's alerts go to their own channels and to the global channels whose `ruleIds` name the rule".
   - The app follows the prompt and hides them client-side. The server still sends them.
2. **`getMyLlmBudget` is `x-foresignal-status: planned`.** Until the backend ships it, the budget card shows the backend's error on-screen.

## Wire spellings found and left alone

`shared`, `ownerPrincipalId`, `perUserHourlyCapUsd`, `perUserDailyCapUsd`, `perUserMonthlyCapUsd`, `capUsd`, `spentUsd`, `remainingUsd`, `totalSpentUsd`, and `global`. All are US English.

## Secrets

None stored. A provider's API key is held only in its field until the request is built, then cleared. Channel secrets are unchanged from v1 (sent only when typed, never shown).

## Instructions found in data

None.

## Verification

- `flutter pub get`: dependencies resolved.
- `flutter analyze`: "No issues found!", before and after the re-vendor.
- `flutter build linux` (release) **succeeded** both times: "✓ Built build/linux/x64/release/bundle/foresignal_admin".
- **US English.** A grep of the added diff lines and the new test file for common British spellings found none.
- Tests were written and **not run**, per the run rules. They are in `test/features/ai/llm_channels_scoping_test.dart`:
  - the provider list separates shared from personal:
    - shared is View-only and Add Shared is gated without `llm.shared.manage`;
    - the shared tabs are not mounted;
  - a shared provider opened by an Editor shows the read-only note, and Save and Delete are gated;
  - creating a personal provider sends `shared: false` with the key, re-reads it, then shows the key state, never the key, and the "Yours" chip;
  - `getMyLlmBudget` drives the total and the remaining balance per provider;
  - a non-operator's channel list omits globals;
  - an operator's list shows them labeled Global, without another user's personal channel.

  Also updated: `test/features/scoping/per_user_scoping_test.dart` (the channel case) and `test/features/ai/provider_draft_test.dart` (the `shared` member).
