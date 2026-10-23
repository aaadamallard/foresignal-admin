import 'package:built_value/serializer.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/api.dart';
import 'package:foresignal_admin/features/usage/settings_drafts.dart';

import '../../../tool/preview/preview_usage.dart';

RateLimitSettings _rateLimits() =>
    standardSerializers.deserialize(
          PreviewSettings().rateLimits,
          specifiedType: const FullType(RateLimitSettings),
        )!
        as RateLimitSettings;

RetentionSettings _retention() =>
    standardSerializers.deserialize(
          PreviewSettings().retention,
          specifiedType: const FullType(RetentionSettings),
        )!
        as RetentionSettings;

void main() {
  group('RateLimitsDraft', () {
    test('starts from the stored values', () {
      final draft = RateLimitsDraft(_rateLimits(), standardSerializers);
      expect(draft.text['read'], '600');
      expect(draft.text['stream.concurrent'], '8');
      expect(draft.text['metricsPerMinute'], '');
      expect(draft.validate(), isEmpty);
    });

    test('writes nested members and keeps the rest', () {
      final draft = RateLimitsDraft(_rateLimits(), standardSerializers)
        ..text['read'] = '900'
        ..text['stream.concurrent'] = '12';
      final json = draft.toJson();
      expect(json['read'], 900);
      expect(json['stream'], <String, Object?>{'opensPerMinute': 30, 'concurrent': 12});
      expect(json['tiles'], 1200);
      expect(draft.toModel(standardSerializers).read, 900);
    });

    test('refuses a count below the minimum or not a number', () {
      final draft = RateLimitsDraft(_rateLimits(), standardSerializers)
        ..text['read'] = '0'
        ..text['tiles'] = 'many';
      expect(draft.validate().keys, containsAll(<String>['read', 'tiles']));
    });

    test('refuses to empty a stored member', () {
      final draft = RateLimitsDraft(_rateLimits(), standardSerializers)..text['write'] = '';
      expect(draft.validate().keys, contains('write'));
    });

    test('confirm names what the re-read does not hold', () {
      final draft = RateLimitsDraft(_rateLimits(), standardSerializers)..text['read'] = '900';
      expect(draft.confirm(draft.toJson()), isNull);
      expect(draft.confirm(PreviewSettings().rateLimits), contains('Read'));
    });
  });

  group('RetentionDraft', () {
    test('reads overrides as lines', () {
      final draft = RetentionDraft(_retention(), standardSerializers);
      expect(draft.sourceOverrides, 'usgs-earthquakes = 3650d');
      expect(draft.kindOverrides, '');
      expect(draft.validate(), isEmpty);
    });

    test('refuses a window under an hour, but allows a 30 s interval', () {
      final draft = RetentionDraft(_retention(), standardSerializers)
        ..text['ask'] = '30m'
        ..text['trackDownsampleInterval'] = '30s';
      final errors = draft.validate();
      expect(errors['ask'], 'At least 1h.');
      expect(errors.containsKey('trackDownsampleInterval'), isFalse);
    });

    test('an emptied raw window is sent as an explicit null to turn downsampling off', () {
      final draft = RetentionDraft(_retention(), standardSerializers);
      expect(draft.clears, isEmpty);
      draft.text['trackRawWindow'] = '';
      expect(draft.validate(), isEmpty);
      expect(draft.clears, <String>['trackRawWindow']);
      expect(draft.toJson()['trackRawWindow'], isNull);
    });

    test('keeps the raw window shorter than the TRACK window', () {
      final draft = RetentionDraft(_retention(), standardSerializers)
        ..text['trackRawWindow'] = '4d';
      expect(draft.validate().keys, contains('trackRawWindow'));
    });

    test('keeps the interval within the raw window', () {
      final draft = RetentionDraft(_retention(), standardSerializers)
        ..text['trackDownsampleInterval'] = '2d';
      expect(draft.validate().keys, contains('trackDownsampleInterval'));
    });

    test('refuses a malformed or short override line', () {
      final draft = RetentionDraft(_retention(), standardSerializers)
        ..kindOverrides = 'aircraft'
        ..sourceOverrides = 'gdelt = 10m';
      final errors = draft.validate();
      expect(errors.keys, containsAll(<String>['kinds', 'sources']));
    });

    test('always sends both override maps, empty to remove them all', () {
      final draft = RetentionDraft(_retention(), standardSerializers)
        ..sourceOverrides = ''
        ..kindOverrides = 'aircraft = 2d';
      final json = draft.toJson();
      expect(json['sources'], <String, String>{});
      expect(json['kinds'], <String, String>{'aircraft': '2d'});
    });

    test('confirm treats equal durations as the same', () {
      final draft = RetentionDraft(_retention(), standardSerializers)..text['alerts'] = '120d';
      final reread = draft.toJson()..['alerts'] = 'P120D';
      expect(draft.confirm(reread), isNull);
    });
  });
}
