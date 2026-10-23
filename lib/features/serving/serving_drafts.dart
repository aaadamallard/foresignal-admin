import '../../core/format/duration_text.dart';
import '../../core/format/instant_text.dart';
import '../forecasting/forecasting_drafts.dart' show commaList, instantProblem, jsonObjectProblem, jsonObjectText, parseJsonObject;
import '../forecasting/forecasting_providers.dart' show Json, jsonMap;

/// Sink and peer ids: lower-case words joined by `-` (`SinkCreate.id`,
/// `PeerCreate.id`).
final RegExp servingIdPattern = RegExp(r'^[a-z0-9]+(-[a-z0-9]+)*$');

/// Export job kinds the list filters on (`listExports?kind=`).
const List<String> exportKinds = <String>['EXPORT', 'SNAPSHOT', 'PACK'];

// us-english-allow-start: the contract's own wire names (`ExportJob.status`,
// `ExportJob.licenceSummary`, `ExportLicenceSummary.licences`,
// `Attribution.licence`, `ArchivePartition.licence`).
/// The status of a canceled export job, as the wire spells it.
const String exportCanceledStatus = 'CANCELLED';

/// The member holding an export job's license summary.
const String licenseSummaryMember = 'licenceSummary';

/// The member listing a license summary's licenses.
const String licensesMember = 'licences';

/// The member holding one attribution's or partition's license.
const String licenseMember = 'licence';
// us-english-allow-end

/// Export job statuses (`listExports?status=`).
const List<String> exportStatuses = <String>['QUEUED', 'RUNNING', 'DONE', 'FAILED', exportCanceledStatus, 'EXPIRED'];

/// Export statuses as people read them.
const Map<String, String> exportStatusNames = <String, String>{
  'QUEUED': 'Queued',
  'RUNNING': 'Running',
  'DONE': 'Done',
  'FAILED': 'Failed',
  exportCanceledStatus: 'Canceled',
  'EXPIRED': 'Expired',
};

/// Bulk export formats (`ExportSpec.format`).
const List<String> exportFormats = <String>['geoparquet', 'geopackage', 'flatgeobuf', 'gpx'];

/// Bulk export modes (`ExportSpec.mode`).
const List<String> exportModes = <String>['current', 'history', 'asOf', 'atSeq'];

/// What an export's from/to bound (`ExportSpec.timeField`).
const List<String> exportTimeFields = <String>['effective', 'observed', 'event', 'ingested'];

/// Admiralty source reliability grades (`Peer.reliability`).
const Map<String, String> reliabilityGrades = <String, String>{
  'A': 'A — completely reliable',
  'B': 'B — usually reliable',
  'C': 'C — fairly reliable',
  'D': 'D — not usually reliable',
  'E': 'E — unreliable',
  'F': 'F — cannot be judged',
};

/// Formats as people read them.
const Map<String, String> exportFormatNames = <String, String>{
  'geoparquet': 'GeoParquet',
  'geopackage': 'GeoPackage',
  'flatgeobuf': 'FlatGeobuf',
  'gpx': 'GPX',
  'pmtiles': 'PMTiles',
  'mbtiles': 'MBTiles',
  'cog': 'COG',
  'zip': 'Zip',
  'json-bundle': 'JSON bundle',
};

/// Whether an export job is still working, so its page and list poll.
bool exportJobActive(Object? status) => status == 'QUEUED' || status == 'RUNNING';

/// A bounding box typed as `minLon, minLat, maxLon, maxLat`; empty is
/// `null`. Throws [FormatException] for anything else.
List<double>? parseBbox(String text) {
  if (text.trim().isEmpty) {
    return null;
  }
  final parts = commaList(text);
  final values = <double>[for (final p in parts) ?double.tryParse(p)];
  if (parts.length != 4 || values.length != 4) {
    throw const FormatException('Four numbers: min lon, min lat, max lon, max lat.');
  }
  final [minLon, minLat, maxLon, maxLat] = values;
  if (minLon < -180 || maxLon > 180 || minLat < -90 || maxLat > 90) {
    throw const FormatException('Longitudes within ±180 and latitudes within ±90.');
  }
  if (minLat > maxLat) {
    throw const FormatException('The minimum latitude is above the maximum.');
  }
  return values;
}

