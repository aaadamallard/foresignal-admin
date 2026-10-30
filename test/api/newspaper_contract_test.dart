import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/api.dart';

/// Guards that the 2.1.0 automated-newspaper surface made it into both the
/// vendored contract and the regenerated Dart client. These are shape guards
/// (they reference generated method tear-offs, so `flutter analyze` fails if a
/// method is renamed or dropped); they are written, not run, per the campaign.
void main() {
  test('the vendored contract carries the 2.1.0 newspaper schemas', () {
    final spec = File('openapi/OpenAPI.json').readAsStringSync();
    for (final schema in const <String>[
      'TranslationSettings',
      'BriefingInput',
      'BriefingScope',
      'EditionSummary',
      'DeliveryTarget',
      'BreakingNewsConfig',
      'EditionSite',
    ]) {
      expect(spec, contains('"$schema"'), reason: '$schema missing from vendored spec');
    }
  });

  test('the generated client exposes the translation-settings operations', () {
    final api = ForesignalApi().getSettingsApi();
    expect(api.getTranslationSettings, isNotNull);
    expect(api.updateTranslationSettings, isNotNull);
  });

  test('the generated client exposes the edition/briefing operations', () {
    final api = ForesignalApi().getBriefingsApi();
    expect(api.listBriefings, isNotNull);
    expect(api.createBriefing, isNotNull);
    expect(api.getBriefing, isNotNull);
    expect(api.updateBriefing, isNotNull);
    expect(api.deleteBriefing, isNotNull);
    expect(api.runBriefing, isNotNull);
    expect(api.previewBriefing, isNotNull);
    expect(api.listMyEditions, isNotNull);
    expect(api.getEditionSite, isNotNull);
  });
}
