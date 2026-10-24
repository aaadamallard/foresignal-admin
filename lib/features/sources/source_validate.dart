import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';

/// The last fetches of a source (`listSourceFetches`), newest first.
final sourceFetchesProvider = FutureProvider.family<List<FetchLogEntry>, String>((
  ref,
  sourceId,
) async {
  final api = ref.watch(foresignalApiProvider);
  final page = await callApiRequired(
    () => api.getSourcesApi().listSourceFetches(sourceId: sourceId, limit: 20),
  );
  return page.items.toList();
});

/// The last doctor reports of a source (`listSourceDoctorReports`).
final sourceDoctorReportsProvider = FutureProvider.family<List<DoctorReport>, String>((
  ref,
  sourceId,
) async {
  final api = ref.watch(foresignalApiProvider);
  final page = await callApiRequired(
    () => api.getSourcesApi().listSourceDoctorReports(sourceId: sourceId, limit: 10),
  );
  return page.items.toList();
});

/// A source's health on its own (`getSourceHealth`).
final sourceHealthOneProvider = FutureProvider.family<SourceHealth, String>((ref, sourceId) async {
  final api = ref.watch(foresignalApiProvider);
  return callApiRequired(() => api.getSourcesApi().getSourceHealth(sourceId: sourceId));
});

/// The window a usage chart covers.
enum UsageWindow {
  /// The last 24 hours, hourly.
  day('Last 24 hours', Duration(hours: 24), 'hour'),

  /// The last 7 days, daily.
  week('Last 7 days', Duration(days: 7), 'day'),

  /// The last 30 days, daily.
  month('Last 30 days', Duration(days: 30), 'day');

  const UsageWindow(this.label, this.span, this.resolution);

  /// The dropdown text.
  final String label;

  /// How far back it reaches.
  final Duration span;

  /// The bucket size (`minute`, `hour`, `day`).
  final String resolution;
}

/// A source's usage over a window (`getSourceUsage`).
final sourceUsageProvider = FutureProvider.family<UsageSeries, (String, UsageWindow)>((
  ref,
  key,
) async {
  final (sourceId, window) = key;
  final api = ref.watch(foresignalApiProvider);
  final to = DateTime.now().toUtc();
  return callApiRequired(
    () => api.getSourcesApi().getSourceUsage(
      sourceId: sourceId,
      from: to.subtract(window.span),
      to: to,
      resolution: window.resolution,
    ),
  );
});

/// The newest records of a source (`listRecords?source=`), kept small: they
/// prove the source stores retrievable data.
final sourceRecordsProvider = FutureProvider.family<List<Record>, String>((ref, sourceId) async {
  final api = ref.watch(foresignalApiProvider);
  final response = await callApiRequired(
    () =>
        api.getRecordsApi().listRecords(source_: BuiltList<String>(<String>[sourceId]), limit: 12),
  );
  final value = response.oneOf.value;
  return value is RecordPage ? value.items.toList() : const <Record>[];
});

/// Runs the source doctor and waits for its report.
///
/// `runSourceDoctor` answers 200 with the report, or 202 with a
/// `DoctorRunAccepted` while the run continues; `getDoctorReport` likewise
/// answers 202 until the report is ready. The generated client types both
/// operations as returning a `DoctorReport`, so a 202 body arrives as a
/// deserialization failure carrying the raw response; it is read here as the
/// `DoctorRunAccepted` it is, and the report is polled every [pollEvery] up
/// to [timeout].
class SourceDoctor {
  /// Creates the runner over [api].
  const SourceDoctor(
    this.api, {
    this.pollEvery = const Duration(seconds: 2),
    this.timeout = const Duration(minutes: 2),
  });

  /// The generated client.
  final ForesignalApi api;

  /// The polling interval.
  final Duration pollEvery;

  /// How long to wait for a running report.
  final Duration timeout;

  /// Runs the doctor on [sourceId] with [options]. [onRunning] is called once
  /// with the report id if the run continues in the background.
  Future<DoctorReport> run(
    String sourceId,
    DoctorOptions options, {
    void Function(String reportId)? onRunning,
  }) async {
    final sources = api.getSourcesApi();
    final first = await _reportOrRunning(
      () => sources.runSourceDoctor(sourceId: sourceId, doctorOptions: options),
    );
    if (first.$1 case final report?) {
      return report;
    }
    final reportId = first.$2!;
    onRunning?.call(reportId);
    final deadline = DateTime.now().add(timeout);
    while (DateTime.now().isBefore(deadline)) {
      await Future<void>.delayed(pollEvery);
      final next = await _reportOrRunning(() => sources.getDoctorReport(reportId: reportId));
      if (next.$1 case final report?) {
        return report;
      }
    }
    throw RequestFailedException(
      RequestFailure.timeout,
      'The doctor run $reportId did not finish within ${timeout.inSeconds} s.',
    );
  }

  /// The report, or the id of the run still in progress.
  Future<(DoctorReport?, String?)> _reportOrRunning(
    Future<Response<DoctorReport>> Function() call,
  ) async {
    try {
      final response = await call();
      final report = response.data;
      if (report == null) {
        throw RequestFailedException(
          RequestFailure.unexpectedReply,
          'The backend answered HTTP ${response.statusCode} without a doctor report.',
          status: response.statusCode,
        );
      }
      return (report, null);
    } on DioException catch (error) {
      final response = error.response;
      if (response?.statusCode == 202) {
        return (null, _accepted(response!.data));
      }
      throw toApiException(error);
    } on ApiException {
      rethrow;
    } on Object catch (error) {
      throw toApiException(error);
    }
  }

  String _accepted(Object? body) {
    final accepted =
        api.serializers.deserialize(body, specifiedType: const FullType(DoctorRunAccepted))
            as DoctorRunAccepted?;
    if (accepted == null) {
      throw RequestFailedException(
        RequestFailure.unexpectedReply,
        'The doctor run was accepted without a report id.',
        status: 202,
      );
    }
    return accepted.reportId;
  }
}

/// The app's [SourceDoctor].
final sourceDoctorProvider = Provider<SourceDoctor>(
  (ref) => SourceDoctor(ref.watch(foresignalApiProvider)),
);