/// Why [text] is not a bounding box, or `null` when it is one or empty.
String? bboxProblem(String text) {
  try {
    parseBbox(text);
    return null;
  } on FormatException catch (e) {
    return e.message;
  }
}

/// A stored bounding box as text [parseBbox] reads back.
String bboxText(Object? bbox) => bbox is List ? bbox.join(', ') : '';

/// Why [text] is not a whole number at least [min], or `null` when it is
/// one or empty (and not [required]).
String? integerProblem(String text, {int min = 0, int? max, bool required = false}) {
  final t = text.trim();
  if (t.isEmpty) {
    return required ? 'Required.' : null;
  }
  final n = int.tryParse(t);
  if (n == null || n < min || (max != null && n > max)) {
    return max == null ? 'A whole number, at least $min.' : 'A whole number from $min to $max.';
  }
  return null;
}

/// [text] as an int, or `null` when empty.
int? intOrNull(String text) => text.trim().isEmpty ? null : int.parse(text.trim());

/// [text] trimmed, or `null` when empty.
String? textOrNull(String text) => text.trim().isEmpty ? null : text.trim();

/// [text] as an ISO-8601 instant, or `null` when empty.
String? instantOrNull(String text) => parseInstantText(text)?.toIso8601String();

/// [list] as comma-separated text.
String listText(Object? list) => list is List ? list.join(', ') : '';

/// Which records a sink, export or hold covers, typed as text: sources,
/// kinds, a bounding box and a place.
class ScopeDraft {
  /// An empty scope: every source, kind and place.
  ScopeDraft();

  /// A draft of a stored scope (`SinkFilter`, `PeerSelection`).
  ScopeDraft.of(Json? scope)
    : sources = listText(scope?['sources']),
      kinds = listText(scope?['kinds']),
      bbox = bboxText(scope?['bbox']),
      placeId = scope?['placeId'] as String? ?? '';

  /// Source ids, comma-separated; empty for all.
  String sources = '';

  /// Record kinds, comma-separated; empty for all.
  String kinds = '';

  /// `minLon, minLat, maxLon, maxLat`; empty for anywhere.
  String bbox = '';

  /// A place id; empty for none.
  String placeId = '';

  /// Problems by field (`bbox`).
  Map<String, String> validate() => <String, String>{'bbox': ?bboxProblem(bbox)};

  /// The scope members. Call only when [validate] is empty.
  Json toJson() => <String, Object?>{
    'sources': commaList(sources),
    'kinds': commaList(kinds),
    'bbox': parseBbox(bbox),
    'placeId': textOrNull(placeId),
  };
}

/// An editable sink (`SinkCreate`, `SinkUpdate`). The config is the type's
/// JSON object; secrets are write-only and sent only when typed or removed.
class SinkDraft {
  /// A new sink of type [type], its config started from the type's schema.
  SinkDraft.create(Json type)
    : creating = true,
      type = '${type['id']}',
      config = jsonObjectText(configTemplate(type)),
      scope = ScopeDraft();

  /// A draft of stored [sink].
  SinkDraft.of(Json sink)
    : creating = false,
      id = '${sink['id']}',
      type = '${sink['type']}',
      name = '${sink['name'] ?? ''}',
      enabled = sink['enabled'] == true,
      config = jsonObjectText(jsonMap(sink, 'config')),
      scope = ScopeDraft.of(jsonMap(sink, 'filter')),
      watchlistId = jsonMap(sink, 'filter')?['watchlistId'] as String? ?? '',
      includePrivate = jsonMap(sink, 'filter')?['includePrivate'] == true;

  /// Whether this creates the sink.
  final bool creating;

  /// The sink id, fixed once created.
  String id = '';

  /// The sink type id.
  final String type;

  /// The display name.
  String name = '';

  /// Whether it runs.
  bool enabled = false;

  /// The type's config, a JSON object.
  String config;

  /// Secrets typed this session, by field.
  final Map<String, String> secrets = <String, String>{};

  /// Stored secrets to remove.
  final Set<String> removeSecrets = <String>{};

  /// Which records it receives.
  final ScopeDraft scope;

