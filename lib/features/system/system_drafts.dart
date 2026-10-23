import 'dart:convert';

import '../../core/format/duration_text.dart';
import '../forecasting/forecasting_drafts.dart';
import '../forecasting/forecasting_providers.dart' show Json;
import '../serving/serving_drafts.dart' show bboxProblem, bboxText, parseBbox;

export '../forecasting/forecasting_providers.dart' show Json;

/// The settings resources this section reads and replaces whole.
const String serverSettingsPath = '/v1/settings/server';

/// `getSecuritySettings` / `updateSecuritySettings`.
const String securitySettingsPath = '/v1/settings/security';

/// `getCors` / `updateCors`.
const String corsSettingsPath = '/v1/settings/cors';

/// `getOutboundSettings` / `updateOutboundSettings`.
const String outboundSettingsPath = '/v1/settings/outbound';

/// `getMcpAuthSettings` / `updateMcpAuthSettings`.
const String mcpAuthSettingsPath = '/v1/settings/mcp-auth';

/// `getMetricSettings` / `updateMetricSettings`.
const String metricSettingsPath = '/v1/settings/metrics';

/// `getNotificationSettings` / `updateNotificationSettings`.
const String notificationSettingsPath = '/v1/settings/notifications';

/// `getInfraRules` / `updateInfraRules`.
const String infraRulesPath = '/v1/settings/infra-rules';

/// `getWeatherSettings` / `updateWeatherSettings`.
const String weatherSettingsPath = '/v1/settings/weather';

/// `getWatchdogSettings` / `updateWatchdogSettings`.
const String watchdogSettingsPath = '/v1/settings/watchdog';

/// `exportSettings`.
const String exportSettingsPath = '/v1/settings/export';

/// `importSettings`.
const String importSettingsPath = '/v1/settings/import';

/// `getAttributions`.
const String attributionsPath = '/v1/attributions';

// us-english-allow-start: the contract's own wire names (`ApiToken`,
// `ApiTokenInput`, `UpdateTokenRequest`, `getAttributions` and `Attribution`)
// spell these members this way; the app shows them in US English.
/// The token and attribution request member holding license policy flags.
const String licensePolicyMember = 'licencePolicy';

/// The attribution member naming its license.
const String attributionLicenseMember = 'licence';

/// The attribution member linking its license.
const String attributionLicenseUrlMember = 'licenceUrl';
// us-english-allow-end

/// The license policy flags (`no-nc`, `no-sa`, `redistributable`).
const List<String> licensePolicyFlags = <String>['no-nc', 'no-sa', 'redistributable'];

/// What each license policy flag keeps out.
const Map<String, String> licensePolicyNames = <String, String>{
  'no-nc': 'No non-commercial',
  'no-sa': 'No share-alike',
  'redistributable': 'Redistributable only',
};

/// Token scopes.
const List<String> tokenScopes = <String>['read', 'agent', 'admin'];

/// The canonical prefixes a tile key may read (`TileKeyCreate.prefixes`).
const List<String> tileKeyPrefixes = <String>[
  '/v1/products/',
  '/v1/styles',
  '/v1/media/',
  '/v1/tiles/',
  '/v1/maps/static',
  '/v1/sample',
  '/v1/ground-stations/',
  '/v1/changes/stream',
  '/v1/events/stream',
  '/v1/map/',
];

/// How a field of a settings object is edited and sent.
enum SettingKind {
  /// Free text.
  text,

  /// An absolute URL with its scheme.
  url,

  /// An email address.
  email,

  /// A whole number.
  integer,

  /// A number.
  number,

  /// On or off.
  toggle,

  /// One of [SettingField.values].
  choice,

  /// Any of [SettingField.values].
  choices,

  /// A list of strings, one per line (commas also separate).
  lines,

  /// A backend duration (`60s`, `PT15M`).
  duration,

  /// An ISO-8601 instant.
  instant,

  /// `minLon, minLat, maxLon, maxLat` as four numbers.
  bbox,

  /// `minLon,minLat,maxLon,maxLat` sent as one string.
  bboxString,

  /// A JSON object.
  json,

  /// `key = value` lines, sent as an object.
  keyValues,
}

/// One editable member of a settings object, addressed by a dotted [path]
/// (`clientLinks.alert`).
class SettingField {
  /// Creates the field.
  const SettingField(
    this.path,
    this.label, {
    this.kind = SettingKind.text,
    this.help,
    this.hint,
    this.nullable = false,
    this.required = false,
    this.min,
    this.max,
    this.maxItems,
    this.values = const <String>[],
    this.labels,
    this.minDuration,
    this.defaultValue,
  });

  /// The member's dotted path in the settings object.
  final String path;

  /// The field label.
  final String label;

  /// How it is edited and sent.
  final SettingKind kind;

  /// Help beneath the label.
  final String? help;

  /// Placeholder text.
  final String? hint;

  /// Whether an empty value is sent as `null`. Otherwise an empty optional
  /// value is left out, so the backend's default applies.
  final bool nullable;

  /// Whether a value is required.
  final bool required;

  /// The lowest number allowed.
  final num? min;

  /// The highest number allowed.
  final num? max;

  /// The most list items allowed.
  final int? maxItems;

  /// The values of a [SettingKind.choice] or [SettingKind.choices] field,
  /// or the values a [SettingKind.keyValues] field's values may take.
  final List<String> values;

  /// Display names of [values].
  final Map<String, String>? labels;

  /// The shortest [SettingKind.duration] allowed.
  final Duration? minDuration;

  /// The backend's default for a toggle, choice or choices field, shown
  /// when the member is absent so saving does not change it.
  final Object? defaultValue;

  /// The path's keys.
  List<String> get keys => path.split('.');

