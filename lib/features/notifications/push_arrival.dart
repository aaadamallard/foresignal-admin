import 'dart:async';
import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/routes.dart';

/// One native push as the companion receives it (`NativePushPayload`): the
/// Foresignal ids from the FCM string data or the APNs `e` object, plus the
/// visible text the platform handed over.
@immutable
class PushArrival {
  /// Creates an arrival.
  const PushArrival({
    required this.notificationId,
    this.alertId,
    this.severity = 'info',
    this.event = 'alert',
    this.title,
    this.body,
    this.text,
    this.category,
    this.l,
  });

  /// The persisted notification id (`id`); 0 for a test push.
  final int notificationId;

  /// The alert it is about (`a`), when it is about one.
  final int? alertId;

  /// `info`, `warning` or `critical` (`s`).
  final String severity;

  /// `alert`, `briefing` or `system` (`ev`).
  final String event;

  /// The visible title: APNs `aps.alert.title` or an FCM notification title.
  final String? title;

  /// The visible body: APNs `aps.alert.body` or an FCM notification body.
  final String? body;

  /// The FCM data member `t`, the only text a data message carries. The
  /// contract does not say what it holds; the app shows it as the title.
  final String? text;

  /// The category (`c` in FCM data, `aps.category` in APNs), e.g.
  /// `FORESIGNAL_ALERT`.
  final String? category;

  /// The member `l`, kept as sent. The contract does not say what it holds,
  /// so the app does not interpret it.
  final String? l;

  /// Whether this is a provider or device test (`id` 0).
  bool get isTest => notificationId == 0;

  /// The words shown as the heading: the visible title, the `t` text, or a
  /// line made from the severity and event.
  String get heading {
    for (final s in <String?>[title, text]) {
      if (s != null && s.trim().isNotEmpty) {
        return s.trim();
      }
    }
    if (isTest) {
      return 'Test push';
    }
    final level = severity.isEmpty ? '' : '${severity[0].toUpperCase()}${severity.substring(1)} ';
    return '$level$event'.trim();
  }

  /// Where tapping it goes: the alert page when it names an alert, else the
  /// notification page; `null` for a test push.
  String? get route {
    if (alertId case final a?) {
      return alertPath(a);
    }
    return isTest ? null : notificationPath(notificationId);
  }

  /// The FCM data map this arrival travels as in a local notification's
  /// payload, so a tap on it parses back to the same arrival.
  Map<String, String> toData() => <String, String>{
    'v': '1',
    'id': '$notificationId',
    if (alertId != null) 'a': '$alertId',
    's': severity,
    'ev': event,
    't': ?text,
    'c': ?category,
    'l': ?l,
    'title': ?title,
    'body': ?body,
  };

  /// Parses a push's data: the FCM data message (string values `v`, `id`,
  /// `a`, `s`, `ev`, `l`, `t`, `c`) or the APNs body (`e` as an object or
  /// JSON text, `aps.alert`). [title] and [body] are the visible text the
  /// platform reported separately. Returns `null` when it is not a
  /// Foresignal push (no `id`).
  static PushArrival? fromData(Map<String, Object?> data, {String? title, String? body}) {
    var ids = data;
    final e = data['e'];
    if (e is Map) {
      ids = e.cast<String, Object?>();
    } else if (e is String) {
      try {
        final decoded = jsonDecode(e);
        if (decoded is Map) {
          ids = decoded.cast<String, Object?>();
        }
      } on FormatException {
        return null;
      }
    }
    final id = _int(ids['id']);
    if (id == null) {
      return null;
    }
    final aps = data['aps'];
    final alert = aps is Map ? aps['alert'] : null;
    return PushArrival(
      notificationId: id,
      alertId: _int(ids['a']),
      severity: _text(ids['s']) ?? 'info',
      event: _text(ids['ev']) ?? 'alert',
      title: title ?? _text(alert is Map ? alert['title'] : null) ?? _text(data['title']),
      body: body ?? _text(alert is Map ? alert['body'] : null) ?? _text(data['body']),
      text: _text(ids['t']),
      category: _text(ids['c']) ?? _text(aps is Map ? aps['category'] : null),
      l: _text(ids['l']),
    );
  }

