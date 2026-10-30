# NP-005 — Edition owner assignment

**Goal.** Re-vendor the **2.1.1** contract and let an operator **assign an edition to a user** in the
edition composer — set `ownerUserId` (requires `users.manage`) so the operator can stand a newspaper
up on a user's behalf, and show the current owner.

**Depends on.** Backend **NP-008** merged (the 2.1.1 contract: writable `BriefingInput.ownerUserId`
and the `self.editions` surface). Admin NP-001 (2.1.0 vendor), NP-003 (edition composer), R2-002
(gating).

**Read first.** `openapi/VERSION` + the generation script; the NP-003 edition composer; the
`BriefingInput.ownerUserId` field and `listUsers` in the vendored 2.1.1 spec; `lib/features/users/`
for the user picker pattern.

**Operations.** Re-vendor only. Then `createBriefing`/`updateBriefing` (now carrying `ownerUserId`)
and `listUsers` (to pick the owner).

**Build.**
- Re-vendor `../foresignal/docs/OpenAPI.json` (2.1.1) byte-for-byte, `openapi/VERSION` → 2.1.1,
  regenerate the Dart client. Delta is additive.
- In the edition composer (NP-003), add an **owner** control shown only to a caller holding
  `users.manage`: pick a user (via `listUsers`) to set `ownerUserId` on create/update, and display
  the current owner. A caller without `users.manage` does not see the control; the edition stays
  owned by its creator.
- Test before trust: after assigning, re-read the edition and confirm the owner.

**Done when.** `flutter analyze` clean and `flutter build linux` succeeds; `openapi/VERSION` is 2.1.1;
an operator with `users.manage` can assign an edition's owner and see it reflected; the control is
hidden otherwise. Write tests (do not run): the owner picker sets `ownerUserId`; a re-read shows the
new owner; a non-`users.manage` session has no control.

**Commit.** `NP-005: Edition-Owner-Assignment` + `completion-reports/NP-005-CR-*.md`. **Stage only
this prompt's files.**
