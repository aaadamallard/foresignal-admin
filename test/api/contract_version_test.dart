import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/api.dart';

void main() {
  test('vendoredApiVersion matches openapi/VERSION (guard)', () {
    expect(File('openapi/VERSION').readAsStringSync().trim(), vendoredApiVersion);
  });

  test('the vendored contract is the 2.1.1 release', () {
    expect(vendoredApiVersion, '2.1.1');
    expect(File('openapi/OpenAPI.json').readAsStringSync(), contains('"version": "2.1.1"'));
  });

  test('compareApiVersion', () {
    expect(compareApiVersion('1.3.0', built: '1.3.0'), VersionMatch.exact);
    expect(compareApiVersion('1.1.0', built: '1.3.0'), VersionMatch.compatible);
    expect(compareApiVersion('2.0.0', built: '1.3.0'), VersionMatch.incompatible);
    expect(compareApiVersion(null, built: '1.3.0'), VersionMatch.incompatible);
    expect(compareApiVersion('dev', built: '1.3.0'), VersionMatch.incompatible);
  });
}
