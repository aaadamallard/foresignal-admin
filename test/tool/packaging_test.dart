import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/features/notifications/push_token.dart';

/// The first group of [pattern] in the file at [path].
String _find(String path, String pattern) {
  final m = RegExp(pattern, multiLine: true).firstMatch(File(path).readAsStringSync());
  expect(m, isNotNull, reason: '$pattern in $path');
  return m!.group(1)!;
}

/// The value of [key] in the desktop entry.
String _desktop(String key) => _find('linux/packaging/com.foresignal.foresignal_admin.desktop', '^$key=(.*)\$');

void main() {
  test('every platform builds under the app id push registration names', () {
    final android = appIdFor('android');
    expect(_find('android/app/build.gradle.kts', r'applicationId = "([^"]+)"'), android);
    expect(_find('android/app/build.gradle.kts', r'namespace = "([^"]+)"'), android);
    expect(_find('linux/CMakeLists.txt', r'set\(APPLICATION_ID "([^"]+)"\)'), android);

    final apple = appIdFor('ios');
    expect(_find('ios/Runner.xcodeproj/project.pbxproj', r'PRODUCT_BUNDLE_IDENTIFIER = ([A-Za-z.]+);'), apple);
    expect(_find('macos/Runner/Configs/AppInfo.xcconfig', r'^PRODUCT_BUNDLE_IDENTIFIER = (\S+)'), apple);
  });

  test('the desktop entry matches the window and the installed command', () {
    final id = _find('linux/CMakeLists.txt', r'set\(APPLICATION_ID "([^"]+)"\)');
    expect(File('linux/packaging/$id.desktop').existsSync(), isTrue);
    expect(File('linux/packaging/$id.png').existsSync(), isTrue);
    expect(_desktop('StartupWMClass'), id, reason: 'the runner sets the program name to the application id');
    expect(_desktop('Icon'), id);
    expect(_desktop('Exec'), _find('tool/package/package_linux.sh', r'^NAME=(\S+)'));
    expect(_desktop('Type'), 'Application');
    expect(_desktop('Name'), 'ForeSignal Admin');
  });

  test('the packaging scripts are executable and read the pubspec version', () {
    expect(_find('pubspec.yaml', r'^version:\s*(\S+)'), matches(RegExp(r'^\d+\.\d+\.\d+\+\d+$')));
    for (final script in <String>['tool/package/package_linux.sh', 'tool/package/package_android.sh']) {
      final mode = File(script).statSync().mode;
      expect(mode & 0x40, isNonZero, reason: '$script is executable by its owner');
      expect(File(script).readAsStringSync(), contains('pubspec.yaml'));
    }
  });

  test('Android builds are memory-capped and leave no daemon behind', () {
    expect(_find('android/gradle.properties', r'^org\.gradle\.jvmargs=(.*)$'),
        allOf(contains('-Xmx4G'), contains('-XX:MaxMetaspaceSize=1G')));
    expect(_find('android/gradle.properties', r'^kotlin\.daemon\.jvmargs=(.*)$'), contains('-Xmx2G'));

    const wrapper = 'tool/capped_build.sh';
    expect(File(wrapper).statSync().mode & 0x40, isNonZero, reason: '$wrapper is executable by its owner');
    final capped = File(wrapper).readAsStringSync();
    expect(capped, contains('-p MemoryMax="\$MEM_MAX" -p MemorySwapMax=0'), reason: 'the scope can never swap');
    expect(capped, contains('./gradlew --stop'));
    expect(capped, contains('trap cleanup EXIT'), reason: 'the daemons are stopped even when the build fails');

    final android = File('tool/package/package_android.sh').readAsStringSync();
    expect(RegExp(r'^\s*flutter build', multiLine: true).hasMatch(android), isFalse,
        reason: 'every build in package_android.sh goes through $wrapper');
    expect(android, contains('$wrapper flutter build apk --release'));
    expect(android, contains('$wrapper flutter build appbundle --release'));
  });

  test('packages and signing keys stay out of the repository', () {
    expect(File('.gitignore').readAsStringSync(), contains('/dist/'));
    final android = File('android/.gitignore').readAsStringSync();
    expect(android, contains('key.properties'));
    expect(android, contains('**/*.jks'));
  });
}
