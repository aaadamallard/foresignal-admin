import '../../api/api.dart';
import '../alerts/alerts_drafts.dart' show severityRank;
import '../forecasting/forecasting_drafts.dart' show commaList, jsonObjectProblem, parseJsonObject;
import '../forecasting/forecasting_providers.dart' show Json, jsonMap;

/// Notification events (`Notification.event`, `PushFilters.events`).
const List<String> notificationEvents = <String>['alert', 'briefing', 'system'];

/// Native push transports (`PushDeviceInput.transport`, `PushProvider.type`).
const List<String> pushTransports = <String>['apns', 'fcm'];

/// Native push platforms (`PushDeviceInput.platform`).
const List<String> pushPlatforms = <String>['ios', 'ipados', 'macos', 'android'];

/// A device platform as people write it.
String platformText(Object? platform) => switch (platform) {
  'ios' => 'iOS',
  'ipados' => 'iPadOS',
  'macos' => 'macOS',
  'android' => 'Android',
  _ => '${platform ?? '—'}',
};

/// How much alert text goes through Apple or Google (`contentLevel`).
const List<String> contentLevels = <String>['minimal', 'short'];

/// APNs key environments a provider covers (`ApnsProviderConfig.keyEnvironment`).
const List<String> apnsKeyEnvironments = <String>['sandbox', 'production', 'both'];

/// APNs environments a device registers in (`PushDeviceInput.environment`).
const List<String> deviceEnvironments = <String>['sandbox', 'production'];

/// Web Push transport labels (`PushSubscriptionInput.transportLabel`).
const List<String> transportLabels = <String>['browser', 'unifiedpush', 'other'];

/// Web Push payload formats (`PushSubscriptionInput.payloadFormat`).
const List<String> payloadFormats = <String>['foresignal', 'declarative'];

/// [transportLabels] as people read them.
const Map<String, String> transportLabelNames = <String, String>{
  'browser': 'Browser',
  'unifiedpush': 'UnifiedPush',
  'other': 'Other',
};

/// [payloadFormats] as people read them.
const Map<String, String> payloadFormatNames = <String, String>{
  'foresignal': 'ForeSignal JSON',
  'declarative': 'Declarative',
};

/// The FCM OAuth endpoint the contract defaults to.
const String defaultFcmTokenUri = 'https://oauth2.googleapis.com/token';

/// The header that carries this installation's device id.
const String deviceIdHeader = 'Foresignal-Device-Id';

/// The notification inbox filter: unread only, an event (`null` for all) and
/// a minimum severity.
typedef NotificationFilter = ({bool unreadOnly, String? event, String? minSeverity});

/// Whether [n] passes [filter].
bool notificationMatches(Json n, NotificationFilter filter) =>
    (!filter.unreadOnly || n['read'] != true) &&
    (filter.event == null || n['event'] == filter.event) &&
    (filter.minSeverity == null || severityRank(n['severity']) >= severityRank(filter.minSeverity));

/// [items] with [n] merged in by id, newest first; one that no longer passes
/// [filter] leaves.
List<Json> upsertNotification(List<Json> items, Json n, NotificationFilter filter) {
  final next = <Json>[...items.where((i) => i['id'] != n['id'])];
  if (notificationMatches(n, filter)) {
    next.add(n);
  }
  next.sort((a, b) => ((b['id'] as num?) ?? 0).compareTo((a['id'] as num?) ?? 0));
  return next;
}

/// [items] with every id in [ids] (or every id up to [upToId]) marked read;
/// those that leave [filter] are dropped.
List<Json> markedRead(List<Json> items, NotificationFilter filter, {Set<int>? ids, int? upToId}) {
  final out = <Json>[];
  for (final n in items) {
    final id = (n['id'] as num?) ?? 0;
    final hit = (ids?.contains(id) ?? false) || (upToId != null && id <= upToId);
    if (!hit) {
      out.add(n);
      continue;
    }
    final read = <String, Object?>{...n, 'read': true};
    if (notificationMatches(read, filter)) {
      out.add(read);
    }
  }
  return out;
}