  /// A watchlist whose members are delivered; empty for none.
  String watchlistId = '';

  /// Whether private sources are included.
  bool includePrivate = false;

  /// Problems by field (`id`, `name`, `config`, `bbox`).
  Map<String, String> validate() => <String, String>{
    if (creating && !servingIdPattern.hasMatch(id.trim())) 'id': 'Lower-case letters and digits, words joined by -.',
    if (creating && id.trim().length > 64) 'id': 'Up to 64 characters.',
    if (name.trim().isEmpty) 'name': 'Required.',
    if (name.length > 200) 'name': 'Up to 200 characters.',
    'config': ?jsonObjectProblem(config, required: true),
    ...scope.validate(),
  };

  /// The `SinkCreate` (when [creating]) or `SinkUpdate` body. Call only when
  /// [validate] is empty.
  Json toJson() {
    final typed = <String, Object?>{
      for (final e in secrets.entries)
        if (e.value.isNotEmpty) e.key: e.value,
      for (final s in removeSecrets) s: null,
    };
    return <String, Object?>{
      if (creating) ...<String, Object?>{'id': id.trim(), 'type': type},
      'name': name.trim(),
      'enabled': enabled,
      'config': parseJsonObject(config),
      if (typed.isNotEmpty) 'secrets': typed,
      'filter': <String, Object?>{
        ...scope.toJson(),
        'watchlistId': textOrNull(watchlistId),
        'includePrivate': includePrivate,
      },
    };
  }
}

/// A starting config for a sink [type]: its schema's required properties,
/// with their defaults where the schema has them, else an enum's first
/// value, else an empty value of their type.
Json configTemplate(Json type) {
  final schema = jsonMap(type, 'configSchema') ?? const <String, Object?>{};
  final props = jsonMap(schema, 'properties') ?? const <String, Object?>{};
  final required = (schema['required'] as List<Object?>?) ?? const <Object?>[];
  final out = <String, Object?>{};
  for (final name in required) {
    final p = jsonMap(props, '$name') ?? const <String, Object?>{};
    final values = p['enum'];
    out['$name'] = p.containsKey('default')
        ? p['default']
        : values is List && values.isNotEmpty
        ? values.first
        : switch (p['type']) {
            'integer' || 'number' => 0,
            'boolean' => false,
            'array' => <Object?>[],
            'object' => <String, Object?>{},
            _ => '',
          };
  }
  return out;
}

/// The properties a sink type's config schema describes, for the help list:
/// name, type, whether required, default, and description.
List<({String name, String type, bool required, Object? defaultValue, String description})> configFields(Json type) {
  final schema = jsonMap(type, 'configSchema') ?? const <String, Object?>{};
  final props = jsonMap(schema, 'properties') ?? const <String, Object?>{};
  final required = <String>{for (final r in (schema['required'] as List<Object?>?) ?? const <Object?>[]) '$r'};
  return <({String name, String type, bool required, Object? defaultValue, String description})>[
    for (final e in props.entries)
      (
        name: e.key,
        type: switch (e.value) {
          {'enum': final List<Object?> values} => values.join(' | '),
          {'type': final Object t} => t is List ? t.join(' | ') : '$t',
          _ => 'any',
        },
        required: required.contains(e.key),
        defaultValue: (e.value is Map) ? (e.value! as Map)['default'] : null,
        description: (e.value is Map) ? '${(e.value! as Map)['description'] ?? ''}' : '',
      ),
  ];
}

/// A bulk export request (`ExportSpec`).
class ExportDraft {
  /// A display name; empty for none.
  String name = '';

  /// The file format.
  String format = 'geoparquet';

  /// Current state, history, as of an instant, or at a seq.
  String mode = 'current';

  /// What [from] and [to] bound.
  String timeField = 'effective';

  /// The first instant; empty for open.
  String from = '';

  /// The last instant; empty for open.
  String to = '';

  /// The instant of an `asOf` export.
  String asOf = '';

  /// The seq of an `atSeq` export.
  String atSeq = '';

  /// Which records.
  final ScopeDraft scope = ScopeDraft();

  /// The payload allowlist, comma-separated; empty for every field.
  String fields = '';

