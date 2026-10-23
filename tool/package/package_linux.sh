#!/bin/sh
# Builds the Linux desktop release and packages it two ways, into dist/:
#
#   foresignal-admin-<version>-linux-x64.tar.gz  the release bundle with its
#                                                desktop entry and icon; runs
#                                                from wherever it is unpacked
#   foresignal-admin_<version>-<build>_amd64.deb  installs to /opt/foresignal-admin,
#                                                with foresignal-admin on the PATH
#                                                and a menu entry
#
# The version comes from pubspec.yaml (`version: 1.0.0+1` → 1.0.0, build 1).
# The .deb is skipped when dpkg-deb is not installed; DEB_MAINTAINER sets
# its Maintainer field.
#
#   tool/package/package_linux.sh            build, then package
#   tool/package/package_linux.sh --no-build package the bundle already built
set -eu
umask 022

cd "$(dirname "$0")/../.."
APP_ID=com.foresignal.foresignal_admin
NAME=foresignal-admin
BUNDLE=build/linux/x64/release/bundle
DIST=dist

pubspec_version=$(sed -n 's/^version:[[:space:]]*//p' pubspec.yaml | tr -d '"' | head -n 1)
VERSION=${pubspec_version%%+*}
BUILD=${pubspec_version#*+}
[ "$BUILD" = "$pubspec_version" ] && BUILD=1

if [ "${1:-}" != "--no-build" ]; then
  flutter build linux --release
fi
[ -x "$BUNDLE/foresignal_admin" ] || { echo "No release bundle at $BUNDLE; build it first." >&2; exit 1; }

mkdir -p "$DIST"
WORK=$(mktemp -d)
trap 'rm -rf "$WORK"' EXIT

# The tarball: the bundle, plus the desktop entry and icon beside it.
TAR_DIR="$WORK/$NAME-$VERSION-linux-x64"
mkdir -p "$TAR_DIR"
cp -a "$BUNDLE/." "$TAR_DIR/"
cp linux/packaging/$APP_ID.desktop linux/packaging/$APP_ID.png "$TAR_DIR/"
chmod -R u+rwX,go+rX,go-w "$TAR_DIR"
tar -C "$WORK" -czf "$DIST/$NAME-$VERSION-linux-x64.tar.gz" "$NAME-$VERSION-linux-x64"
echo "Built $DIST/$NAME-$VERSION-linux-x64.tar.gz"

if ! command -v dpkg-deb >/dev/null 2>&1; then
  echo "dpkg-deb is not installed; the .deb was skipped."
  exit 0
fi

# The .deb. The bundle finds lib/ and data/ beside its real path, so the
# PATH entry is a symlink. lib/libdartjni.so links libjvm but is loaded only
# on Android (path_provider and shared_preferences use it there), so Java is
# not a dependency.
DEB="$WORK/deb"
mkdir -p "$DEB/DEBIAN" "$DEB/opt/$NAME" "$DEB/usr/bin" \
  "$DEB/usr/share/applications" "$DEB/usr/share/icons/hicolor/192x192/apps"
cp -a "$BUNDLE/." "$DEB/opt/$NAME/"
ln -s "/opt/$NAME/foresignal_admin" "$DEB/usr/bin/$NAME"
cp linux/packaging/$APP_ID.desktop "$DEB/usr/share/applications/"
cp linux/packaging/$APP_ID.png "$DEB/usr/share/icons/hicolor/192x192/apps/"
chmod -R u+rwX,go+rX,go-w "$DEB"
SIZE=$(du -sk "$DEB" | cut -f1)
cat > "$DEB/DEBIAN/control" <<EOF
Package: $NAME
Version: $VERSION-$BUILD
Section: net
Priority: optional
Architecture: amd64
Installed-Size: $SIZE
Depends: libgtk-3-0t64 | libgtk-3-0, libsecret-1-0, libstdc++6, libc6
Maintainer: ${DEB_MAINTAINER:-ForeSignal Admin maintainers}
Description: Control plane for a self-hosted ForeSignal backend
 Sets up, configures, tests, secures, alerts on and monitors a ForeSignal
 backend over its HTTP API. Point it at the backend's URL on first run.
EOF
dpkg-deb --root-owner-group --build "$DEB" "$DIST/${NAME}_$VERSION-${BUILD}_amd64.deb" >/dev/null
echo "Built $DIST/${NAME}_$VERSION-${BUILD}_amd64.deb"
