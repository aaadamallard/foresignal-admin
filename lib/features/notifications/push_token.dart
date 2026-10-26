import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A push token from the platform: the transport it goes through, the
/// platform, the token, and the APNs environment (`null` for FCM).
typedef PushToken = ({String transport, String platform, String token, String? environment});

/// Why no push token could be had, in words a person can act on.
class PushTokenUnavailable implements Exception {
  /// Creates the failure.
  const PushTokenUnavailable(this.message);

  /// What went wrong.
  final String message;

  @override
  String toString() => message;
}

/// Where the companion gets its native push token.
abstract interface class PushTokenSource {
  /// The token, or throws [PushTokenUnavailable].
  Future<PushToken> obtain();
}

/// The token from Firebase Cloud Messaging: the FCM registration token on
/// Android, the APNs device token on iOS. Needs the app's Firebase
/// configuration (`google-services.json`, `GoogleService-Info.plist`) and,
/// on iOS, the push entitlement. A debug build registers in the APNs
/// sandbox, a release build in production.
class FirebasePushTokenSource implements PushTokenSource {
  @override
  Future<PushToken> obtain() async {
    final platform = defaultTargetPlatform;
    if (platform != TargetPlatform.android && platform != TargetPlatform.iOS) {
      throw const PushTokenUnavailable('Native push registration runs on Android and iOS.');
    }
    try {
      if (Firebase.apps.isEmpty) {
        await Firebase.initializeApp();
      }
      final messaging = FirebaseMessaging.instance;
      final settings = await messaging.requestPermission();
      if (settings.authorizationStatus == AuthorizationStatus.denied) {
        throw const PushTokenUnavailable(
          'Notifications are turned off for this app in the phone settings.',
        );
      }
      if (platform == TargetPlatform.iOS) {
        final token = await messaging.getAPNSToken();
        if (token == null || token.isEmpty) {
          throw const PushTokenUnavailable(
            'iOS has not issued an APNs token yet; try again in a moment.',
          );
        }
        return (
          transport: 'apns',
          platform: 'ios',
          token: token,
          environment: kReleaseMode ? 'production' : 'sandbox',
        );
      }
      // The registration token, which FCM HTTP v1 sends to. Its replacement,
      // register() / onRegistered, yields a Firebase Installation ID for
      // direct send instead, which the contract does not name.
      // ignore: deprecated_member_use
      final token = await messaging.getToken();
      if (token == null || token.isEmpty) {
        throw const PushTokenUnavailable('Firebase did not return a registration token.');
      }
      return (transport: 'fcm', platform: 'android', token: token, environment: null);
    } on PushTokenUnavailable {
      rethrow;
    } on Object catch (e, stack) {
      // The person sees one plain sentence; the exception and its Java stack
      // trace go to the log.
      debugPrint('Push registration failed: $e\n$stack');
      throw PushTokenUnavailable(pushFailureText(e));
    }
  }
}

/// [error], a failure from Firebase or the platform, as one sentence a
/// person can act on: never an exception's class name or stack trace.
String pushFailureText(Object error) {
  final String? message = switch (error) {
    FirebaseException(:final message) => message,
    PlatformException(:final message) => message,
    _ => null,
  };
  final detail = (message ?? '').split('\n').first.trim();
  if (detail.contains('FirebaseOptions') ||
      detail.contains('values.xml') ||
      detail.contains('No Firebase App')) {
    return "Push isn't set up in this build: it was built without its Firebase configuration "
        '(google-services.json on Android, GoogleService-Info.plist on iOS).';
  }
  if (detail.isEmpty) {
    return 'Push could not be set up on this device.';
  }
  return 'Push could not be set up on this device: ${detail.endsWith('.') ? detail.substring(0, detail.length - 1) : detail}.';
}

/// The push token source. Tests and the preview override it.
final pushTokenSourceProvider = Provider<PushTokenSource>((ref) => FirebasePushTokenSource());

/// The app id (bundle id or package name) this build registers under on
/// [platform], which a provider's `appIds` must list: the Android
/// application id, or the Xcode bundle identifier. `--dart-define=APP_ID=…`
/// overrides both.
String appIdFor(String platform) {
  const override = String.fromEnvironment('APP_ID');
  if (override.isNotEmpty) {
    return override;
  }
  return platform == 'android'
      ? 'com.foresignal.foresignal_admin'
      : 'com.foresignal.foresignalAdmin';
}
