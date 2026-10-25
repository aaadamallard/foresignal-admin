#!/usr/bin/env bash
# Regenerates the Dart API client in lib/api/generated/ from openapi/OpenAPI.json.
#
#   tool/generate_api.sh
#
# 1. Fetches openapi-generator-cli at the pinned version into .tool/ (once) and
#    checks it against Maven Central's published SHA-1.
# 2. Normalizes the vendored 3.1 contract into the 3.0 shape the dart-dio
#    generator handles (tool/normalize_openapi.py; the vendored file is untouched).
# 3. Generates the dart-dio (built_value) package and runs build_runner in it.
#    enumUnknownDefaultCase gives every enum an `unknownDefaultOpenApi` member
#    that a value the contract does not list falls back to, so a new server
#    value no longer fails the whole response (lib/api/tolerant_enums.dart
#    keeps the value the server sent).
#
# The output is committed and never hand-edited: change the contract or this
# script, then run it again.
set -euo pipefail

GENERATOR_VERSION=7.26.0
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUT="$ROOT/lib/api/generated"
JAR="$ROOT/.tool/openapi-generator-cli-$GENERATOR_VERSION.jar"
MAVEN="https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/$GENERATOR_VERSION"
WORK="$(mktemp -d)"
trap 'rm -rf "$WORK"' EXIT

if [[ ! -f "$JAR" ]]; then
  mkdir -p "$ROOT/.tool"
  curl -sSfL -o "$JAR.part" "$MAVEN/openapi-generator-cli-$GENERATOR_VERSION.jar"
  expected="$(curl -sSfL "$MAVEN/openapi-generator-cli-$GENERATOR_VERSION.jar.sha1" | cut -c1-40)"
  actual="$(sha1sum "$JAR.part" | cut -c1-40)"
  if [[ "$expected" != "$actual" ]]; then
    echo "openapi-generator jar checksum mismatch: expected $expected, got $actual" >&2
    rm -f "$JAR.part"
    exit 1
  fi
  mv "$JAR.part" "$JAR"
fi

python3 -I "$ROOT/tool/normalize_openapi.py" "$ROOT/openapi/OpenAPI.json" "$WORK/openapi.json"

rm -rf "$OUT"
mkdir -p "$OUT"
cp "$ROOT/tool/openapi-generator-ignore" "$OUT/.openapi-generator-ignore"

java -jar "$JAR" generate \
  --input-spec "$WORK/openapi.json" \
  --generator-name dart-dio \
  --output "$OUT" \
  --skip-validate-spec \
  --name-mappings override=override_,update=update_,build=build_ \
  --global-property apiTests=false,modelTests=false,apiDocs=false,modelDocs=false \
  --additional-properties "pubName=foresignal_api,pubDescription=ForeSignal API client generated from openapi/OpenAPI.json,pubVersion=$(cat "$ROOT/openapi/VERSION"),pubHomepage=https://gitlab.com/adam.allard/foresignal-admin,enumUnknownDefaultCase=true" \
  > "$WORK/generate.log"

cd "$OUT"
# The package lives inside the app's lib/, so the compiler can reach its part
# files under both packages. Both must have the same language version, so the
# package takes the app's SDK floor instead of the template's 2.18.
APP_SDK="$(sed -n "s/^  sdk: \(.*\)$/\1/p" "$ROOT/pubspec.yaml" | head -1)"
sed -i "s/^  sdk: .*/  sdk: '$APP_SDK'/" pubspec.yaml
dart pub get > /dev/null
dart run build_runner build --delete-conflicting-outputs
dart format --output=write lib > /dev/null
rm -rf .dart_tool pubspec.lock
echo "Generated $(find lib -name '*.dart' | wc -l) Dart files in lib/api/generated/."
