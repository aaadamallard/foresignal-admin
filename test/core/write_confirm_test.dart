import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/api.dart';
import 'package:foresignal_admin/core/ui/ui.dart';

void main() {
  test('writes, then returns the re-read value', () async {
    final calls = <String>[];
    final value = await writeThenConfirm<int>(
      write: () async => calls.add('write'),
      reread: () async {
        calls.add('read');
        return 4;
      },
      confirm: (v) => v == 4 ? null : 'expected 4, read $v',
    );
    expect(value, 4);
    expect(calls, <String>['write', 'read']);
  });

  test('a re-read that differs throws WriteNotConfirmedException', () async {
    await expectLater(
      writeThenConfirm<int>(
        write: () async {},
        reread: () async => 3,
        confirm: (v) => v == 4 ? null : 'expected 4, read $v',
      ),
      throwsA(
        isA<WriteNotConfirmedException>().having((e) => e.detail, 'detail', 'expected 4, read 3'),
      ),
    );
  });

  test('a failed write is an ApiException and skips the re-read', () async {
    var reread = false;
    await expectLater(
      writeThenConfirm<int>(
        write: () async => throw const AdminTokenRequiredException(),
        reread: () async {
          reread = true;
          return 0;
        },
      ),
      throwsA(isA<AdminTokenRequiredException>()),
    );
    expect(reread, isFalse);
  });
}
