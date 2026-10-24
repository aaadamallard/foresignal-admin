import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/form_factor.dart';
import 'package:foresignal_admin/core/routes.dart';

import '../../../tool/preview/preview_alerts.dart';
import '../../support/actions.dart';
import '../../support/fake_adapter.dart';
import '../sources/sources_screens_test.dart' show openAt, sourcesBackend;

/// The id the live stream's new alert carries.
const int _liveId = 5001;

/// A fake backend answering the alerting operations from [v], then the
/// source operations. The first `/v1/alerts/stream` request gets one new
/// alert and ends; later ones are refused with 410, so the client's
/// reconnect stops instead of leaving a timer behind.
FakeAdapter alertsBackend(PreviewAlerts v) {
  final fallback = sourcesBackend();
  var streams = 0;
  return FakeAdapter((request) {
    if (request.uri.path == '/v1/alerts/stream') {
      if (streams++ > 0) {
        return FakeResponse.problem(
          <String, Object?>{'title': 'Gone', 'status': 410, 'code': 'GONE'},
          status: 410,
        );
      }
      final alert = <String, Object?>{
        ...v.alerts.values.first,
        'id': _liveId,
        'rev': 1,
        'state': 'firing',
        'message': 'M 6.4 – Banda Sea',
      };
      return FakeResponse.eventStream(<String>[
        ': heartbeat\n\n',
        'event: alert\nid: 1\ndata: ${jsonEncode(<String, Object?>{'alert': alert})}\n\n',
      ]);
    }
    final reply = answerAlerts(
      request.method,
      request.uri.path,
      request.uri.queryParametersAll,
      request.body,
      v,
    );
    if (reply == null) {
      return fallback.handler(request);
    }
    final body = reply.body;
    if (body == null) {
      return FakeResponse.empty(status: reply.status);
    }
    if (body is PreviewText) {
      return FakeResponse.text(body.text, status: reply.status, contentType: body.contentType);
    }
    return reply.status >= 400
        ? FakeResponse.problem(body as Map<String, Object?>, status: reply.status)
        : FakeResponse.json(body, status: reply.status);
  });
}

/// Lets the stream's reconnect delay pass, so the refused reconnect ends it.
Future<void> _drainStream(WidgetTester tester) async {
  await tester.pump(const Duration(seconds: 31));
  await tester.pumpAndSettle();
}

Future<void> _tapKey(WidgetTester tester, String key) async {
  await tapVisible(tester, find.byKey(Key(key)).first);
}

Future<void> _tapText(WidgetTester tester, String label) async {
  await tester.ensureVisible(find.text(label).last);
  await tester.tap(find.text(label).last);
  await tester.pumpAndSettle();
}

Map<String, Object?> _bodyOf(RecordedRequest r) => (r.body! as Map).cast<String, Object?>();