/// The JSON object an SSE [event] named [name] carries, or `null`.
Json? _payload(SseEvent event, String name) {
  if (event.event != name) {
    return null;
  }
  try {
    final data = event.decodeJson();
    return data is Map ? data.cast<String, Object?>() : null;
  } on FormatException {
    return null;
  }
}

/// The `Notification` a `notification` event carries, or `null`.
Json? notificationOfEvent(SseEvent event) {
  final n = _payload(event, 'notification');
  return n?['id'] is int ? n : null;
}

/// The `NotificationBadge` a `badge` event carries, or `null`.
Json? badgeOfEvent(SseEvent event) {
  final b = _payload(event, 'badge');
  return b?['unread'] is int ? b : null;
}

/// The capability token at the end of an action [url]
/// (`<publicBaseUrl>/v1/actions/eac_…`), or `null` when it has none.
String? actionToken(Object? url) {
  final uri = Uri.tryParse('${url ?? ''}');
  final segments = uri?.pathSegments ?? const <String>[];
  final at = segments.lastIndexOf('actions');
  if (at < 0 || at + 1 >= segments.length || segments[at + 1].isEmpty) {
    return null;
  }
  return segments[at + 1];
}

/// What an action does, in words.
String actionText(Json action) {
  final duration = jsonMap(action, 'params')?['duration'];
  return switch (action['action']) {
    'ack' => 'Acknowledge the alert',
    'snooze' => 'Snooze the alert${duration == null ? '' : ' for $duration'}',
    'mute' => 'Mute the rule${duration == null ? '' : ' for $duration'}',
    'feedback:useful' => 'Mark the alert useful',
    'feedback:noise' => 'Mark the alert as noise',
    final Object? other => wireText('$other'),
  };
}

/// Which notifications a push target receives (`PushFilters`).
class PushFiltersDraft {
  /// Filters receiving alerts of every rule and severity.
  PushFiltersDraft() : events = <String>{'alert'};

  /// A draft of stored [filters].
  factory PushFiltersDraft.of(Json? filters) {
    final d = PushFiltersDraft()
      ..minSeverity = filters?['minSeverity'] as String?
      ..tags = ((filters?['tags'] as List<Object?>?) ?? const <Object?>[]).join(', ')
      ..ruleIds = ((filters?['ruleIds'] as List<Object?>?) ?? const <Object?>[]).join(', ');
    final events = filters?['events'] as List<Object?>?;
    if (events != null) {
      d.events
        ..clear()
        ..addAll(events.map((e) => '$e'));
    }
    return d;
  }

  /// The events received.
  final Set<String> events;

  /// The lowest severity received; `null` for all.
  String? minSeverity;

  /// Any-of rule tags, comma-separated; empty for every tag.
  String tags = '';

  /// Rule ids, comma-separated; empty for every rule.
  String ruleIds = '';

  /// Problems by field (`events`, `ruleIds`).
  Map<String, String> validate() => <String, String>{
    if (events.isEmpty) 'events': 'At least one event.',
    if (commaList(ruleIds).any((id) => !_uuid.hasMatch(id))) 'ruleIds': 'Rule ids are UUIDs.',
  };

  /// The `PushFilters` body.
  Json toJson() => <String, Object?>{
    'events': <String>[for (final e in notificationEvents) if (events.contains(e)) e],
    'minSeverity': ?minSeverity,
    'tags': commaList(tags),
    'ruleIds': commaList(ruleIds).isEmpty ? null : commaList(ruleIds),
  };
}

final RegExp _uuid = RegExp(r'^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$');
final RegExp _providerId = RegExp(r'^[a-z0-9]+(-[a-z0-9]+)*$');
final RegExp _apnsToken = RegExp(r'^[0-9a-fA-F]{64,200}$');

