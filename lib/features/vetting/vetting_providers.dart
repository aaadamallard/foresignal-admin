import 'package:built_collection/built_collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../api/api.dart';

/// The filter of the claim list: statuses by wire name (empty for all) and a
/// lexicon claim type.
class ClaimFilter {
  /// Creates the filter.
  const ClaimFilter({this.statuses = const <String>{}, this.type});

  /// Statuses shown, by wire name; empty for all.
  final Set<String> statuses;

  /// The lexicon claim type shown; `null` for all.
  final String? type;

  @override
  bool operator ==(Object other) =>
      other is ClaimFilter &&
      other.type == type &&
      other.statuses.length == statuses.length &&
      other.statuses.containsAll(statuses);

  @override
  int get hashCode => Object.hash(type, Object.hashAllUnordered(statuses));
}

BuiltList<String>? _list(Set<String> values) => values.isEmpty ? null : BuiltList<String>(values);

/// A page of claims (`listClaims`), newest first.
final claimsProvider = FutureProvider.family<ClaimPage, ClaimFilter>((ref, filter) async {
  final api = ref.watch(foresignalApiProvider);
  return callApiRequired(
    () => api.getSocialApi().listClaims(
      status: _list(filter.statuses),
      type: filter.type,
      limit: 200,
    ),
  );
});

/// One claim (`getClaim`).
final claimProvider = FutureProvider.family<Claim, String>((ref, id) async {
  final api = ref.watch(foresignalApiProvider);
  return callApiRequired(() => api.getSocialApi().getClaim(claimId: id));
});

/// The comparisons of one claim (`listSocialComparisons?claimId=`).
final claimComparisonsProvider = FutureProvider.family<List<SocialComparison>, String>((
  ref,
  claimId,
) async {
  final api = ref.watch(foresignalApiProvider);
  final page = await callApiRequired(
    () => api.getSocialApi().listSocialComparisons(claimId: claimId, limit: 50),
  );
  return page.items.toList();
});

/// Narratives, most recently active first (`listNarratives`).
final narrativesProvider = FutureProvider<List<NarrativeSummary>>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  final page = await callApiRequired(() => api.getSocialApi().listNarratives(limit: 200));
  return page.items.toList();
});

/// Social–physical comparisons (`listSocialComparisons`).
final comparisonsProvider = FutureProvider<List<SocialComparison>>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  final page = await callApiRequired(() => api.getSocialApi().listSocialComparisons(limit: 200));
  return page.items.toList();
});

/// Social cues (`listSocialCues`).
final cuesProvider = FutureProvider<List<SocialCue>>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  final page = await callApiRequired(() => api.getSocialApi().listSocialCues(limit: 200));
  return page.items.toList();
});

/// Social lead-time statistics (`getSocialLeadTimes`).
final leadTimesProvider = FutureProvider<LeadTimeStats>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  return callApiRequired(() => api.getSocialApi().getSocialLeadTimes());
});

/// Every social platform adapter (`listSocialPlatforms`).
final socialPlatformsProvider = FutureProvider<List<SocialPlatform>>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  final list = await callApiRequired(() => api.getSocialApi().listSocialPlatforms());
  return list.toList();
});

/// One social platform adapter (`getSocialPlatform`), by wire id.
final socialPlatformProvider = FutureProvider.family<SocialPlatform, String>((ref, id) async {
  final api = ref.watch(foresignalApiProvider);
  final platformId = SocialPlatformId.values.firstWhere((p) => wireOf(p) == id);
  return callApiRequired(() => api.getSocialApi().getSocialPlatform(platformId: platformId));
});

/// The social settings (`getSocialSettings`).
final socialSettingsProvider = FutureProvider<SocialSettings>((ref) async {
  final api = ref.watch(foresignalApiProvider);
  return callApiRequired(() => api.getSocialApi().getSocialSettings());
});

/// The search of the entity list.
class EntityQuery {
  /// Creates the query.
  const EntityQuery({this.text = '', this.type});

  /// A name prefix (two or more characters) or `keyType:value`.
  final String text;

  /// The entity type, by wire name; `null` for all.
  final String? type;

  /// Whether [text] is an exact key lookup rather than a name prefix.
  bool get isKey => RegExp(r'^[a-z0-9-]+:.+$').hasMatch(text.trim());

  @override
  bool operator ==(Object other) =>
      other is EntityQuery && other.text == text && other.type == type;

  @override
  int get hashCode => Object.hash(text, type);
}

/// Entities matching a query (`listEntities`): a key is an exact lookup, a
/// shorter text lists every entity of the type.
final entitiesProvider = FutureProvider.family<EntityPage, EntityQuery>((ref, query) async {
  final api = ref.watch(foresignalApiProvider);
  final text = query.text.trim();
  return callApiRequired(
    () => api.getEntitiesApi().listEntities(
      q: query.isKey || text.length < 2 ? null : text,
      key: query.isKey ? text : null,
      type: query.type,
      limit: 200,
    ),
  );
});

/// One entity (`getEntity`).
final entityProvider = FutureProvider.family<Entity, String>((ref, id) async {
  final api = ref.watch(foresignalApiProvider);
  return callApiRequired(() => api.getEntitiesApi().getEntity(entityId: id));
});

/// The records linked to an entity (`listEntityRecords`), with closed links
/// when asked.
final entityRecordsProvider = FutureProvider.family<EntityRecordList, (String, bool)>((
  ref,
  key,
) async {
  final api = ref.watch(foresignalApiProvider);
  final (id, includeClosed) = key;
  return callApiRequired(
    () => api.getEntitiesApi().listEntityRecords(entityId: id, includeClosed: includeClosed),
  );
});
