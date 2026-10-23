// The preview's fake answers for credentials, test-and-validate and custom
// push sources. Every body follows its schema in openapi/OpenAPI.json
// (FetchOutcome, FetchPage, ProbeResult, DoctorReport, DoctorRunAccepted,
// DoctorReportPage, UsageSeries, RecordPage, CustomSource,
// CustomSourceCreated, IngestDevice, IngestDeviceCreated, IngestKeyResponse,
// CapturedSample, MappingTestResult, IngestFormatInfo). Secrets sent to it
// are dropped, never kept.

import 'preview_sources.dart';
import 'preview_usage.dart';

/// A fake reply.
typedef Reply = ({int status, Object? body});

int _seq = 1000;

/// State the fake keeps for custom push sources.
class PreviewCustom {
  /// CustomSource bodies.
  final List<Map<String, Object?>> sources = <Map<String, Object?>>[
    <String, Object?>{
      'id': 'custom-weather-station',
      'name': 'Backyard Weather Station',
      'description': 'A Davis station pushing readings every minute.',
      'kinds': <String>['weather-reading'],
      'rateLimitPerMinute': 60,
      'recordsPerMinute': 6000,
      'private': false,
      'captureSamples': true,
      'allowPathKey': false,
      'createdAt': '2026-10-01T12:00:00Z',
      'lastIngestAt': '2026-10-22T16:29:00Z',
      'ingestKeyPrefix': 'eik_Wx7q',
      'mapping': <String, Object?>{
        'version': 1,
        'externalId': <String, Object?>{'const': 'backyard'},
        'observedAt': <String, Object?>{'path': r'$.time'},
      },
    },
  ];

  /// IngestDevice bodies by source id.
  final Map<String, List<Map<String, Object?>>> devices = <String, List<Map<String, Object?>>>{
    'custom-weather-station': <Map<String, Object?>>[
      <String, Object?>{
        'id': '7b6f1c2e-0a4d-4c55-9a51-0f7e3c2b9d10',
        'sourceId': 'custom-weather-station',
        'externalId': 'backyard',
        'name': 'Davis Vantage',
        'keyPrefix': 'eid_Hk2p',
        'createdAt': '2026-10-01T12:05:00Z',
        'lastSeenAt': '2026-10-22T16:29:00Z',
      },
    ],
  };
}

String _key(String prefix) => '$prefix${'X' * 4}${(_seq++).toRadixString(36)}PreviewOnly';

Map<String, Object?> _problem(int status, String title, String code) => <String, Object?>{
  'title': title,
  'status': status,
  'code': code,
};

Map<String, Object?> _device(String sourceId, String id, String externalId, String name) =>
    <String, Object?>{
      'id': id,
      'sourceId': sourceId,
      'externalId': externalId,
      'name': name,
      'keyPrefix': 'eid_${(_seq++).toRadixString(36)}',
      'createdAt': '2026-10-22T16:30:00Z',
    };

Map<String, Object?> _deviceCreated(Map<String, Object?> device, String key) => <String, Object?>{
  ...device,
  'key': key,
  'setup': <String, Object?>{
    'traccar': <String, Object?>{'serverUrl': 'http://foresignal.local:8080/v1/ingest/k/$key/osmand'},
  },
};