/// An editable native push provider (`PushProviderInput`). Secrets are
/// write-only: they are sent only when typed, and a new provider needs its
/// key.
class PushProviderDraft {
  /// A new APNs provider.
  PushProviderDraft();

  /// A draft of stored [provider].
  factory PushProviderDraft.of(Json provider) {
    final config = jsonMap(provider, 'config') ?? const <String, Object?>{};
    return PushProviderDraft()
      ..id = '${provider['id'] ?? ''}'
      ..type = provider['type'] as String? ?? 'apns'
      ..appIds = ((provider['appIds'] as List<Object?>?) ?? const <Object?>[]).join(', ')
      ..enabled = provider['enabled'] as bool? ?? true
      ..teamId = config['teamId'] as String? ?? ''
      ..keyId = config['keyId'] as String? ?? ''
      ..keyEnvironment = config['keyEnvironment'] as String? ?? 'both'
      ..timeSensitive = config['timeSensitive'] as bool? ?? false
      ..projectId = config['projectId'] as String? ?? ''
      ..clientEmail = config['clientEmail'] as String? ?? ''
      ..tokenUri = config['tokenUri'] as String? ?? defaultFcmTokenUri
      ..secretsSet.addAll(((provider['secretFields'] as List<Object?>?) ?? const <Object?>[]).map((e) => '$e'));
  }

  /// The provider id, lower-case words joined by `-`; fixed once created.
  String id = '';

  /// `apns` or `fcm`.
  String type = 'apns';

  /// Bundle ids or Android package names, comma-separated.
  String appIds = '';

  /// Whether it sends.
  bool enabled = true;

  /// APNs team id (10 characters).
  String teamId = '';

  /// APNs key id (10 characters).
  String keyId = '';

  /// The APNs environments the key serves.
  String keyEnvironment = 'both';

  /// Whether alerts go out as time-sensitive (APNs).
  bool timeSensitive = false;

  /// The FCM project id.
  String projectId = '';

  /// The FCM service account's client email.
  String clientEmail = '';

  /// The FCM OAuth token endpoint.
  String tokenUri = defaultFcmTokenUri;

  /// The APNs `.p8` key (PEM), write-only.
  String p8 = '';

  /// The FCM service-account JSON, write-only.
  String serviceAccountJson = '';

  /// The secrets the backend reports set.
  final Set<String> secretsSet = <String>{};

  bool get _apns => type == 'apns';

  /// The service-account JSON, parsed, or `null` when empty or not an
  /// object.
  Json? get _serviceAccount {
    if (serviceAccountJson.trim().isEmpty) {
      return null;
    }
    try {
      return parseJsonObject(serviceAccountJson);
    } on FormatException {
      return null;
    }
  }

  /// Problems by field; [creating] needs the provider's key.
  Map<String, String> validate({required bool creating}) {
    final errors = <String, String>{};
    if (!_providerId.hasMatch(id.trim())) {
      errors['id'] = 'Lower-case letters and digits, words joined by -.';
    }
    if (commaList(appIds).isEmpty) {
      errors['appIds'] = 'At least one bundle id or package name.';
    }
    if (_apns) {
      if (teamId.trim().length != 10) {
        errors['teamId'] = '10 characters.';
      }
      if (keyId.trim().length != 10) {
        errors['keyId'] = '10 characters.';
      }
      final key = p8.trim();
      if (key.isEmpty && creating) {
        errors['p8'] = 'Required for a new provider.';
      } else if (key.isNotEmpty && !key.contains('BEGIN PRIVATE KEY')) {
        errors['p8'] = 'The .p8 file as text, from -----BEGIN PRIVATE KEY-----.';
      }
    } else {
      final account = _serviceAccount;
      if (serviceAccountJson.trim().isNotEmpty) {
        if (jsonObjectProblem(serviceAccountJson) case final p?) {
          errors['serviceAccountJson'] = p;
        } else if (account?['private_key'] is! String) {
          errors['serviceAccountJson'] = 'The service-account JSON has no private_key.';
        }
      } else if (creating) {
        errors['serviceAccountJson'] = 'Required for a new provider.';
      }
      if (projectId.trim().isEmpty && account?['project_id'] is! String) {
        errors['projectId'] = 'Required, or in the service-account JSON.';
      }
      if (clientEmail.trim().isEmpty && account?['client_email'] is! String) {
        errors['clientEmail'] = 'Required, or in the service-account JSON.';
      } else if (clientEmail.trim().isNotEmpty && !clientEmail.contains('@')) {
        errors['clientEmail'] = 'An email address.';
      }
      if (Uri.tryParse(tokenUri.trim())?.hasScheme != true) {
        errors['tokenUri'] = 'A URL with its scheme.';
      }
    }
    return errors;
  }

