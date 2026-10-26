import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/features/notifications/push_token.dart';

void main() {
  test('a build without its Firebase configuration says so, without the Java exception', () {
    // What the Pixel showed on 2026-10-25, as the plugin threw it.
    final thrown = PlatformException(
      code: 'Exception',
      message:
          'java.lang.Exception: Failed to load FirebaseOptions from resource. Check that you have defined '
          'values.xml correctly.',
      details:
          'java.lang.Exception: Failed to load FirebaseOptions from resource.\n at p4.m.run(r8-map-id:138)',
    );
    final text = pushFailureText(thrown);

    expect(text, contains('google-services.json'));
    expect(text, isNot(contains('java.lang')));
    expect(text, isNot(contains('PlatformException')));
    expect(text, isNot(contains('Stacktrace')));
  });

  test('another platform failure keeps its first line only, as a sentence', () {
    final thrown = PlatformException(
      code: 'SERVICE_NOT_AVAILABLE',
      message: 'SERVICE_NOT_AVAILABLE\n at x.y(z:1)',
    );

    expect(
      pushFailureText(thrown),
      'Push could not be set up on this device: SERVICE_NOT_AVAILABLE.',
    );
  });

  test('a Firebase failure uses its message, and an unknown one a plain sentence', () {
    final thrown = FirebaseException(
      plugin: 'core',
      code: 'no-app',
      message: "No Firebase App '[DEFAULT]' has been created.",
    );

    expect(pushFailureText(thrown), contains('Firebase configuration'));
    expect(pushFailureText(StateError('boom')), 'Push could not be set up on this device.');
  });
}
