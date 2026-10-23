import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/features/forecasting/forecasting_drafts.dart';

void main() {
  group('parseJsonObject', () {
    test('reads an object, and empty text as null', () {
      expect(parseJsonObject(' {"a": 1} '), <String, Object?>{'a': 1});
      expect(parseJsonObject('   '), isNull);
    });

    test('refuses an array or a scalar', () {
      expect(() => parseJsonObject('[1]'), throwsFormatException);
      expect(() => parseJsonObject('3'), throwsFormatException);
      expect(jsonObjectProblem('{'), startsWith('Not valid JSON'));
      expect(jsonObjectProblem('', required: true), 'Required.');
    });

    test('a list must hold objects', () {
      expect(parseJsonObjectList('[{"a": 1}]'), <Map<String, Object?>>[
        <String, Object?>{'a': 1},
      ]);
      expect(() => parseJsonObjectList('[1]'), throwsFormatException);
    });
  });

  group('ForecasterDraft', () {
    test('accepts the conventional external id with a slash', () {
      final d = ForecasterDraft(id: 'edp:timesfm/daily', name: 'TimesFM');
      expect(d.validate(register: true), isEmpty);
      expect(d.registrationJson(), <String, Object?>{'id': 'edp:timesfm/daily', 'name': 'TimesFM'});
    });

    test('refuses an upper-case id and bad JSON', () {
      final d = ForecasterDraft(id: 'EDP:x')..configText = '{';
      final errors = d.validate(register: true);
      expect(errors.keys, containsAll(<String>['id', 'config']));
    });

    test('an update always sends active and the whole configuration', () {
      final d = ForecasterDraft(id: 'base-rate', active: false, config: <String, Object?>{'k': 2});
      expect(d.updateJson(), <String, Object?>{
        'active': false,
        'config': <String, Object?>{'k': 2},
      });
      d.configText = '';
      expect(d.updateJson()['config'], <String, Object?>{});
    });

    test('external configuration pins the provider stream', () {
      expect(edpForecasterParts('edp:timesfm/daily'), (sourceId: 'timesfm', streamId: 'daily'));
      expect(edpForecasterParts('base-rate'), isNull);
      expect(externalForecasterConfig('a', 'b'), <String, Object?>{'sourceId': 'a', 'streamId': 'b'});
    });
  });

  group('QuestionDraft', () {
    QuestionDraft filled() => QuestionDraft()
      ..title = 'Will it happen?'
      ..category = 'maritime'
      ..criteria = 'Yes if it happens.'
      ..closesAt = '2026-12-01'
      ..resolveBy = '2026-12-15';

    test('a new binary question with a manual resolver', () {
      final d = filled();
      expect(d.validate(), isEmpty);
      expect(d.inputJson(), <String, Object?>{
        'title': 'Will it happen?',
        'type': 'binary',
        'resolutionCriteria': 'Yes if it happens.',
        'resolver': <String, Object?>{'type': 'manual'},
        'closesAt': '2026-12-01T00:00:00.000Z',
        'resolveBy': '2026-12-15T00:00:00.000Z',
        'category': 'maritime',
      });
    });

    test('resolve by may not fall before the close', () {
      final d = filled()..resolveBy = '2026-11-01';
      expect(d.validate().keys, contains('resolveBy'));
    });

    test('multiple-choice questions need two labels', () {
      final d = filled()
        ..type = 'multiple'
        ..labels = 'one';
      expect(d.validate().keys, contains('labels'));
      d.labels = 'one, two';
      expect(d.validate(), isEmpty);
      expect(d.inputJson()['outcomes'], <String, Object?>{
        'labels': <String>['one', 'two'],
      });
    });

    test('numeric bounds go in outcomes', () {
      final d = filled()
        ..type = 'numeric'
        ..unit = 'transits/day'
        ..lower = '0'
        ..upper = 'x';
      expect(d.validate().keys, contains('upper'));
      d.upper = '200';
      expect(d.inputJson()['outcomes'], <String, Object?>{'unit': 'transits/day', 'lower': 0, 'upper': 200});
    });

    test('the resolver members join its type', () {
      final d = filled()
        ..resolverType = 'alert-fired'
        ..resolverText = '{"ruleId": "r1"}';
      expect(d.inputJson()['resolver'], <String, Object?>{'type': 'alert-fired', 'ruleId': 'r1'});
    });

    test('every resolver type has a template', () {
      for (final t in resolverTypes) {
        expect(resolverTemplates.containsKey(t), isTrue, reason: t);
      }
    });

    Map<String, Object?> stored() => <String, Object?>{
      'id': '01JBK3Q8Z5N7W2X4Y6R9T1FQ01',
      'title': 'Old title',
      'type': 'binary',
      'category': 'maritime',
      'tags': <String>['ports'],
      'resolutionCriteria': 'Criteria.',
      'resolver': <String, Object?>{'type': 'manual', 'version': '2'},
      'opensAt': '2026-10-01T00:00:00.000Z',
      'closesAt': '2026-11-30T00:00:00.000Z',
      'resolveBy': '2026-12-07T00:00:00.000Z',
    };

    test('an unchanged stored question patches nothing', () {
      final d = QuestionDraft.of(stored());
      expect(d.editing, isTrue);
      expect(d.validate(), isEmpty);
      expect(d.patchJson(), isEmpty);
    });

    test('a patch carries only what changed, without the resolver version', () {
      final d = QuestionDraft.of(stored())
        ..tags = 'ports, grain'
        ..closesAt = '2026-12-01';
      expect(d.patchJson(), <String, Object?>{
        'tags': <String>['ports', 'grain'],
        'closesAt': '2026-12-01T00:00:00.000Z',
      });
      d.resolverText = '{"note": "x"}';
      expect(d.patchJson()['resolver'], <String, Object?>{'type': 'manual', 'note': 'x'});
    });
  });

  group('ResolutionDraft', () {
    test('a binary resolution needs an outcome and evidence', () {
      final d = ResolutionDraft(type: 'binary');
      expect(d.validate().keys, containsAll(<String>['outcome', 'evidence']));
      d
        ..outcome = 'no'
        ..evidence = 'record:ais/a/1, alert:01X';
      expect(d.validate(), isEmpty);
      expect(d.toJson(), <String, Object?>{
        'outcome': 'no',
        'evidence': <String>['record:ais/a/1', 'alert:01X'],
      });
    });

    test('a numeric resolution sends a value', () {
      final d = ResolutionDraft(type: 'numeric')
        ..value = '114.5'
        ..evidence = 'series:x/y'
        ..note = 'Mean of the month.';
      expect(d.choices, isEmpty);
      expect(d.toJson(), <String, Object?>{
        'value': 114.5,
        'evidence': <String>['series:x/y'],
        'note': 'Mean of the month.',
      });
    });

    test('evidence must look like refs', () {
      final d = ResolutionDraft(type: 'multiple', labels: const <String>['a', 'b'])
        ..outcome = 'a'
        ..evidence = 'not a ref';
      expect(d.validate().keys, contains('evidence'));
    });
  });

  group('BindingDraft', () {
    test('reads a stored binding back into a draft', () {
      final d = BindingDraft.of(<String, Object?>{
        'streamId': 'daily',
        'target': 'forecast',
        'config': <String, Object?>{'questionCategory': 'maritime'},
        'filter': <Object?>[
          <String, Object?>{'field': 'p50', 'op': 'gt', 'value': 0},
        ],
        'enabled': false,
        'backfill': false,
      });
      expect(d.validate(), isEmpty);
      expect(d.toJson(), <String, Object?>{
        'streamId': 'daily',
        'target': 'forecast',
        'config': <String, Object?>{'questionCategory': 'maritime'},
        'filter': <Object?>[
          <String, Object?>{'field': 'p50', 'op': 'gt', 'value': 0},
        ],
        'enabled': false,
        'backfill': false,
      });
    });

    test('a filter must be an array of objects', () {
      final d = BindingDraft(streamId: 's')..filterText = '{"a": 1}';
      expect(d.validate().keys, contains('filter'));
    });
  });

  test('a token needs a name and a sane use count', () {
    final d = TokenDraft()..maxUses = '0';
    expect(d.validate().keys, containsAll(<String>['name', 'maxUses']));
    d
      ..name = 'Pilot'
      ..maxUses = '2'
      ..expiresAt = '2027-01-01'
      ..sourceIdPrefix = 'port-';
    expect(d.toJson(), <String, Object?>{
      'name': 'Pilot',
      'expiresAt': '2027-01-01T00:00:00.000Z',
      'maxUses': 2,
      'sourceIdPrefix': 'port-',
    });
  });

  test('an evaluation window runs forward', () {
    final d = EvaluationDraft()
      ..forecasterId = 'base-rate'
      ..from = '2026-07-01'
      ..to = '2026-01-01';
    expect(d.validate().keys, contains('to'));
    d
      ..to = '2026-12-01'
      ..categories = 'maritime, gnss'
      ..maxQuestions = '500';
    expect(d.toJson(), <String, Object?>{
      'forecasterId': 'base-rate',
      'from': '2026-07-01T00:00:00.000Z',
      'to': '2026-12-01T00:00:00.000Z',
      'categories': <String>['maritime', 'gnss'],
      'maxQuestions': 500,
    });
  });

  test('a question link needs a ledger question id', () {
    final d = QuestionLinkDraft()
      ..streamId = 'daily'
      ..externalQuestionId = 'q-1'
      ..questionId = 'nope';
    expect(d.validate().keys, contains('questionId'));
    d
      ..questionId = '01JBK3Q8Z5N7W2X4Y6R9T1FQ02'
      ..orientation = 'inverse';
    expect(d.toJson()['orientation'], 'inverse');
  });

  test('an analysis request names the forecaster', () {
    final d = AnalysisRequestDraft()
      ..questionId = '01JBK3Q8Z5N7W2X4Y6R9T1FQ01'
      ..horizon = 'P7D';
    expect(d.validate(), isEmpty);
    expect(d.toJson('edp:a/b'), <String, Object?>{
      'forecasterId': 'edp:a/b',
      'questionId': '01JBK3Q8Z5N7W2X4Y6R9T1FQ01',
      'orientation': 'same',
      'horizon': 'P7D',
    });
  });
}