  /// The `PushProviderInput` body. A missing FCM project id or client email
  /// is taken from the service-account JSON. Call only when [validate] is
  /// empty.
  Json toJson() {
    final account = _serviceAccount;
    return <String, Object?>{
      'type': type,
      'appIds': commaList(appIds),
      'enabled': enabled,
      'config': _apns
          ? <String, Object?>{
              'teamId': teamId.trim(),
              'keyId': keyId.trim(),
              'keyEnvironment': keyEnvironment,
              'timeSensitive': timeSensitive,
            }
          : <String, Object?>{
              'projectId': projectId.trim().isEmpty ? account!['project_id'] : projectId.trim(),
              'clientEmail': clientEmail.trim().isEmpty ? account!['client_email'] : clientEmail.trim(),
              'tokenUri': tokenUri.trim(),
            },
      if (_apns && p8.trim().isNotEmpty) 'secrets': <String, Object?>{'p8': p8.trim()},
      if (!_apns && serviceAccountJson.trim().isNotEmpty)
        'secrets': <String, Object?>{'serviceAccountJson': serviceAccountJson.trim()},
    };
  }
}

/// A native device registration (`PushDeviceInput`).
class PushDeviceDraft {
  /// Creates the draft.
  PushDeviceDraft({
    this.transport = 'fcm',
    this.platform = 'android',
    this.appId = '',
    this.environment,
    this.token = '',
  });

  /// `apns` or `fcm`.
  String transport;

  /// `ios`, `ipados`, `macos` or `android`.
  String platform;

  /// The bundle id or package name.
  String appId;

  /// The APNs environment; `null` for FCM.
  String? environment;

  /// The push token, write-only.
  String token;

  /// A name for the device.
  String name = '';

  /// How much alert text goes through Apple or Google.
  String contentLevel = 'minimal';

  /// What it receives.
  PushFiltersDraft filters = PushFiltersDraft();

  /// Problems by field (`token`, `appId`, `environment`, `events`,
  /// `ruleIds`).
  Map<String, String> validate() {
    final t = token.trim();
    return <String, String>{
      if (appId.trim().isEmpty) 'appId': 'Required.',
      if (t.isEmpty)
        'token': 'Required.'
      else if (transport == 'apns' && !_apnsToken.hasMatch(t))
        'token': 'An APNs token is 64 to 200 hex characters.'
      else if (t.length > 4096)
        'token': 'Up to 4096 characters.',
      if (transport == 'apns' && environment == null) 'environment': 'Choose sandbox or production.',
      ...filters.validate(),
    };
  }

  /// The `PushDeviceInput` body. Call only when [validate] is empty.
  Json toJson() => <String, Object?>{
    'transport': transport,
    'platform': platform,
    'appId': appId.trim(),
    'environment': transport == 'apns' ? environment : null,
    'token': token.trim(),
    'name': name.trim().isEmpty ? null : name.trim(),
    'contentLevel': contentLevel,
    'filters': filters.toJson(),
  };

  /// The last six characters of the token, as the backend reports a device
  /// (`tokenSuffix`).
  String get tokenSuffix {
    final t = token.trim();
    return t.length <= 6 ? t : t.substring(t.length - 6);
  }
}

