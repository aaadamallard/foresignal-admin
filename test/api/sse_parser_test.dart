import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/api.dart';

void main() {
  test('parses typed events with ids', () {
    final parser = SseParser();
    final events = parser.add('event: alert\nid: 41\ndata: {"id":"a1"}\n\n');
    expect(events, hasLength(1));
    expect(events.single.event, 'alert');
    expect(events.single.id, '41');
    expect(events.single.data, '{"id":"a1"}');
    expect(events.single.decodeJson(), <String, Object?>{'id': 'a1'});
    expect(parser.lastEventId, '41');
  });

  test('an unnamed event is a message; multi-line data joins with newlines', () {
    final events = SseParser().add('data: one\ndata: two\n\n');
    expect(events.single.event, 'message');
    expect(events.single.data, 'one\ntwo');
  });

  test('handles any chunking, including a split CRLF', () {
    final parser = SseParser();
    final events = <SseEvent>[
      ...parser.add('event: no'),
      ...parser.add('tification\r'),
      ...parser.add('\ndata: x\r\n'),
      ...parser.add('\r\n'),
    ];
    expect(events.single.event, 'notification');
    expect(events.single.data, 'x');
  });

  test('accepts bare CR line endings', () {
    final events = SseParser().add('data: a\r\rdata: b\r\r');
    expect(events.map((e) => e.data), <String>['a', 'b']);
  });

  test('ignores comments, unknown fields and events without data', () {
    final parser = SseParser();
    final events = parser.add(': keep-alive\n\nfoo: bar\nevent: ping\n\ndata: real\n\n');
    expect(events.single.data, 'real');
    expect(events.single.event, 'message');
  });

  test('only one leading space is stripped from a value; a field without a colon is empty', () {
    final events = SseParser().add('data:  two spaces\ndata\n\n');
    expect(events.single.data, ' two spaces\n');
  });

  test('retry sets the reconnection delay; non-digits are ignored', () {
    final parser = SseParser()..add('retry: 2500\n\n');
    expect(parser.retry, const Duration(milliseconds: 2500));
    parser.add('retry: soon\n\n');
    expect(parser.retry, const Duration(milliseconds: 2500));
  });

  test('the last event id persists to later events and ignores NUL', () {
    final parser = SseParser();
    final first = parser.add('id: 7\ndata: a\n\n');
    final second = parser.add('data: b\n\nid: bad\u0000\ndata: c\n\n');
    expect(first.single.id, '7');
    expect(second.map((e) => e.id), <String?>['7', '7']);
  });

  test('an empty id resets the last event id', () {
    final parser = SseParser()..add('id: 9\ndata: a\n\n');
    final events = parser.add('id:\ndata: b\n\n');
    expect(events.single.id, '');
  });

  test('strips a leading byte-order mark', () {
    final events = SseParser().add('﻿data: x\n\n');
    expect(events.single.data, 'x');
  });

  test('an incomplete event is not dispatched until its blank line', () {
    final parser = SseParser();
    expect(parser.add('data: partial\n'), isEmpty);
    parser.resetPending();
    expect(parser.add('\n'), isEmpty);
  });

  test('backoff grows, caps and starts from the server retry', () {
    const backoff = SseBackoff(initial: Duration(seconds: 1), max: Duration(seconds: 10));
    expect(backoff.delay(0), const Duration(seconds: 1));
    expect(backoff.delay(1), const Duration(seconds: 2));
    expect(backoff.delay(3), const Duration(seconds: 8));
    expect(backoff.delay(4), const Duration(seconds: 10));
    expect(
      backoff.delay(0, base: const Duration(milliseconds: 500)),
      const Duration(milliseconds: 500),
    );
  });
}
