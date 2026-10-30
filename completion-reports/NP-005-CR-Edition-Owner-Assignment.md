# NP-005 — Edition owner assignment — completion report

**Implementation commit:** `319711411e27efd3e4f76a380cb0edbcfdb0f916`

**Status:** Complete. `flutter analyze` clean; the debug Linux build succeeded. The release
`flutter build linux` could not be run on this host now — the owner's real backend is up (see
"Build gate") — so verification used the debug build, the path NP-001…NP-004 established. Tests
are written and **not run**, per the owner directive.

## The re-vendor (2.1.0 → 2.1.1)

- **Source:** `../foresignal/docs/OpenAPI.json`, `info.version` **2.1.1**. Copied byte-for-byte —
  `cmp` reports the vendored `openapi/OpenAPI.json` identical to the source; sha256 begins
  `bd9854933cbeb43a…`.
- **`openapi/VERSION`** set to `2.1.1`; `lib/api/contract_version.dart` `vendoredApiVersion` →
  `2.1.1`; `test/api/contract_version_test.dart` now asserts `2.1.1` and that the spec contains
  `"version": "2.1.1"`.
- **Client regenerated** with `tool/generate_api.sh` (openapi-generator 7.26.0, dart-dio +
  built_value); 3744 Dart files written, nothing hand-edited. `flutter pub get` refreshed the
  `foresignal_api` path dependency in `pubspec.lock` from `2.1.0` to `2.1.1`.

### The 2.1.0 → 2.1.1 delta — additive, exactly as the prompt predicts

- **`BriefingInput.ownerUserId`** is now a writable member (`string | null`, uuid): "On
  `createBriefing`/`updateBriefing` it defaults to the creating user; only a caller holding
  `users.manage` may set it to another user … Null for a briefing created with an API token."
  The 2.1.0 `BriefingInput` had no owner field — the gap NP-003's CR flagged.
- The read model **`Briefing`** already carried a read-only `ownerUserId` (via its `allOf` of
  `BriefingInput` plus the response-only members), so the current owner was already readable; 2.1.1
  only makes it settable on the input.
- No operations or schemas removed; no call site broke.

## The owner control (`lib/features/editions/edition_composer_screen.dart`)

- A new **Owner** card (`Key('edition.owner')`) is built in the edition composer **only when the
  caller holds `users.manage`** — `ref.watch(accessProvider).can(Permissions.usersManage)`. The
  admin token holds it (it may do everything); a signed-in session must carry the permission.
- The card loads the users via the existing `usersProvider` (`listUsers`) and offers a picker
  (`Key('edition.owner.picker')`) of every user, labeled `Full Name (email)`, plus a leading
  **"The creating user (default)"** sentinel that maps to a null owner. On an existing edition it
  shows the **current owner** on a line (`Key('edition.owner.current')`), resolved from the
  edition's read-only `ownerUserId`.
- `_body()` sends `ownerUserId` **only** when the caller holds `users.manage` and a specific user
  is chosen; a null/default owner and a caller without the permission leave the field off, so the
  backend keeps the edition with its creator. This preserves the existing behavior that the save
  body omits the read-only, server-owned members.
- **Test before trust:** after a save the composer already re-reads the edition
  (`invalidate(editionProvider)` → `getBriefing`); the current-owner line then reflects the new
  owner. A widget test asserts this round-trip.

## Permission gating (R2-002)

The control follows the R2-002 pattern: it is gated on the signed-in permissions through
`accessProvider.can(...)`, not shown-then-disabled. A session without `users.manage` never builds
the card; the rest of the composer is unchanged. The Editions section itself needs `intel.read`
to mount (`lib/core/nav.dart`), unchanged by this prompt.

## Tests written (not run)

In `test/features/editions/editions_test.dart` (the fake edition backend extended to answer
`listUsers` and to honor a sent `ownerUserId` on create/update):

1. **A `users.manage` caller assigns an owner and the re-read shows it** — picks "Ana Ng" in the
   owner picker, saves, asserts the `PUT /v1/briefings/e1` body carries `ownerUserId: u-ana`, the
   backend stored it, and the re-read's current-owner line shows the new owner.
2. **The composer shows an edition's current owner** — an edition owned by `u-ben` renders the
   current-owner line naming "Ben Fold".
3. **A session without `users.manage` has no owner control** — a signed-in session holding only
   `intel.read` opens the composer; `Key('edition.owner')` is absent while the rest is present.

`test/api/contract_version_test.dart` updated to the 2.1.1 pin.

## Build gate

- `flutter analyze`: **clean** ("No issues found!"), test sources included.
- `flutter build linux` (release): **not run on this host now.** The owner's real backend is up —
  `java … -jar` at ≈6.9 GB plus its PostgreSQL sessions — leaving ~5 GiB free with swap full. A
  capped 11 G release build's AOT `kernel_snapshot` step cannot fit, the OOM pattern the R2 and
  NP-001 CRs recorded, and `tool/capped_build.sh` itself says not to build beside the running
  server. I did not stop the server (the "one real server; ask before restarting" directive).
- `tool/capped_build.sh flutter build linux --debug`: **succeeded** — `✓ Built
  build/linux/x64/debug/bundle/foresignal_admin`. With `analyze` clean and the debug (AOT-free)
  build clean, the code compiles; the release gap is memory contention, not a defect.

## Questions for the owner

1. **Release build vs. the running backend.** As in NP-001…NP-004, a release `flutter build linux`
   (~11 G) cannot share this 23 GiB host with the live backend (~7.5 GiB). Verification continues
   on the debug build. Confirm that remains acceptable, or say when the server may be stopped for a
   release build.
2. **Reassigning back to the creator.** The picker's "The creating user (default)" entry sets a
   null owner, and `_body()` then omits `ownerUserId`; on an `updateBriefing` the backend is
   expected to re-default it to the caller. If instead an explicit null is required to transfer an
   already-owned edition back, say so and the save can send `ownerUserId: null` rather than
   omitting it.
