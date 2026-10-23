import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foresignal_admin/api/explicit_nulls.dart';

class _Capture extends RequestInterceptorHandler {
  RequestOptions? sent;

  @override
  void next(RequestOptions requestOptions) => sent = requestOptions;
}

void main() {
  test('the named members are sent as explicit nulls beside the others', () {
    final handler = _Capture();
    const ExplicitNullsInterceptor().onRequest(
      RequestOptions(
        path: '/v1/intel/events/e1',
        data: <String, Object?>{'title': 'Renamed'},
        extra: explicitNulls(<String>['severity']),
      ),
      handler,
    );
    expect(handler.sent!.data, <String, Object?>{'title': 'Renamed', 'severity': null});
  });

  test('a request without the key passes unchanged', () {
    final handler = _Capture();
    final data = <String, Object?>{'title': 'Renamed'};
    const ExplicitNullsInterceptor().onRequest(
      RequestOptions(path: '/v1/intel/events/e1', data: data),
      handler,
    );
    expect(identical(handler.sent!.data, data), isTrue);
  });
}
