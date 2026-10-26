# R2-005 — Per-User-Config-Scoping — completion report

**Implementation commit:** `994e46b234f1afa6f62baa7b6e3203ec278bdbb6`

**Status:** Complete. Saved views and per-user preferences are not covered here; the reasons are under "Omitted or adapted".

## What was built

- **The contract was not re-vendored.** The committed backend contract still has sha256 `9ad4972b…`, the same as R2-004 vendored.
- **Who the signed-in user is.** `AccessState` gained `principalId`, taken from `getMe`'s `principal.id`. This is what an item's `ownerPrincipalId` is compared with.
- **Ownership** (`lib/core/ownership.dart`, new):
  - `Ownership` labels an item **Yours**, **Shared**, **Global** or **Another user**.
  - `ownershipOf()` works out which one applies.
  - `seesEveryOwner()` is true for the admin token, anonymous reads, or a session with `users.manage`.
  - `ownedByCaller()` keeps only the caller's own items for everyone else. It can also keep unowned items when asked.
  - `OwnershipChip` shows the label; for another user's item, the tooltip carries the owner principal.
  - Before `getMe` has named the user, the list is left as the server sent it. The server already scopes it, so nothing is hidden because a read is still pending.
- **Sources, two levels.** The Sources screen now shows the scopes the user holds as tabs:
  - **Catalog** is the v1 screen, kept whole. It shows for the admin token, for `collection.manage`, and read-only for a reader with no source view of their own (a Viewer).
    - Its instance enable switch and the Enable Core/Free buttons now need `collection.manage`. That is what `updateSource`, `enableCoreSources` and `enableFreeSources` declare.
  - **My sources** (session plus `self.sources`) uses `getMySources` / `updateMySources`.
    - Each source has a "Show for me" switch, an Instance column (Collected / Not collected), and the user's own label and color, edited in a dialog.
    - The view is opt-out: a source the user never changed shows as on.
    - A write sends the whole view, with only the changed entry replaced, then re-reads it through `writeThenConfirm`.
    - Turning a source on shows "*name* is in your view: it now counts toward the shared collection union. The instance pulls it once for everyone who keeps it on."
  - **Collection** (`collection.manage`) uses `getCollectionSources` / `updateCollectionSources`.
    - Each source shows an "In collection" switch, "Users keeping it on" (`enabledByUsers`), and a Pulled state: Once, for everyone / No user keeps it on / Not collected.
    - A write sends only the changed source, then re-reads. A `409 CREDENTIALS_REQUIRED` shows in the status line.
  - Both panels say that **one pull feeds everyone** and that no user's view adds a second pull. The Collection panel also says that taking a source out stops it for everyone, whatever their views say.
- **Trigger rules (alerts).**
  - The list has an **Owner** column.
  - A signed-in user without `users.manage` sees only their own rules. Shared rules and other users' rules are not shown as theirs. The empty state reads "You have no trigger rules yet."
  - An admin with `users.manage`, or the admin token, sees every rule with its owner.
  - New Trigger is gated on `self.alerts`.
- **Channels.**
  - The list has an **Owner** column (Yours / Global / Another user).
  - A self-service user sees their own channels and the global ones.
  - New Channel is gated on `self.channels` or `channels.global`.
  - A global channel opened without `channels.global` shows a note: alerts can use it, but changing it needs that permission. The server's refusal still shows if a change is tried. R2-007 adds the personal/global choice on create.
- **Global surfaces.** The nav and section gating came from R2-002. The test below now checks that the nav differs between Viewer, Editor, Operator and Admin.

## Omitted or adapted, and why

- **Saved views have no screen in this app.** `grep -rn "listViews\|getViews\|SavedView" lib --include=*.dart`, excluding the generated client, matches only the `maxSavedViews` quota label in `user_screen.dart`. So there was no screen to scope, and I didn't invent one. `ownedByCaller` is ready for one.
- **Per-user preferences and notification preferences** (`getMyPreferences`, `listMyNotificationPreferences`) are R2-006's Profile screen, so they are not duplicated here.
- **The catalog is not shown to a self-service user** who holds `self.sources` without `collection.manage`. Its switches are instance-wide, and the prompt says a non-operator "sees and edits only their own sources". Source detail, health and test are still reachable by deep link; their writes are refused by the server.
- **`getMySources` / `updateMySources` are `x-foresignal-status: planned`** in the contract. Until the backend ships them, My sources shows the backend's error on-screen, as the run rules expect.

## Owner questions

1. **Should a self-service user (an Editor) still see the read-only instance catalog** (health, credentials, usage) next to My sources? Today it is hidden from them.
2. **Shared rules for a signed-in non-admin.** The contract says the server doesn't return them. If they should be visible (read-only), the list needs `keepUnowned: true`, as channels already have.

## Wire spellings found and left alone

`ownerPrincipalId`, `global`, `inCollection`, `enabledByUsers`, `displayName`, `color`, and `CREDENTIALS_REQUIRED`. All are US English.

## Secrets

None.

## Instructions found in data

None.

## Verification

- `flutter pub get`: dependencies resolved.
- `flutter analyze`: "No issues found!"
- `flutter build linux` (release) **succeeded**: "✓ Built build/linux/x64/release/bundle/foresignal_admin". earlyoom did not kill it this time. The debug build also succeeded.
- **US English.** A grep of the new files and of the added diff lines for common British spellings found none.
- Tests were written and **not run**, per the run rules. They are in `test/features/scoping/per_user_scoping_test.dart`:
  - the nav differs between Viewer, Editor, Operator and Admin, and the global sections are absent for a Viewer and an Editor;
  - `ownedByCaller` and `ownershipOf` behave as described;
  - a self-service (Editor) user's Sources screen calls `getMySources`, has no Catalog or Collection tab, and sends `updateMySources` with the toggled entry. It then re-reads and shows the "joins the union" result, and never calls `updateSource`;
  - an Operator's Collection tab calls `getCollectionSources`, and a toggle sends `updateCollectionSources` with just that source;
  - a per-user alert list shows only the owned rule, marked Yours, and not another user's or a shared one;
  - a user's channel list keeps their own and the global channels, and omits another user's.