  /// Whether the field is edited as text.
  bool get isText => switch (kind) {
    SettingKind.toggle || SettingKind.choice || SettingKind.choices => false,
    _ => true,
  };
}

/// The value at dotted [path] in [json], or `null`.
Object? valueAt(Json? json, String path) {
  Object? at = json;
  for (final key in path.split('.')) {
    if (at is! Map) {
      return null;
    }
    at = at[key];
  }
  return at;
}

/// Whether [json] has a member at dotted [path].
bool hasValueAt(Json? json, String path) {
  final keys = path.split('.');
  Object? at = json;
  for (final key in keys.take(keys.length - 1)) {
    if (at is! Map) {
      return false;
    }
    at = at[key];
  }
  return at is Map && at.containsKey(keys.last);
}

/// A deep copy of [json] (maps and lists copied, values shared).
Json deepCopy(Json json) => _copy(json)! as Json;

Object? _copy(Object? v) => switch (v) {
  final Map<Object?, Object?> m => <String, Object?>{for (final e in m.entries) '${e.key}': _copy(e.value)},
  final List<Object?> l => <Object?>[for (final x in l) _copy(x)],
  _ => v,
};

/// Sets [value] at dotted [path] in [json] in place, creating objects along
/// the way, or removes the member when [remove].
void setValueAt(Json json, String path, Object? value, {bool remove = false}) {
  final keys = path.split('.');
  var at = json;
  for (final key in keys.take(keys.length - 1)) {
    final next = at[key];
    if (next is Map<String, Object?>) {
      at = next;
    } else if (next is Map) {
      at = at[key] = next.cast<String, Object?>();
    } else {
      if (remove) {
        return;
      }
      at = at[key] = <String, Object?>{};
    }
  }
  if (remove) {
    at.remove(keys.last);
  } else {
    at[keys.last] = value;
  }
}

/// The stored value of [field] in [stored] as text for editing.
String settingText(SettingField field, Json stored) {
  final v = valueAt(stored, field.path);
  if (v == null) {
    return '';
  }
  return switch (field.kind) {
    SettingKind.lines => v is List ? v.join('\n') : '$v',
    SettingKind.bbox => bboxText(v),
    SettingKind.json => v is Map ? jsonObjectText(v.cast<String, Object?>()) : jsonEncode(v),
    SettingKind.keyValues => v is Map ? <String>[for (final e in v.entries) '${e.key} = ${e.value}'].join('\n') : '',
    _ => '$v',
  };
}

/// The stored value of a non-text [field] (toggle, choice, choices).
Object? settingPick(SettingField field, Json stored) {
  final v = hasValueAt(stored, field.path) ? valueAt(stored, field.path) : field.defaultValue;
  return switch (field.kind) {
    SettingKind.toggle => v == true,
    SettingKind.choices => <String>[if (v is List) for (final x in v) '$x'],
    _ => v as String?,
  };
}

/// [text] split into list items: lines and commas both separate, blank
/// items dropped.
List<String> lineItems(String text) => <String>[
  for (final line in text.split('\n')) ...commaList(line),
];

final RegExp _email = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');

/// `key = value` lines as an ordered map. Throws [FormatException] for a
/// line without `=`.
Map<String, String> keyValueLines(String text) {
  final out = <String, String>{};
  for (final line in text.split('\n')) {
    if (line.trim().isEmpty) {
      continue;
    }
    final i = line.indexOf('=');
    if (i <= 0 || line.substring(0, i).trim().isEmpty) {
      throw FormatException('"${line.trim()}" is not key = value.');
    }
    out[line.substring(0, i).trim()] = line.substring(i + 1).trim();
  }
  return out;
}

/// Why [text] is not a valid value of text [field], or `null`.
String? settingProblem(SettingField field, String text) {
  final t = text.trim();
  if (t.isEmpty) {
    return field.required ? 'Required.' : null;
  }
  switch (field.kind) {
    case SettingKind.url:
      final u = Uri.tryParse(t);
      return u != null && u.hasScheme && u.host.isNotEmpty ? null : 'A URL with its scheme, such as https://example.org.';
    case SettingKind.email:
      return _email.hasMatch(t) ? null : 'An email address.';
    case SettingKind.integer:
      final n = int.tryParse(t);
      if (n == null) {
        return 'A whole number.';
      }
      return _rangeProblem(field, n);
    case SettingKind.number:
      final n = num.tryParse(t);
      if (n == null) {
        return 'A number.';
      }
      return _rangeProblem(field, n);
    case SettingKind.lines:
      final items = lineItems(t);
      return field.maxItems != null && items.length > field.maxItems! ? 'At most ${field.maxItems} items.' : null;
    case SettingKind.duration:
      final d = parseDurationText(t);
      if (d == null) {
        return 'A duration such as 60s, 15m or PT1H.';
      }
      final least = field.minDuration;
      return least != null && d < least ? 'At least ${_durationWords(least)}.' : null;
    case SettingKind.instant:
      return instantProblem(t);
    case SettingKind.bbox:
    case SettingKind.bboxString:
      return bboxProblem(t);
    case SettingKind.json:
      return jsonObjectProblem(t);
    case SettingKind.keyValues:
      try {
        final map = keyValueLines(t);
        if (field.values.isNotEmpty) {
          for (final e in map.entries) {
            if (!field.values.contains(e.value)) {
              return '${e.key}: ${field.values.join(' or ')}, not ${e.value}.';
            }
          }
        }
        return field.maxItems != null && map.length > field.maxItems! ? 'At most ${field.maxItems} entries.' : null;
      } on FormatException catch (e) {
        return e.message;
      }
    case SettingKind.text:
    case SettingKind.toggle:
    case SettingKind.choice:
    case SettingKind.choices:
      return null;
  }
}

