import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/features/system/backup.dart';
import 'package:foresignal_admin/features/system/system_drafts.dart';

void main() {
  group('settings fields', () {
    const url = SettingField('publicBaseUrl', 'Public base URL', kind: SettingKind.url, required: true);
    const count = SettingField('limit', 'Limit', kind: SettingKind.integer, min: 1, max: 10);
    const interval = SettingField('interval', 'Interval', kind: SettingKind.duration, minDuration: Duration(seconds: 30));
    const scopes = SettingField(
      'scopeMap',
      'Scope map',
      kind: SettingKind.keyValues,
      values: <String>['read', 'agent'],
    );

    test('settingProblem checks each kind', () {
      expect(settingProblem(url, ''), 'Required.');
      expect(settingProblem(url, 'example.org'), isNotNull);
      expect(settingProblem(url, 'https://example.org'), isNull);
      expect(settingProblem(count, '0'), 'From 1 to 10.');
      expect(settingProblem(count, '2.5'), 'A whole number.');
      expect(settingProblem(count, '7'), isNull);
      expect(settingProblem(interval, '10s'), 'At least 30 s.');
      expect(settingProblem(interval, '90s'), isNull);
      expect(settingProblem(scopes, 'a:read = admin'), contains('read or agent'));
      expect(settingProblem(scopes, 'a:read = read'), isNull);
    });

    test('settingsBody keeps unknown members and drops read-only ones', () {
      final stored = <String, Object?>{
        'publicBaseUrl': 'http://old',
        'timezone': 'UTC',
        'future': <String, Object?>{'kept': true},
        'warnings': <Object?>[],
      };
      const fields = <SettingField>[
        url,
        SettingField('timezone', 'Time zone', nullable: true),
        SettingField('push.allowedPrivateHosts', 'Hosts', kind: SettingKind.lines),
      ];
      final body = settingsBody(
        stored,
        fields,
        <String, String>{'publicBaseUrl': ' https://new.example ', 'timezone': '', 'push.allowedPrivateHosts': ''},
        const <String, Object?>{},
        readOnly: const <String>{'warnings'},
      );
      expect(body['publicBaseUrl'], 'https://new.example');
      expect(body.containsKey('timezone'), isTrue);
      expect(body['timezone'], isNull);
      expect(body['push'], <String, Object?>{'allowedPrivateHosts': <String>[]});
      expect(body['future'], <String, Object?>{'kept': true});
      expect(body.containsKey('warnings'), isFalse);
      expect(stored['publicBaseUrl'], 'http://old', reason: 'the stored object is not changed');
    });

    test('settingPick falls back to the default when the member is absent', () {
      const open = SettingField('openReads', 'Open reads', kind: SettingKind.toggle, defaultValue: true);
      expect(settingPick(open, const <String, Object?>{}), isTrue);
      expect(settingPick(open, const <String, Object?>{'openReads': false}), isFalse);
    });

    test('sentDifference compares only what was sent', () {
      expect(sentDifference(<String, Object?>{'a': 1}, <String, Object?>{'a': 1, 'b': 2}), isNull);
      expect(sentDifference(<String, Object?>{'a': null}, const <String, Object?>{}), isNull);
      expect(sentDifference(<String, Object?>{'a': 1}, <String, Object?>{'a': 2}), 'a reads back as 2.');
      expect(
        sentDifference(<String, Object?>{'at': '2026-10-01T00:00:00Z'}, <String, Object?>{'at': '2026-10-01T00:00:00.000Z'}),
        isNull,
      );
      expect(
        sentDifference(
          <String, Object?>{
            'list': <Object?>['x', 'y'],
          },
          <String, Object?>{
            'list': <Object?>['x'],
          },
        ),
        contains('list'),
      );
    });

    test('the MCP check needs an issuer for an identity provider', () {
      final check = mcpAuthGroup.check!;
      expect(check(<String, Object?>{'mode': 'oauth', 'issuer': null}), contains('issuer'));
      expect(check(<String, Object?>{'mode': 'token', 'issuer': null}), isEmpty);
      expect(check(<String, Object?>{'mode': 'both', 'issuer': 'https://id.example'}), isEmpty);
    });
  });

  group('metric projections', () {
    test('names are Prometheus-safe and unique', () {
      expect(metricProjectionProblems(<String, Object?>{'name': 'Tide-Height'}, const <Object?>[]), contains('name'));
      expect(metricProjectionProblems(<String, Object?>{'name': 'tide_m'}, const <Object?>['tide_m']), contains('name'));
      expect(
        metricProjectionProblems(<String, Object?>{
          'name': 'tide_m',
          'labels': <String, Object?>{'bad-label': 'payload.x'},
        }, const <Object?>[]),
        contains('labels'),
      );
      expect(metricProjectionProblems(<String, Object?>{'name': 'tide_m'}, const <Object?>[]), isEmpty);
    });

    test('labels read as name = path lines', () {
      expect(
        metricLabelsText(<Object?>[
          <String, Object?>{'name': 'site', 'path': 'payload.siteNo'},
        ]),
        'site = payload.siteNo',
      );
    });
  });

  group('credential drafts', () {
    test('a restriction is sent only when typed', () {
      final r = RestrictionDraft();
      expect(r.toJson(), isNull);
      r
        ..sources = 'usgs-quakes\nnoaa-tides'
        ..maxRequestsPerMinute = '60';
      expect(r.validate(), isEmpty);
      expect(r.toJson(excludePrivate: false), <String, Object?>{
        'sources': <String>['usgs-quakes', 'noaa-tides'],
        'maxRequestsPerMinute': 60,
        'excludePrivate': false,
      });
      r.endpoints = 'records';
      expect(r.validate(), contains('restrictions.endpoints'));
      r.endpoints = 'GET /v1/records/**';
      expect(r.validate(endpointsAllowed: false), contains('restrictions.endpoints'));
    });

    test('restrictionText summarizes a stored restriction', () {
      expect(restrictionText(null), 'None');
      expect(
        restrictionText(<String, Object?>{
          'sources': <Object?>['a', 'b'],
          'maxRequestsPerMinute': 600,
        }),
        'sources a, b; 600/min',
      );
    });

    test('an admin token takes no restrictions', () {
      final d = TokenDraft()
        ..name = 'Ops'
        ..scope = 'admin';
      d.restrictions.sources = 'x';
      expect(d.validate(), contains('restrictions'));
      d.restrictions.sources = '';
      expect(d.validate(), isEmpty);
      expect(d.toJson().containsKey('restrictions'), isFalse);
    });

    test('a token carries its policy floor in contract order', () {
      final d = TokenDraft()..name = 'Feeds';
      d.licensePolicy.addAll(<String>[licensePolicyFlags.last, licensePolicyFlags.first]);
      expect(d.toJson()[licensePolicyMember], <String>[licensePolicyFlags.first, licensePolicyFlags.last]);
    });

    test('a pairing code lives at most an hour and may carry a restriction', () {
      final d = PairingDraft()
        ..name = 'Phone'
        ..ttl = '2h';
      expect(d.validate(), contains('ttl'));
      d
        ..ttl = '30m'
        ..principal = 'ops';
      d.restrictions.kinds = 'earthquake';
      expect(d.validate(), isEmpty);
      expect(d.toJson(), <String, Object?>{
        'name': 'Phone',
        'scope': 'read',
        'ttl': '30m',
        'principalId': 'ops',
        'privateAccess': false,
        'restrictions': <String, Object?>{
          'kinds': <String>['earthquake'],
          'excludePrivate': true,
        },
      });
    });

    test('a feed key needs a data limit, /v1/ prefixes and an expiry within a year', () {
      final now = DateTime.utc(2026, 10, 1);
      final d = FeedKeyDraft()
        ..name = 'KML'
        ..prefixes = 'records'
        ..expiresAt = '2028-01-01T00:00:00Z';
      final problems = d.validate(now);
      expect(problems.keys, containsAll(<String>['prefixes', 'expiresAt', 'restrictions']));
      d
        ..prefixes = '/v1/records'
        ..expiresAt = '2027-01-01T00:00:00Z';
      d.restrictions.sources = 'usgs-quakes';
      expect(d.validate(now), isEmpty);
      expect(d.toJson()['prefixes'], <String>['/v1/records']);
    });

    test('a tile key lives at most 30 days', () {
      final d = TileKeyDraft()
        ..name = 'Wall'
        ..ttl = '45d';
      expect(d.validate().keys, containsAll(<String>['prefixes', 'ttl']));
      d
        ..ttl = '7d'
        ..prefixes.add(tileKeyPrefixes.first);
      expect(d.validate(), isEmpty);
      expect(d.toJson()['restrictions'], isNull);
    });

    test('a ticket sends a lifetime only for tiles', () {
      final d = TicketDraft()..ttl = '5m';
      expect(d.toJson(), <String, Object?>{'purpose': 'stream'});
      d
        ..purpose = 'tiles'
        ..ttl = '2h';
      expect(d.validate(), contains('ttl'));
      d.ttl = '30m';
      expect(d.toJson(), <String, Object?>{'purpose': 'tiles', 'ttl': '30m'});
    });
  });

  group('backup', () {
    test('bundleProblem wants an object with sources', () {
      expect(bundleProblem(''), isNotNull);
      expect(bundleProblem('[1]'), 'A settings bundle is a JSON object.');
      expect(bundleProblem('{"cors": {}}'), 'A settings bundle has a sources object.');
      expect(bundleProblem('{"sources": {}}'), isNull);
    });

    test('bundleFileName stamps the UTC minute', () {
      expect(bundleFileName(DateTime.utc(2026, 3, 4, 5, 6)), 'foresignal-settings-20260304-0506.json');
    });

    test('importReportLines counts what changed', () {
      final lines = importReportLines(<String, Object?>{
        'sourcesApplied': <Object?>['a'],
        'sourcesUnknown': <Object?>['zz'],
        'triggersUpserted': 2,
      });
      expect(lines.first, '1 source applied');
      expect(lines[1], 'Unknown sources skipped: zz');
      expect(lines.last, startsWith('2 triggers, 0 channels'));
    });

    test('importDifference checks only the members an import replaces', () {
      final bundle = <String, Object?>{
        'sources': <String, Object?>{},
        'server': <String, Object?>{'publicBaseUrl': 'https://elsewhere'},
        'cors': <String, Object?>{
          'readOrigins': <Object?>['*'],
          'warnings': <Object?>[],
        },
      };
      expect(
        importDifference(bundle, <String, Object?>{
          'server': <String, Object?>{'publicBaseUrl': 'http://here'},
          'cors': <String, Object?>{
            'readOrigins': <Object?>['*'],
          },
        }),
        isNull,
      );
      expect(
        importDifference(bundle, <String, Object?>{
          'cors': <String, Object?>{
            'readOrigins': <Object?>['https://a'],
          },
        }),
        contains('cors.readOrigins'),
      );
    });

    test('bundleCounts names each section but not the export warnings', () {
      final counts = bundleCounts(<String, Object?>{
        'sources': <String, Object?>{'a': <String, Object?>{}},
        'pushProviders': <Object?>[],
        'warnings': <Object?>['x'],
        'cors': <String, Object?>{},
      });
      expect(counts, <String, int>{'sources': 1, 'pushProviders': 0});
      expect(sectionName('pushProviders'), 'push providers');
    });
  });
}
