import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/routes.dart';
import 'package:foresignal_admin/features/alerts/alert_builder_draft.dart';

import '../../../tool/preview/preview_alerts.dart';
import '../../support/actions.dart';
import '../../support/fake_adapter.dart';
import '../sources/sources_screens_test.dart' show openAt;
import 'alerts_screens_test.dart' show alertsBackend;

const String _ntfy = '9a7c3e51-6b2d-4f8a-8c19-3e5d7a0b2c02';

Future<void> _tap(WidgetTester tester, String key) => tapVisible(tester, find.byKey(Key(key)).first);

Future<void> _type(WidgetTester tester, String key, String text) async {
  final field = find.byKey(Key(key)).first;
  await tester.ensureVisible(field);
  await tester.enterText(field, text);
  await tester.pump();
}

Map<String, Object?> _channelType(String id) => <String, Object?>{
  'id': id,
  'name': id,
  'events': <String>['alert', 'system'],
  'configFields': <Object?>[],
  'secretFields': <Object?>[],
};

void main() {
  group('BuilderCondition', () {
    test('a row reads a stored condition and writes it back the same', () {
      for (final c in <Map<String, Object?>>[
        <String, Object?>{'path': 'mag', 'op': '>=', 'value': 5},
        <String, Object?>{'path': 'properties.alert', 'op': '==', 'value': 'red'},
        <String, Object?>{'path': 'tsunami', 'op': '==', 'value': true},
        <String, Object?>{'path': 'status', 'op': 'in', 'value': <Object?>['reviewed', 'automatic']},
        <String, Object?>{'path': 'depth', 'op': 'notIn', 'value': <Object?>[1, 2.5]},
        <String, Object?>{'path': 'place', 'op': 'matches', 'value': r'^\d+ km N'},
        <String, Object?>{'path': 'felt', 'op': 'exists', 'value': true},
      ]) {
        final row = BuilderCondition.of(c);
        expect(row, isNotNull, reason: '$c');
        expect(row!.problem(), isNull, reason: '$c');
        expect(row.toJson(), c);
      }
    });

    test('a condition a row cannot show exactly is kept, not changed', () {
      for (final c in <Map<String, Object?>>[
        <String, Object?>{'type': 'approach', 'target': <String, Object?>{}, 'withinMeters': 500, 'withinMinutes': 10},
        <String, Object?>{'path': 'mmsi', 'op': 'inWatchlist', 'value': 'wl-1'},
        // The text "5" would read back as the number 5.
        <String, Object?>{'path': 'code', 'op': '==', 'value': '5'},
        <String, Object?>{'path': 'tags', 'op': 'in', 'value': <Object?>['a,b']},
      ]) {
        expect(BuilderCondition.of(c), isNull, reason: '$c');
      }
    });

    test('each operator says what its value must be', () {
      expect(BuilderCondition(path: '', value: '5').problem(), 'Choose a field.');
      expect(BuilderCondition(path: 'a b', value: '5').problem(), contains('dot path'));
      expect(BuilderCondition(path: 'mag', op: '>', value: 'big').problem(), 'A number.');
      expect(BuilderCondition(path: 'x', op: 'in', value: '1, red').problem(), contains('All numbers'));
      expect(BuilderCondition(path: 'x', op: 'in', value: ' ').problem(), contains('One or more'));
      expect(BuilderCondition(path: 'x', op: '==', value: '').problem(), 'Required.');
      expect(BuilderCondition(path: 'mag', op: '>=', value: '5').describe(), 'mag is at least 5');
    });
  });

  group('AlertBuilderDraft', () {
    test('a stored rule keeps every member it does not edit, and the conditions it cannot show', () {
      final stored = <String, Object?>{
        'id': 'r1',
        'name': 'Quakes',
        'severity': 'critical',
        'sources': <Object?>['usgs-earthquakes'],
        'kinds': <Object?>['earthquake'],
        'cooldown': '15m',
        'near': <String, Object?>{'point': <num>[30.7, 46.5], 'radiusKm': 25},
        'conditions': <Object?>[
          <String, Object?>{'path': 'mag', 'op': '>=', 'value': 5},
          <String, Object?>{'path': 'mmsi', 'op': 'inWatchlist', 'value': 'wl-1'},
        ],
      };
      final d = AlertBuilderDraft.of(stored, const <Map<String, Object?>>[]);
      expect(d.conditions.single.describe(), 'mag is at least 5');
      expect(d.kept.single['op'], 'inWatchlist');
      d.sources.add('emsc-earthquakes');
      final body = d.toJson();
      expect(body['sources'], <String>['usgs-earthquakes', 'emsc-earthquakes']);
      expect(body['kinds'], <String>['earthquake']);
      expect(body['severity'], 'critical');
      expect(body['cooldown'], '15m');
      expect(body['near'], stored['near']);
      expect(body['conditions'], <Object?>[
        <String, Object?>{'path': 'mmsi', 'op': 'inWatchlist', 'value': 'wl-1'},
        <String, Object?>{'path': 'mag', 'op': '>=', 'value': 5},
      ]);
    });

    test('a name is required and each bad row is reported', () {
      final d = AlertBuilderDraft()..conditions.add(BuilderCondition(path: 'mag', op: '>', value: 'x'));
      expect(d.validate(), <String, String>{'name': 'Name the alert.', 'condition.0': 'A number.'});
    });

    test('the channels that list the rule and take alerts start selected', () {
      final d = AlertBuilderDraft.of(<String, Object?>{'id': 'r1', 'name': 'n'}, <Map<String, Object?>>[
        <String, Object?>{'id': 'a', 'ruleIds': <Object?>['r1'], 'events': <Object?>['alert']},
        <String, Object?>{'id': 'b', 'ruleIds': null, 'events': <Object?>['alert']},
        <String, Object?>{'id': 'c', 'ruleIds': <Object?>['r2'], 'events': <Object?>['alert']},
        <String, Object?>{'id': 'd', 'ruleIds': <Object?>['r1'], 'events': <Object?>['system']},
      ]);
      expect(d.channelIds, <String>{'a'});
    });
  });

  group('routeChannelBody', () {
    final type = _channelType('ntfy');

    test('routing adds the rule; a channel that takes every rule is left alone', () {
      final listed = <String, Object?>{'id': 'c', 'name': 'n', 'type': 'ntfy', 'events': <Object?>['alert'], 'ruleIds': <Object?>['r0']};
      expect(routeChannelBody(type, listed, 'r1', route: true)!['ruleIds'], unorderedEquals(<String>['r0', 'r1']));
      expect(routeChannelBody(type, listed, 'r0', route: true), isNull);
      final every = <String, Object?>{...listed, 'ruleIds': null};
      expect(routeChannelBody(type, every, 'r1', route: true), isNull);
      expect(routeChannelBody(type, every, 'r1', route: false), isNull);
    });

    test('stopping removes only this rule', () {
      final listed = <String, Object?>{'id': 'c', 'name': 'n', 'type': 'ntfy', 'events': <Object?>['alert'], 'ruleIds': <Object?>['r0', 'r1']};
      expect(routeChannelBody(type, listed, 'r1', route: false)!['ruleIds'], <String>['r0']);
      expect(routeChannelBody(type, listed, 'r9', route: false), isNull);
    });

    test('a channel without alerts is subscribed for this rule alone, never for every rule', () {
      final quiet = <String, Object?>{'id': 'c', 'name': 'n', 'type': 'ntfy', 'events': <Object?>['system'], 'ruleIds': null};
      final body = routeChannelBody(type, quiet, 'r1', route: true)!;
      expect(body['events'], containsAll(<String>['system', 'alert']));
      expect(body['ruleIds'], <String>['r1']);
      expect(body.containsKey('secrets'), isFalse);
    });
  });

  test('RelevanceCheck flags marginal and not-meaningful sources still selected, and knows when it is stale', () {
    final check = RelevanceCheck.of(<String, Object?>{
      'summary': 'Hazards.',
      'sources': <Object?>[
        <String, Object?>{'sourceId': 'a', 'name': 'A', 'verdict': 'relevant', 'reason': 'r'},
        <String, Object?>{'sourceId': 'b', 'name': 'B', 'verdict': 'marginal', 'reason': 'm'},
        <String, Object?>{'sourceId': 'c', 'name': 'C', 'verdict': 'not-meaningful', 'reason': 'n'},
        <String, Object?>{'sourceId': 'd', 'name': 'D', 'verdict': 'unrated', 'reason': 'u'},
      ],
    }, <String>['a', 'b', 'c', 'd']);
    expect(check.flagged(<String>['a', 'b', 'c', 'd']).map((v) => v.sourceId), <String>['b', 'c']);
    expect(check.flagged(<String>['a', 'b', 'd']).map((v) => v.sourceId), <String>['b']);
    expect(check.isStaleFor(<String>['a', 'b']), isFalse);
    expect(check.isStaleFor(<String>['a', 'e']), isTrue);
  });

  testWidgets(
    'build a new alert: check the sources, omit the flagged one, set a threshold, route it, save, and reopen it',
    (tester) async {
      final v = PreviewAlerts();
      final adapter = await openAt(tester, alertBuilderPath, adapter: alertsBackend(v));
      expect(find.byKey(const Key('builder.node.dataset')), findsOneWidget);
      expect(find.byKey(const Key('builder.node.trigger')), findsOneWidget);
      expect(find.byKey(const Key('builder.node.delivery')), findsOneWidget);
      expect(find.text('Every source'), findsOneWidget);

      await _type(tester, 'builder.name', 'Strong quakes');
      for (final id in <String>['usgs-earthquakes', 'nws-alerts', 'celestrak-gp']) {
        await _tap(tester, 'builder.source.$id');
      }
      expect(find.text('3 sources'), findsOneWidget);

      // The check is advice: it calls out the satellite catalog with a reason and drops nothing.
      await _tap(tester, 'builder.analyze');
      final analyze = adapter.requests.singleWhere((r) => r.uri.path == '/v1/triggers/analyze-sources');
      expect(analyze.method, 'POST');
      expect(analyze.body, <String, Object?>{
        'sourceIds': <String>['usgs-earthquakes', 'nws-alerts', 'celestrak-gp'],
      });
      expect(find.byKey(const Key('builder.flagged')), findsOneWidget);
      expect(find.text('1 source may not belong'), findsOneWidget);
      expect(
        tester.widget<Text>(find.byKey(const Key('builder.flagged.reason.celestrak-gp'))).data,
        contains('nothing else in the set is about orbits'),
      );
      expect(find.byKey(const Key('builder.source.chip.celestrak-gp')), findsOneWidget);
      expect(find.text('3 sources'), findsOneWidget);
      expect(find.text('1 flagged by the check'), findsOneWidget);

      await _tap(tester, 'builder.omit.celestrak-gp');
      expect(find.byKey(const Key('builder.source.chip.celestrak-gp')), findsNothing);
      expect(find.byKey(const Key('builder.flagged')), findsNothing);
      expect(find.text('2 sources'), findsOneWidget);

      // Node 2: the area, a state found by name.
      await _tap(tester, 'builder.next.area');
      expect(find.byKey(const Key('builder.editor.area')), findsOneWidget);
      expect(find.text('Anywhere'), findsWidgets);
      await _tap(tester, 'builder.area.mode.named');
      await _type(tester, 'builder.area.search', 'texas');
      await tester.pump(const Duration(milliseconds: 400));
      await tester.pumpAndSettle();
      expect(adapter.requests.where((r) => r.uri.path == '/v1/reference/areas'), isNotEmpty);
      await _tap(tester, 'builder.area.hit.0');
      expect(find.byKey(const Key('builder.area.region.US-TX')), findsOneWidget);
      expect(find.text('Inside Texas, United States of America'), findsWidgets);
      expect(adapter.requests.where((r) => r.uri.path == '/v1/reference/areas/US-TX'), isNotEmpty);

      await _tap(tester, 'builder.next.trigger');
      await _tap(tester, 'builder.kind.earthquake');
      await _tap(tester, 'builder.condition.add');
      await _type(tester, 'builder.condition.0.path', 'mag');
      // The Trigger node follows the row as it is typed: unfinished until the value is a number.
      expect(find.text('A condition to finish'), findsOneWidget);
      await _type(tester, 'builder.condition.0.value', '5.5');
      expect(find.text('A condition to finish'), findsNothing);
      expect(find.text('mag is at least 5.5'), findsOneWidget);
      expect(find.byKey(const Key('builder.dryRun.saveFirst')), findsOneWidget);

      await _tap(tester, 'builder.next.delivery');
      // The only ntfy channel is chosen with its type.
      await _tap(tester, 'builder.type.ntfy');
      expect(tester.widget<Checkbox>(find.byKey(const Key('builder.channel.$_ntfy'))).value, isTrue);

      await _tap(tester, 'form.save');
      final created = adapter.requests.singleWhere((r) => r.method == 'POST' && r.uri.path == '/v1/triggers');
      final body = created.body! as Map<String, Object?>;
      expect(body['name'], 'Strong quakes');
      expect(body['sources'], <String>['usgs-earthquakes', 'nws-alerts']);
      expect(body['kinds'], <String>['earthquake']);
      expect(body['conditions'], <Object?>[
        <String, Object?>{'path': 'mag', 'op': '>=', 'value': 5.5},
      ]);
      expect(body['geofenceRef'], <String, Object?>{
        'admin1': <String>['US-TX'],
      });
      expect(body.containsKey('near'), isFalse);
      expect(body.containsKey('geofence'), isFalse);
      final ruleId = v.rules.values.singleWhere((r) => r['name'] == 'Strong quakes')['id']! as String;
      final routed = adapter.requests.singleWhere((r) => r.method == 'PUT' && r.uri.path == '/v1/channels/$_ntfy');
      expect((routed.body! as Map<String, Object?>)['ruleIds'], contains(ruleId));
      expect(v.channels[_ntfy]!['ruleIds'], contains(ruleId));
      // The secret-holding channel's secrets were not sent, so they are kept.
      expect((routed.body! as Map<String, Object?>).containsKey('secrets'), isFalse);

      // Saved and reopened from the backend, populated.
      expect(find.byKey(const Key('builder.openForm')), findsOneWidget);
      expect(find.text('Strong quakes'), findsWidgets);
      expect(find.byKey(const Key('builder.source.chip.usgs-earthquakes')), findsOneWidget);
      expect(find.byKey(const Key('builder.source.chip.nws-alerts')), findsOneWidget);
      expect(find.text('2 sources'), findsOneWidget);
      expect(find.text('Kinds: earthquake'), findsOneWidget);
      expect(find.text('mag is at least 5.5'), findsOneWidget);
      expect(find.text('Named place'), findsOneWidget);
      expect(find.text('Inside Texas, United States of America'), findsOneWidget);
      expect(find.text('1 channel'), findsOneWidget);
      expect(find.text('Mute or snooze'), findsOneWidget);
    },
  );

  testWidgets('an alert without a name is not sent, and says why', (tester) async {
    final adapter = await openAt(tester, alertBuilderPath, adapter: alertsBackend(PreviewAlerts()));
    await _tap(tester, 'form.save');
    expect(find.text('Name the alert.'), findsOneWidget);
    expect(adapter.requests.where((r) => r.method == 'POST' && r.uri.path == '/v1/triggers'), isEmpty);
  });

  testWidgets('a stored rule opens populated; unchoosing a channel takes the rule off it, and testTrigger dry-runs it', (
    tester,
  ) async {
    final v = PreviewAlerts();
    final adapter = await openAt(tester, alertBuilderRulePath(previewRuleQuakes), adapter: alertsBackend(v));
    expect(find.byKey(const Key('builder.source.chip.usgs-earthquakes')), findsOneWidget);
    expect(find.text('mag is at least 5'), findsOneWidget);
    expect(find.text('1 channel'), findsOneWidget);

    await _tap(tester, 'builder.node.trigger');
    expect(find.text('Test against stored data'), findsOneWidget);
    await _tap(tester, 'trigger.test.run');
    expect(adapter.requests.where((r) => r.uri.path == '/v1/triggers/$previewRuleQuakes/test'), hasLength(1));

    await _tap(tester, 'builder.node.delivery');
    expect(tester.widget<Checkbox>(find.byKey(const Key('builder.channel.$_ntfy'))).value, isTrue);
    // The webhook takes every rule's alerts: shown, and not something this rule can turn off.
    expect(tester.widget<Checkbox>(find.byKey(const Key('builder.channel.$previewChannelWebhook'))).onChanged, isNull);
    await _tap(tester, 'builder.channel.$_ntfy');
    await _tap(tester, 'form.save');

    final put = adapter.requests.singleWhere((r) => r.method == 'PUT' && r.uri.path == '/v1/triggers/$previewRuleQuakes');
    final body = put.body! as Map<String, Object?>;
    expect(body['cooldown'], '15m');
    expect(body['messageTemplate'], 'M {{payload.mag}} – {{title}}');
    expect(v.channels[_ntfy]!['ruleIds'], isNot(contains(previewRuleQuakes)));
    expect(v.channels[_ntfy]!['ruleIds'], contains(previewRuleVessels));
    expect(find.byKey(const Key('builder.routing')), findsOneWidget);
    expect(find.text('Saved; 1 channel updated'), findsOneWidget);
  });

  testWidgets('a channel made in the builder is scoped to the alert and routed when it is saved', (tester) async {
    final v = PreviewAlerts();
    final adapter = await openAt(tester, alertBuilderPath, adapter: alertsBackend(v));
    await _type(tester, 'builder.name', 'Fires near me');
    await _tap(tester, 'builder.node.delivery');
    await _tap(tester, 'builder.type.email');
    await _tap(tester, 'builder.type.email.new');
    expect(find.byKey(const Key('builder.newChannel.dialog')), findsOneWidget);
    await _type(tester, 'channel.name', 'Me by mail');
    await _type(tester, 'channel.config.to', 'me@example.org');
    await _type(tester, 'channel.config.smtpHost', 'smtp.example.org');
    await tapVisible(
      tester,
      find.descendant(of: find.byKey(const Key('builder.newChannel.dialog')), matching: find.byKey(const Key('form.save'))),
    );
    expect(find.byKey(const Key('builder.newChannel.dialog')), findsNothing);
    final made = adapter.requests.singleWhere((r) => r.method == 'POST' && r.uri.path == '/v1/channels');
    expect((made.body! as Map<String, Object?>)['ruleIds'], isEmpty);
    final channelId = v.channels.values.singleWhere((c) => c['name'] == 'Me by mail')['id']! as String;
    expect(tester.widget<Checkbox>(find.byKey(Key('builder.channel.$channelId'))).value, isTrue);

    await _tap(tester, 'form.save');
    final ruleId = v.rules.values.singleWhere((r) => r['name'] == 'Fires near me')['id'];
    expect(v.channels[channelId]!['ruleIds'], <Object?>[ruleId]);
  });

  testWidgets('a relevance check the backend cannot run says so, and the selection stays', (tester) async {
    final v = PreviewAlerts();
    final base = alertsBackend(v);
    final adapter = FakeAdapter((request) {
      if (request.uri.path == '/v1/triggers/analyze-sources') {
        return FakeResponse.problem(<String, Object?>{
          'title': 'Conflict',
          'status': 409,
          'code': 'LLM_NOT_CONFIGURED',
          'detail': 'No chat provider is configured.',
        }, status: 409);
      }
      return base.handler(request);
    });
    await openAt(tester, alertBuilderPath, adapter: adapter);
    await _tap(tester, 'builder.source.usgs-earthquakes');
    await _type(tester, 'builder.source.search', 'gdacs');
    await _tap(tester, 'builder.source.gdacs');
    await _tap(tester, 'builder.analyze');
    expect(find.byKey(const Key('builder.analyze.error')), findsOneWidget);
    expect(find.text('No AI model is set up for checks'), findsOneWidget);
    expect(find.text('2 sources'), findsOneWidget);
  });

  testWidgets('the Triggers tab and a rule\'s page open the builder', (tester) async {
    await openAt(tester, alertTriggersPath, adapter: alertsBackend(PreviewAlerts()));
    await _tap(tester, 'triggers.builder');
    expect(find.byKey(const Key('builder.node.dataset')), findsOneWidget);
    expect(find.text('Create Alert'), findsOneWidget);

    await openAt(tester, alertTriggerPath(previewRuleQuakes), adapter: alertsBackend(PreviewAlerts()));
    await _tap(tester, 'trigger.openBuilder');
    expect(find.byKey(const Key('builder.source.chip.usgs-earthquakes')), findsOneWidget);
    expect(find.text('Save Alert'), findsOneWidget);
  });
}