String? _rangeProblem(SettingField field, num n) {
  if (field.min != null && n < field.min!) {
    return field.max == null ? 'At least ${field.min}.' : 'From ${field.min} to ${field.max}.';
  }
  if (field.max != null && n > field.max!) {
    return field.min == null ? 'At most ${field.max}.' : 'From ${field.min} to ${field.max}.';
  }
  return null;
}

String _durationWords(Duration d) => d.inHours >= 1 && d.inMinutes % 60 == 0
    ? '${d.inHours} h'
    : d.inMinutes >= 1 && d.inSeconds % 60 == 0
    ? '${d.inMinutes} min'
    : '${d.inSeconds} s';

/// The value text [field] sends for non-empty [text]. Call only when
/// [settingProblem] is `null`.
Object? settingValue(SettingField field, String text) {
  final t = text.trim();
  return switch (field.kind) {
    SettingKind.integer => int.parse(t),
    SettingKind.number => num.parse(t),
    SettingKind.lines => lineItems(t),
    SettingKind.bbox => parseBbox(t),
    SettingKind.bboxString => parseBbox(t)!.join(','),
    SettingKind.json => parseJsonObject(t),
    SettingKind.keyValues => keyValueLines(t),
    SettingKind.instant => parseInstantText(t)!.toUtc().toIso8601String(),
    _ => t,
  };
}

/// The settings object to send: [stored] without its [readOnly] members,
/// with each of [fields] set from [texts] (text fields) and [picks] (the
/// rest). An empty text field is sent as `null` when nullable, as an empty
/// list for a list, and otherwise left out so the backend's default holds.
/// Call only when [settingsProblems] is empty.
Json settingsBody(
  Json stored,
  List<SettingField> fields,
  Map<String, String> texts,
  Map<String, Object?> picks, {
  Set<String> readOnly = const <String>{},
}) {
  final body = deepCopy(stored);
  for (final r in readOnly) {
    setValueAt(body, r, null, remove: true);
  }
  for (final f in fields) {
    if (!f.isText) {
      final pick = picks[f.path];
      if (pick == null && !f.nullable) {
        setValueAt(body, f.path, null, remove: true);
      } else {
        setValueAt(body, f.path, pick);
      }
      continue;
    }
    final text = texts[f.path] ?? '';
    if (text.trim().isNotEmpty) {
      setValueAt(body, f.path, settingValue(f, text));
    } else if (f.nullable) {
      setValueAt(body, f.path, null);
    } else if (f.kind == SettingKind.lines) {
      setValueAt(body, f.path, <String>[]);
    } else {
      setValueAt(body, f.path, null, remove: true);
    }
  }
  return body;
}

/// Problems by field path for [texts] and [picks].
Map<String, String> settingsProblems(
  List<SettingField> fields,
  Map<String, String> texts,
  Map<String, Object?> picks,
) => <String, String>{
  for (final f in fields)
    if (f.isText)
      f.path: ?settingProblem(f, texts[f.path] ?? '')
    else if (f.required && (picks[f.path] == null || (picks[f.path] is List && (picks[f.path]! as List).isEmpty)))
      f.path: f.kind == SettingKind.choices ? 'Choose at least one.' : 'Required.',
};

/// Where [read] does not hold what [sent] set, or `null` when it does.
///
/// Only the members [sent] carries are compared: a `null` sent matches a
/// member read back as `null` or absent, and instants match by the moment
/// they name, so a backend that writes `…:00.000Z` for `…:00Z` agrees.
String? sentDifference(Object? sent, Object? read, [String path = '']) {
  String at(Object key) => path.isEmpty ? '$key' : '$path.$key';
  if (sent is Map) {
    if (read is! Map) {
      return sent.isEmpty && read == null ? null : '${path.isEmpty ? 'The settings' : path} read back differently.';
    }
    for (final e in sent.entries) {
      final d = sentDifference(e.value, read[e.key], at(e.key as Object));
      if (d != null) {
        return d;
      }
    }
    return null;
  }
  if (sent is List) {
    if (read is! List || read.length != sent.length) {
      return '$path reads back as ${_shown(read)}.';
    }
    for (var i = 0; i < sent.length; i++) {
      final d = sentDifference(sent[i], read[i], '$path[$i]');
      if (d != null) {
        return d;
      }
    }
    return null;
  }
  if (sent is num && read is num) {
    return sent == read ? null : '$path reads back as $read.';
  }
  if (sent is String && read is String && sent != read) {
    final a = DateTime.tryParse(sent);
    final b = DateTime.tryParse(read);
    if (a != null && b != null && sent.contains('T') && a.isAtSameMomentAs(b)) {
      return null;
    }
  }
  return sent == read ? null : '$path reads back as ${_shown(read)}.';
}

String _shown(Object? v) => v == null ? 'nothing' : jsonEncode(v);

/// A titled group of [SettingField]s over one settings resource.
class SettingsGroup {
  /// Creates the group.
  const SettingsGroup({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.path,
    required this.fields,
    this.readOnly = const <String>{},
    this.check,
  });

  /// A key prefix for its widgets.
  final String id;

  /// The card title.
  final String title;

  /// The card subtitle.
  final String subtitle;

  /// The resource path, read with GET and replaced with PUT.
  final String path;

  /// The fields edited.
  final List<SettingField> fields;

  /// Members the backend reports but does not take back (`warnings`).
  final Set<String> readOnly;

  /// Problems across fields, by path, for the body about to be sent.
  final Map<String, String> Function(Json body)? check;
}