  /// Parses a local notification's payload written by [toData].
  static PushArrival? fromPayload(String? payload) {
    if (payload == null || payload.isEmpty) {
      return null;
    }
    try {
      final decoded = jsonDecode(payload);
      return decoded is Map ? fromData(decoded.cast<String, Object?>()) : null;
    } on FormatException {
      return null;
    }
  }

  static int? _int(Object? v) => switch (v) {
    final int i => i,
    final num n => n.toInt(),
    final String s => int.tryParse(s.trim()),
    _ => null,
  };

  static String? _text(Object? v) => v is String && v.isNotEmpty ? v : null;

  @override
  bool operator ==(Object other) => other is PushArrival && mapEquals(other.toData(), toData());

  @override
  int get hashCode => Object.hashAllUnordered(toData().entries.map((e) => '${e.key}=${e.value}'));
}

/// A push the app learned of: [opened] when the person tapped it (from the
/// system tray, or it launched the app), otherwise it arrived while the app
/// was in front.
typedef PushEvent = ({PushArrival arrival, bool opened});

/// Where the companion learns of native pushes.
abstract interface class PushArrivalSource {
  /// Pushes arriving in front and taps on them, for as long as the app runs.
  Stream<PushEvent> events();

  /// The push whose tap launched the app, once; `null` otherwise.
  Future<PushArrival?> launchedBy();
}

/// A source with no pushes: desktop builds, and phones where push is not
/// set up.
class NoPushArrivals implements PushArrivalSource {
  /// Creates the empty source.
  const NoPushArrivals();

  @override
  Stream<PushEvent> events() => const Stream<PushEvent>.empty();

  @override
  Future<PushArrival?> launchedBy() async => null;
}

/// The Android notification channel the companion posts pushes in.
const AndroidNotificationChannel foresignalPushChannel = AndroidNotificationChannel(
  'foresignal_alerts',
  'Alerts and notifications',
  description: 'ForeSignal alerts, briefings and system notices.',
  importance: Importance.high,
);

/// Shows [arrival] as a system notification on Android. FCM data messages
/// are not displayed by the OS, so the app posts them itself, from the
/// background handler as well as in front.
Future<void> showPushNotification(FlutterLocalNotificationsPlugin plugin, PushArrival arrival) => plugin.show(
  id: arrival.alertId ?? arrival.notificationId,
  title: arrival.heading,
  body: arrival.body,
  notificationDetails: NotificationDetails(
    android: AndroidNotificationDetails(
      foresignalPushChannel.id,
      foresignalPushChannel.name,
      channelDescription: foresignalPushChannel.description,
      importance: arrival.severity == 'info' ? Importance.defaultImportance : Importance.high,
      priority: arrival.severity == 'info' ? Priority.defaultPriority : Priority.high,
    ),
  ),
  payload: jsonEncode(arrival.toData()),
);

const InitializationSettings _localSettings = InitializationSettings(
  android: AndroidInitializationSettings('@mipmap/ic_launcher'),
  iOS: DarwinInitializationSettings(
    requestAlertPermission: false,
    requestBadgePermission: false,
    requestSoundPermission: false,
  ),
);

/// Shows an FCM data message received while the app is in the background
/// or not running. Runs in its own isolate, so it sets Firebase and the
/// notification plugin up again. iOS needs nothing: APNs alerts are shown by
/// the OS.
@pragma('vm:entry-point')
Future<void> firebaseBackgroundMessage(RemoteMessage message) async {
  if (defaultTargetPlatform != TargetPlatform.android) {
    return;
  }
  final arrival = PushArrival.fromData(
    message.data.cast<String, Object?>(),
    title: message.notification?.title,
    body: message.notification?.body,
  );
  if (arrival == null || message.notification != null) {
    // A message carrying a notification block is already shown by the OS.
    return;
  }
  if (Firebase.apps.isEmpty) {
    await Firebase.initializeApp();
  }
  final plugin = FlutterLocalNotificationsPlugin();
  await plugin.initialize(settings: _localSettings);
  await showPushNotification(plugin, arrival);
}

