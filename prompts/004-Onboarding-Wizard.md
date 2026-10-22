# 004 — Onboarding-Wizard

**Goal.** A first-run guided path that takes a fresh backend to "configured and flowing" without the
operator having to know the screen map.

**Read first.** [Screens.md](../docs/Screens.md) §A; 003-CR.

**Build.** An optional, skippable, re-openable wizard (desktop) that chains the real screens: connect →
**enable the core set** (`enableCoreSources`) → set any provider keys (deep-links to 006) → validate a
source (deep-links to 006) → configure alerts + push (deep-links to 012/013). It **composes** existing
flows and owns no business logic; each step reflects live backend state.

**Done when.** `flutter analyze` clean, `flutter build linux` succeeds; the wizard walks the steps and
links into the real screens; state reflects the backend. Write tests (do not run them).

**Commit.** `004: Onboarding-Wizard` + `completion-reports/004-CR-*.md`. Stage only this prompt's files;
OpenAPI is the only backend contract; US English.
