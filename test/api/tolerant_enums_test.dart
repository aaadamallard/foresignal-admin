import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/api.dart';
import 'package:foresignal_admin/features/vetting/vetting_drafts.dart' show fromJsonMap, toJsonMap;

import '../../tool/preview/preview_analysis.dart';

/// The preview's intelligence event with values the generated client has
/// never seen: a status and an origin the contract does not list, and the
/// `upgraded` log action.
Map<String, Object?> _eventWithUnknowns() {
  final event = Map<String, Object?>.of(PreviewAnalysis().events.values.first);
  event['status'] = 'quarantined';
  event['origin'] = 'satellite-feed';
  event['log'] = <Object?>[
    ...(event['log']! as List<Object?>),
    <String, Object?>{'at': '2026-10-24T09:00:00Z', 'actor': 'recipe:port-activity', 'action': 'upgraded'},
  ];
  return event;
}

void main() {
  test('an enum value the client has not seen still loads the object, and keeps the value as text', () {
    final event = fromJsonMap<IntelligenceEvent>(tolerantSerializers, _eventWithUnknowns());

    expect(isUnknownEnum(event.status), isTrue);
    expect(isUnknownEnum(event.origin), isTrue);
    expect(isUnknownEnum(event.type), isFalse);
    expect(wireOf(event.status, event, 'status'), 'quarantined');
    expect(wireLabel(event.status, event, 'status'), 'quarantined');
    expect(wireLabel(event.origin, event, 'origin'), 'satellite-feed');
    expect(event.log!.last.action, 'upgraded');
  });

  test('the unknown value survives a round trip back to JSON', () {
    final event = fromJsonMap<IntelligenceEvent>(tolerantSerializers, _eventWithUnknowns());
    final json = toJsonMap(tolerantSerializers, event);

    expect(json['status'], 'quarantined');
    expect(json['origin'], 'satellite-feed');
    expect((json['log']! as List<Object?>).cast<Map<Object?, Object?>>().last['action'], 'upgraded');
  });

  test('without the plugin the value is lost, which is what the plugin is for', () {
    // The generated fallback alone keeps the object loading but forgets
    // what the server sent.
    final event = fromJsonMap<IntelligenceEvent>(standardSerializers, _eventWithUnknowns());

    expect(isUnknownEnum(event.status), isTrue);
    expect(wireLabel(event.status, event, 'status'), 'Unknown value');
    expect(toJsonMap(standardSerializers, event)['status'], 'unknown_default_open_api');
  });

  test('known values are untouched, and a model with none keeps no raw fields', () {
    final json = PreviewAnalysis().events.values.first;
    final event = fromJsonMap<IntelligenceEvent>(tolerantSerializers, json);

    expect(UnknownEnumPlugin.rawUnknownFields(event), isEmpty);
    expect(wireOf(event.status, event, 'status'), json['status']);
    expect(toJsonMap(tolerantSerializers, event)['status'], json['status']);
  });

  test('an unknown value inside a list keeps the whole list as sent', () {
    final json = <String, Object?>{
      'days': <Object?>['MON', 'HOL'],
      'start': '08:00',
      'end': '17:00',
    };
    final window = fromJsonMap<ActiveWindowWindowsInner>(tolerantSerializers, json);

    expect(window.days.map(isUnknownEnum), <bool>[false, true]);
    expect(rawUnknownWire(window, 'days'), 'MON, HOL');
    expect(toJsonMap(tolerantSerializers, window)['days'], <Object?>['MON', 'HOL']);
  });

  test('wireShown gives the wire name unchanged, and the sent value for an unknown one', () {
    final event = fromJsonMap<IntelligenceEvent>(tolerantSerializers, _eventWithUnknowns());

    expect(wireShown(event.type, event, 'type'), PreviewAnalysis().events.values.first['type']);
    expect(wireShown(event.status, event, 'status'), 'quarantined');
    expect(wireShown(event.status), 'Unknown value');
    expect(wireShownOrNull(null), isNull);
    expect(wireOfOrNull(event.status, event, 'status'), 'quarantined');
    // The Dart name is not the wire name: openaiCompatible is `openai-compatible`.
    expect(wireShown(LlmProviderTypeEnum.openaiCompatible), 'openai-compatible');
  });

  test('wireListShown shows a list with an unknown value as the server sent it', () {
    final window = fromJsonMap<ActiveWindowWindowsInner>(tolerantSerializers, <String, Object?>{
      'days': <Object?>['MON', 'HOL'],
      'start': '08:00',
      'end': '17:00',
    });
    final known = fromJsonMap<ActiveWindowWindowsInner>(tolerantSerializers, <String, Object?>{
      'days': <Object?>['MON', 'TUE'],
      'start': '08:00',
      'end': '17:00',
    });

    expect(wireListShown(window.days, window, 'days'), 'MON, HOL');
    expect(wireListShown(known.days, known, 'days'), 'MON, TUE');
  });

  test('a failed read does not leave the next one confused', () {
    expect(
      () => fromJsonMap<IntelligenceEvent>(tolerantSerializers, <String, Object?>{'id': 1}),
      throwsA(anything),
    );
    final event = fromJsonMap<IntelligenceEvent>(tolerantSerializers, _eventWithUnknowns());
    expect(wireOf(event.status, event, 'status'), 'quarantined');
  });
}