/// Registers [firebaseBackgroundMessage] on Android and iOS. Called once,
/// from `main`, before the app runs.
void installPushBackgroundHandler() {
  if (defaultTargetPlatform != TargetPlatform.android && defaultTargetPlatform != TargetPlatform.iOS) {
    return;
  }
  try {
    FirebaseMessaging.onBackgroundMessage(firebaseBackgroundMessage);
  } on Object {
    // Push not set up in this build; the Device page says so.
  }
}

/// Native pushes through Firebase Cloud Messaging, with the notifications
/// the app itself posts on Android: `onMessage` in front,
/// `onMessageOpenedApp` and local-notification taps, and
/// `getInitialMessage` or the local launch details for the launch. Without
/// the app's Firebase configuration it yields nothing.
class FirebasePushArrivalSource implements PushArrivalSource {
  final FlutterLocalNotificationsPlugin _local = FlutterLocalNotificationsPlugin();
  final StreamController<PushEvent> _taps = StreamController<PushEvent>.broadcast();
  Future<bool>? _ready;

  Future<bool> _setUp() => _ready ??= () async {
    try {
      if (Firebase.apps.isEmpty) {
        await Firebase.initializeApp();
      }
      await _local.initialize(
        settings: _localSettings,
        onDidReceiveNotificationResponse: (response) {
          final arrival = PushArrival.fromPayload(response.payload);
          if (arrival != null) {
            _taps.add((arrival: arrival, opened: true));
          }
        },
      );
      await _local
          .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(foresignalPushChannel);
      return true;
    } on Object {
      return false;
    }
  }();

  static PushArrival? _of(RemoteMessage m) => PushArrival.fromData(
    m.data.cast<String, Object?>(),
    title: m.notification?.title,
    body: m.notification?.body,
  );

  @override
  Stream<PushEvent> events() async* {
    if (!await _setUp()) {
      return;
    }
    late final List<StreamSubscription<Object?>> subs;
    final out = StreamController<PushEvent>(
      onCancel: () async {
        for (final s in subs) {
          await s.cancel();
        }
      },
    );
    subs = <StreamSubscription<Object?>>[
      FirebaseMessaging.onMessage.listen((m) {
        if (_of(m) case final a?) {
          out.add((arrival: a, opened: false));
        }
      }),
      FirebaseMessaging.onMessageOpenedApp.listen((m) {
        if (_of(m) case final a?) {
          out.add((arrival: a, opened: true));
        }
      }),
      _taps.stream.listen(out.add),
    ];
    try {
      yield* out.stream;
    } finally {
      await out.close();
    }
  }

  @override
  Future<PushArrival?> launchedBy() async {
    if (!await _setUp()) {
      return null;
    }
    try {
      final initial = await FirebaseMessaging.instance.getInitialMessage();
      if (initial != null) {
        return _of(initial);
      }
      final details = await _local.getNotificationAppLaunchDetails();
      if (details != null && details.didNotificationLaunchApp) {
        return PushArrival.fromPayload(details.notificationResponse?.payload);
      }
    } on Object {
      return null;
    }
    return null;
  }
}

/// The push arrival source: Firebase on Android and iOS, none elsewhere.
/// Tests and the preview override it.
final pushArrivalSourceProvider = Provider<PushArrivalSource>((ref) {
  final platform = defaultTargetPlatform;
  if (kIsWeb || (platform != TargetPlatform.android && platform != TargetPlatform.iOS)) {
    return const NoPushArrivals();
  }
  return FirebasePushArrivalSource();
});
