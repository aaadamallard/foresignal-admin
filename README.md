# ForeSignal Admin

The control plane for a self-hosted [ForeSignal](https://gitlab.com/adam.allard/foresignal) backend.
An operator uses it to set up, configure, test, tune, secure, alert on and monitor the data engine.
It is not a data-visualization client.

- **Two components.** There is the ForeSignal backend and this Flutter app, and they talk directly
  over the backend's HTTP API and SSE streams. There is no proxy and no second service. The app is
  **standalone**: it is never served by or bundled into the backend. You install it on a desktop
  (Linux primary; macOS, Windows) or a phone (iOS, Android) and point it at the backend's URL.
- **The phone is a companion, from the same code.** It shows the alert and notification inboxes,
  source on/off with health, and registers itself for native push. The configuration screens stay on
  the desktop.
- **OpenAPI is the only backend contract.** `openapi/OpenAPI.json` is a vendored copy of the backend
  repo's `docs/OpenAPI.json`. The Dart client in `lib/api/generated/` is generated from it and never
  hand-edited.
- **Secrets never live in the app's files.** The admin token is held in the platform secure store, and
  provider keys go straight to the backend's credential store.

## Pointing the app at a backend

On first run the app opens **Connect**:

1. **Backend URL.** Enter the backend's address as the app's machine reaches it, for example
   `http://192.168.1.20:8080`.
2. **Admin token.** The backend prints its bootstrap admin token (`fsr_…`) **once, on first start**.
   Copy it from that first-start output.
   - Leave the field blank to connect read-only: the backend allows data reads on the local network,
     and refuses writes and settings reads without the token.
   - The token can be rotated later under **System → Tokens**. Rotating it replaces the copy this app
     holds.
3. **Test Connection.** This checks the backend, its API version and the token.
4. On success, the URL and token are saved in the platform secure store (Keychain, Android Keystore,
   libsecret, Windows Credential Manager), and the next start connects without asking.
   - Untick **Save token in secure storage** to keep the token for this session only.
   - **Forget token** removes it.

**Linux needs a Secret Service keyring** (GNOME Keyring or KWallet, running and unlocked) to save the
connection. Without one, Connect says *Kept for this session only*: the app works, but asks again on
the next start. The token is never written anywhere else.

## Install

The packages are built by the scripts in `tool/package/` into `dist/` (see below).

| Platform | Package | Install |
|---|---|---|
| Linux (Debian, Ubuntu) | `foresignal-admin_<version>-<build>_amd64.deb` | `sudo apt install ./foresignal-admin_…_amd64.deb`, then start **ForeSignal Admin** from the menu or run `foresignal-admin`. It installs to `/opt/foresignal-admin`. |
| Linux (any x64) | `foresignal-admin-<version>-linux-x64.tar.gz` | Unpack anywhere and run `foresignal_admin` inside. Needs GTK 3 and libsecret. The `.desktop` file and icon are included for a menu entry. |
| Android | `foresignal-admin-<version>.apk` | `adb install foresignal-admin-….apk`, or open the file on the phone. The `.aab` is for Google Play. |
| macOS, Windows, iOS | built on that platform | See below. |

## Build and package

```sh
flutter pub get
flutter analyze
```

### Linux (primary)

```sh
tool/package/package_linux.sh             # flutter build linux --release, then the .tar.gz and .deb
tool/package/package_linux.sh --no-build  # package the bundle already built
```

- The version comes from `pubspec.yaml` (`version: 1.0.0+1` gives 1.0.0, build 1).
- The `.deb` needs `dpkg-deb`. `DEB_MAINTAINER="Name <email>"` sets its Maintainer field.
- Building needs the Flutter Linux toolchain: clang, cmake, ninja, pkg-config, the GTK 3 headers and
  `libsecret-1-dev`.

### Android

```sh
tool/package/package_android.sh   # the release .apk and .aab
```

- Release builds are signed with `android/key.properties` when it exists:

  ```properties
  storeFile=/path/to/upload-keystore.jks
  storePassword=…
  keyAlias=upload
  keyPassword=…
  ```

  Without it, the release is signed with the debug key: installable, but not publishable. The file
  and keystores are git-ignored. Never commit them.
- Native push needs the app's Firebase configuration, `android/app/google-services.json`. Without it
  the app runs, and the **Device** page says push is not set up.

### macOS, Windows and iOS

These build only on their own platforms:

```sh
flutter build macos --release     # on a Mac with Xcode: build/macos/Build/Products/Release/foresignal_admin.app
flutter build windows --release   # on Windows with Visual Studio (C++ desktop): build/windows/x64/runner/Release/
flutter build ipa --release       # on a Mac with Xcode and a signing team: build/ios/ipa/
```

- iOS needs a signing team set in Xcode.
- iOS push additionally needs the push entitlement and `ios/Runner/GoogleService-Info.plist`.

## Develop

```sh
flutter run -d linux
```

`tool/preview/preview_main.dart` runs the real app against a fake backend that answers from the
contract. Use it to show screens without a live ForeSignal; see the comment at its top for the flags.

Planning lives in `docs/`, build units in `prompts/`, and their reports in `completion-reports/`.

## License

MIT © RemoteID Systems, LLC. See [LICENSE](LICENSE).
