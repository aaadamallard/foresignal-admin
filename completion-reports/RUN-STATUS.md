# Run status — 2026-10-23T12:13:34Z
- Last completed prompt: 018-Collector-Governor-Gauges (implementation commit 1397ace3928522db16f304807871ced71b380e28)
- Stopped at: none — every prompt from 001 to 018 has a completion report
- Reason: Finished
- Partial prompts awaiting review: none
- What the owner needs to do:
  - **Test status:** every prompt's tests were written but never run, per the run rules. When you
    declare the project code-complete, run `flutter test` and `integration_test`.
  - **Owner-deferred builds:** macOS, Windows and iOS do not build on this Linux host (017-CR gives
    the exact messages). Build them on the MacBook and a Windows machine with the README's commands.
  - **Push:** add the app's Firebase configuration (`google-services.json`,
    `GoogleService-Info.plist`) and, for iOS, the push entitlement. Until then, native push neither
    registers nor arrives (013-CR, 016-CR).
  - **Packaging decisions** (017-CR owner questions): the license and copyright holder, the `.deb`
    Maintainer, an app icon, an Android release keystore, and whether an AppImage is wanted.
  - **Open owner questions:** read each completion report's "Owner questions" section, notably the
    meaning of the push members `l` and `t`, and whether tray actions are wanted (016-CR).
- How to resume: delete completion-reports/RUN-STATUS.md (commit + push), then run this driver again
