import 'package:built_collection/built_collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';
import '../vetting/vetting_drafts.dart' show toJsonMap;

/// A contract object as read, in its wire shape.
typedef Json = Map<String, Object?>;

/// The members of [json] under [key] as objects; empty when absent.
List<Json> jsonList(Json? json, String key) => <Json>[
  for (final e in (json?[key] as List<Object?>?) ?? const <Object?>[])
    if (e is Map) e.cast<String, Object?>(),
];

/// The object of [json] under [key]; `null` when absent.
Json? jsonMap(Json? json, String key) => (json?[key] as Map?)?.cast<String, Object?>();

/// Every forecaster (`listForecasters`), following the cursor.
final forecastersProvider = FutureProvider<List<Json>>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  final forecasts = api.getForecastsApi();
  final all = <Json>[];
  String? cursor;
  do {
    final page = await callApiRequired(() => forecasts.listForecasters(cursor: cursor, limit: 500));
    all.addAll(page.items.map((f) => toJsonMap(api.serializers, f)));
    cursor = page.nextCursor;
  } while (cursor != null && all.length < 5000);
  return all;
});

/// One forecaster, from the list (the contract has no single read).
final forecasterProvider = FutureProvider.family<Json?, String>((ref, id) async {
  final all = await ref.watch(forecastersProvider.future);
  return all.where((f) => f['id'] == id).firstOrNull;
});

/// The calibration query: a forecaster and an optional category.
typedef CalibrationQuery = ({String forecaster, String? category});

/// A forecaster's calibration (`getForecastCalibration`): binary
/// (`ForecastCalibration`) or numeric (`ForecastNumericCalibration`, with
/// `type: numeric`).
final calibrationProvider = FutureProvider.family<Json, CalibrationQuery>((ref, q) async {
  final api = ref.watch(foresignalApiProvider);
  final got = await callApiRequired(
    () => api.getForecastsApi().getForecastCalibration(forecaster: q.forecaster, category: q.category),
  );
  final value = got.oneOf.value;
  return value is ForecastNumericCalibration
      ? toJsonMap<ForecastNumericCalibration>(api.serializers, value)
      : toJsonMap<ForecastCalibration>(api.serializers, value as ForecastCalibration);
});

/// The scorecard query: forecaster and category (either may be empty for
/// all) and a resolution window.
typedef ScorecardQuery = ({String? forecaster, String? category, DateTime? from, DateTime? to});

/// The scorecard (`getForecastScorecard`).
final scorecardProvider = FutureProvider.family<Json, ScorecardQuery>((ref, q) async {
  final api = ref.watch(foresignalApiProvider);
  final got = await callApiRequired(
    () => api.getForecastsApi().getForecastScorecard(
      forecaster: q.forecaster,
      category: q.category,
      from: q.from,
      to: q.to,
    ),
  );
  return toJsonMap(api.serializers, got);
});

/// The question list filter: statuses by wire name, empty for all.
typedef QuestionFilter = ({Set<String> statuses, String? category});

/// Forecast questions (`listForecastQuestions`), up to 500.
final questionsProvider = FutureProvider.family<List<Json>, QuestionFilter>((ref, f) async {
  final api = ref.watch(foresignalApiProvider);
  final page = await callApiRequired(
    () => api.getForecastsApi().listForecastQuestions(
      status: f.statuses.isEmpty ? null : BuiltList<String>(f.statuses),
      category: f.category == null || f.category!.isEmpty ? null : BuiltList<String>(<String>[f.category!]),
      limit: 500,
    ),
  );
  return <Json>[for (final q in page.items) toJsonMap(api.serializers, q)];
});

/// One forecast question (`getForecastQuestion`).
final questionProvider = FutureProvider.family<Json, String>((ref, id) async {
  final api = ref.watch(foresignalApiProvider);
  final q = await callApiRequired(() => api.getForecastsApi().getForecastQuestion(questionId: id));
  return toJsonMap(api.serializers, q);
});

/// A question's daily forecast history (`getForecastQuestionHistory`).
final questionHistoryProvider = FutureProvider.family<Json, String>((ref, id) async {
  final api = ref.watch(foresignalApiProvider);
  final h = await callApiRequired(
    () => api.getForecastsApi().getForecastQuestionHistory(questionId: id, step: 'P1D'),
  );
  return toJsonMap(api.serializers, h);
});

/// External data providers (`listExternalSources`), optionally in one state.
final edpSourcesProvider = FutureProvider.family<List<Json>, String?>((ref, state) async {
  final api = ref.watch(foresignalApiProvider);
  final external = api.getExternalApi();
  final all = <Json>[];
  String? cursor;
  do {
    final page = await callApiRequired(
      () => external.listExternalSources(state: state, cursor: cursor, limit: 200),
    );
    all.addAll(page.items.map((s) => toJsonMap(api.serializers, s)));
    cursor = page.nextCursor;
  } while (cursor != null && all.length < 2000);
  return all;
});

/// One external data provider (`getExternalSource`).
final edpSourceProvider = FutureProvider.family<Json, String>((ref, id) async {
  final api = ref.watch(foresignalApiProvider);
  final s = await callApiRequired(() => api.getExternalApi().getExternalSource(sourceId: id));
  return toJsonMap(api.serializers, s);
});

/// A provider's bindings (`listExternalBindings`).
final edpBindingsProvider = FutureProvider.family<List<Json>, String>((ref, id) async {
  final api = ref.watch(foresignalApiProvider);
  final list = await callApiRequired(() => api.getExternalApi().listExternalBindings(sourceId: id));
  return <Json>[for (final b in list) toJsonMap(api.serializers, b)];
});

/// A provider's question links (`listExternalQuestionLinks`).
final edpQuestionLinksProvider = FutureProvider.family<List<Json>, String>((ref, id) async {
  final api = ref.watch(foresignalApiProvider);
  final list = await callApiRequired(
    () => api.getExternalApi().listExternalQuestionLinks(sourceId: id),
  );
  return <Json>[for (final l in list) toJsonMap(api.serializers, l)];
});

/// Registration tokens (`listRegistrationTokens`).
final registrationTokensProvider = FutureProvider<List<Json>>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  final list = await callApiRequired(() => api.getExternalApi().listRegistrationTokens());
  return <Json>[for (final t in list) toJsonMap(api.serializers, t)];
});

/// The EDP protocol the backend speaks (`getEdpProtocol`).
final edpProtocolProvider = FutureProvider<Json>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  final p = await callApiRequired(() => api.getExternalApi().getEdpProtocol());
  return toJsonMap(api.serializers, p);
});