  /// Promote field-spec keys to columns.
  bool flatten = false;

  /// Include private sources (admin).
  bool includePrivate = false;

  /// Include FORBIDDEN and LOCAL_ONLY records, for personal use only.
  bool personalUse = false;

  /// Problems by field.
  Map<String, String> validate() => <String, String>{
    if (format == 'gpx' && mode != 'history') 'format': 'GPX needs the history mode.',
    'from': ?instantProblem(from),
    'to': ?instantProblem(to),
    if (mode == 'asOf') 'asOf': ?instantProblem(asOf, required: true),
    if (mode == 'atSeq') 'atSeq': ?integerProblem(atSeq, min: 1, required: true),
    ...scope.validate(),
  };

  /// The `ExportSpec` body. Call only when [validate] is empty.
  Json toJson() => <String, Object?>{
    'name': textOrNull(name),
    'format': format,
    'mode': mode,
    'timeField': timeField,
    'from': instantOrNull(from),
    'to': instantOrNull(to),
    if (mode == 'asOf') 'asOf': instantOrNull(asOf),
    if (mode == 'atSeq') 'atSeq': intOrNull(atSeq),
    ...scope.toJson(),
    'fields': commaList(fields),
    'flatten': flatten,
    'includePrivate': includePrivate,
    'personalUse': personalUse,
  };
}

/// A state snapshot at a seq or an instant (`SnapshotInput`).
class SnapshotDraft {
  /// A display name; empty for none.
  String name = '';

  /// The seq; empty for the current watermark (or [asOf]).
  String atSeq = '';

  /// An instant translated to its seq; empty for none.
  String asOf = '';

  /// Which records.
  final ScopeDraft scope = ScopeDraft();

  /// Include private sources.
  bool includePrivate = false;

  /// Include FORBIDDEN and LOCAL_ONLY sources, for personal use only.
  bool personalUse = false;

  /// When it expires; empty for never.
  String expiresAt = '';

  /// Problems by field.
  Map<String, String> validate() => <String, String>{
    'atSeq': ?integerProblem(atSeq, min: 1),
    'asOf': ?instantProblem(asOf),
    if (atSeq.trim().isNotEmpty && asOf.trim().isNotEmpty) 'asOf': 'Give a seq or an instant, not both.',
    'expiresAt': ?instantProblem(expiresAt),
    ...scope.validate(),
  };

  /// The `SnapshotInput` body. Call only when [validate] is empty.
  Json toJson() {
    final s = scope.toJson()..remove('placeId');
    return <String, Object?>{
      'name': textOrNull(name),
      'atSeq': intOrNull(atSeq),
      'asOf': instantOrNull(asOf),
      ...s,
      'includePrivate': includePrivate,
      'personalUse': personalUse,
      'expiresAt': instantOrNull(expiresAt),
    };
  }
}

/// A PMTiles offline pack (`PackSpec`).
class PackDraft {
  /// The pack name.
  String name = '';

  /// `minLon, minLat, maxLon, maxLat`; empty when [placeId] is set.
  String bbox = '';

  /// A place whose geometry bounds the pack.
  String placeId = '';

  /// The lowest zoom, 0 to 14.
  String minZoom = '0';

  /// The highest zoom, 0 to 14.
  String maxZoom = '10';

  /// Whether vector (MVT) layers are included.
  bool vector = true;

  /// Vector sources, comma-separated; empty for all.
  String vectorSources = '';

  /// Vector kinds, comma-separated; empty for all.
  String vectorKinds = '';

  /// The vector layers' instant; empty for now.
  String vectorAsOf = '';

  /// Whether a raster (PNG) product frame is included.
  bool raster = false;

  /// The raster product id.
  String rasterProduct = '';

  /// `latest` or a frame id.
  String rasterFrame = 'latest';

  /// Include private sources (admin).
  bool includePrivate = false;

  /// Include FORBIDDEN and LOCAL_ONLY records, for personal use only.
  bool personalUse = false;

