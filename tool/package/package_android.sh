#!/bin/sh
# Builds the Android release into dist/:
#
#   foresignal-admin-<version>.apk  to install directly (adb install, or a file)
#   foresignal-admin-<version>.aab  the bundle Google Play takes
#
# Signed with android/key.properties when it exists, otherwise with the debug
# key (installable, not publishable). The version comes from pubspec.yaml.
#
# Each build runs through tool/capped_build.sh: under a hard memory cap that cannot swap, with
# no Gradle or Kotlin daemon left behind.
set -eu

cd "$(dirname "$0")/../.."
NAME=foresignal-admin
DIST=dist
pubspec_version=$(sed -n 's/^version:[[:space:]]*//p' pubspec.yaml | tr -d '"' | head -n 1)
VERSION=${pubspec_version%%+*}

[ -f android/key.properties ] || echo "android/key.properties not found: signing with the debug key."
tool/capped_build.sh flutter build apk --release
tool/capped_build.sh flutter build appbundle --release
mkdir -p "$DIST"
cp build/app/outputs/flutter-apk/app-release.apk "$DIST/$NAME-$VERSION.apk"
cp build/app/outputs/bundle/release/app-release.aab "$DIST/$NAME-$VERSION.aab"
echo "Built $DIST/$NAME-$VERSION.apk"
echo "Built $DIST/$NAME-$VERSION.aab"
