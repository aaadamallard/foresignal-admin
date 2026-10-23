import 'package:built_value/serializer.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/api.dart';
import 'package:foresignal_admin/features/analysis/analysis_drafts.dart';

import '../../../tool/preview/preview_analysis.dart';

T model<T>(Object? json) => standardSerializers.deserialize(json, specifiedType: FullType(T))! as T;

void main() {
  group('wire names', () {
    test('an enum reads by its wire name, not its Dart name', () {
      final cycle = model<AnalysisCycle>(PreviewAnalysis().cycles.values.first);
      expect(cycle.roles.map(wireOf), contains('red-team'));
      expect(wireText('not_useful'), 'Not useful');
      expect(wireText('digest-only'), 'Digest only');
      expect(wireText('CO_ASSERTED'), 'Co asserted');
      expect(wireText('B'), 'B');
    });
  });

  group('a recipe', () {
    test('a new recipe needs a slug id and a seed', () {
      final d = RecipeDraft.create()..id = 'Bad Id';
      final errors = d.validate();
      expect(errors.keys, containsAll(<String>['id', 'seedKinds']));
      d
        ..id = 'cable-cut'
        ..seedKinds = 'cable.alarm';
      expect(d.validate(), isEmpty);
      expect(
        d.createJson()['definition'],
        containsPair('seed', <String, Object?>{
          'kinds': <String>['cable.alarm'],
        }),
      );
    });

    test('a bundled recipe sends only enabled and its overrides', () {
      final r = model<CorrelationRecipe>(PreviewAnalysis().recipes['vessel-dark-gap']);
      final d = RecipeDraft.edit(r, standardSerializers);
      expect(d.definitionEditable, isFalse);
      d.enabled = false;
      expect(d.updateJson().keys, unorderedEquals(<String>['enabled', 'params']));
      expect(d.updateJson()['params'], <String, Object?>{'gapMinutes': 90});
    });

    test('an operator recipe sends its definition, keeping what the form does not show', () {
      final r = model<CorrelationRecipe>(PreviewAnalysis().recipes['port-congestion']);
      final d = RecipeDraft.edit(r, standardSerializers);
      expect(d.definitionEditable, isTrue);
      expect(d.joins, hasLength(1));
      d.text['minMembers'] = '4';
      final def = d.updateJson()['definition']! as Map<String, Object?>;
      expect(def['minMembers'], 4);
      expect(def['severityMap'], <String, Object?>{'queue.critical': 'critical'});
      expect((def['joins']! as List).single, containsPair('sameRegion', 'admin1'));
    });

    test('a definition read back unchanged confirms, numbers compared by value', () {
      final r = model<CorrelationRecipe>(PreviewAnalysis().recipes['port-congestion']);
      final d = RecipeDraft.edit(r, standardSerializers);
      expect(d.confirm(r, standardSerializers), isNull);
      d.text['minMembers'] = '9';
      expect(d.confirm(r, standardSerializers), contains('definition'));
    });

    test('bad conditions, durations and weights are refused', () {
      final d = RecipeDraft.create()
        ..id = 'x'
        ..seedKinds = 'a'
        ..seedConditions = '[{"path": "speed"}]'
        ..text['dedupWindow'] = 'soon'
        ..joins.add(JoinDraft()..weight = '2');
      expect(
        d.validate().keys,
        containsAll(<String>['seedConditions', 'dedupWindow', 'join.0.weight']),
      );
    });
  });

  group('a cycle', () {
    test('a new cycle has a daily schedule and the analyst', () {
      final d = CycleDraft.create()..text['name'] = 'Brief';
      expect(d.validate(), isEmpty);
      final json = d.toJson();
      expect(json['schedule'], <String, Object?>{'cron': '0 7 * * *', 'timezone': 'UTC'});
      expect(json['roles'], <String>['analyst']);
    });

    test('a cadence-matching hypothesis scope round-trips', () {
      final c = model<AnalysisCycle>(PreviewAnalysis().cycles.values.first);
      final d = CycleDraft.edit(c, standardSerializers);
      expect(d.cadenceMatchSets, isTrue);
      expect((d.toJson()['scope']! as Map)['hypothesisSetIds'], 'cadence-match');
      expect(d.toJson()['roles'], <String>['analyst', 'red-team', 'forecaster']);
      expect(d.confirm(c), isNull);
    });

    test('a bad cron and samples out of range are refused', () {
      final d = CycleDraft.create()
        ..text['name'] = 'x'
        ..text['cron'] = '0 7 *'
        ..text['samples'] = '9';
      expect(d.validate().keys, containsAll(<String>['cron', 'samples']));
    });
  });

  group('the corroboration policy', () {
    test('an emptied field is left out, so it returns to its default', () {
      final stored = model<IntelCorroboration>(PreviewAnalysis().corroboration);
      final d = CorroborationDraft(stored, standardSerializers);
      d.text['eventQuality.strongFamilies'] = '';
      d.text['situationActivation.minGroups'] = '3';
      expect(d.validate(), isEmpty);
      final json = d.toJson();
      expect((json['eventQuality']! as Map).containsKey('strongFamilies'), isFalse);
      expect((json['situationActivation']! as Map)['minGroups'], 3);
    });

    test('bad numbers and durations are refused', () {
      final d = CorroborationDraft(
        model<IntelCorroboration>(PreviewAnalysis().corroboration),
        standardSerializers,
      );
      d.text['eventQuality.strongFamilies'] = '0';
      d.text['autoCorroborate.window'] = 'a day';
      expect(
        d.validate().keys,
        containsAll(<String>['eventQuality.strongFamilies', 'autoCorroborate.window']),
      );
    });
  });
}