/// The server settings (`ServerSettings`).
const SettingsGroup serverGroup = SettingsGroup(
  id: 'server',
  title: 'Server',
  subtitle: 'How this instance names itself in links, and its default zone.',
  path: serverSettingsPath,
  readOnly: <String>{'warnings'},
  fields: <SettingField>[
    SettingField(
      'publicBaseUrl',
      'Public base URL',
      kind: SettingKind.url,
      nullable: true,
      help: "Used in notification links and pairing codes. Empty uses the request's own address.",
      hint: 'https://foresignal.example.org',
    ),
    SettingField('timezone', 'Time zone', help: 'IANA zone; channels without their own use it. Empty for UTC.', hint: 'America/Chicago'),
    SettingField(
      'contactEmail',
      'Contact email',
      kind: SettingKind.email,
      nullable: true,
      help: 'Added to the upstream User-Agent as contact=…; empty for none.',
      hint: 'ops@example.org',
    ),
    SettingField('clientLinks.alert', 'Alert link', help: 'Empty for foresignal://alerts/{id}.'),
    SettingField('clientLinks.record', 'Record link', help: 'Empty for foresignal://records/{source}/{externalId}.'),
    SettingField('clientLinks.briefingRun', 'Briefing run link', help: 'Empty for foresignal://briefings/{briefingId}/runs/{id}.'),
    SettingField('clientLinks.pair', 'Pairing link', help: 'Empty for foresignal://pair?u={publicBaseUrl}&c={code}.'),
    SettingField('clientLinks.share', 'Share link', nullable: true, help: 'A share link opened in a client, with {key}; empty for none.'),
    SettingField('push.contact', 'Web Push contact', help: 'The VAPID subject. Empty for mailto:admin@localhost.'),
    SettingField(
      'push.allowedPrivateHosts',
      'Private push hosts',
      kind: SettingKind.lines,
      help: 'Host names or CIDRs allowed as push endpoints on private addresses, one per line.',
    ),
    SettingField('push.defaultLang', 'Push language', help: 'Empty for en.'),
  ],
);

/// Access to reads (`SecuritySettings`).
const SettingsGroup securityGroup = SettingsGroup(
  id: 'security',
  title: 'Access',
  subtitle: 'Who may read without a token, and what anonymous callers get.',
  path: securitySettingsPath,
  fields: <SettingField>[
    SettingField('openReads', 'Open reads', kind: SettingKind.toggle, defaultValue: true, help: 'When off, data reads need a read token.'),
    SettingField('exposeObserver', 'Show observers', kind: SettingKind.toggle, help: 'Return record observers to read-scope and anonymous callers.'),
    SettingField('metricsOpen', 'Open metrics', kind: SettingKind.toggle, defaultValue: true, help: 'When off, /actuator/prometheus needs an admin token.'),
    SettingField('exposeMlat', 'Show MLAT positions', kind: SettingKind.toggle, help: 'When off, anonymous reads drop records positioned by multilateration.'),
    SettingField(
      'anonymous.sources',
      'Anonymous sources',
      kind: SettingKind.lines,
      nullable: true,
      help: 'Source ids anonymous callers may read; empty for any.',
    ),
    SettingField('anonymous.kinds', 'Anonymous kinds', kind: SettingKind.lines, nullable: true, help: 'Record kinds; empty for any.'),
    SettingField('anonymous.bbox', 'Anonymous area', kind: SettingKind.bbox, nullable: true, help: 'min lon, min lat, max lon, max lat; empty for anywhere.'),
    SettingField(
      'anonymous.endpoints',
      'Anonymous endpoints',
      kind: SettingKind.lines,
      nullable: true,
      help: 'Operations as METHOD /v1/path/pattern, one per line; empty for every data read.',
      hint: 'GET /v1/records/**',
    ),
    SettingField(
      'anonymous.maxRequestsPerMinute',
      'Anonymous requests',
      kind: SettingKind.integer,
      nullable: true,
      min: 1,
      help: 'Per minute; empty for the read rate limit (120).',
    ),
  ],
  check: _securityCheck,
);

final RegExp _endpointPattern = RegExp(r'^(\*|GET|HEAD|POST|PUT|PATCH|DELETE) /\S*$');

Map<String, String> _securityCheck(Json body) {
  final endpoints = valueAt(body, 'anonymous.endpoints');
  final bad = <String>[
    if (endpoints is List)
      for (final e in endpoints)
        if (!_endpointPattern.hasMatch('$e')) '$e',
  ];
  return <String, String>{
    if (bad.isNotEmpty) 'anonymous.endpoints': 'Not METHOD /path: ${bad.join(', ')}.',
  };
}

/// Cross-origin access (`CorsSettings`).
const SettingsGroup corsGroup = SettingsGroup(
  id: 'cors',
  title: 'CORS',
  subtitle: 'Browser origins allowed to read, and to write.',
  path: corsSettingsPath,
  fields: <SettingField>[
    SettingField('readOrigins', 'Read origins', kind: SettingKind.lines, help: 'One per line; * for any.', hint: '*'),
    SettingField('writeOrigins', 'Write origins', kind: SettingKind.lines, help: 'One per line.', hint: 'http://localhost:5173'),
  ],
);

/// The outbound URL policy overrides (`OutboundSettings`).
const SettingsGroup outboundGroup = SettingsGroup(
  id: 'outbound',
  title: 'Outbound URLs',
  subtitle: 'Overrides of the policy for URLs this instance fetches; a deny always wins.',
  path: outboundSettingsPath,
  fields: <SettingField>[
    SettingField('allowHosts', 'Allowed hosts', kind: SettingKind.lines, maxItems: 500, help: 'Allowed even when they resolve to refused addresses.'),
    SettingField('allowCidrs', 'Allowed ranges', kind: SettingKind.lines, maxItems: 500, help: 'CIDRs allowed in every profile.'),
    SettingField('denyHosts', 'Refused hosts', kind: SettingKind.lines, maxItems: 500),
    SettingField('denyCidrs', 'Refused ranges', kind: SettingKind.lines, maxItems: 500),
  ],
);

