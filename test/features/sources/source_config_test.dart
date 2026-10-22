import 'package:built_value/serializer.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/api.dart';
import 'package:foresignal_admin/features/sources/source_config.dart';

import '../../../tool/preview/preview_sources.dart';

SourceDetail detailOf(PreviewSource source) =>
    standardSerializers.deserialize(source.detail, specifiedType: const FullType(SourceDetail))!
        as SourceDetail;

PreviewSource sourceNamed(String id) => buildPreviewSources().firstWhere((s) => s.id == id);

SourceConfigDraft draftOf(PreviewSource source) =>
    SourceConfigDraft.fromDetail(detailOf(source), standardSerializers);

Map<String, Object?> wire(SourceSettingsUpdate update) =>
    (standardSerializers.serialize(update, specifiedType: const FullType(SourceSettingsUpdate))!
            as Map)
        .cast<String, Object?>();

void main() {
  test('an untouched draft is valid and sends nothing', () {
    final draft = draftOf(sourceNamed('usgs-earthquakes'));
    expect(draft.validate(), isEmpty);
    expect(draft.toUpdate(), isNull);
  });

  test('parameters start at the descriptor default when unset', () {
    final draft = draftOf(sourceNamed('usgs-earthquakes'));
    final feed = draft.params.firstWhere((p) => p.spec.name == 'feed');
    final magnitude = draft.params.firstWhere((p) => p.spec.name == 'minMagnitude');
    expect(feed.editor, ParamEditor.choice);
    expect(feed.text, 'all_hour');
    expect(magnitude.editor, ParamEditor.number);
    expect(magnitude.text, '2.5');
  });

  test('only the changed fields go into the update', () {
    final draft = draftOf(sourceNamed('usgs-earthquakes'))..interval = '30m';
    expect(draft.validate(), isEmpty);
    expect(wire(draft.toUpdate()!), <String, Object?>{'interval': '30m'});
  });

  test('the same duration written differently is not a change', () {
    final draft = draftOf(sourceNamed('usgs-earthquakes'))..interval = 'PT5M';
    expect(draft.toUpdate(), isNull);
  });

  test('the interval may not go below the descriptor minimum', () {
    final draft = draftOf(sourceNamed('usgs-earthquakes'))..interval = '30s';
    expect(draft.validate()['interval'], contains('1m'));
    draft.interval = 'soon';
    expect(draft.validate()['interval'], isNotNull);
  });

  test('budgets must be whole numbers, 0 or more', () {
    final draft = draftOf(sourceNamed('gdelt'))
      ..perDay = '-1'
      ..perMinute = 'x';
    final errors = draft.validate();
    expect(errors.keys, containsAll(<String>['budget.perDay', 'budget.perMinute']));
  });

  test('a budget change sends the whole budget', () {
    final draft = draftOf(sourceNamed('gdelt'))..perDay = '25000';
    expect(wire(draft.toUpdate()!), <String, Object?>{
      'budget': <String, Object?>{'perMinute': 10, 'perDay': 25000},
    });
  });

  test('a parameter change sends every parameter, defaults included', () {
    final draft = draftOf(sourceNamed('usgs-earthquakes'));
    draft.params.firstWhere((p) => p.spec.name == 'minMagnitude').text = '4';
    expect(draft.validate(), isEmpty);
    expect(wire(draft.toUpdate()!)['params'], <String, Object?>{
      'minMagnitude': 4,
      'feed': 'all_hour',
    });
  });

  test('a parameter outside its allowed values is refused', () {
    final draft = draftOf(sourceNamed('usgs-earthquakes'));
    draft.params.firstWhere((p) => p.spec.name == 'feed').text = 'all_week';
    expect(draft.validate()['params.feed'], contains('Choose one of'));
  });

  test('a stored retention cannot be emptied', () {
    final source = sourceNamed('gdelt')..settings['retention'] = '30d';
    final draft = draftOf(source)..retention = '';
    expect(draft.validate()['retention'], cannotClearMessage);
  });

  test('TRACK sources edit the downsample interval, not retention', () {
    final draft = draftOf(sourceNamed('opensky-states'));
    expect(draft.standardHistory, isFalse);
    draft.downsampleInterval = '1m';
    expect(wire(draft.toUpdate()!), <String, Object?>{'downsampleInterval': '1m'});
  });

  test('an ingest-policy override is validated and sent as its schema', () {
    final draft = draftOf(sourceNamed('opensky-states'))
      ..overridePolicy = true
      ..policyMode = IngestMode.sampled
      ..policyKeyframe = '240s'
      ..policyMinInterval = '1s';
    expect(draft.validate()['ingestPolicy.minInterval'], 'At least 2 seconds.');
    draft
      ..policyMinInterval = '300s'
      ..policyMinDeviation = '1000';
    expect(draft.validate()['ingestPolicy.minInterval'], contains('keyframe'));
    draft.policyMinInterval = '60s';
    expect(draft.validate(), isEmpty);
    expect(wire(draft.toUpdate()!)['ingestPolicy'], <String, Object?>{
      'mode': 'SAMPLED',
      'minInterval': '60s',
      'keyframe': '240s',
      'minDeviationMeters': 1000,
      'thresholds': false,
    });
  });

  test('confirm passes when the re-read holds the change, durations normalized', () {
    final source = sourceNamed('usgs-earthquakes');
    final draft = draftOf(source)..interval = '30m';
    final update = draft.toUpdate()!;
    source.interval = 'PT30M';
    expect(draft.confirm(update, detailOf(source)), isNull);
  });

  test('confirm names the field the re-read does not hold', () {
    final source = sourceNamed('usgs-earthquakes');
    final draft = draftOf(source)..interval = '30m';
    final update = draft.toUpdate()!;
    expect(draft.confirm(update, detailOf(source)), contains('interval'));
  });

  test('a descriptor-private source cannot be made public', () {
    final detail = detailOf(sourceNamed('gdelt'));
    final rebuilt = detail.rebuild((b) => b.descriptor.private = true);
    final draft = SourceConfigDraft.fromDetail(rebuilt, standardSerializers)..private = false;
    expect(draft.privateByDescriptor, isTrue);
    expect(draft.toUpdate(), isNull);
  });
}