void main() {
  testWidgets('a failed inbox load shows the problem and a Retry, not an empty inbox', (tester) async {
    final good = alertsBackend(PreviewAlerts());
    var failing = true;
    final adapter = FakeAdapter((request) {
      if (failing && request.method == 'GET' && request.uri.path == '/v1/alerts') {
        throw DioException(requestOptions: request.options, type: DioExceptionType.receiveTimeout);
      }
      return good.handler(request);
    });
    await openAt(tester, alertsPath, adapter: adapter);
    expect(find.byKey(const Key('inbox.error')), findsOneWidget);
    expect(find.text('The backend did not answer in time'), findsOneWidget);
    expect(find.textContaining('GET /v1/alerts got no answer'), findsOneWidget);
    expect(find.text('Backend unreachable'), findsNothing);
    expect(find.text('No alerts match.'), findsNothing);
    final before = adapter.requests.where((r) => r.uri.path == '/v1/alerts').length;
    failing = false;
    await tapVisible(tester, find.widgetWithText(TextButton, 'Retry'));
    expect(adapter.requests.where((r) => r.uri.path == '/v1/alerts').length, before + 1);
    expect(find.byKey(const Key('inbox.error')), findsNothing);
    await _drainStream(tester);
  });

  group('a failed trigger list is reported on the screen, with a Retry', () {
    /// The alerts backend, with `GET /v1/triggers` answered by [failure]
    /// until Retry is pressed.
    Future<FakeAdapter> openFailing(WidgetTester tester, FutureOr<FakeResponse> Function(RecordedRequest) failure) async {
      final good = alertsBackend(PreviewAlerts());
      var failing = true;
      final adapter = FakeAdapter((request) {
        if (failing && request.method == 'GET' && request.uri.path == '/v1/triggers') {
          failing = false;
          return failure(request);
        }
        return good.handler(request);
      });
      return openAt(tester, alertTriggersPath, adapter: adapter);
    }

    Future<void> retries(WidgetTester tester, FakeAdapter adapter) async {
      final before = adapter.requests.where((r) => r.uri.path == '/v1/triggers').length;
      await tapVisible(tester, find.widgetWithText(TextButton, 'Retry'));
      expect(adapter.requests.where((r) => r.uri.path == '/v1/triggers').length, before + 1);
      expect(find.widgetWithText(TextButton, 'Retry'), findsNothing);
    }

    testWidgets('a 503 shows the problem and its status', (tester) async {
      final adapter = await openFailing(
        tester,
        (_) => FakeResponse.problem(<String, Object?>{
          'title': 'Service Unavailable',
          'status': 503,
          'code': 'QUERY_TIMEOUT',
          'detail': 'The query ran longer than 10000 ms; narrow the filters or retry.',
        }, status: 503),
      );
      expect(find.text('Backend unreachable'), findsNothing);
      expect(find.text('The backend failed'), findsOneWidget);
      expect(find.text('HTTP 503 · QUERY_TIMEOUT'), findsOneWidget);
      await retries(tester, adapter);
    });

    testWidgets('a reply of the wrong shape names what came back', (tester) async {
      final adapter = await openFailing(tester, (_) => FakeResponse.json(<String, Object?>{'items': <Object?>[]}));
      expect(find.text('Backend unreachable'), findsNothing);
      expect(find.text('Unexpected reply from the backend'), findsOneWidget);
      expect(
        find.text('GET /v1/triggers answered HTTP 200 with a JSON object, not the expected JSON array.'),
        findsOneWidget,
      );
      await retries(tester, adapter);
    });

    testWidgets('a timeout says the backend did not answer in time', (tester) async {
      final adapter = await openFailing(
        tester,
        (request) => throw DioException(requestOptions: request.options, type: DioExceptionType.receiveTimeout),
      );
      expect(find.text('Backend unreachable'), findsNothing);
      expect(find.text('The backend did not answer in time'), findsOneWidget);
      await retries(tester, adapter);
    });

    testWidgets('only a connection that cannot be made is "Backend unreachable"', (tester) async {
      final adapter = await openFailing(
        tester,
        (request) => throw DioException.connectionError(requestOptions: request.options, reason: 'Connection refused'),
      );
      expect(find.text('Backend unreachable'), findsOneWidget);
      await retries(tester, adapter);
    });
  });

  testWidgets('the inbox lists open alerts and a live alert joins at the top', (tester) async {
    await openAt(tester, alertsPath, adapter: alertsBackend(PreviewAlerts()));
    expect(find.byKey(const Key('inbox.table')), findsOneWidget);
    expect(find.text('M 6.1 – 42 km SW of Ovalle, Chile'), findsOneWidget);
    expect(find.text('M 5.0 – South Sandwich Islands region'), findsNothing);
    expect(find.text('M 6.4 – Banda Sea'), findsOneWidget);
    expect(find.text('New'), findsOneWidget);
    expect(find.text('Live'), findsOneWidget);
    expect(
      tester.getTopLeft(find.text('M 6.4 – Banda Sea')).dy,
      lessThan(tester.getTopLeft(find.text('M 6.1 – 42 km SW of Ovalle, Chile')).dy),
    );
    await _drainStream(tester);
  });

  testWidgets('acknowledging from the inbox posts and reads the alert back', (tester) async {
    final v = PreviewAlerts();
    final firing = v.alerts.values.firstWhere((a) => a['state'] == 'firing')['id']! as int;
    final adapter = await openAt(tester, alertsPath, adapter: alertsBackend(v));
    await _tapKey(tester, 'inbox.ack.$firing');
    expect(adapter.requests.any((r) => r.method == 'POST' && r.uri.path == '/v1/alerts/$firing/ack'), isTrue);
    expect(v.alerts[firing]!['state'], 'acknowledged');
    await _drainStream(tester);
  });

  testWidgets('the alert page acknowledges with feedback and a note', (tester) async {
    final v = PreviewAlerts();
    final firing = v.alerts.values.firstWhere((a) => a['state'] == 'firing')['id']! as int;
    final adapter = await openAt(tester, alertPath(firing), adapter: alertsBackend(v));
    expect(find.byKey(const Key('alert.summary')), findsOneWidget);
    await _tapKey(tester, 'alert.feedback.useful');
    await tester.enterText(find.byKey(const Key('alert.note')), 'Paged the duty officer');
    await _tapKey(tester, 'alert.ack');
    final post = adapter.requests.lastWhere((r) => r.method == 'POST' && r.uri.path.endsWith('/ack'));
    expect(_bodyOf(post), <String, Object?>{'feedback': 'useful', 'note': 'Paged the duty officer'});
    expect(find.text('Acknowledged'), findsWidgets);
  });

  testWidgets('the triggers table reads windowed rules', (tester) async {
    await openAt(tester, alertTriggersPath, adapter: alertsBackend(PreviewAlerts()));
    expect(find.byKey(const Key('triggers.table')), findsOneWidget);
    expect(find.text('GNSS jamming burst'), findsOneWidget);
    expect(find.text('Port of Odesa silent'), findsOneWidget);
    expect(find.text('Muted'), findsOneWidget);
  });

  testWidgets('saving a windowed rule sends its window and other members whole', (tester) async {
    final adapter = await openAt(tester, alertTriggerPath(previewRuleJamming), adapter: alertsBackend(PreviewAlerts()));
    await tester.enterText(find.byKey(const Key('trigger.name')), 'GNSS jamming (1 h)');
    await _tapKey(tester, 'form.save');
    final put = adapter.requests.lastWhere((r) => r.method == 'PUT');
    expect(put.uri.path, '/v1/triggers/$previewRuleJamming');
    final body = _bodyOf(put);
    expect(body['name'], 'GNSS jamming (1 h)');
    expect((body['window']! as Map)['window'], '1h');
    expect(body['weatherContext'], 'auto');
    expect(find.textContaining('confirmed'), findsWidgets);
  });

  testWidgets('muting a rule posts the duration typed', (tester) async {
    final adapter = await openAt(tester, alertTriggerPath(previewRuleQuakes), adapter: alertsBackend(PreviewAlerts()));
    await tester.enterText(find.byKey(const Key('trigger.pause.for')), '2h');
    await _tapKey(tester, 'trigger.mute');
    final post = adapter.requests.lastWhere((r) => r.method == 'POST' && r.uri.path.endsWith('/mute'));
    expect(_bodyOf(post), <String, Object?>{'for': '2h'});
    expect(find.byKey(const Key('trigger.unmute')), findsOneWidget);
  });

  testWidgets('a channel edit keeps its type config in the body', (tester) async {
    final adapter = await openAt(tester, alertChannelPath(previewChannelWebhook), adapter: alertsBackend(PreviewAlerts()));
    expect(find.text('https://ops.example.org/hooks/foresignal'), findsOneWidget);
    await tester.enterText(find.byKey(const Key('channel.config.url')), 'https://ops.example.org/hooks/v2');
    await _tapKey(tester, 'form.save');
    final put = adapter.requests.lastWhere((r) => r.method == 'PUT');
    final body = _bodyOf(put);
    expect((body['config']! as Map)['url'], 'https://ops.example.org/hooks/v2');
    expect(body.containsKey('secrets'), isFalse);
  });

  testWidgets('a test send from the channels table keeps the row narrow', (tester) async {
    await openAt(tester, alertChannelsPath, adapter: alertsBackend(PreviewAlerts()));
    await _tapKey(tester, 'channels.test.$previewChannelWebhook');
    final result = find.byKey(const Key('channels.testResult.$previewChannelWebhook'));
    expect(result, findsOneWidget);
    expect((tester.widget(result) as Tooltip).message, 'Sent in 184 ms');
    expect(find.text('Sent in 184 ms'), findsNothing);
  });

  testWidgets('a test send from the channel page shows the result as text', (tester) async {
    await openAt(tester, alertChannelPath(previewChannelWebhook), adapter: alertsBackend(PreviewAlerts()));
    await _tapKey(tester, 'channels.test.$previewChannelWebhook');
    expect(find.text('Sent in 184 ms'), findsOneWidget);
  });

  testWidgets('deleting a policy rules still use explains why it stays', (tester) async {
    await openAt(tester, alertPolicyPath(previewPolicyDuty), adapter: alertsBackend(PreviewAlerts()));
    await _tapKey(tester, 'policy.delete');
    await _tapKey(tester, 'policy.delete.confirm');
    expect(find.byKey(const Key('policy.inUse')), findsOneWidget);
  });

  testWidgets('adding watchlist items sends one item per line', (tester) async {
    final adapter = await openAt(
      tester,
      alertWatchlistPath(previewWatchlistVessels),
      adapter: alertsBackend(PreviewAlerts()),
    );
    await tester.enterText(find.byKey(const Key('watchlist.add.lines')), '477123400, NEW HOPE\n477123401');
    await _tapText(tester, 'Add Items');
    final post = adapter.requests.lastWhere((r) => r.method == 'POST' && r.uri.path.endsWith('/items'));
    expect(_bodyOf(post)['items'], <Object?>[
      <String, Object?>{'value': '477123400', 'label': 'NEW HOPE'},
      <String, Object?>{'value': '477123401'},
    ]);
    expect(find.byKey(const Key('watchlist.add.result')), findsOneWidget);
    expect(find.text('NEW HOPE'), findsOneWidget);
  });

  testWidgets('a CSV import is checked as a dry run of JSON items', (tester) async {
    final adapter = await openAt(
      tester,
      alertWatchlistPath(previewWatchlistVessels),
      adapter: alertsBackend(PreviewAlerts()),
    );
    await tester.enterText(
      find.byKey(const Key('watchlist.import.text')),
      'value,label,notes,tags\n477123400,NEW HOPE,,tanker;watch',
    );
    await _tapKey(tester, 'watchlist.import.run');
    final post = adapter.requests.lastWhere((r) => r.method == 'POST' && r.uri.path.endsWith('/import'));
    expect(post.uri.queryParameters['dryRun'], 'true');
    expect(post.body, <Object?>[
      <String, Object?>{
        'value': '477123400',
        'label': 'NEW HOPE',
        'tags': <Object?>['tanker', 'watch'],
      },
    ]);
    expect(find.byKey(const Key('watchlist.import.result')), findsOneWidget);
  });

  testWidgets('the mobile companion shows the inbox alone, as cards', (tester) async {
    await openAt(tester, alertsPath, adapter: alertsBackend(PreviewAlerts()), formFactor: FormFactor.mobile);
    expect(find.byKey(const Key('inbox.cards')), findsOneWidget);
    expect(find.byKey(const Key('alerts.tab.triggers')), findsNothing);
    await _drainStream(tester);
  });
}