  /// Problems by field.
  Map<String, String> validate() {
    final errors = <String, String>{
      if (name.trim().isEmpty) 'name': 'Required.',
      if (name.length > 200) 'name': 'Up to 200 characters.',
      'bbox': ?bboxProblem(bbox),
      if (bbox.trim().isEmpty && placeId.trim().isEmpty) 'bbox': 'A bounding box or a place.',
      'minZoom': ?integerProblem(minZoom, max: 14, required: true),
      'maxZoom': ?integerProblem(maxZoom, max: 14, required: true),
      if (!vector && !raster) 'vector': 'Vector layers, a raster frame, or both.',
      if (vector) 'vectorAsOf': ?instantProblem(vectorAsOf),
      if (raster && rasterProduct.trim().isEmpty) 'rasterProduct': 'Required for a raster frame.',
    };
    if (!errors.containsKey('minZoom') && !errors.containsKey('maxZoom') && int.parse(minZoom) > int.parse(maxZoom)) {
      errors['maxZoom'] = 'At least the lowest zoom.';
    }
    return errors;
  }

  /// The `PackSpec` body. Call only when [validate] is empty.
  Json toJson() => <String, Object?>{
    'name': name.trim(),
    'bbox': parseBbox(bbox),
    'placeId': textOrNull(placeId),
    'minZoom': int.parse(minZoom.trim()),
    'maxZoom': int.parse(maxZoom.trim()),
    'vector': vector
        ? <String, Object?>{
            'sources': commaList(vectorSources),
            'kinds': commaList(vectorKinds),
            'asOf': instantOrNull(vectorAsOf),
          }
        : null,
    'raster': raster
        ? <String, Object?>{'productId': rasterProduct.trim(), 'frame': textOrNull(rasterFrame) ?? 'latest'}
        : null,
    'includePrivate': includePrivate,
    'personalUse': personalUse,
  };
}

/// A hold that keeps rows past retention (`HoldInput`).
class HoldDraft {
  /// The hold name.
  String name = '';

  /// Why it is held.
  String reason = '';

  /// Source ids, comma-separated; empty for all.
  String sources = '';

  /// Record kinds, comma-separated; empty for all.
  String kinds = '';

  /// The first instant; empty for open.
  String from = '';

  /// The last instant; empty for open.
  String to = '';

  /// The first seq; empty for open.
  String fromSeq = '';

  /// The last seq; empty for open.
  String toSeq = '';

  /// When the hold lapses; empty for never.
  String expiresAt = '';

  /// Problems by field.
  Map<String, String> validate() {
    final errors = <String, String>{
      if (name.trim().isEmpty) 'name': 'Required.',
      if (name.length > 200) 'name': 'Up to 200 characters.',
      if (reason.trim().isEmpty) 'reason': 'Required.',
      if (reason.length > 2000) 'reason': 'Up to 2000 characters.',
      'from': ?instantProblem(from),
      'to': ?instantProblem(to),
      'fromSeq': ?integerProblem(fromSeq, min: 1),
      'toSeq': ?integerProblem(toSeq, min: 1),
      'expiresAt': ?instantProblem(expiresAt),
    };
    if (!errors.containsKey('fromSeq') && !errors.containsKey('toSeq')) {
      final a = intOrNull(fromSeq);
      final b = intOrNull(toSeq);
      if (a != null && b != null && a > b) {
        errors['toSeq'] = 'At least the first seq.';
      }
    }
    return errors;
  }

  /// The `HoldInput` body. Call only when [validate] is empty.
  Json toJson() => <String, Object?>{
    'name': name.trim(),
    'reason': reason.trim(),
    'sources': commaList(sources),
    'kinds': commaList(kinds),
    'from': instantOrNull(from),
    'to': instantOrNull(to),
    'fromSeq': intOrNull(fromSeq),
    'toSeq': intOrNull(toSeq),
    'expiresAt': instantOrNull(expiresAt),
  };
}

/// The cold archive settings (`ArchiveSettings`). S3 keys are write-only and
/// sent only when typed.
class ArchiveDraft {
  /// A draft of stored [settings].
  ArchiveDraft.of(Json settings)
    : enabled = settings['enabled'] == true,
      target = settings['target'] as String? ?? 'local',
      root = settings['root'] as String? ?? '',
      sources = listText(settings['sources']),
      keepLocal = settings['keepLocal'] as bool? ?? true,
      endpoint = jsonMap(settings, 's3')?['endpoint'] as String? ?? '',
      bucket = jsonMap(settings, 's3')?['bucket'] as String? ?? '',
      prefix = jsonMap(settings, 's3')?['prefix'] as String? ?? '',
      region = jsonMap(settings, 's3')?['region'] as String? ?? '',
      pathStyle = jsonMap(settings, 's3')?['pathStyle'] == true;

