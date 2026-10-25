import 'package:built_collection/built_collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';

/// Every correlation recipe, bundled and operator-authored
/// (`listIntelRecipes`), by id.
final recipesProvider = FutureProvider<List<CorrelationRecipe>>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  final recipes = await callApiRequired(() => api.getIntelligenceApi().listIntelRecipes());
  return recipes.toList()..sort((a, b) => a.id.compareTo(b.id));
});

/// The filter of the intelligence event list.
class EventFilter {
  /// Creates the filter.
  const EventFilter({this.statuses = const <String>{}, this.type});

  /// Statuses shown, by wire name; empty for all.
  final Set<String> statuses;

  /// The event type shown, by wire name; `null` for all.
  final String? type;

  @override
  bool operator ==(Object other) =>
      other is EventFilter &&
      other.type == type &&
      other.statuses.length == statuses.length &&
      other.statuses.containsAll(statuses);

  @override
  int get hashCode => Object.hash(type, Object.hashAllUnordered(statuses));
}

/// A page of intelligence events (`listIntelEvents`), newest update first
/// as the backend orders them.
final intelEventsProvider = FutureProvider.family<IntelEventPage, EventFilter>((
  ref,
  filter,
) async {
  final api = ref.watch(foresignalApiProvider);
  return callApiRequired(
    () => api.getIntelligenceApi().listIntelEvents(
      status: filter.statuses.isEmpty ? null : BuiltList<String>(filter.statuses),
      type: filter.type == null ? null : BuiltList<String>(<String>[filter.type!]),
      limit: 100,
    ),
  );
});

/// One intelligence event (`getIntelEvent`).
final intelEventProvider = FutureProvider.family<IntelligenceEvent, String>((ref, id) async {
  final api = ref.watch(foresignalApiProvider);
  return callApiRequired(() => api.getIntelligenceApi().getIntelEvent(eventId: id));
});

/// Every analysis cycle (`listAnalysisCycles`).
final cyclesProvider = FutureProvider<List<AnalysisCycle>>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  final page = await callApiRequired(() => api.getAssessmentsApi().listAnalysisCycles(limit: 500));
  return page.items.toList();
});

/// A cycle's runs, newest first (`listCycleRuns`).
final cycleRunsProvider = FutureProvider.family<List<CycleRun>, String>((ref, cycleId) async {
  final api = ref.watch(foresignalApiProvider);
  final page = await callApiRequired(
    () => api.getAssessmentsApi().listCycleRuns(cycleId: cycleId, limit: 50),
  );
  return page.items.toList();
});

/// One run with its packet (`getCycleRun`).
final cycleRunProvider = FutureProvider.family<CycleRun, String>((ref, runId) async {
  final api = ref.watch(foresignalApiProvider);
  return callApiRequired(() => api.getAssessmentsApi().getCycleRun(runId: runId));
});

/// Assessments, newest first, of one cadence or all (`listAssessments`).
final assessmentsProvider = FutureProvider.family<List<Assessment>, String?>((
  ref,
  cadence,
) async {
  final api = ref.watch(foresignalApiProvider);
  final page = await callApiRequired(
    () => api.getAssessmentsApi().listAssessments(cadence: cadence, limit: 50),
  );
  return page.items.toList();
});

/// The newest assessment of a cadence, or of any (`getLatestAssessment`),
/// with its full rendering; `null` when there is none yet.
final latestAssessmentProvider = FutureProvider.family<Assessment?, String?>((
  ref,
  cadence,
) async {
  final api = ref.watch(foresignalApiProvider);
  try {
    return await callApiRequired(
      () => api.getAssessmentsApi().getLatestAssessment(cadence: cadence),
    );
  } on ProblemException catch (e) {
    if (e.status == 404) {
      return null;
    }
    rethrow;
  } on HttpStatusException catch (e) {
    if (e.status == 404) {
      return null;
    }
    rethrow;
  }
});

/// The intelligence board (`getIntelBoard`).
final intelBoardProvider = FutureProvider<IntelBoard>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  return callApiRequired(() => api.getAssessmentsApi().getIntelBoard());
});

/// The calibration of every scope (`getIntelCalibration`).
final intelCalibrationProvider = FutureProvider<List<IntelCalibration>>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  final result = await callApiRequired(() => api.getIntelligenceApi().getIntelCalibration());
  return result.scopes.toList();
});

/// The corroboration policy in force (`getIntelCorroboration`).
final corroborationProvider = FutureProvider<IntelCorroboration>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  return callApiRequired(() => api.getIntelligenceApi().getIntelCorroboration());
});

/// One analysis cycle (`getAnalysisCycle`).
final cycleProvider = FutureProvider.family<AnalysisCycle, String>((ref, cycleId) async {
  final api = ref.watch(foresignalApiProvider);
  return callApiRequired(() => api.getAssessmentsApi().getAnalysisCycle(cycleId: cycleId));
});

/// One situation (`getSituation`).
final situationProvider = FutureProvider.family<Situation, String>((ref, id) async {
  final api = ref.watch(foresignalApiProvider);
  return callApiRequired(() => api.getSituationsApi().getSituation(situationId: id));
});

/// A situation's members (`listSituationMembers`), the first page.
final situationMembersProvider = FutureProvider.family<List<SituationMember>, String>((ref, id) async {
  final api = ref.watch(foresignalApiProvider);
  final page = await callApiRequired(
    () => api.getSituationsApi().listSituationMembers(situationId: id, limit: 200),
  );
  return page.items.toList();
});

/// A situation's timeline (`getSituationTimeline`), newest first.
final situationTimelineProvider = FutureProvider.family<List<SituationTimelineEntry>, String>((ref, id) async {
  final api = ref.watch(foresignalApiProvider);
  final page = await callApiRequired(
    () => api.getSituationsApi().getSituationTimeline(situationId: id, limit: 200),
  );
  return page.items.toList()..sort((a, b) => b.at.compareTo(a.at));
});

/// A situation's assessments (`listSituationAssessments`), newest first.
final situationAssessmentsProvider = FutureProvider.family<List<Assessment>, String>((ref, id) async {
  final api = ref.watch(foresignalApiProvider);
  final page = await callApiRequired(
    () => api.getAssessmentsApi().listSituationAssessments(situationId: id, limit: 20),
  );
  return page.items.toList()..sort((a, b) => b.createdAt.compareTo(a.createdAt));
});
