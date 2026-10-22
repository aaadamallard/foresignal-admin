# ForeSignal Admin

The control plane for a self-hosted [ForeSignal](https://gitlab.com/adam.allard/foresignal) backend:
the app an operator uses to set up, configure, test, tune, secure, alert on and monitor the data
engine. It is not a data-visualization client.

- **Two components.** The ForeSignal backend and this Flutter app, talking directly over the backend's
  HTTP API and SSE streams. No proxy, no second service. The app is installed on the operator's
  desktop (Linux primary; macOS, Windows) and phone (iOS, Android) and pointed at the backend's URL.
- **OpenAPI is the only backend contract.** `openapi/OpenAPI.json` is a vendored copy of the backend
  repo's `docs/OpenAPI.json`; the Dart client in `lib/api/generated/` is generated from it and never
  hand-edited.
- **Secrets never live in the app.** The admin token is held in the platform secure store; provider
  keys go straight to the backend's credential store.

## Run

```sh
flutter pub get
flutter analyze
flutter run -d linux
```

Planning lives in `docs/`, build units in `prompts/`, and their reports in `completion-reports/`.