  /// Whether archiving runs.
  bool enabled;

  /// `local` or `s3`.
  String target;

  /// The archive directory; empty for the default.
  String root;

  /// Source ids, comma-separated; empty for every eligible source.
  String sources;

  /// Keep the local copy after a verified upload.
  bool keepLocal;

  /// The S3 endpoint URL.
  String endpoint;

  /// The S3 bucket.
  String bucket;

  /// The S3 key prefix.
  String prefix;

  /// The S3 region.
  String region;

  /// Path-style S3 addressing.
  bool pathStyle;

  /// A new S3 access key, write-only.
  String accessKey = '';

  /// A new S3 secret key, write-only.
  String secretKey = '';

  /// Problems by field.
  Map<String, String> validate() => <String, String>{
    if (target == 's3' && Uri.tryParse(endpoint.trim())?.hasScheme != true) 'endpoint': 'A URL with its scheme.',
    if (target == 's3' && bucket.trim().isEmpty) 'bucket': 'Required for S3.',
  };

  /// The `ArchiveSettings` body. Call only when [validate] is empty.
  Json toJson() {
    final typed = <String, Object?>{
      if (accessKey.isNotEmpty) 'accessKey': accessKey,
      if (secretKey.isNotEmpty) 'secretKey': secretKey,
    };
    return <String, Object?>{
      'enabled': enabled,
      'target': target,
      if (root.trim().isNotEmpty) 'root': root.trim(),
      'sources': commaList(sources),
      'keepLocal': keepLocal,
      's3': target == 's3'
          ? <String, Object?>{
              'endpoint': endpoint.trim(),
              'bucket': bucket.trim(),
              if (prefix.trim().isNotEmpty) 'prefix': prefix.trim(),
              if (region.trim().isNotEmpty) 'region': region.trim(),
              'pathStyle': pathStyle,
            }
          : null,
      if (typed.isNotEmpty) 'secrets': typed,
    };
  }
}

/// An editable peer (`PeerCreate`, `PeerUpdate`). The token and exchange key
/// are write-only: sent only when typed, and the exchange key removed only
/// when asked.
class PeerDraft {
  /// A new peer.
  PeerDraft() : creating = true, scope = ScopeDraft();

  /// A draft of stored [peer].
  PeerDraft.of(Json peer)
    : creating = false,
      id = '${peer['id']}',
      name = '${peer['name'] ?? ''}',
      baseUrl = '${peer['baseUrl'] ?? ''}',
      mode = peer['mode'] as String? ?? 'PULL',
      enabled = peer['enabled'] == true,
      sameOperator = peer['sameOperator'] == true,
      reliability = peer['reliability'] as String?,
      pinnedKid = peer['pinnedKid'] as String?,
      scope = ScopeDraft.of(jsonMap(peer, 'selection')),
      maxAge = jsonMap(peer, 'selection')?['maxAge'] as String? ?? '',
      backfill = jsonMap(peer, 'selection')?['backfill'] as String? ?? 'none',
      live = jsonMap(peer, 'selection')?['live'] == true,
      maxHops = '${jsonMap(peer, 'selection')?['maxHops'] ?? 3}',
      trackTtl = jsonMap(peer, 'selection')?['trackTtl'] as String? ?? '10m';

  /// Whether this registers the peer.
  final bool creating;

  /// The peer id, fixed once created.
  String id = '';

  /// The display name.
  String name = '';

  /// The peer's base URL.
  String baseUrl = '';

  /// `PULL` (consume its feed) or `RECEIVE` (it pushes here); fixed once
  /// created.
  String mode = 'PULL';

  /// Whether it replicates.
  bool enabled = true;

  /// The operator's own hub.
  bool sameOperator = false;

  /// The Admiralty reliability grade; `null` for none.
  String? reliability;

