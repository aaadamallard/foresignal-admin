import 'package:built_value/serializer.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/api.dart';

/// Replies shaped as the backend sends them (taken from a live backend on
/// 2026-10-23, then reconciled with the contract), decoded by the generated
/// client. Each one failed to decode before the contract and the backend
/// were brought into agreement.
T decode<T>(Object json) => standardSerializers.deserialize(json, specifiedType: FullType(T))! as T;

void main() {
  test('a channel type lists every event a channel can subscribe to', () {
    final type = decode<ChannelType>(<String, Object?>{
      'id': 'apprise',
      'name': 'Apprise',
      'configFields': <Object?>[],
      'secretFields': <Object?>[],
      'events': <String>[
        'alert', 'briefing', 'system', 'analyst.note', 'situation.activated', 'situation.escalated',
        'finding.significant', 'forecast.resolved', 'forecast.resolution_needed', 'hypothesis.band_changed',
        'indicator.observed', 'assumption.broken', 'assessment.published', 'social.divergence',
        'social.attention_gap', 'mention', 'share', 'report.received', 'package.received',
        'chronicle.proposed', 'chronicle.cap_warning', 'chronicle.gap', 'chronicle.access.requested',
        'saved-search.matches',
      ],
    });
    expect(type.events, hasLength(24));
  });

  test('a personal channel (events [personal]) decodes in the channel list', () {
    final channel = decode<Channel>(<String, Object?>{
      'id': '7b0c1c8e-2f7a-4f43-9d0e-0d4c6a3d2b11',
      'name': 'Mine',
      'type': 'ntfy',
      'config': <String, Object?>{},
      'secretFields': <Object?>[],
      'events': <String>['personal'],
      'enabled': true,
    });
    expect(channel.events.map(wireOf), <String>['personal']);
  });

  test('server settings with an unset public base URL (null) decode', () {
    final settings = decode<ServerSettings>(<String, Object?>{
      'publicBaseUrl': null,
      'timezone': 'UTC',
      'warnings': <Object?>[],
    });
    expect(settings.publicBaseUrl, isNull);
  });

  test('a record-page attribution carries requiredDisplay', () {
    final attribution = decode<Attribution>(<String, Object?>{
      'sourceId': 'ais-digitraffic',
      'licence': 'CC-BY-4.0',
      'text': 'Source: Fintraffic / digitraffic.fi, licence CC 4.0 BY',
      'termsUrl': 'https://creativecommons.org/licenses/by/4.0/',
      'requiredDisplay': true,
      'count': 408,
    });
    expect(attribution.requiredDisplay, isTrue);
  });

  test('an intel event member id is a string', () {
    final member = decode<IntelEventMember>(<String, Object?>{
      'id': '297',
      'role': 'supporting',
      'memberType': 'record',
      'sourceId': 'ioda-outages',
      'externalId': 'region:3090:bgp',
      'seq': 228682,
      'version': 1,
      'kind': 'outage',
      'observedAt': '2026-10-21T20:35:00Z',
      'joinReason': <String, Object?>{
        'clause': 'seed',
        'matchedKeys': <String>['ioda-outages:region:3090:bgp'],
      },
      'signalFamily': 'internet-measurement',
      'weight': 0.6,
      'addedAt': '2026-10-22T03:50:08.426241Z',
      'addedBy': 'recipe:infrastructure-disruption',
    });
    expect(member.id, '297');
  });

  test('an alert list item carries weather status beside its summary', () {
    final alert = decode<Alert>(<String, Object?>{
      'id': 166,
      'ruleId': 'dbc38d9f-9e9a-4807-8ad6-f1ebfa3af7e0',
      'seq': 14487829,
      'source': 'awc-metars',
      'externalId': 'KAUS',
      'firedAt': '2026-10-23T17:00:00Z',
      'message': 'zz-test KAUS wind 5 kt',
      'severity': 'warning',
      'state': 'firing',
      'rev': 1,
      'context': <String, Object?>{
        'weather': <String, Object?>{'status': 'ok', 'summary': 'Radar max 0 dBZ within 10 km'},
      },
    });
    expect(alert.context!.weather!.summary, 'Radar max 0 dBZ within 10 km');
  });
}
