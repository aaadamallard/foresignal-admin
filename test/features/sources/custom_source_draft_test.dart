import 'package:built_value/serializer.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/api.dart';
import 'package:foresignal_admin/core/ui/one_time_secret.dart';
import 'package:foresignal_admin/features/sources/custom/custom_source_draft.dart';

import '../../../tool/preview/preview_validate.dart';

CustomSource stored() =>
    standardSerializers.deserialize(
          PreviewCustom().sources.first,
          specifiedType: const FullType(CustomSource),
        )!
        as CustomSource;

CustomSourceDraft fresh() => CustomSourceDraft.create(standardSerializers)
  ..id = 'custom-river-gauge'
  ..name = 'River Gauge'
  ..kinds = 'water-level';

void main() {
  group('validate', () {
    test('a complete new draft is valid', () {
      expect(fresh().validate(), isEmpty);
    });

    test('the id must start with custom- and use lowercase words', () {
      expect(fresh().validate(), isNot(contains('id')));
      expect((fresh()..id = 'river-gauge').validate(), contains('id'));
      expect((fresh()..id = 'custom-River').validate(), contains('id'));
      expect((fresh()..id = 'custom-${'a' * 60}').validate(), contains('id'));
    });

    test('kinds are required and lowercase', () {
      expect((fresh()..kinds = ' , ').validate(), contains('kinds'));
      expect((fresh()..kinds = 'Water Level').validate(), contains('kinds'));
      expect((fresh()..kinds = 'water-level, rain').validate(), isEmpty);
    });

    test('rates are bounded', () {
      expect((fresh()..rateLimitPerMinute = '0').validate(), contains('rateLimitPerMinute'));
      expect((fresh()..rateLimitPerMinute = '6000').validate(), isEmpty);
      expect((fresh()..recordsPerMinute = '60001').validate(), contains('recordsPerMinute'));
    });

    test('the mapping must be a JSON object', () {
      expect((fresh()..mapping = '[1]').validate(), contains('mapping'));
      expect((fresh()..mapping = '{').validate(), contains('mapping'));
      expect((fresh()..mapping = '{"version": 1}').validate(), isEmpty);
    });

    test('a stored mapping is cleared with an explicit null', () {
      final draft = CustomSourceDraft.edit(stored(), standardSerializers);
      expect(draft.clears, isEmpty);
      draft.mapping = '';
      expect(draft.validate(), isEmpty);
      expect(draft.clears, <String>['mapping']);
    });

    test('a new source has nothing to clear', () {
      expect((fresh()..mapping = '').clears, isEmpty);
    });
  });

  group('toJson', () {
    test('an edit keeps the id and drops read-only members', () {
      final draft = CustomSourceDraft.edit(stored(), standardSerializers)..name = 'Renamed';
      final json = draft.toJson();
      expect(json['id'], 'custom-weather-station');
      expect(json['name'], 'Renamed');
      expect(json.containsKey('createdAt'), isFalse);
      expect(json.containsKey('ingestKeyPrefix'), isFalse);
      expect(json.containsKey('lastIngestAt'), isFalse);
      expect(json['mapping'], isA<Map<String, Object?>>());
    });

    test('empty optional fields are left out', () {
      final json = fresh().toJson();
      expect(json.containsKey('description'), isFalse);
      expect(json.containsKey('rateLimitPerMinute'), isFalse);
      expect(json.containsKey('ingestAllowCidrs'), isFalse);
      expect(json['kinds'], <String>['water-level']);
    });

    test('the draft converts to the generated input', () {
      final input = (fresh()..allowCidrs = '192.168.1.0/24, 10.0.0.0/8').toInput();
      expect(input.id, 'custom-river-gauge');
      expect(input.ingestAllowCidrs?.toList(), <String>['192.168.1.0/24', '10.0.0.0/8']);
    });
  });

  group('maskSecret', () {
    test('every occurrence of the secret is masked', () {
      const key = 'eid_abcdefghijkl';
      final text = OneTimeSecret.maskSecret('a/$key/b?k=$key', key);
      expect(text, isNot(contains(key)));
      expect(text, startsWith('a/eid_'));
    });

    test('an empty secret leaves the text alone', () {
      expect(OneTimeSecret.maskSecret('plain', ''), 'plain');
    });
  });
}