/// The JWS algorithms an MCP access token may use.
const List<String> mcpAlgs = <String>['RS256', 'ES256', 'EdDSA', 'Ed25519'];

/// Remote MCP authorization (`McpAuthSettings`).
const SettingsGroup mcpAuthGroup = SettingsGroup(
  id: 'mcp',
  title: 'MCP Authorization',
  subtitle: "Which credentials /mcp accepts: this instance's tokens, an identity provider's, or either.",
  path: mcpAuthSettingsPath,
  fields: <SettingField>[
    SettingField(
      'mode',
      'Mode',
      kind: SettingKind.choice,
      required: true,
      defaultValue: 'token',
      values: <String>['token', 'oauth', 'both'],
      labels: <String, String>{'token': 'ForeSignal tokens', 'oauth': 'Identity provider', 'both': 'Either'},
    ),
    SettingField('issuer', 'Issuer', kind: SettingKind.url, nullable: true, help: "Compared exactly with the token's iss; required for an identity provider."),
    SettingField('audience', 'Audience', kind: SettingKind.url, nullable: true, help: 'Empty for {publicBaseUrl}/mcp.'),
    SettingField('jwksUri', 'Key set URL', kind: SettingKind.url, nullable: true, help: 'Empty to discover it from the issuer.'),
    SettingField(
      'scopeMap',
      'Scope map',
      kind: SettingKind.keyValues,
      values: <String>['read', 'agent'],
      maxItems: 50,
      help: 'Provider scope = read or agent, one per line; admin is never mapped.',
      hint: 'foresignal:read = read',
    ),
    SettingField(
      'scopeClaim',
      'Scope claim',
      kind: SettingKind.choice,
      defaultValue: 'scope',
      values: <String>['scope', 'scp'],
    ),
    SettingField('allowedAlgs', 'Algorithms', kind: SettingKind.choices, required: true, values: mcpAlgs, defaultValue: mcpAlgs),
  ],
  check: _mcpCheck,
);

Map<String, String> _mcpCheck(Json body) => <String, String>{
  if (body['mode'] != 'token' && (body['issuer'] == null || '${body['issuer']}'.isEmpty))
    'issuer': 'Required with an identity provider.',
};

/// Notification deliveries (`NotificationSettings`).
const SettingsGroup notificationGroup = SettingsGroup(
  id: 'notifications',
  title: 'Notifications',
  subtitle: 'Pause every delivery for a while, chat commands, and the language notifications are written in.',
  path: notificationSettingsPath,
  fields: <SettingField>[
    SettingField(
      'pausedUntil',
      'Paused until',
      kind: SettingKind.instant,
      nullable: true,
      help: 'Deliveries held until then are sent as digests; empty for not paused.',
      hint: '2026-10-24T08:00:00Z',
    ),
    SettingField(
      'pauseBypassSeverity',
      'Sent while paused',
      kind: SettingKind.choice,
      nullable: true,
      defaultValue: 'critical',
      values: <String>['info', 'warning', 'critical'],
      labels: <String, String>{'info': 'Info and above', 'warning': 'Warning and above', 'critical': 'Critical only'},
      help: 'Severity that still goes out during a pause; none for nothing.',
    ),
    SettingField('chatops.enabled', 'Chat commands', kind: SettingKind.toggle, defaultValue: true, help: 'The switch for every interactive channel.'),
    SettingField('imageLinks', 'Image links', kind: SettingKind.toggle, help: 'Map links for channels that cannot take attachments; needs an https public URL.'),
    SettingField('defaultLanguage', 'Language', help: 'BCP 47; empty for en.', hint: 'en'),
  ],
);

/// The off-box watchdog (`WatchdogSettings`).
const SettingsGroup watchdogGroup = SettingsGroup(
  id: 'watchdog',
  title: 'Watchdog',
  subtitle: 'A dead-man ping to an outside monitor while this instance is ready, and an ingest canary.',
  path: watchdogSettingsPath,
  fields: <SettingField>[
    SettingField(
      'heartbeatUrl',
      'Heartbeat URL',
      kind: SettingKind.url,
      nullable: true,
      help: 'Pinged every interval while ready (Healthchecks.io, Uptime Kuma push); empty for none.',
    ),
    SettingField('failUrl', 'Failure URL', kind: SettingKind.url, nullable: true, help: 'Pinged instead while not ready; optional.'),
    SettingField('interval', 'Interval', kind: SettingKind.duration, minDuration: Duration(seconds: 30), help: 'At least 30 s; empty for 60s.', hint: '60s'),
    SettingField('method', 'Method', kind: SettingKind.choice, values: <String>['GET', 'POST'], labels: <String, String>{'GET': 'GET', 'POST': 'POST'}, defaultValue: 'GET'),
    SettingField('canary.enabled', 'Ingest canary', kind: SettingKind.toggle, help: 'Submit a synthetic record and require its change within 30 s.'),
    SettingField('canary.interval', 'Canary interval', kind: SettingKind.duration, help: 'Empty for 1h.', hint: '1h'),
  ],
);

