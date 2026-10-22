# 002 — Completion Report: API Client

| Field                 | Value |
| --------------------- | ----- |
| Status                | Complete |
| Implementation commit | `051bdf08929f55e686eb4356497f048db64dd822` |
| Vendored OpenAPI      | `1.3.0`, unchanged since 001 |
| Generator             | openapi-generator-cli **7.26.0**, `dart-dio` (built_value serialization), jar SHA-1 `b96b148fcf482808037f68fbad99cb4d7e65d40b` (matches Maven Central's `.sha1`) |
| Live backend          | None reachable (`curl localhost:8080/v1/system` returned nothing); no live check this prompt |

## What was built

- **Generation — `tool/generate_api.sh`.** Fetches the pinned generator jar into `.tool/` (gitignored)
  and checks its SHA-1, normalizes the contract, generates the `foresignal_api` package into
  `lib/api/generated/`, runs `build_runner` there, and formats it. Output: 80 API classes, 1702
  models, 3494 Dart files (34 MB), committed, each headed `AUTO-GENERATED FILE, DO NOT MODIFY`.
  All 821 operationIds in the contract are present as methods (checked by script against the spec).
  The app depends on it as a path package (`foresignal_api: path: lib/api/generated`), and
  `analysis_options.yaml` excludes it.
- **Why a normalizer — `tool/normalize_openapi.py`.** The contract is OpenAPI 3.1; the dart-dio
  templates generate 3.0. Run directly on the 3.1 file, `build_runner` failed and the package had 250
  compile errors (json_serializable mode: 4018 issues). The normalizer writes a derived 3.0 copy that
  only the generator reads; `openapi/OpenAPI.json` is untouched. Its rules (each documented in the file
  and covered by `tool/test_normalize_openapi.py`): nullable type arrays → `nullable`; multi-type →
  untyped; `const` → one-value `enum`; `$ref` siblings, `default`s, and 3.1-only keywords dropped;
  enums with values that can't be Dart identifiers (`%`, `km/h`, `[in_i'Hg]`, `>=`, MIME types…) kept
  as plain strings; `allOf` flattened into one object; `oneOf`/`anyOf` that are validation-only
  dropped, and mixed ones (inline primitives with objects) left as any-JSON; `additionalProperties:
  true` beside properties dropped; properties beside a *typed* `additionalProperties` → a map. Three
  wire names that collide with Dart/built_value members are renamed in Dart only via
  `--name-mappings override=override_,update=update_,build=build_`.
  Result: the generated package has **0 errors** (`dart analyze lib`: 320 warnings/infos, all
  generator style — unused imports and the like).
- **Wrapper — `lib/api/`** (exported together from `lib/api/api.dart`):
  - `backend_endpoint.dart`: `backendEndpointProvider` (the base URL) and `parseBackendUrl`
    (adds `http://`, strips a trailing slash, rejects other schemes and hostless input).
  - `admin_token_store.dart`: `AdminTokenStore` interface + `InMemoryAdminTokenStore` stub behind
    `adminTokenStoreProvider` (003 overrides it with the secure store).
  - `admin_auth_interceptor.dart`: adds `Authorization: Bearer <token>` whenever a token is stored;
    with no token, reads go out unauthenticated and writes (any method but GET/HEAD/OPTIONS) are
    refused **before sending** with `AdminTokenRequiredException`.
  - `api_errors.dart`: sealed `ApiException` → `ProblemException` (every `Problem` field, field
    errors, the whole body for code-specific fields), `HttpStatusException` (non-problem failures such
    as a proxy's HTML 502), `AdminTokenRequiredException`, `NetworkException`. `Retry-After` is parsed
    as delay-seconds **or** an HTTP-date, falling back to the body's `retryAfterSeconds`.
  - `api_client.dart`: `backendDioProvider` (base URL, timeouts, `Accept: application/json,
    application/problem+json`, the auth interceptor) and `foresignalApiProvider` (the generated
    `ForesignalApi` over that Dio, with the generator's own auth interceptors off); `callApi` /
    `callApiRequired` turn any failure into an `ApiException`.
  - `sse.dart`: `SseParser` (WHATWG event-stream rules: any chunking, CR/LF/CRLF incl. a split CRLF,
    comments, multi-line data, `id` persistence and NUL rule, `retry`, BOM), `SseBackoff`
    (exponential, capped, server `retry:` as base), `SseClient` (reconnects with `Last-Event-ID`,
    honors `Retry-After`, stops on 400/401/403/404/405/410 and on a missing token, cancels the
    in-flight request when the subscription is canceled) and `SseStream` naming `streamAlerts`,
    `streamNotifications`, `streamChanges`, `streamEvents`, `streamFederation`.
- **Tests written, not run** (owner directive): `test/api/api_errors_test.dart`,
  `admin_auth_interceptor_test.dart`, `sse_parser_test.dart`, `sse_client_test.dart`,
  `backend_endpoint_test.dart`, `generated_client_test.dart`, the shared `test/support/fake_adapter.dart`
  (a recording Dio adapter later prompts reuse), and `tool/test_normalize_openapi.py`.

## Verification

- `flutter pub get`: resolved with the path package.
- `flutter analyze`: `No issues found!`
- `flutter build linux`: `✓ Built build/linux/x64/release/bundle/foresignal_admin`. (No screen imports
  the client yet, so the build proves the app still builds; `flutter analyze` is what proves the
  wrapper and tests compile against the generated package.)
- Generated package: `dart analyze lib` inside `lib/api/generated` — 0 errors.
- US English: `check_us_english.py` over `lib/*.dart lib/api/*.dart test tool integration_test`:
  `0 British spellings`. The generated package carries the contract's own spellings in doc comments
  and wire names; it is generated, so it is left as-is.

## Owner notes and questions (none blocking)

1. **Where the generator and the contract disagree.** Because of the rules above, some contract
   detail is not typed in Dart: the "mixed" `oneOf`s (e.g. `PrecursorTest.spatial`) are any-JSON, the
   unsafe enums are strings, and `additionalProperties: true` objects drop undeclared keys when read.
   Nothing is lost on the wire, but a screen that round-trips one of those objects (read → edit → PUT)
   must use the raw JSON form, not the model. Screens will note it where it applies.
2. **Writes need a token, by method.** The contract marks each operation's scope in
   `x-foresignal-scope` (379 read, 223 agent, 177 admin, 37 open, 5 peer). The interceptor goes by
   HTTP method as the prompt asks, so a POST that is `read`/`open` scope (for example a search) also
   needs a token. Say if the app should use the per-operation scope instead.
3. **No source-health stream.** Architecture §3 mentions "source-health/federation streams"; the
   contract's `text/event-stream` operations are `streamChanges`, `streamAlerts`, `askStream`,
   `streamEvents`, `streamNotifications`, `streamView`, `streamFederation`. There is no source-health
   stream, so health is polled (`listSourceHealth`) where a screen needs it live.