  /// The pinned remote signing key, kept as read.
  String? pinnedKid;

  /// A new remote token, write-only.
  String token = '';

  /// A new exchange key, write-only.
  String exchangeKey = '';

  /// Remove the stored exchange key.
  bool removeExchangeKey = false;

  /// Which records replicate.
  final ScopeDraft scope;

  /// Drop items observed longer ago than this; empty for no limit.
  String maxAge = '';

  /// `none`, or a duration of history to page in.
  String backfill = 'none';

  /// Also receive the live lane.
  bool live = false;

  /// The hop limit, at least 1.
  String maxHops = '3';

  /// The TTL of the peer's track source.
  String trackTtl = '10m';

  /// Problems by field.
  Map<String, String> validate() {
    final url = Uri.tryParse(baseUrl.trim());
    return <String, String>{
      if (creating && !servingIdPattern.hasMatch(id.trim())) 'id': 'Lower-case letters and digits, words joined by -.',
      if (creating && id.trim().length > 48) 'id': 'Up to 48 characters.',
      if (name.trim().isEmpty) 'name': 'Required.',
      if (url == null || !url.hasScheme || url.host.isEmpty) 'baseUrl': 'A URL with its scheme, such as https://hub.example.',
      if (creating && mode == 'PULL' && token.isEmpty) 'token': "Required to pull: the remote instance's token.",
      if (maxAge.trim().isNotEmpty && parseDurationText(maxAge) == null) 'maxAge': 'A duration such as 7d or PT15M.',
      if (backfill.trim() != 'none' && parseDurationText(backfill) == null) 'backfill': 'none, or a duration such as 7d.',
      'maxHops': ?integerProblem(maxHops, min: 1, required: true),
      if (parseDurationText(trackTtl) == null) 'trackTtl': 'A duration such as 10m.',
      ...scope.validate(),
    };
  }

  /// The selection, as sent.
  Json selectionJson() => <String, Object?>{
    ...scope.toJson(),
    'maxAge': textOrNull(maxAge),
    'backfill': backfill.trim(),
    'live': live,
    'maxHops': int.parse(maxHops.trim()),
    'trackTtl': trackTtl.trim(),
  };

  /// The `PeerCreate` (when [creating]) or `PeerUpdate` body. The stored
  /// pinned key is sent back as read, so saving never re-pins. Call only
  /// when [validate] is empty.
  Json toJson() => <String, Object?>{
    if (creating) ...<String, Object?>{'id': id.trim(), 'mode': mode},
    'name': name.trim(),
    'baseUrl': baseUrl.trim(),
    'enabled': enabled,
    if (token.isNotEmpty) 'token': token,
    'selection': selectionJson(),
    'sameOperator': sameOperator,
    'reliability': ?reliability,
    if (!creating) 'pinnedKid': pinnedKid,
    if (exchangeKey.isNotEmpty)
      'exchangeKey': exchangeKey
    else if (removeExchangeKey && !creating)
      'exchangeKey': null,
  };
}

/// The words for a `SinkTestResult`.
String sinkTestText(Json result) {
  final latency = result['latencyMs'] == null ? '' : ' in ${result['latencyMs']} ms';
  return '${result['ok'] == true ? 'Passed' : 'Failed at ${result['phase']}'}$latency: ${result['message']}';
}

/// The words for a `PeerTestResult`: unreachable with its error, or its
/// checks then its error. The panel title says whether it passed.
String peerTestText(Json result) {
  if (result['reachable'] != true) {
    return 'Unreachable${result['error'] == null ? '' : ': ${result['error']}'}';
  }
  final parts = <String>[
    if (result['latencyMs'] != null) '${result['latencyMs']} ms',
    switch (result['signatureValid']) {
      true => 'signature valid',
      false => 'signature invalid',
      _ => 'signature not checked',
    },
    switch (result['keyMatches']) {
      true => 'key matches the pin',
      false => 'key does not match the pin',
      _ => 'no key pinned yet',
    },
  ];
  final error = result['error'] == null ? '' : ' ${result['error']}';
  final text = parts.join(', ');
  return '${text[0].toUpperCase()}${text.substring(1)}.$error';
}
