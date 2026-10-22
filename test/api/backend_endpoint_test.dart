import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/api.dart';

void main() {
  test('adds http:// and drops a trailing slash', () {
    expect(parseBackendUrl('192.168.1.20:8080/').toString(), 'http://192.168.1.20:8080');
    expect(parseBackendUrl(' https://fs.example.org/ ').toString(), 'https://fs.example.org');
    expect(parseBackendUrl('https://fs.example.org/api/').toString(), 'https://fs.example.org/api');
  });

  test('rejects blanks, other schemes and hostless URLs', () {
    expect(() => parseBackendUrl('  '), throwsFormatException);
    expect(() => parseBackendUrl('ftp://fs.example.org'), throwsFormatException);
    expect(() => parseBackendUrl('http://'), throwsFormatException);
  });
}
