import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/core/permissions.dart';
import 'package:foresignal_admin/core/routes.dart';

import '../../support/actions.dart';
import '../../support/fake_adapter.dart';
import '../scoping/per_user_scoping_test.dart' show meBody, openSignedIn;

const int gib = 1024 * 1024 * 1024;

const String archiveId = 'arc-01JB9A';

const String backupId = 'bak-01JB9B';

/// A storage backend: live gauges (the next read fails when [failResources]
/// says so), thresholds, retention with its preview, archive settings and
/// inventory, backup settings and history. Writes are stored and read back.
FakeAdapter storageBackend({bool Function()? failResources}) {
  var thresholds = <String, Object?>{
    'disk': <String, Object?>{
      'warnFreePercent': 15,
      'criticalFreePercent': 5,
      'warnFreeBytes': null,
      'criticalFreeBytes': null,
    },
    'memory': <String, Object?>{
      'warnFreePercent': null,
      'criticalFreePercent': null,
      'warnFreeBytes': null,
      'criticalFreeBytes': null,
    },
    'alertChannels': <String>[],
    'sourceStorm': <String, Object?>{'failingSources': 5},
  };
  var retention = <String, Object?>{
    'default': '30d',
    'alerts': '90d',
    'capHistory': false,
    'maxDays': null,
    'maxDbGb': null,
    'overwriteOldest': true,
  };
  var backup = <String, Object?>{
    'enabled': true,
    'schedule': '0 0 3 * * *',
    'target': 's3',
    'root': null,
    's3': <String, Object?>{
      'endpoint': 'https://s3.us-east-1.amazonaws.com',
      'bucket': 'fs-backups',
      'prefix': 'prod',
      'region': 'us-east-1',
      'pathStyle': false,
    },
    'keepBackups': 7,
    'includeConfig': true,
    'secretsSet': <String>['accessKey'],
    'lastRunAt': '2026-10-25T03:00:00Z',
  };
  return FakeAdapter((request) {
    final body = request.body;
    switch ((request.method, request.uri.path)) {
      case ('GET', '/v1/me'):
        return FakeResponse.json(meBody(<String>{Permissions.storageManage}));
      case ('GET', '/v1/system/resources'):
        if (failResources?.call() ?? false) {
          return FakeResponse.problem(<String, Object?>{
            'title': 'Unavailable',
            'status': 503,
          }, status: 503);
        }
        return FakeResponse.json(<String, Object?>{
          'status': 'warn',
          'disk': <String, Object?>{
            'totalBytes': 100 * gib,
            'usedBytes': 88 * gib,
            'freeBytes': 12 * gib,
            'usedPercent': 88.0,
            'status': 'warn',
          },
          'memory': <String, Object?>{
            'totalBytes': 16 * gib,
            'usedBytes': 8 * gib,
            'freeBytes': 8 * gib,
            'usedPercent': 50.0,
            'status': 'ok',
          },
          'database': <String, Object?>{'sizeBytes': 40 * gib},
          'warnings': <String>['DISK_LOW'],
        });
      case ('GET', '/v1/settings/thresholds'):
        return FakeResponse.json(thresholds);
      case ('PUT', '/v1/settings/thresholds'):
        thresholds = body! as Map<String, Object?>;
        return FakeResponse.json(thresholds);
      case ('GET', '/v1/channels'):
        return FakeResponse.json(<Object?>[
          <String, Object?>{'id': 'ch-ops', 'name': 'Ops', 'type': 'email', 'enabled': true},
        ]);
      case ('GET', '/v1/settings/retention'):
        return FakeResponse.json(retention);
      case ('PUT', '/v1/settings/retention'):
        retention = body! as Map<String, Object?>;
        return FakeResponse.json(retention);
      case ('GET', '/v1/settings/retention/preview'):
        return FakeResponse.json(<String, Object?>{
          'items': <Object?>[
            <String, Object?>{
              'subsystem': 'records',
              'kind': 'gdacs',
              'cutoff': '2026-09-26T00:00:00Z',
              'affectedCount': 1200,
              'bytesEstimate': 3 * 1024 * 1024,
            },
          ],
          'totalAffected': 1200,
          'totalBytesEstimate': 3 * 1024 * 1024,
          'generatedAt': '2026-10-26T12:00:00Z',
          'dbCap': null,
        });
      case ('POST', '/v1/settings/retention/run'):
        return FakeResponse.json(<String, Object?>{'deleted': 1200});
      case ('GET', '/v1/settings/archive'):
        return FakeResponse.json(<String, Object?>{
          'enabled': true,
          'sources': <String>[],
          'root': '/mnt/archive',
          'target': 'local',
        });
      case ('GET', '/v1/archives'):
        return FakeResponse.json(<String, Object?>{
          'items': <Object?>[
            <String, Object?>{
              'id': archiveId,
              'status': 'purged',
              'createdAt': '2026-10-01T02:00:00Z',
              'cutoff': '2026-07-01T00:00:00Z',
              'target': 'local',
              'location': '/mnt/archive/segments/$archiveId',
              'sizeBytes': 2 * gib,
              'itemCount': 500000,
              'purgedFromHot': true,
              'trigger': 'scheduled',
            },
          ],
          'nextCursor': null,
        });
      case ('POST', '/v1/archives/run'):
        return FakeResponse.json(<String, Object?>{
          'id': 'dry',
          'status': 'pending',
          'createdAt': '2026-10-26T12:00:00Z',
          'target': 'local',
          'itemCount': 4200,
          'purgedFromHot': false,
        }, status: 202);
      case ('POST', '/v1/archives/$archiveId/restore'):
        return FakeResponse.json(<String, Object?>{
          'id': archiveId,
          'status': 'restoring',
          'target': 'local',
        }, status: 202);
      case ('GET', '/v1/settings/backup'):
        return FakeResponse.json(backup);
      case ('PUT', '/v1/settings/backup'):
        final sent = body! as Map<String, Object?>;
        final typed = (sent['secrets'] as Map?)?.keys.cast<String>() ?? const <String>[];
        backup = <String, Object?>{
          for (final e in sent.entries)
            if (e.key != 'secrets') e.key: e.value,
          'secretsSet': <String>{...backup['secretsSet']! as List<String>, ...typed}.toList(),
        };
        return FakeResponse.json(backup);
      case ('GET', '/v1/backups'):
        return FakeResponse.json(<String, Object?>{
          'items': <Object?>[
            <String, Object?>{
              'id': backupId,
              'type': 'database',
              'status': 'complete',
              'createdAt': '2026-10-25T03:00:00Z',
              'sizeBytes': 5 * gib,
              'target': 's3',
              'trigger': 'scheduled',
              'label': 'nightly',
            },
          ],
          'nextCursor': null,
        });
      case ('POST', '/v1/backups/run'):
        return FakeResponse.json(<String, Object?>{
          'id': 'bak-new',
          'type': 'full',
          'status': 'pending',
          'createdAt': '2026-10-26T12:00:00Z',
          'target': 's3',
          'trigger': 'manual',
        }, status: 202);
      case ('POST', '/v1/backups/$backupId/restore'):
        return FakeResponse.json(<String, Object?>{
          'id': backupId,
          'type': 'database',
          'status': 'restoring',
        }, status: 202);
    }
    return FakeResponse.problem(<String, Object?>{
      'title': 'Not found',
      'status': 404,
    }, status: 404);
  });
}