/// Weather ingestion (`WeatherSettings`).
const SettingsGroup weatherGroup = SettingsGroup(
  id: 'weather',
  title: 'Weather',
  subtitle: 'Weather context on alerts, and the area weather is ingested for.',
  path: weatherSettingsPath,
  fields: <SettingField>[
    SettingField(
      'alertContext',
      'Alert context',
      kind: SettingKind.choice,
      defaultValue: 'auto',
      values: <String>['auto', 'off'],
      labels: <String, String>{'auto': 'Automatic', 'off': 'Off'},
      help: 'Weather at the place of each geolocated alert.',
    ),
    SettingField(
      'defaultAoi',
      'Default area',
      kind: SettingKind.bboxString,
      help: 'min lon, min lat, max lon, max lat, used while no places exist; empty for the default.',
    ),
    SettingField('aoiBufferKm', 'Place buffer', kind: SettingKind.number, min: 0, max: 1000, help: 'Kilometers around each place; empty for 150.'),
  ],
);

/// The fields of one metric projection (`MetricProjection`).
const List<SettingField> metricProjectionFields = <SettingField>[
  SettingField('name', 'Name', required: true, help: 'Served as foresignal_data_<name>.', hint: 'river_level_m'),
  SettingField('source', 'Source', required: true),
  SettingField('kind', 'Kind', nullable: true, help: 'Empty for every kind.'),
  SettingField('path', 'Path', required: true, help: 'A payload path in trigger syntax; not a volatile field.', hint: 'payload.level'),
  SettingField('unit', 'Unit', nullable: true),
  SettingField('help', 'Help', nullable: true),
  SettingField('maxSeries', 'Series cap', kind: SettingKind.integer, min: 1, max: 10000, help: 'Empty for 500.'),
  SettingField('allowPrivate', 'Private sources', kind: SettingKind.toggle),
];

final RegExp _metricName = RegExp(r'^[a-z_][a-z0-9_]*$');
final RegExp _labelName = RegExp(r'^[a-zA-Z_][a-zA-Z0-9_]*$');

/// Problems in a metric projection [body] beyond its fields' own: its
/// name's shape and uniqueness among [otherNames], and its label names.
/// The body holds its labels as a `name: path` object, as the form edits
/// them.
Map<String, String> metricProjectionProblems(Json body, Iterable<Object?> otherNames) {
  final name = '${body['name'] ?? ''}';
  final labels = body['labels'];
  return <String, String>{
    if (name.isNotEmpty && !_metricName.hasMatch(name)) 'name': 'Lower-case letters, digits and _, not starting with a digit.',
    if (otherNames.contains(name)) 'name': 'Another projection has this name.',
    if (labels is Map && labels.keys.any((k) => !_labelName.hasMatch('$k'))) 'labels': 'Label names are letters, digits and _.',
  };
}

/// A projection's labels as `name = path` lines.
String metricLabelsText(Object? labels) => <String>[
  if (labels is List)
    for (final l in labels)
      if (l is Map) '${l['name']} = ${l['path']}',
].join('\n');

/// Infrastructure dependency rule ids (`InfraRules.rules[].id`).
const Map<String, String> infraRuleNames = <String, String>{
  'cable-landing': 'Cable landing',
  'ixp-facility': 'Exchange point facility',
  'line-substation': 'Line to substation',
  'plant-substation': 'Plant to substation',
  'substation-critical-load': 'Substation to critical load',
  'airport-port-serves': 'Airport and port service',
};

/// The fields of one infrastructure rule, past its id.
const List<SettingField> infraRuleFields = <SettingField>[
  SettingField('enabled', 'Enabled', kind: SettingKind.toggle),
  SettingField('method', 'Method', kind: SettingKind.choice, values: <String>['declared', 'topological', 'proximity', 'inferred']),
  SettingField(
    'relation',
    'Relation',
    kind: SettingKind.choice,
    values: <String>['supplies_power', 'transmits_power', 'lands_at', 'interconnects', 'hosts', 'serves'],
  ),
  SettingField('label', 'Confidence', kind: SettingKind.choice, values: <String>['confirmed', 'likely', 'possible', 'speculative']),
  SettingField('params', 'Parameters', kind: SettingKind.json, help: 'Radii and distances the rule takes, as a JSON object.'),
];

/// An editable read restriction (`ReadRestriction`) for a token, key or
/// pairing code, typed as text.
class RestrictionDraft {
  /// Source ids, one per line; empty for any.
  String sources = '';

  /// Record kinds, one per line; empty for any.
  String kinds = '';

  /// `minLon, minLat, maxLon, maxLat`; empty for anywhere.
  String bbox = '';

  /// Operations as `METHOD /v1/path/pattern`, one per line; empty for any.
  String endpoints = '';

  /// Requests per minute; empty for the read limit.
  String maxRequestsPerMinute = '';

  /// Whether nothing is typed.
  bool get isEmpty =>
      sources.trim().isEmpty &&
      kinds.trim().isEmpty &&
      bbox.trim().isEmpty &&
      endpoints.trim().isEmpty &&
      maxRequestsPerMinute.trim().isEmpty;

  /// Whether a data limit (sources, kinds or area) is typed.
  bool get limitsData => sources.trim().isNotEmpty || kinds.trim().isNotEmpty || bbox.trim().isNotEmpty;

  /// Problems by member, prefixed by `restrictions.`.
  Map<String, String> validate({bool endpointsAllowed = true}) {
    final bad = <String>[
      for (final e in lineItems(endpoints))
        if (!_endpointPattern.hasMatch(e)) e,
    ];
    final rpm = maxRequestsPerMinute.trim();
    return <String, String>{
      'restrictions.bbox': ?bboxProblem(bbox),
      if (bad.isNotEmpty) 'restrictions.endpoints': 'Not METHOD /path: ${bad.join(', ')}.',
      if (!endpointsAllowed && endpoints.trim().isNotEmpty) 'restrictions.endpoints': 'Not allowed here.',
      if (rpm.isNotEmpty && ((int.tryParse(rpm) ?? 0) < 1)) 'restrictions.maxRequestsPerMinute': 'A whole number, at least 1.',
    };
  }

