# 017 — Build-Package-Deploy — completion report

**Implementation commit:** `222779a673366aed43a62c93e5cfba10d866f335`

## What was built

**Status:** Linux and Android are built and packaged here. macOS, Windows and iOS are owner-deferred: their toolchains run only on their own hosts.

- **Linux packaging** (`tool/package/package_linux.sh`) builds `flutter build linux --release` and writes two packages into `dist/` (git-ignored):
  - `foresignal-admin-1.0.0-linux-x64.tar.gz` holds the release bundle, its desktop entry and its icon. It runs from wherever it is unpacked.
  - `foresignal-admin_1.0.0-1_amd64.deb` installs:
    - the bundle to `/opt/foresignal-admin`;
    - a `/usr/bin/foresignal-admin` symlink;
    - `com.foresignal.foresignal_admin.desktop` and its icon (hicolor 192×192).
    - It depends on `libgtk-3-0t64 | libgtk-3-0, libsecret-1-0, libstdc++6, libc6`.
  - The version and build number are read from `pubspec.yaml`.
  - `--no-build` packages an existing bundle.
  - Permissions are normalized (directories 755, files 644).
- **Desktop entry** (`linux/packaging/com.foresignal.foresignal_admin.desktop`). It is named after the Linux `APPLICATION_ID`, and `StartupWMClass` matches the window: the runner calls `g_set_prgname(APPLICATION_ID)`.
- **Android packaging** (`tool/package/package_android.sh`) builds the release `.apk` and `.aab` into `dist/`.
- **Android release signing.** `android/app/build.gradle.kts` now signs release builds with `android/key.properties` (storeFile, storePassword, keyAlias, keyPassword) when that file exists. This is Flutter's documented pattern. Without the file it falls back to the debug key, as before. `android/.gitignore` already ignores `key.properties`, `*.jks` and `*.keystore`.
- **Backend URL at first run, persisted.** This was already in place from 003:
  - Connect saves the URL and token in the platform secure store;
  - `main` restores the URL on start;
  - `connect_controller_test.dart` covers it.
  - This prompt fixed a deploy failure found while running the package (see below).
- **Secure store unavailable (fixed).**
  - **The failure:** the packaged app was run on a display with no Secret Service. On a Linux desktop without GNOME Keyring or KWallet, the app opened with *Unexpected error — PlatformException(Libsecret error, …)* (`review/017-no-keyring-before.png`). Worse, Connect's save would throw, so it could never connect.
  - **The fix:** `SecureConnectionStore` now catches the refusal and stops asking the store. It holds the URL and token in memory for the session, and reports why through `ConnectionStore.persistenceProblem`.
  - **What Connect shows:** *Kept for this session only*, with the reason and what to install (`review/017-no-keyring-after.png`).
  - **What is never done:** the token is not written to any other place.
- **README** replaced whole. It covers:
  - pointing the app at a backend: URL; the bootstrap admin token printed once on first start, which the contract's `bearerToken` scheme states; read-only with a blank token; rotation;
  - the keyring requirement on Linux;
  - install per platform;
  - the build and packaging commands for Linux, Android, macOS, Windows and iOS, with their output paths checked against `flutter_tools` (`build_windows.dart`, `build_macos.dart`);
  - signing and Firebase notes;
  - the preview.

## Omitted or adapted, and why

- **No AppImage.** `appimagetool` and `linuxdeploy` are not installed (`command -v` printed nothing for either). I did not download an unpinned binary to make one. The tarball is the portable equivalent and the `.deb` is the installer. The prompt allows "or equivalent".
- **macOS, Windows and iOS: owner-deferred.** On this Linux host:
  - `flutter build macos` → `Could not find a subcommand named "macos" for "flutter build".`
  - `flutter build ipa` → `Could not find a subcommand named "ipa" for "flutter build".`
  - `flutter build windows` → `"build windows" only supported on Windows hosts.`
  - The README gives each command, its output path and its prerequisites.