Future<void> openStorage(WidgetTester tester, FakeAdapter adapter, String location) =>
    openSignedIn(tester, adapter, <String>{Permissions.storageManage}, location);

Iterable<RecordedRequest> calls(FakeAdapter adapter, String method, String path) =>
    adapter.requests.where((r) => r.method == method && r.uri.path == path);

void main() {
  testWidgets('the gauges show disk, memory and the database, and go Stale on a failed read', (
    tester,
  ) async {
    var fail = false;
    final adapter = storageBackend(failResources: () => fail);
    await openStorage(tester, adapter, storagePath);

    expect(find.byKey(const Key('resources.disk')), findsOneWidget);
    expect(find.byKey(const Key('resources.memory')), findsOneWidget);
    expect(find.byKey(const Key('resources.database')), findsOneWidget);
    expect(find.byKey(const Key('resources.live')), findsOneWidget);
    expect(find.textContaining('DISK_LOW'), findsWidgets);

    fail = true;
    await tester.pump(const Duration(seconds: 5));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('resources.stale')), findsOneWidget);
    expect(calls(adapter, 'GET', '/v1/system/resources').length, greaterThanOrEqualTo(2));
  });

  testWidgets('thresholds save the whole object with updateResourceThresholds and re-read', (
    tester,
  ) async {
    final adapter = storageBackend();
    await openStorage(tester, adapter, storagePath);

    await tester.enterText(find.byKey(const Key('thresholds.disk.warn.gb')), '20');
    await tapVisible(tester, find.byKey(const Key('thresholds.channel.ch-ops')));
    await tapVisible(tester, find.byKey(const Key('thresholds.save')));

    final put = calls(adapter, 'PUT', '/v1/settings/thresholds').single.body! as Map;
    expect((put['disk']! as Map)['warnFreeBytes'], 20 * gib);
    expect((put['disk']! as Map)['warnFreePercent'], 15);
    expect(put['alertChannels'], <String>['ch-ops']);
    // The members this build does not edit go back as read.
    expect(put['sourceStorm'], <String, Object?>{'failingSources': 5});
    expect(calls(adapter, 'GET', '/v1/settings/thresholds').length, greaterThanOrEqualTo(2));
  });

  testWidgets('saving the history cap shows the preview first, then PUTs and re-reads', (
    tester,
  ) async {
    final adapter = storageBackend();
    await openStorage(tester, adapter, storageRetentionPath);

    await tapVisible(tester, find.byKey(const Key('retention.capHistory')));
    await tester.enterText(find.byKey(const Key('retention.maxDays')), '60');
    await tapVisible(tester, find.byKey(const Key('retention.save')));

    expect(calls(adapter, 'GET', '/v1/settings/retention/preview'), isNotEmpty);
    expect(find.byKey(const Key('retention.preview')), findsOneWidget);
    expect(find.textContaining('Would prune 1200 rows'), findsOneWidget);
    expect(calls(adapter, 'PUT', '/v1/settings/retention'), isEmpty);

    await tapVisible(tester, find.byKey(const Key('retention.confirmSave')));
    final put = calls(adapter, 'PUT', '/v1/settings/retention').single.body! as Map;
    expect(put['capHistory'], isTrue);
    expect(put['maxDays'], 60);
    // updateRetention replaces the whole object: the windows go back as read.
    expect(put['default'], '30d');
    expect(put['alerts'], '90d');
  });

  testWidgets('running retention previews, and runs only after the confirm', (tester) async {
    final adapter = storageBackend();
    await openStorage(tester, adapter, storageRetentionPath);

    await tapVisible(tester, find.byKey(const Key('retention.run')));
    expect(find.byKey(const Key('retention.preview')), findsOneWidget);
    expect(calls(adapter, 'POST', '/v1/settings/retention/run'), isEmpty);

    await tapVisible(tester, find.byKey(const Key('retention.confirmRun')));
    expect(calls(adapter, 'POST', '/v1/settings/retention/run'), hasLength(1));
    expect(find.byKey(const Key('retention.ran')), findsOneWidget);
  });

  testWidgets('the archive inventory lists segments; run and restore fire only after a confirm', (
    tester,
  ) async {
    final adapter = storageBackend();
    await openStorage(tester, adapter, storageArchivePath);

    expect(find.byKey(const Key('storage.archive.settings')), findsOneWidget);
    expect(find.text('Purged'), findsWidgets);

    await tester.enterText(find.byKey(const Key('archiveRun.cutoff')), '2026-08-01');
    await tapVisible(tester, find.byKey(const Key('archiveRun.start')));
    expect(calls(adapter, 'POST', '/v1/archives/run'), isEmpty);
    await tapVisible(tester, find.byKey(const Key('archiveRun.confirm')));
    final run = calls(adapter, 'POST', '/v1/archives/run').single.body! as Map;
    expect(run['dryRun'], isTrue);
    expect(run['cutoff'], '2026-08-01T00:00:00Z');
    expect(find.byKey(const Key('archiveRun.result')), findsOneWidget);
    expect(find.text('4200'), findsOneWidget);

    await tapVisible(tester, find.byKey(const Key('archive.restore.$archiveId')));
    expect(calls(adapter, 'POST', '/v1/archives/$archiveId/restore'), isEmpty);
    await tapVisible(tester, find.byKey(const Key('archive.confirmRestore')));
    expect(
      calls(adapter, 'POST', '/v1/archives/$archiveId/restore').single.body,
      <String, Object?>{'confirm': true},
    );
  });

  testWidgets('a future archive cutoff is refused before anything is sent', (tester) async {
    final adapter = storageBackend();
    await openStorage(tester, adapter, storageArchivePath);

    await tester.enterText(find.byKey(const Key('archiveRun.cutoff')), '2999-01-01');
    await tapVisible(tester, find.byKey(const Key('archiveRun.start')));
    expect(find.text('The cutoff must be in the past.'), findsOneWidget);
    expect(find.byKey(const Key('archiveRun.confirm')), findsNothing);
  });

  testWidgets('backup secrets show only whether they are set, and a typed key is sent once', (
    tester,
  ) async {
    final adapter = storageBackend();
    await openStorage(tester, adapter, storageBackupPath);

    expect(find.text('Access key: set'), findsOneWidget);
    expect(find.text('Secret key: not set'), findsOneWidget);
    final access = tester.widget<TextField>(find.byKey(const Key('backup.accessKey')));
    expect(access.controller!.text, isEmpty);
    expect(access.obscureText, isTrue);

    await tester.enterText(find.byKey(const Key('backup.secretKey')), 'very-secret');
    await tapVisible(tester, find.byKey(const Key('backup.save')));

    final put = calls(adapter, 'PUT', '/v1/settings/backup').single.body! as Map;
    expect(put['secrets'], <String, Object?>{'secretKey': 'very-secret'});
    expect(put['target'], 's3');
    expect((put['s3']! as Map)['bucket'], 'fs-backups');
    await tester.pumpAndSettle();
    expect(find.text('very-secret'), findsNothing);
    expect(find.text('Secret key: set'), findsOneWidget);
  });

  testWidgets('a backup runs after a confirm; a restore needs the id typed', (tester) async {
    final adapter = storageBackend();
    await openStorage(tester, adapter, storageBackupPath);

    expect(find.text('nightly'), findsOneWidget);

    await tester.enterText(find.byKey(const Key('backupRun.label')), 'before upgrade');
    await tapVisible(tester, find.byKey(const Key('backupRun.start')));
    expect(calls(adapter, 'POST', '/v1/backups/run'), isEmpty);
    await tapVisible(tester, find.byKey(const Key('backupRun.confirm')));
    expect(
      calls(adapter, 'POST', '/v1/backups/run').single.body,
      <String, Object?>{'label': 'before upgrade'},
    );
    expect(find.byKey(const Key('backupRun.started')), findsOneWidget);

    await tapVisible(tester, find.byKey(const Key('backup.restore.$backupId')));
    expect(find.byKey(const Key('backup.restoreWarning')), findsOneWidget);
    expect(find.textContaining('Everything written since then is lost.'), findsOneWidget);
    final confirm = find.byKey(const Key('backup.confirmRestore'));
    expect(
      tester
          .widget<ButtonStyleButton>(
            find.descendant(
              of: confirm,
              matching: find.byWidgetPredicate((w) => w is ButtonStyleButton),
            ),
          )
          .onPressed,
      isNull,
    );

    await tester.enterText(find.byKey(const Key('backup.restoreTyped')), backupId);
    await tester.pumpAndSettle();
    await tapVisible(tester, confirm);
    expect(
      calls(adapter, 'POST', '/v1/backups/$backupId/restore').single.body,
      <String, Object?>{'confirm': true},
    );
  });
}
