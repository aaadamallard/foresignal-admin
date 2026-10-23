import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/sse.dart';
import 'package:foresignal_admin/features/alerts/alert_inbox.dart';
import 'package:foresignal_admin/features/alerts/alerts_drafts.dart';
import 'package:foresignal_admin/features/alerts/alerts_providers.dart';
import 'package:foresignal_admin/features/alerts/watchlists.dart';

const AlertFilter _open = (states: <String>{'firing', 'acknowledged'}, minSeverity: null, ruleId: null);

Map<String, Object?> _alert(int id, {int rev = 1, String state = 'firing', String severity = 'warning'}) =>
    <String, Object?>{'id': id, 'rev': rev, 'state': state, 'severity': severity, 'ruleId': 'r1'};

const Map<String, Object?> _webhook = <String, Object?>{
  'id': 'webhook',
  'name': 'Webhook',
  'events': <Object?>['alert', 'system'],
  'configFields': <Object?>[
    <String, Object?>{'name': 'url', 'type': 'url', 'required': true},
    <String, Object?>{'name': 'timeoutSeconds', 'type': 'integer', 'required': false},
  ],
  'secretFields': <Object?>[
    <String, Object?>{'name': 'header.<Name>', 'type': 'string', 'required': false},
  ],
};

void main() {
  group('durations', () {
    test('shorthand and ISO 8601 parse', () {
      expect(parseDurationText('15m'), const Duration(minutes: 15));
      expect(parseDurationText('7d'), const Duration(days: 7));
      expect(parseDurationText('PT1H30M'), const Duration(hours: 1, minutes: 30));
      expect(parseDurationText('soon'), isNull);
    });

    test('an empty duration is a problem only when required', () {
      expect(durationProblem(''), isNull);
      expect(durationProblem('', required: true), isNotNull);
      expect(durationProblem('12x'), isNotNull);
    });
  });

  group('TriggerDraft', () {
    test('a stored windowed rule round-trips with its window and other members', () {
      final rule = <String, Object?>{
        'id': 'r1',
        'name': 'GNSS jamming burst',
        'enabled': true,
        'type': 'count',
        'severity': 'warning',
        'sources': <Object?>['gpsjam'],
        'tags': <Object?>['gnss'],
        'window': <String, Object?>{'window': '1h', 'op': '>=', 'threshold': 10},
        'weatherContext': 'auto',
        'stats': <String, Object?>{'alerts': 9},
      };
      final body = TriggerDraft.of(rule).toJson();
      expect(body['type'], 'count');
      expect(body.containsKey('mode'), isFalse);
      expect(body['window'], <String, Object?>{'window': '1h', 'op': '>=', 'threshold': 10});
      expect(body['weatherContext'], 'auto');
      expect(body.containsKey('stats'), isFalse);
      expect(body.containsKey('id'), isFalse);
    });

    test('a windowed rule needs a window length', () {
      final d = TriggerDraft()
        ..name = 'x'
        ..type = 'absence'
        ..windowText = '{"op": ">="}';
      expect(d.validate()['window'], contains('window length'));
    });

    test('bad tags, conditions and members are reported by field', () {
      final d = TriggerDraft()
        ..name = 'x'
        ..tags = 'Bad Tag'
        ..conditionsText = '[{"path": "mag", "op": "bogus", "value": 5}]'
        ..moreText = '{"name": "dup", "nonsense": 1}';
      final errors = d.validate();
      expect(errors.keys, containsAll(<String>['tags', 'conditions', 'more']));
      expect(errors['more'], contains('nonsense'));
    });

    test('a record rule sends its mode and conditions', () {
      final d = TriggerDraft()
        ..name = 'Quakes'
        ..mode = 'enter'
        ..conditionsText = '[{"path": "mag", "op": ">=", "value": 5}]';
      expect(d.validate(), isEmpty);
      final body = d.toJson();
      expect(body['mode'], 'enter');
      expect(body['conditions'], hasLength(1));
      expect(body.containsKey('window'), isFalse);
    });

    test('a watchlist condition names the list', () {
      expect(watchlistCondition('w1'), <String, Object?>{'op': 'inWatchlist', 'value': 'w1'});
      expect(watchlistCondition('w1', path: 'mmsi', negate: true)['op'], 'notInWatchlist');
      expect(conditionProblem(watchlistCondition('w1')), isNull);
    });
  });

  group('ExpiryDraft', () {
    test('needs exactly one of a duration or an end', () {
      expect(ExpiryDraft().validate(), contains('for'));
      expect((ExpiryDraft(forText: '4h')..untilText = '2026-10-25').validate(), contains('for'));
    });

    test('a duration outside the bounds is refused', () {
      final errors = ExpiryDraft(forText: '30m').validate(min: const Duration(hours: 1), max: const Duration(days: 7));
      expect(errors['for'], 'Between 1 hour and 7 days.');
    });

    test('sends for or until', () {
      expect(ExpiryDraft(forText: '4h').toJson(), <String, Object?>{'for': '4h'});
      expect((ExpiryDraft()..untilText = '2026-10-25T06:00Z').toJson()['until'], startsWith('2026-10-25T06:00'));
    });
  });

  test('AlertNoteDraft leaves out what is empty', () {
    expect(AlertNoteDraft().toJson(), isEmpty);
    expect((AlertNoteDraft()..feedback = 'useful').validate(feedbackRequired: true), isEmpty);
    expect(AlertNoteDraft().validate(feedbackRequired: true), contains('feedback'));
  });

  group('EscalationPolicyDraft', () {
    test('steps must rise', () {
      final d = EscalationPolicyDraft()
        ..name = 'Duty'
        ..steps.add(EscalationStepDraft(afterMinutes: '10'));
      expect(d.validate()['step.1'], 'Later than the step before.');
    });

    test('a stored policy round-trips', () {
      final policy = <String, Object?>{
        'name': 'Duty officer',
        'steps': <Object?>[
          <String, Object?>{'afterMinutes': 5, 'channelIds': <Object?>['c1'], 'includePush': true},
          <String, Object?>{'afterMinutes': 20, 'channelIds': <Object?>[], 'includePush': false},
        ],
        'repeat': <String, Object?>{'everyMinutes': 30, 'maxTimes': 3},
        'stopOn': <String, Object?>{'resolve': true, 'snooze': false},
      };
      final d = EscalationPolicyDraft.of(policy);
      expect(d.validate(), isEmpty);
      final body = d.toJson();
      expect((body['steps']! as List).length, 2);
      expect(body['repeat'], <String, Object?>{'everyMinutes': 30, 'maxTimes': 3});
      expect(body['stopOn'], <String, Object?>{'resolve': true, 'snooze': false});
    });
  });

  group('ChannelDraft', () {
    test('config fields are typed and secrets are sent when creating', () {
      final d = ChannelDraft(_webhook)
        ..name = 'Ops'
        ..config['url'] = 'https://ops.example.org/hook'
        ..config['timeoutSeconds'] = '10'
        ..secrets['header.<Name>'] = '{"Authorization": "Bearer x"}';
      expect(d.validate(creating: true), isEmpty);
      final body = d.toJson(creating: true);
      expect(body['type'], 'webhook');
      expect(body['config'], <String, Object?>{'url': 'https://ops.example.org/hook', 'timeoutSeconds': 10});
      expect(body['secrets'], <String, Object?>{'header.Authorization': 'Bearer x'});
    });

    test('an edit with no secret typed leaves the secrets alone', () {
      final stored = <String, Object?>{
        'name': 'Ops',
        'type': 'webhook',
        'enabled': true,
        'events': <Object?>['alert'],
        'config': <String, Object?>{'url': 'https://ops.example.org/hook', 'extra': 1},
        'secretFields': <Object?>['header.Authorization'],
      };
      final d = ChannelDraft.of(_webhook, stored);
      expect(d.validate(creating: false), isEmpty);
      final body = d.toJson(creating: false);
      expect(body.containsKey('secrets'), isFalse);
      expect(body['config'], <String, Object?>{'extra': 1, 'url': 'https://ops.example.org/hook'});
      expect(d.secretsSet, contains('header.Authorization'));
    });

    test('a required URL must have a scheme', () {
      final d = ChannelDraft(_webhook)
        ..name = 'Ops'
        ..config['url'] = 'ops.example.org';
      expect(d.validate(creating: true)['config.url'], 'A URL with its scheme.');
    });
  });

  group('watchlists', () {
    test('typed lines carry an optional label', () {
      expect(parseItemLines('273456780, KERCH STRAIT\n\n312987654'), <Map<String, Object?>>[
        <String, Object?>{'value': '273456780', 'label': 'KERCH STRAIT'},
        <String, Object?>{'value': '312987654'},
      ]);
    });

    test('CSV honors quotes and splits tags on semicolons', () {
      final items = parseWatchlistCsv('value,label,notes,tags\n273456780,"KERCH, STRAIT",,tanker;sanctioned');
      expect(items.single, <String, Object?>{
        'value': '273456780',
        'label': 'KERCH, STRAIT',
        'tags': <String>['tanker', 'sanctioned'],
      });
    });

    test('CSV without a value column is refused', () {
      expect(() => parseWatchlistCsv('label\nX'), throwsFormatException);
    });

    test('a JSON array is taken as items', () {
      expect(parseWatchlistImport('[{"value": "a"}]'), <Map<String, Object?>>[
        <String, Object?>{'value': 'a'},
      ]);
      expect(() => parseWatchlistImport('[{"value": 1}]'), throwsFormatException);
    });

    test('a new watchlist sends no empty description', () {
      final body = (WatchlistDraft()..name = ' Vessels ').toJson();
      expect(body, <String, Object?>{'name': 'Vessels', 'identity': 'mmsi', 'description': null});
    });
  });

  group('inbox', () {
    test('alert events carry the alert, enriched ones are the alert', () {
      final updated = SseEvent(event: 'alert.updated', data: jsonEncode(<String, Object?>{'alert': _alert(7)}));
      expect(alertOfEvent(updated)?['id'], 7);
      final enriched = SseEvent(event: 'alert.enriched', data: jsonEncode(_alert(8)));
      expect(alertOfEvent(enriched)?['id'], 8);
      expect(alertOfEvent(const SseEvent(event: 'heartbeat', data: '{}')), isNull);
      expect(alertOfEvent(const SseEvent(event: 'alert', data: 'not json')), isNull);
    });

    test('upserting keeps newest first and ignores a stale revision', () {
      var list = <Map<String, Object?>>[_alert(5), _alert(3)];
      list = upsertAlert(list, _alert(9), _open);
      expect(list.map((a) => a['id']), <Object?>[9, 5, 3]);
      list = upsertAlert(list, _alert(5, rev: 3, state: 'acknowledged'), _open);
      expect(list.firstWhere((a) => a['id'] == 5)['state'], 'acknowledged');
      list = upsertAlert(list, _alert(5, rev: 2), _open);
      expect(list.firstWhere((a) => a['id'] == 5)['rev'], 3);
    });

    test('an alert that leaves the filter leaves the list', () {
      final list = upsertAlert(<Map<String, Object?>>[_alert(5)], _alert(5, rev: 2, state: 'resolved'), _open);
      expect(list, isEmpty);
    });

    test('the severity floor filters', () {
      const filter = (states: <String>{}, minSeverity: 'critical', ruleId: null);
      expect(alertMatches(_alert(1), filter), isFalse);
      expect(alertMatches(_alert(1, severity: 'critical'), filter), isTrue);
    });
  });

  test('a watchlist item count reads "1 item", never "1 items"', () {
    expect(watchlistItemCount(1), '1 item');
    expect(watchlistItemCount(0), '0 items');
    expect(watchlistItemCount(2), '2 items');
  });

  test('a weather context lists only the sections that are not ok', () {
    final entries = weatherContextEntries(<String, Object?>{
      'status': 'ok',
      'radar': <String, Object?>{'status': 'ok', 'maxDbz': 0.0},
      'lightning': <String, Object?>{
        'status': 'stale',
        'statusText': 'No GLM file within 2 minutes',
        'asOf': '2026-10-23T16:40:00Z',
      },
      'summary': 'Radar max 0 dBZ within 10 km',
    });
    expect(entries.map((e) => e.key), <String>['Lightning']);
    expect('${entries.single.value}', startsWith('Stale · No GLM file within 2 minutes · last good '));

    final failed = weatherContextEntries(<String, Object?>{'status': 'unavailable'});
    expect(failed.single.key, 'Weather');
    expect('${failed.single.value}', 'Unavailable; unknown, not clear');
  });
}