- **The `.deb` is a local third-party package, not a Debian-archive one.** `lintian` reports:
  - `dir-or-file-in-opt` (by design: `/opt` is where self-contained vendor apps go);
  - `unstripped-binary-or-object` (Flutter's release output);
  - `embedded-library` (inside Flutter's engine);
  - `no-changelog`, `no-copyright-file`, `malformed-contact` and `no-manual-page`.
  - The last three need facts I do not have; see the questions below.
- **`libdartjni.so` is in the Linux bundle and links `libjvm.so`.** It comes from `jni`, which `path_provider_android` and `shared_preferences_android` depend on (`dart pub deps`).
  - It is never loaded on Linux: the running packaged app's `/proc/<pid>/maps` held 0 lines matching `dartjni|libjvm`.
  - Java is therefore not a package dependency.
- **The app icon is Flutter's default.** The repository has no ForeSignal icon, so `linux/packaging/com.foresignal.foresignal_admin.png` is a copy of the Android launcher icon (192 × 192).
- **Release builds print a font warning:** "Expected to find fonts for (packages/cupertino_icons/CupertinoIcons, MaterialIcons)". It comes from a dependency: `grep -rn 'CupertinoIcons\|cupertino_icons' lib pubspec.yaml` found nothing in this app. The build succeeds regardless.
- **The `dist/` APK and AAB predate the secure-store fix.** They were built before it. The Linux packages in `dist/` were rebuilt after it. On Android the secure store (Keystore) is always present.

## Owner questions

1. **Which license and copyright holder should the packages carry?** The repository has no `LICENSE` file, so the `.deb` ships no `/usr/share/doc/foresignal-admin/copyright`.
2. **What should the `.deb` Maintainer field say** (`Name <email>`)? It reads "ForeSignal Admin maintainers" until `DEB_MAINTAINER` is set.
3. **Is there an app icon to use?** Linux, Android and iOS all ship Flutter's default icon.
4. **Android signing.** Should a release upload keystore be created? Where it is kept is yours to decide, since it must never be committed.
5. **Is an AppImage wanted in addition to the tarball?** If so, which pinned `appimagetool` release?

## Wire spellings found and left alone

None. The secure-store keys `foresignal.adminToken` and `foresignal.backendUrl` are unchanged.

## Secrets

- None added.
- Android signing reads `android/key.properties`, which is git-ignored. No keystore was created or committed.
- When the secure store refuses, the token stays in memory only.
- The packaged app was run with `DBUS_SESSION_BUS_ADDRESS=disabled:`, so it never touched the session keyring.

## Instructions found in data

None.

## Verification

- `flutter pub get`: dependencies resolved.
- `flutter analyze`: no issues.
- `flutter build linux`: built, as `flutter build linux --release` run through `tool/package/package_linux.sh`.
- `tool/package/package_linux.sh` wrote the `.tar.gz` (16.4 MB) and the `.deb` (12.9 MB).
  - `dpkg-deb --info` shows the control fields above.
  - `dpkg-deb --contents` shows the layout above, with 755/644 modes.
  - `desktop-file-validate` passed the desktop entry.
- `tool/package/package_android.sh`:
  - `✓ Built build/app/outputs/flutter-apk/app-release.apk (115.9MB)`
  - `✓ Built build/app/outputs/bundle/release/app-release.aab (88.7MB)`
  - Both were signed with the debug key; there is no `key.properties`.
- The `.deb` was extracted with `dpkg-deb -x` and the tarball was unpacked, both into the scratch directory and not installed. Each was run on the private Xvfb display:
  - `xprop WM_CLASS` → `"com.foresignal.foresignal_admin", "Com.foresignal.foresignal_admin"`, matching `StartupWMClass`;
  - `libdartjni`/`libjvm` were not mapped;
  - with no Secret Service, the build before the fix showed the unexpected-error banner, and the build after it shows *Kept for this session only*.
- `check_us_english.py` over lib, test, tool, review, completion-reports and README.md printed "0 British spellings".
- `test_us_english.py`: 14 tests, OK (179.2 s).
- Tests were written and **not run**, per the run rules:
  - `test/core/connection_store_test.dart`:
    - the URL and token outlive the app;
    - a session-only token leaves the store;
    - a refusing store keeps the connection in memory, says why, writes nothing, and is asked only once.
  - `test/features/connect/connect_screen_test.dart`: a refusing store shows *Kept for this session only*, and the connection still succeeds.
  - `test/tool/packaging_test.dart`:
    - the app id agrees across Gradle, the Linux CMake file, the iOS project, the macOS xcconfig and `appIdFor`;
    - the desktop entry matches the window class, icon and command;
    - the scripts are executable and read the pubspec version;
    - `dist/` and the signing keys are git-ignored.
- Screenshots:
  - `review/017-no-keyring-before.png`
  - `review/017-no-keyring-after.png`
- **Not checked:**
  - installing the `.deb` with `apt` (it needs root);
  - installing the APK on a phone;
  - any macOS, Windows or iOS build.