  /// The restriction, or `null` when nothing is typed. Call only when
  /// [validate] is empty.
  Json? toJson({bool excludePrivate = true}) => isEmpty
      ? null
      : <String, Object?>{
          if (sources.trim().isNotEmpty) 'sources': lineItems(sources),
          if (kinds.trim().isNotEmpty) 'kinds': lineItems(kinds),
          if (bbox.trim().isNotEmpty) 'bbox': parseBbox(bbox),
          if (endpoints.trim().isNotEmpty) 'endpoints': lineItems(endpoints),
          if (maxRequestsPerMinute.trim().isNotEmpty) 'maxRequestsPerMinute': int.parse(maxRequestsPerMinute.trim()),
          'excludePrivate': excludePrivate,
        };
}

/// A stored restriction in a few words, or "None".
String restrictionText(Object? r) {
  if (r is! Map) {
    return 'None';
  }
  String list(Object? v) => v is List ? v.join(', ') : '';
  final parts = <String>[
    if (r['sources'] is List) 'sources ${list(r['sources'])}',
    if (r['kinds'] is List) 'kinds ${list(r['kinds'])}',
    if (r['bbox'] is List) 'area ${bboxText(r['bbox'])}',
    if (r['area'] != null) 'a drawn area',
    if (r['placeIds'] is List) 'places ${list(r['placeIds'])}',
    if (r['endpoints'] is List) 'endpoints ${list(r['endpoints'])}',
    if (r['maxRequestsPerMinute'] != null) '${r['maxRequestsPerMinute']}/min',
  ];
  return parts.isEmpty ? 'None' : parts.join('; ');
}

/// A new API token (`ApiTokenInput`).
class TokenDraft {
  /// The token name.
  String name = '';

  /// `read`, `agent` or `admin`.
  String scope = 'read';

  /// When it expires; empty for never.
  String expiresAt = '';

  /// The owning principal's id or handle; empty for a new one.
  String principal = '';

  /// Whether it may see private sources.
  bool privateAccess = false;

  /// The license policy floor.
  final Set<String> licensePolicy = <String>{};

  /// What it may read; not for admin tokens.
  final RestrictionDraft restrictions = RestrictionDraft();

  /// Problems by field.
  Map<String, String> validate() => <String, String>{
    if (name.trim().isEmpty) 'name': 'Required.',
    if (name.length > 200) 'name': 'Up to 200 characters.',
    'expiresAt': ?instantProblem(expiresAt),
    if (expiresAt.trim().isNotEmpty && instantProblem(expiresAt) == null && !parseInstantText(expiresAt)!.isAfter(DateTime.now()))
      'expiresAt': 'In the future.',
    if (scope == 'admin' && !restrictions.isEmpty) 'restrictions': 'Admin tokens take no restrictions.',
    ...restrictions.validate(),
  };

  /// The `ApiTokenInput` body. Call only when [validate] is empty.
  Json toJson() => <String, Object?>{
    'name': name.trim(),
    'scope': scope,
    if (expiresAt.trim().isNotEmpty) 'expiresAt': parseInstantText(expiresAt)!.toUtc().toIso8601String(),
    if (principal.trim().isNotEmpty) 'principalId': principal.trim(),
    'privateAccess': privateAccess,
    if (licensePolicy.isNotEmpty) licensePolicyMember: <String>[for (final f in licensePolicyFlags) if (licensePolicy.contains(f)) f],
    if (scope != 'admin') 'restrictions': ?restrictions.toJson(excludePrivate: !privateAccess),
  };
}

/// A new pairing code (`PairingCodeInput`).
class PairingDraft {
  /// The name of the token made on claim.
  String name = '';

  /// `read` or `agent`.
  String scope = 'read';

  /// How long the code lives; empty for 10m.
  String ttl = '';

  /// Whether the claimed token may see private sources.
  bool privateAccess = false;

  /// The owning principal's id or handle; empty for a new one.
  String principal = '';

  /// What the claimed token may read.
  final RestrictionDraft restrictions = RestrictionDraft();

  /// Problems by field.
  Map<String, String> validate() {
    final d = ttl.trim().isEmpty ? null : parseDurationText(ttl);
    return <String, String>{
      if (name.trim().isEmpty) 'name': 'Required.',
      if (name.length > 200) 'name': 'Up to 200 characters.',
      if (ttl.trim().isNotEmpty && d == null) 'ttl': 'A duration such as 10m.',
      if (d != null && d > const Duration(hours: 1)) 'ttl': 'At most 1 h.',
      ...restrictions.validate(),
    };
  }

  /// The `PairingCodeInput` body. Call only when [validate] is empty.
  Json toJson() => <String, Object?>{
    'name': name.trim(),
    'scope': scope,
    if (ttl.trim().isNotEmpty) 'ttl': ttl.trim(),
    if (principal.trim().isNotEmpty) 'principalId': principal.trim(),
    'privateAccess': privateAccess,
    'restrictions': ?restrictions.toJson(excludePrivate: !privateAccess),
  };
}

/// A new feed key (`FeedKeyInput`).
class FeedKeyDraft {
  /// The key name.
  String name = '';

  /// Allowed path prefixes, one per line, each starting `/v1/`.
  String prefixes = '';

  /// When it expires, at most 365 days ahead.
  String expiresAt = '';

  /// Whether it may read private sources.
  bool privateAccess = false;

  /// What it may read: at least sources, kinds or an area.
  final RestrictionDraft restrictions = RestrictionDraft();

