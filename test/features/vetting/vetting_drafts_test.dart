import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/features/vetting/vetting_drafts.dart';
import 'package:foresignal_admin/features/vetting/vetting_screen.dart';

void main() {
  group('PathDraft', () {
    const fields = <PathField>[
      PathField('minRegionBaseline', 'Baseline', PathKind.number, min: 0, defaultValue: 20),
      PathField('velocity.dedupHours', 'Dedup', PathKind.integer, min: 1),
      PathField('languages', 'Languages', PathKind.list),
      PathField('keepMedia', 'Keep media', PathKind.boolean),
    ];

    test('reads nested members and keeps members it does not show', () {
      final d = PathDraft(<String, Object?>{
        'minRegionBaseline': 20,
        'velocity': <String, Object?>{'dedupHours': 6, 'minRatio': 5},
        'languages': <String>['en', 'uk'],
        'keepMedia': true,
        'cues': <String, Object?>{'enabled': true},
      }, fields);
      expect(d.text['velocity.dedupHours'], '6');
      expect(d.text['languages'], 'en, uk');
      expect(d.bools['keepMedia'], isTrue);
      final json = d.toJson();
      expect((json['velocity']! as Map)['minRatio'], 5);
      expect(json['cues'], <String, Object?>{'enabled': true});
    });

    test('an emptied field is left out so its default applies', () {
      final d = PathDraft(<String, Object?>{'minRegionBaseline': 30}, fields);
      d.text['minRegionBaseline'] = '';
      expect(d.toJson().containsKey('minRegionBaseline'), isFalse);
    });

    test('a switch the document never had stays out until changed', () {
      final d = PathDraft(<String, Object?>{}, fields);
      expect(d.toJson().containsKey('keepMedia'), isFalse);
      d.bools['keepMedia'] = true;
      expect(d.toJson()['keepMedia'], isTrue);
    });

    test('validate refuses a value out of range', () {
      final d = PathDraft(<String, Object?>{}, fields);
      d.text['velocity.dedupHours'] = '0';
      expect(d.validate().keys, contains('velocity.dedupHours'));
    });

    test('confirm names a member that read back differently', () {
      final d = PathDraft(<String, Object?>{'minRegionBaseline': 20}, fields);
      d.text['minRegionBaseline'] = '25';
      expect(d.confirm(<String, Object?>{'minRegionBaseline': 25}), isNull);
      expect(d.confirm(<String, Object?>{'minRegionBaseline': 20}), isNotNull);
    });
  });

  group('EntityKeyDraft', () {
    test('an LEI must be 20 letters and digits', () {
      final d = EntityKeyDraft()
        ..keyType = 'lei'
        ..keyValue = 'SHORT';
      expect(d.validate().keys, contains('keyValue'));
      d.keyValue = '5493001KJTIIGC8Y1R12';
      expect(d.validate(), isEmpty);
    });

    test('a company number needs a jurisdiction prefix', () {
      final d = EntityKeyDraft()
        ..keyType = 'company-number'
        ..keyValue = '01234567';
      expect(d.validate().keys, contains('keyValue'));
      d.keyValue = 'GB:01234567';
      expect(d.validate(), isEmpty);
    });

    test('force is sent only when set', () {
      final d = EntityKeyDraft()
        ..keyType = 'imo'
        ..keyValue = ' 9387421 ';
      expect(d.toJson(), <String, Object?>{'keyType': 'imo', 'keyValue': '9387421'});
      d.force = true;
      expect(d.toJson()['force'], isTrue);
    });
  });

  group('ownership queries', () {
    test('a bare entity id becomes an entity ref', () {
      expect(seedRefs('01JBK3Q8Z5N7W2X4Y6R9T1E001, entity:abc'), <String>[
        'entity:01JBK3Q8Z5N7W2X4Y6R9T1E001',
        'entity:abc',
      ]);
    });

    test('a graph query allows two hops, a chain six', () {
      final d = OwnershipQueryDraft()
        ..refs = 'entity:abc'
        ..depth = '4';
      expect(d.validate(), isEmpty);
      expect(d.validate(graph: true).keys, contains('depth'));
    });

    test('edge types are sent in their contract order', () {
      final d = OwnershipQueryDraft()..refs = 'entity:abc';
      d.types.addAll(<String>['officer-of', 'owns']);
      expect(d.chainJson()['types'], <String>['owns', 'officer-of']);
      expect(d.chainJson()['direction'], 'both');
    });
  });

  group('RatingsUpload', () {
    test('a CSV needs every contract column', () {
      expect(
        RatingsUpload('domain,dimension,value\nx.com,lean,left').validate(),
        contains(ratingsTermsColumn),
      );
      expect(
        RatingsUpload(
          'domain,dimension,value,$ratingsTermsColumn,attribution\nx.com,lean,left,CC0,me',
        ).validate(),
        isNull,
      );
    });

    test('JSON must carry rows', () {
      expect(RatingsUpload('{"items": []}').validate(), isNotNull);
      expect(RatingsUpload('{"rows": []}').validate(), isNull);
      expect(RatingsUpload('{"rows": []}').toFile().filename, 'ratings.json');
    });
  });

  group('key resolution', () {
    test('a key needs a known type and a value', () {
      expect(isEntityKey('imo:9387421'), isTrue);
      expect(isEntityKey('ship:9387421'), isFalse);
      expect(isEntityKey('imo:'), isFalse);
    });

    test('an as-of date is midnight UTC; empty is now', () {
      expect(parseInstantText(''), isNull);
      expect(parseInstantText('2025-03-01'), DateTime.utc(2025, 3, 1));
      expect(() => parseInstantText('last week'), throwsFormatException);
    });
  });

  test('leads read as signed hours and minutes', () {
    expect(leadText(8160), '+2h 16m');
    expect(leadText(-2100), '−35m');
    expect(leadText(7200), '+2h');
    expect(leadText(null), '—');
  });

  test('the lead-time cut-off reads as absent until a comparison sets it', () {
    expect(leadTimeCutoffText(null), contains('no out-of-sample cut-off'));
    expect(
      leadTimeCutoffText(DateTime.utc(2026, 10, 1, 12)),
      'Comparisons evaluated after 2026-10-01 12:00:00 are out of sample.',
    );
  });
}
