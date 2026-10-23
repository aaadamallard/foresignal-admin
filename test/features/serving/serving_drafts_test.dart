import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/features/serving/serving_drafts.dart';

const Map<String, Object?> _mqttType = <String, Object?>{
  'id': 'mqtt-state',
  'configSchema': <String, Object?>{
    'type': 'object',
    'required': <String>['broker', 'qos', 'retain', 'mode', 'topics'],
    'properties': <String, Object?>{
      'broker': <String, Object?>{'type': 'string', 'description': 'The broker URL.'},
      'qos': <String, Object?>{'type': 'integer', 'default': 1},
      'retain': <String, Object?>{'type': 'boolean'},
      'mode': <String, Object?>{
        'enum': <String>['PUSH', 'SERVE'],
      },
      'topics': <String, Object?>{'type': 'array'},
      'topicPrefix': <String, Object?>{'type': 'string', 'default': 'foresignal'},
    },
  },
};

void main() {
  group('bounding boxes', () {
    test('four numbers in range parse, empty is null', () {
      expect(parseBbox('18, 53.5, 24, 56.5'), <double>[18, 53.5, 24, 56.5]);
      expect(parseBbox('  '), isNull);
      expect(bboxText(<num>[18, 53.5, 24, 56.5]), '18, 53.5, 24, 56.5');
    });

    test('a wrong count, a range or a flipped latitude is a problem', () {
      expect(bboxProblem('1, 2, 3'), isNotNull);
      expect(bboxProblem('1, 2, 3, x'), isNotNull);
      expect(bboxProblem('-181, 0, 10, 10'), contains('±180'));
      expect(bboxProblem('0, 50, 10, 40'), contains('minimum latitude'));
      expect(bboxProblem(''), isNull);
    });
  });

  test('integerProblem honors min, max and required', () {
    expect(integerProblem(''), isNull);
    expect(integerProblem('', required: true), 'Required.');
    expect(integerProblem('0', min: 1), isNotNull);
    expect(integerProblem('15', max: 14), 'A whole number from 0 to 14.');
    expect(integerProblem('7', max: 14), isNull);
  });

  group('sinks', () {
    test('the config template takes defaults, then an enum, then an empty value', () {
      expect(configTemplate(_mqttType), <String, Object?>{
        'broker': '',
        'qos': 1,
        'retain': false,
        'mode': 'PUSH',
        'topics': <Object?>[],
      });
    });

    test('configFields lists every property with its type and default', () {
      final fields = configFields(_mqttType);
      expect(fields.map((f) => f.name), contains('topicPrefix'));
      final mode = fields.firstWhere((f) => f.name == 'mode');
      expect(mode.type, 'PUSH | SERVE');
      expect(mode.required, isTrue);
      final prefix = fields.firstWhere((f) => f.name == 'topicPrefix');
      expect(prefix.required, isFalse);
      expect(prefix.defaultValue, 'foresignal');
    });

    test('a new sink needs an id, a name and a JSON object config', () {
      final draft = SinkDraft.create(_mqttType)
        ..id = 'Bad Id'
        ..config = '[1]';
      final errors = draft.validate();
      expect(errors.keys, containsAll(<String>['id', 'name', 'config']));
    });

    test('a sink create carries its id and type; typed and removed secrets only', () {
      final draft = SinkDraft.create(_mqttType)
        ..id = 'ha-lan'
        ..name = ' Home Assistant '
        ..enabled = true
        ..config = '{"broker": "tcp://10.0.0.5:1883"}';
      draft.secrets['password'] = 'hunter2';
      draft.secrets['token'] = '';
      draft.scope.kinds = 'track.vessel';
      expect(draft.validate(), isEmpty);
      final body = draft.toJson();
      expect(body['id'], 'ha-lan');
      expect(body['type'], 'mqtt-state');
      expect(body['name'], 'Home Assistant');
      expect(body['secrets'], <String, Object?>{'password': 'hunter2'});
      final filter = body['filter']! as Map<String, Object?>;
      expect(filter['kinds'], <String>['track.vessel']);
      expect(filter['bbox'], isNull);
    });

    test('an update sends no id or type, and a removed secret as null', () {
      final draft = SinkDraft.of(<String, Object?>{
        'id': 'ha',
        'type': 'mqtt-state',
        'name': 'HA',
        'enabled': true,
        'config': <String, Object?>{'broker': 'tcp://h'},
        'filter': <String, Object?>{
          'sources': <String>['usgs'],
          'watchlistId': 'w1',
        },
      })..removeSecrets.add('password');
      final body = draft.toJson();
      expect(body.containsKey('id'), isFalse);
      expect(body.containsKey('type'), isFalse);
      expect(body['secrets'], <String, Object?>{'password': null});
      final filter = body['filter']! as Map<String, Object?>;
      expect(filter['sources'], <String>['usgs']);
      expect(filter['watchlistId'], 'w1');
    });

    test('sinkTestText names the failing phase', () {
      expect(
        sinkTestText(<String, Object?>{'ok': false, 'phase': 'connect', 'message': 'refused'}),
        'Failed at connect: refused',
      );
      expect(sinkTestText(<String, Object?>{'ok': true, 'latencyMs': 12, 'message': 'sent'}), 'Passed in 12 ms: sent');
    });
  });

  group('exports', () {
    test('GPX needs history; asOf and atSeq are required by their modes', () {
      final draft = ExportDraft()
        ..format = 'gpx'
        ..mode = 'asOf';
      expect(draft.validate().keys, containsAll(<String>['format', 'asOf']));
      draft
        ..format = 'geoparquet'
        ..mode = 'atSeq';
      expect(draft.validate().keys, contains('atSeq'));
    });

    test('an export spec sends only its mode member', () {
      final draft = ExportDraft()
        ..mode = 'atSeq'
        ..atSeq = '120'
        ..fields = 'mag, depth';
      expect(draft.validate(), isEmpty);
      final body = draft.toJson();
      expect(body['atSeq'], 120);
      expect(body.containsKey('asOf'), isFalse);
      expect(body['fields'], <String>['mag', 'depth']);
    });

    test('a snapshot takes a seq or an instant, not both, and no place', () {
      final draft = SnapshotDraft()
        ..atSeq = '5'
        ..asOf = '2026-10-01T00:00:00Z';
      expect(draft.validate().keys, contains('asOf'));
      draft.asOf = '';
      draft.scope.placeId = 'gdansk';
      expect(draft.toJson().containsKey('placeId'), isFalse);
    });

    test('a pack needs an area, a layer, and zooms in order', () {
      final draft = PackDraft()
        ..name = 'Baltic'
        ..vector = false
        ..minZoom = '9'
        ..maxZoom = '4';
      expect(draft.validate().keys, containsAll(<String>['bbox', 'vector', 'maxZoom']));
      draft
        ..bbox = '18, 53.5, 24, 56.5'
        ..raster = true
        ..rasterProduct = 'radar'
        ..maxZoom = '12';
      expect(draft.validate(), isEmpty);
      final body = draft.toJson();
      expect(body['vector'], isNull);
      expect(body['raster'], <String, Object?>{'productId': 'radar', 'frame': 'latest'});
    });

    test('exportJobActive is true only while queued or running', () {
      expect(exportJobActive('QUEUED'), isTrue);
      expect(exportJobActive('RUNNING'), isTrue);
      expect(exportJobActive('DONE'), isFalse);
      expect(exportJobActive(exportCanceledStatus), isFalse);
    });
  });

  group('archive', () {
    test('a hold needs a name and a reason, and seqs in order', () {
      final draft = HoldDraft()
        ..fromSeq = '9'
        ..toSeq = '3';
      expect(draft.validate().keys, containsAll(<String>['name', 'reason', 'toSeq']));
      draft
        ..name = 'Case 41'
        ..reason = 'Litigation'
        ..toSeq = '30';
      expect(draft.validate(), isEmpty);
      expect(draft.toJson()['fromSeq'], 9);
    });

    test('S3 settings need an endpoint and a bucket; keys are sent only when typed', () {
      final draft = ArchiveDraft.of(<String, Object?>{'enabled': true, 'target': 's3'});
      expect(draft.validate().keys, containsAll(<String>['endpoint', 'bucket']));
      draft
        ..endpoint = 'https://s3.example.com'
        ..bucket = 'b';
      expect(draft.validate(), isEmpty);
      expect(draft.toJson().containsKey('secrets'), isFalse);
      draft.secretKey = 's3cret';
      expect(draft.toJson()['secrets'], <String, Object?>{'secretKey': 's3cret'});
    });

    test('local settings send no S3 block', () {
      final draft = ArchiveDraft.of(<String, Object?>{'target': 'local'});
      expect(draft.toJson()['s3'], isNull);
      expect(draft.keepLocal, isTrue);
    });
  });

  group('peers', () {
    test('pulling needs a token at registration', () {
      final draft = PeerDraft()
        ..id = 'hub-north'
        ..name = 'Hub north'
        ..baseUrl = 'https://hub.example';
      expect(draft.validate().keys, contains('token'));
      draft.mode = 'RECEIVE';
      expect(draft.validate(), isEmpty);
    });

    test('durations and hops are checked', () {
      final draft = PeerDraft()
        ..maxAge = 'soon'
        ..backfill = 'all'
        ..maxHops = '0'
        ..trackTtl = '';
      expect(draft.validate().keys, containsAll(<String>['maxAge', 'backfill', 'maxHops', 'trackTtl']));
    });

    test('an update sends the pinned key back and an asked-for removal as null', () {
      final draft = PeerDraft.of(<String, Object?>{
        'id': 'hub-north',
        'name': 'Hub north',
        'baseUrl': 'https://hub.example',
        'mode': 'PULL',
        'enabled': true,
        'pinnedKid': 'hub-north-2026-09',
        'selection': <String, Object?>{'maxHops': 2, 'live': true},
      })..removeExchangeKey = true;
      final body = draft.toJson();
      expect(body.containsKey('id'), isFalse);
      expect(body.containsKey('mode'), isFalse);
      expect(body.containsKey('token'), isFalse);
      expect(body['pinnedKid'], 'hub-north-2026-09');
      expect(body.containsKey('exchangeKey'), isTrue);
      expect(body['exchangeKey'], isNull);
      final selection = body['selection']! as Map<String, Object?>;
      expect(selection['maxHops'], 2);
      expect(selection['live'], isTrue);
    });

    test('peerTestText reads as a sentence with the error after it', () {
      expect(peerTestText(<String, Object?>{'reachable': false, 'error': 'timeout'}), 'Unreachable: timeout');
      expect(
        peerTestText(<String, Object?>{
          'reachable': true,
          'ok': false,
          'latencyMs': 57,
          'signatureValid': true,
          'keyMatches': false,
          'error': 'The peer signs with k2.',
        }),
        '57 ms, signature valid, key does not match the pin. The peer signs with k2.',
      );
      expect(
        peerTestText(<String, Object?>{'reachable': true, 'ok': true, 'signatureValid': true}),
        'Signature valid, no key pinned yet.',
      );
    });
  });
}