/// The editable fields of a registered device (`PushDeviceUpdate`).
class PushDeviceUpdateDraft {
  /// A draft of stored [device].
  PushDeviceUpdateDraft.of(Json device)
    : name = device['name'] as String? ?? '',
      contentLevel = device['contentLevel'] as String? ?? 'minimal',
      lang = device['lang'] as String? ?? '',
      filters = PushFiltersDraft.of(jsonMap(device, 'filters'));

  /// A name for the device.
  String name;

  /// How much alert text goes through Apple or Google.
  String contentLevel;

  /// A BCP 47 language; empty for the server's default.
  String lang;

  /// What it receives.
  final PushFiltersDraft filters;

  /// Problems by field.
  Map<String, String> validate() => filters.validate();

  /// The `PushDeviceUpdate` body.
  Json toJson() => <String, Object?>{
    'name': name.trim().isEmpty ? null : name.trim(),
    'contentLevel': contentLevel,
    'lang': lang.trim().isEmpty ? null : lang.trim(),
    'filters': filters.toJson(),
  };
}

/// A Web Push subscription to add (`PushSubscriptionInput`). The
/// subscription is the browser's `PushSubscription.toJSON()`:
/// `{"endpoint": …, "keys": {"p256dh": …, "auth": …}}`.
class PushSubscriptionDraft {
  /// A name for it.
  String name = '';

  /// The browser subscription, a JSON object.
  String subscriptionText = '';

  /// `browser`, `unifiedpush` or `other`.
  String transportLabel = 'browser';

  /// `foresignal` or `declarative`.
  String payloadFormat = 'foresignal';

  /// A BCP 47 language; empty for the server's default.
  String lang = '';

  /// What it receives.
  PushFiltersDraft filters = PushFiltersDraft();

  /// Problems by field (`subscription`, `name`, `events`, `ruleIds`).
  Map<String, String> validate() {
    final errors = <String, String>{...filters.validate()};
    if (name.length > 200) {
      errors['name'] = 'Up to 200 characters.';
    }
    if (jsonObjectProblem(subscriptionText, required: true) case final p?) {
      errors['subscription'] = p;
      return errors;
    }
    final s = parseJsonObject(subscriptionText)!;
    final endpoint = Uri.tryParse('${s['endpoint'] ?? ''}');
    final keys = jsonMap(s, 'keys');
    if (endpoint == null || !endpoint.hasScheme || endpoint.host.isEmpty) {
      errors['subscription'] = 'Needs an endpoint URL.';
    } else if (keys?['p256dh'] is! String || keys?['auth'] is! String) {
      errors['subscription'] = 'Needs keys.p256dh and keys.auth.';
    }
    return errors;
  }

  /// The `PushSubscriptionInput` body. Call only when [validate] is empty.
  Json toJson() {
    final s = parseJsonObject(subscriptionText)!;
    final keys = jsonMap(s, 'keys')!;
    return <String, Object?>{
      'name': name.trim().isEmpty ? null : name.trim(),
      'subscription': <String, Object?>{
        'endpoint': s['endpoint'],
        'keys': <String, Object?>{'p256dh': keys['p256dh'], 'auth': keys['auth']},
      },
      'transportLabel': transportLabel,
      'payloadFormat': payloadFormat,
      'lang': lang.trim().isEmpty ? null : lang.trim(),
      'filters': filters.toJson(),
    };
  }
}

/// A `PushTestResult` in words.
String pushTestText(Json result) {
  final parts = <String>[
    if (result['credentialMinted'] == true) 'credential obtained' else if (result['credentialMinted'] == false) 'no credential',
    if (result['sent'] == true) 'sent' else if (result['sent'] == false) 'not sent',
    if (result['status'] != null) 'HTTP ${result['status']}',
    if (result['reason'] != null) '${result['reason']}',
    if (result['error'] != null) '${result['error']}',
  ];
  final head = result['success'] == true ? 'Succeeded' : 'Failed';
  return parts.isEmpty ? head : '$head: ${parts.join(', ')}';
}