/// Answers the credentials, validate and custom-source operations, or
/// returns `null` for any other request.
Reply? answerValidate(
  String method,
  String path,
  Map<String, List<String>> query,
  Object? body,
  List<PreviewSource> sources,
  PreviewCustom custom,
) {
  final segments = Uri.parse(path).pathSegments;
  // /v1/doctor/reports/{id}
  if (segments.length == 4 && segments[1] == 'doctor' && segments[2] == 'reports') {
    for (final s in sources) {
      for (final r in s.doctorReports) {
        if (r['id'] == segments[3]) {
          return (status: 200, body: r);
        }
      }
    }
    return (status: 404, body: _problem(404, 'Not found', 'NOT_FOUND'));
  }
  if (path == '/v1/ingest/formats') {
    return (
      status: 200,
      body: <Object?>[
        <String, Object?>{
          'id': 'native',
          'description': 'ForeSignal records or GeoJSON',
          'mediaTypes': <String>['application/json', 'application/geo+json'],
          'methods': <String>['POST', 'PUT'],
          'verifiers': <String>['none', 'foresignal'],
        },
        <String, Object?>{
          'id': 'alertmanager',
          'description': 'Prometheus Alertmanager v4 webhooks',
          'mediaTypes': <String>['application/json'],
          'methods': <String>['POST'],
          'verifiers': <String>['none', 'hmac-sha256'],
        },
        <String, Object?>{
          'id': 'mapping',
          'description': 'Any JSON, through the source RecordMapping',
          'mediaTypes': <String>['application/json'],
          'methods': <String>['POST', 'PUT', 'GET'],
          'verifiers': <String>['none', 'standard-webhooks'],
        },
      ],
    );
  }
  if (path == '/v1/records') {
    final id = query['source']?.first;
    final source = sources.where((s) => s.id == id).firstOrNull;
    final items = <Object?>[
      if (source != null && source.fetches.isNotEmpty)
        for (var i = 0; i < 6; i++)
          <String, Object?>{
            'id': '${source.id}:$i',
            'source': source.id,
            'externalId': '${source.id}-event-$i',
            'kind': source.kind,
            'version': 1,
            'seq': 5000 + i,
            'observedAt': '2026-10-22T16:${(29 - i * 3).toString().padLeft(2, '0')}:00Z',
            'title': '${source.name} record ${6 - i}',
            'payload': <String, Object?>{'title': '${source.name} record ${6 - i}'},
          },
    ];
    return (status: 200, body: <String, Object?>{'items': items, 'nextCursor': null});
  }
  if (segments.length >= 3 && segments[1] == 'sources') {
    final id = Uri.decodeComponent(segments[2]);
    final source = sources.where((s) => s.id == id).firstOrNull;
    if (source == null || segments.length < 4) {
      return null;
    }
    final rest = segments.sublist(3).join('/');
    switch ((method, rest)) {
      case ('PUT', 'credentials'):
        // The values are dropped here: the fake only records that a key is set.
        source.credentialsSet = true;
        if (source.status == 'failing') {
          source.status = 'healthy';
        }
        return (status: 204, body: null);
      case ('DELETE', 'credentials'):
        source.credentialsSet = false;
        return (status: 204, body: null);
      case ('POST', 'fetch'):
        final ok = !source.needsKey || source.credentialsSet;
        final fetchId = _seq++;
        source.fetches.insert(0, <String, Object?>{
          'id': fetchId,
          'trigger': 'MANUAL',
          'status': ok ? 'OK' : 'FAILED',
          'startedAt': '2026-10-22T16:30:00Z',
          'httpStatus': ok ? 200 : 401,
          'requestCount': 1,
          'bytes': ok ? 48213 : 312,
          'recordsSeen': ok ? 12 : 0,
          'versionsWritten': ok ? 3 : 0,
          'error': ok ? null : 'HTTP 401 Unauthorized',
        });
        return (
          status: 200,
          body: <String, Object?>{
            'sourceId': id,
            'startedAt': '2026-10-22T16:30:00Z',
            'durationMs': 3400,
            'success': ok,
            'recordsSeen': ok ? 12 : 0,
            'recordsChanged': ok ? 3 : 0,
            'persisted': ok ? 3 : 0,
            'fetchId': fetchId,
            'error': ok ? null : 'HTTP 401 Unauthorized',
          },
        );
      case ('GET', 'fetches'):
        return (status: 200, body: <String, Object?>{'items': source.fetches, 'nextAfter': null});
      case ('POST', 'probe'):
        final ok = !source.needsKey || source.credentialsSet;
        return (
          status: 200,
          body: <String, Object?>{
            'sourceId': id,
            'requests': <Object?>[
              <String, Object?>{
                'method': 'GET',
                'url': 'https://example.org/${source.id}/feed?key=REDACTED',
                'status': ok ? 200 : 401,
                'durationMs': 412,
                'contentType': 'application/json',
                'bytes': ok ? 48213 : 312,
              },
            ],
            'records': <Object?>[
              if (ok)
                for (var i = 0; i < 3; i++)
                  <String, Object?>{
                    'externalId': '${source.id}-probe-$i',
                    'kind': source.kind,
                    'observedAt': '2026-10-22T16:2$i:00Z',
                    'payload': <String, Object?>{'title': '${source.name} probe record $i'},
                  },
            ],
            'parseError': null,
          },
        );
      case ('POST', 'doctor'):
        final reportId = '01JB${(_seq++).toString().padLeft(22, '0')}';
        final broken = source.needsKey && !source.credentialsSet;
        source.doctorReports.insert(0, <String, Object?>{
          'id': reportId,
          'sourceId': id,
          'createdAt': '2026-10-22T16:30:00Z',
          'trigger': 'MANUAL',
          'status': broken ? 'BROKEN' : 'OK',
          'findings': <Object?>[
            if (broken)
              <String, Object?>{
                'code': 'AUTH_FAILED',
                'severity': 'critical',
                'evidence': <String>['HTTP 401 from the upstream on the last 3 fetches'],
                'suggestedAction': 'Set or replace the API key on the Credentials screen.',
              },
          ],
          'probe': <String, Object?>{
            'skipped': false,
            'status': broken ? 'http-error' : 'ok',
            'httpStatus': broken ? 401 : 200,
            'records': broken ? 0 : 12,
          },
        });
        // The run continues in the background: 202, then the report.
        return (
          status: 202,
          body: <String, Object?>{
            'reportId': reportId,
            'status': 'running',
            'location': '/v1/doctor/reports/$reportId',
          },
        );
      case ('GET', 'doctor/reports'):
        return (
          status: 200,
          body: <String, Object?>{'items': source.doctorReports, 'nextCursor': null},
        );
      case ('GET', 'health'):
        return (status: 200, body: source.health);
      case ('GET', 'usage'):
        return (status: 200, body: previewUsageSeries(source, query));
    }
    return null;
  }
  if (segments.length >= 2 && segments[1] == 'custom-sources') {
    if (segments.length == 2) {
      if (method == 'GET') {
        return (status: 200, body: custom.sources);
      }
      final input = (body! as Map).cast<String, Object?>();
      if (custom.sources.any((s) => s['id'] == input['id']) ||
          sources.any((s) => s.id == input['id'])) {
        return (status: 409, body: _problem(409, 'Source id already exists', 'CONFLICT'));
      }
      final created = <String, Object?>{
        ...input,
        'createdAt': '2026-10-22T16:30:00Z',
        'ingestKeyPrefix': 'eik_Nw4k',
      };
      custom.sources.add(created);
      return (status: 201, body: <String, Object?>{...created, 'ingestKey': _key('eik_')});
    }
    final id = Uri.decodeComponent(segments[2]);
    final index = custom.sources.indexWhere((s) => s['id'] == id);
    if (index < 0) {
      return (status: 404, body: _problem(404, 'Not found', 'NOT_FOUND'));
    }
    final rest = segments.sublist(3).join('/');
    final devices = custom.devices.putIfAbsent(id, () => <Map<String, Object?>>[]);
    switch ((method, rest)) {
      case ('PUT', ''):
        final input = (body! as Map).cast<String, Object?>();
        custom.sources[index] = <String, Object?>{
          ...input,
          'createdAt': custom.sources[index]['createdAt'],
          'lastIngestAt': custom.sources[index]['lastIngestAt'],
          'ingestKeyPrefix': custom.sources[index]['ingestKeyPrefix'],
        };
        return (status: 200, body: custom.sources[index]);
      case ('DELETE', ''):
        custom.sources.removeAt(index);
        return (status: 204, body: null);
      case ('POST', 'ingest-key/rotate'):
        final key = _key('eik_');
        custom.sources[index]['ingestKeyPrefix'] = key.substring(0, 8);
        return (status: 200, body: <String, Object?>{'ingestKey': key});
      case ('GET', 'devices'):
        return (status: 200, body: devices);
      case ('POST', 'devices'):
        final input = (body! as Map).cast<String, Object?>();
        final device = _device(
          id,
          '0b8e${(_seq++).toString().padLeft(4, '0')}-1111-4222-8333-444455556666',
          input['externalId']! as String,
          input['name']! as String,
        );
        devices.add(device);
        return (status: 201, body: _deviceCreated(device, _key('eid_')));
      case ('GET', 'samples'):
        return (
          status: 200,
          body: <Object?>[
            <String, Object?>{
              'receivedAt': '2026-10-22T16:29:00Z',
              'method': 'POST',
              'format': 'mapping',
              'contentType': 'application/json',
              'body': '{"time":"2026-10-22T16:29:00Z","tempC":14.2,"windKph":9}',
              'bodyBytes': 57,
              'truncated': false,
            },
          ],
        );
      case ('POST', 'mapping/test'):
        return (
          status: 200,
          body: <String, Object?>{
            'mappingSource': (body is Map && body['mapping'] != null) ? 'proposed' : 'stored',
            'samples': <Object?>[
              <String, Object?>{
                'receivedAt': '2026-10-22T16:29:00Z',
                'records': <Object?>[
                  <String, Object?>{
                    'externalId': 'backyard',
                    'kind': 'weather-reading',
                    'observedAt': '2026-10-22T16:29:00Z',
                    'payload': <String, Object?>{'tempC': 14.2, 'windKph': 9},
                  },
                ],
                'rejections': <Object?>[],
                'warnings': <Object?>[],
              },
            ],
          },
        );
    }
    final rotate = RegExp(r'^devices/([^/]+)/key/rotate$').firstMatch(rest);
    if (method == 'POST' && rotate != null) {
      final device = devices.where((d) => d['id'] == rotate.group(1)).firstOrNull;
      if (device == null) {
        return (status: 404, body: _problem(404, 'Not found', 'NOT_FOUND'));
      }
      device['keyPrefix'] = 'eid_${(_seq++).toRadixString(36)}';
      return (status: 200, body: _deviceCreated(device, _key('eid_')));
    }
  }
  return null;
}