  /// Problems by field, checked against [now].
  Map<String, String> validate([DateTime? now]) {
    final items = lineItems(prefixes);
    final at = instantProblem(expiresAt, required: true) == null ? parseInstantText(expiresAt) : null;
    final today = now ?? DateTime.now();
    return <String, String>{
      if (name.trim().isEmpty) 'name': 'Required.',
      if (name.length > 200) 'name': 'Up to 200 characters.',
      if (items.isEmpty) 'prefixes': 'At least one path prefix.',
      if (items.any((p) => !p.startsWith('/v1/'))) 'prefixes': 'Each starts with /v1/.',
      'expiresAt': ?instantProblem(expiresAt, required: true),
      if (at != null && !at.isAfter(today)) 'expiresAt': 'In the future.',
      if (at != null && at.isAfter(today.add(const Duration(days: 365)))) 'expiresAt': 'At most 365 days ahead.',
      if (!restrictions.limitsData) 'restrictions': 'Limit it to sources, kinds or an area.',
      ...restrictions.validate(endpointsAllowed: false),
    };
  }

  /// The `FeedKeyInput` body. Call only when [validate] is empty.
  Json toJson() => <String, Object?>{
    'name': name.trim(),
    'prefixes': lineItems(prefixes),
    'expiresAt': parseInstantText(expiresAt)!.toUtc().toIso8601String(),
    'privateAccess': privateAccess,
    'restrictions': restrictions.toJson(),
  };
}

/// A new tile key (`TileKeyCreate`).
class TileKeyDraft {
  /// The key name.
  String name = '';

  /// The prefixes it may read.
  final Set<String> prefixes = <String>{};

  /// Its lifetime, at most 30 days.
  String ttl = '7d';

  /// Optional sources, kinds or area.
  final RestrictionDraft restrictions = RestrictionDraft();

  /// Problems by field.
  Map<String, String> validate() {
    final d = parseDurationText(ttl);
    return <String, String>{
      if (name.trim().isEmpty) 'name': 'Required.',
      if (name.length > 200) 'name': 'Up to 200 characters.',
      if (prefixes.isEmpty) 'prefixes': 'Choose at least one.',
      if (d == null) 'ttl': 'A duration such as 7d.',
      if (d != null && d > const Duration(days: 30)) 'ttl': 'At most 30 days.',
      ...restrictions.validate(endpointsAllowed: false),
    };
  }

  /// The `TileKeyCreate` body. Call only when [validate] is empty.
  Json toJson() => <String, Object?>{
    'name': name.trim(),
    'prefixes': <String>[for (final p in tileKeyPrefixes) if (prefixes.contains(p)) p],
    'ttl': ttl.trim(),
    'restrictions': ?restrictions.toJson(),
  };
}

/// A stream or tile ticket request (`StreamTicketRequest`).
class TicketDraft {
  /// `stream` or `tiles`.
  String purpose = 'stream';

  /// Narrower paths, one per line; empty for every path of the purpose.
  String paths = '';

  /// A tile ticket's lifetime, at most 1 h; empty for 10m.
  String ttl = '';

  /// Problems by field.
  Map<String, String> validate() {
    final d = ttl.trim().isEmpty ? null : parseDurationText(ttl);
    return <String, String>{
      if (purpose == 'tiles' && ttl.trim().isNotEmpty && d == null) 'ttl': 'A duration such as 10m.',
      if (purpose == 'tiles' && d != null && d > const Duration(hours: 1)) 'ttl': 'At most 1 h.',
    };
  }

  /// The `StreamTicketRequest` body. Call only when [validate] is empty.
  Json toJson() => <String, Object?>{
    'purpose': purpose,
    if (paths.trim().isNotEmpty) 'paths': lineItems(paths),
    if (purpose == 'tiles' && ttl.trim().isNotEmpty) 'ttl': ttl.trim(),
  };
}

/// Whether [bundle] looks like a settings bundle: an object with a
/// `sources` object.
String? bundleProblem(String text) {
  final t = text.trim();
  if (t.isEmpty) {
    return 'Paste an exported bundle, or load one from a file.';
  }
  final Object? parsed;
  try {
    parsed = jsonDecode(t);
  } on FormatException catch (e) {
    return 'Not valid JSON: ${e.message}';
  }
  if (parsed is! Map) {
    return 'A settings bundle is a JSON object.';
  }
  if (parsed['sources'] is! Map) {
    return 'A settings bundle has a sources object.';
  }
  return null;
}

/// The default file name for a bundle exported at [at]:
/// `foresignal-settings-yyyymmdd-hhmm.json`.
String bundleFileName(DateTime at) {
  String two(int n) => n.toString().padLeft(2, '0');
  final u = at.toUtc();
  return 'foresignal-settings-${u.year}${two(u.month)}${two(u.day)}-${two(u.hour)}${two(u.minute)}.json';
}

/// What an import changed (`ImportReport`), as lines.
List<String> importReportLines(Json report) {
  String count(String key, String what) => '${report[key] ?? 0} $what';
  final applied = (report['sourcesApplied'] as List?) ?? const <Object?>[];
  final unknown = (report['sourcesUnknown'] as List?) ?? const <Object?>[];
  return <String>[
    '${applied.length} source${applied.length == 1 ? '' : 's'} applied',
    if (unknown.isNotEmpty) 'Unknown sources skipped: ${unknown.join(', ')}',
    <String>[
      count('triggersUpserted', 'triggers'),
      count('channelsUpserted', 'channels'),
      count('briefingsUpserted', 'briefings'),
      count('customSourcesUpserted', 'custom sources'),
      count('llmProvidersUpserted', 'LLM providers'),
      count('pushProvidersUpserted', 'push providers'),
      count('placesUpserted', 'places'),
      count('viewsUpserted', 'views'),
      count('watchlistsUpserted', 'watchlists'),
    ].join(', '),
  ];
}
