//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/social_comparison_revision.dart';
import 'package:foresignal_api/src/model/claim_place.dart';
import 'package:foresignal_api/src/model/social_comparison_detectability.dart';
import 'package:foresignal_api/src/model/social_physical_evidence.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/caveat.dart';
import 'package:foresignal_api/src/model/social_lead_times.dart';
import 'package:foresignal_api/src/model/social_comparison_contradiction.dart';
import 'package:foresignal_api/src/model/time_range.dart';
import 'package:foresignal_api/src/model/detector_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_comparison.g.dart';

/// A claim tested against independent physical evidence in the same place and window, respecting detectability (`SocialPhysicalComparator` 1.0.0, 137)
///
/// Properties:
/// * [id] - ULID identifier
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [claimId] - ULID identifier
/// * [narrativeId] - ULID identifier
/// * [signalFamily]
/// * [place]
/// * [window]
/// * [status] - `unobserved` only when `canSeeAbsence` is ok over the full window; otherwise `insufficient-coverage`; `pending` while the window (plus publication lag) is open
/// * [physicalEvidence]
/// * [detectability]
/// * [leadTimes]
/// * [contradiction]
/// * [foundBy] - `cue` when the narrative was found by looking; lead-time statistics keep the two apart
/// * [cueId] - ULID identifier
/// * [questionId] - 122 ledger question opened while pending
/// * [revision]
/// * [finalAt] - Window end plus the family's publication lag; no revisions after
/// * [comparator]
/// * [manifestId] - ULID identifier
/// * [evaluatedAt]
/// * [revisions] - Detail view
/// * [caveats]
@BuiltValue()
abstract class SocialComparison
    implements Built<SocialComparison, SocialComparisonBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String get ref;

  /// ULID identifier
  @BuiltValueField(wireName: r'claimId')
  String get claimId;

  /// ULID identifier
  @BuiltValueField(wireName: r'narrativeId')
  String get narrativeId;

  @BuiltValueField(wireName: r'signalFamily')
  String get signalFamily;

  @BuiltValueField(wireName: r'place')
  ClaimPlace get place;

  @BuiltValueField(wireName: r'window')
  TimeRange get window;

  /// `unobserved` only when `canSeeAbsence` is ok over the full window; otherwise `insufficient-coverage`; `pending` while the window (plus publication lag) is open
  @BuiltValueField(wireName: r'status')
  SocialComparisonStatusEnum get status;
  // enum statusEnum {  pending,  corroborated,  unobserved,  contradicted,  insufficient-coverage,  };

  @BuiltValueField(wireName: r'physicalEvidence')
  BuiltList<SocialPhysicalEvidence> get physicalEvidence;

  @BuiltValueField(wireName: r'detectability')
  SocialComparisonDetectability get detectability;

  @BuiltValueField(wireName: r'leadTimes')
  SocialLeadTimes get leadTimes;

  @BuiltValueField(wireName: r'contradiction')
  SocialComparisonContradiction? get contradiction;

  /// `cue` when the narrative was found by looking; lead-time statistics keep the two apart
  @BuiltValueField(wireName: r'foundBy')
  SocialComparisonFoundByEnum get foundBy;
  // enum foundByEnum {  organic,  cue,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'cueId')
  String? get cueId;

  /// 122 ledger question opened while pending
  @BuiltValueField(wireName: r'questionId')
  String? get questionId;

  @BuiltValueField(wireName: r'revision')
  int get revision;

  /// Window end plus the family's publication lag; no revisions after
  @BuiltValueField(wireName: r'finalAt')
  DateTime? get finalAt;

  @BuiltValueField(wireName: r'comparator')
  DetectorRef get comparator;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String get manifestId;

  @BuiltValueField(wireName: r'evaluatedAt')
  DateTime get evaluatedAt;

  /// Detail view
  @BuiltValueField(wireName: r'revisions')
  BuiltList<SocialComparisonRevision>? get revisions;

  @BuiltValueField(wireName: r'caveats')
  BuiltList<Caveat>? get caveats;

  SocialComparison._();

  factory SocialComparison([void updates(SocialComparisonBuilder b)]) =
      _$SocialComparison;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialComparisonBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialComparison> get serializer =>
      _$SocialComparisonSerializer();
}

class _$SocialComparisonSerializer
    implements PrimitiveSerializer<SocialComparison> {
  @override
  final Iterable<Type> types = const [SocialComparison, _$SocialComparison];

  @override
  final String wireName = r'SocialComparison';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialComparison object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    yield r'claimId';
    yield serializers.serialize(
      object.claimId,
      specifiedType: const FullType(String),
    );
    yield r'narrativeId';
    yield serializers.serialize(
      object.narrativeId,
      specifiedType: const FullType(String),
    );
    yield r'signalFamily';
    yield serializers.serialize(
      object.signalFamily,
      specifiedType: const FullType(String),
    );
    yield r'place';
    yield serializers.serialize(
      object.place,
      specifiedType: const FullType(ClaimPlace),
    );
    yield r'window';
    yield serializers.serialize(
      object.window,
      specifiedType: const FullType(TimeRange),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(SocialComparisonStatusEnum),
    );
    yield r'physicalEvidence';
    yield serializers.serialize(
      object.physicalEvidence,
      specifiedType: const FullType(BuiltList, [
        FullType(SocialPhysicalEvidence),
      ]),
    );
    yield r'detectability';
    yield serializers.serialize(
      object.detectability,
      specifiedType: const FullType(SocialComparisonDetectability),
    );
    yield r'leadTimes';
    yield serializers.serialize(
      object.leadTimes,
      specifiedType: const FullType(SocialLeadTimes),
    );
    if (object.contradiction != null) {
      yield r'contradiction';
      yield serializers.serialize(
        object.contradiction,
        specifiedType: const FullType.nullable(SocialComparisonContradiction),
      );
    }
    yield r'foundBy';
    yield serializers.serialize(
      object.foundBy,
      specifiedType: const FullType(SocialComparisonFoundByEnum),
    );
    if (object.cueId != null) {
      yield r'cueId';
      yield serializers.serialize(
        object.cueId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.questionId != null) {
      yield r'questionId';
      yield serializers.serialize(
        object.questionId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'revision';
    yield serializers.serialize(
      object.revision,
      specifiedType: const FullType(int),
    );
    if (object.finalAt != null) {
      yield r'finalAt';
      yield serializers.serialize(
        object.finalAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'comparator';
    yield serializers.serialize(
      object.comparator,
      specifiedType: const FullType(DetectorRef),
    );
    yield r'manifestId';
    yield serializers.serialize(
      object.manifestId,
      specifiedType: const FullType(String),
    );
    yield r'evaluatedAt';
    yield serializers.serialize(
      object.evaluatedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.revisions != null) {
      yield r'revisions';
      yield serializers.serialize(
        object.revisions,
        specifiedType: const FullType(BuiltList, [
          FullType(SocialComparisonRevision),
        ]),
      );
    }
    if (object.caveats != null) {
      yield r'caveats';
      yield serializers.serialize(
        object.caveats,
        specifiedType: const FullType(BuiltList, [FullType(Caveat)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialComparison object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SocialComparisonBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ref = valueDes;
          break;
        case r'claimId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.claimId = valueDes;
          break;
        case r'narrativeId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.narrativeId = valueDes;
          break;
        case r'signalFamily':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.signalFamily = valueDes;
          break;
        case r'place':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ClaimPlace),
                  )
                  as ClaimPlace;
          result.place.replace(valueDes);
          break;
        case r'window':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(TimeRange),
                  )
                  as TimeRange;
          result.window.replace(valueDes);
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SocialComparisonStatusEnum),
                  )
                  as SocialComparisonStatusEnum;
          result.status = valueDes;
          break;
        case r'physicalEvidence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(SocialPhysicalEvidence),
                    ]),
                  )
                  as BuiltList<SocialPhysicalEvidence>;
          result.physicalEvidence.replace(valueDes);
          break;
        case r'detectability':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      SocialComparisonDetectability,
                    ),
                  )
                  as SocialComparisonDetectability;
          result.detectability.replace(valueDes);
          break;
        case r'leadTimes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SocialLeadTimes),
                  )
                  as SocialLeadTimes;
          result.leadTimes.replace(valueDes);
          break;
        case r'contradiction':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SocialComparisonContradiction,
                    ),
                  )
                  as SocialComparisonContradiction?;
          if (valueDes == null) continue;
          result.contradiction.replace(valueDes);
          break;
        case r'foundBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SocialComparisonFoundByEnum),
                  )
                  as SocialComparisonFoundByEnum;
          result.foundBy = valueDes;
          break;
        case r'cueId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.cueId = valueDes;
          break;
        case r'questionId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.questionId = valueDes;
          break;
        case r'revision':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.revision = valueDes;
          break;
        case r'finalAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.finalAt = valueDes;
          break;
        case r'comparator':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DetectorRef),
                  )
                  as DetectorRef;
          result.comparator.replace(valueDes);
          break;
        case r'manifestId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.manifestId = valueDes;
          break;
        case r'evaluatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.evaluatedAt = valueDes;
          break;
        case r'revisions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(SocialComparisonRevision),
                    ]),
                  )
                  as BuiltList<SocialComparisonRevision>?;
          if (valueDes == null) continue;
          result.revisions.replace(valueDes);
          break;
        case r'caveats':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(Caveat),
                    ]),
                  )
                  as BuiltList<Caveat>?;
          if (valueDes == null) continue;
          result.caveats.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialComparison deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialComparisonBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

/// `unobserved` only when `canSeeAbsence` is ok over the full window; otherwise `insufficient-coverage`; `pending` while the window (plus publication lag) is open
class SocialComparisonStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pending')
  static const SocialComparisonStatusEnum pending =
      _$socialComparisonStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'corroborated')
  static const SocialComparisonStatusEnum corroborated =
      _$socialComparisonStatusEnum_corroborated;
  @BuiltValueEnumConst(wireName: r'unobserved')
  static const SocialComparisonStatusEnum unobserved =
      _$socialComparisonStatusEnum_unobserved;
  @BuiltValueEnumConst(wireName: r'contradicted')
  static const SocialComparisonStatusEnum contradicted =
      _$socialComparisonStatusEnum_contradicted;
  @BuiltValueEnumConst(wireName: r'insufficient-coverage')
  static const SocialComparisonStatusEnum insufficientCoverage =
      _$socialComparisonStatusEnum_insufficientCoverage;

  static Serializer<SocialComparisonStatusEnum> get serializer =>
      _$socialComparisonStatusEnumSerializer;

  const SocialComparisonStatusEnum._(String name) : super(name);

  static BuiltSet<SocialComparisonStatusEnum> get values =>
      _$socialComparisonStatusEnumValues;
  static SocialComparisonStatusEnum valueOf(String name) =>
      _$socialComparisonStatusEnumValueOf(name);
}

/// `cue` when the narrative was found by looking; lead-time statistics keep the two apart
class SocialComparisonFoundByEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'organic')
  static const SocialComparisonFoundByEnum organic =
      _$socialComparisonFoundByEnum_organic;
  @BuiltValueEnumConst(wireName: r'cue')
  static const SocialComparisonFoundByEnum cue =
      _$socialComparisonFoundByEnum_cue;

  static Serializer<SocialComparisonFoundByEnum> get serializer =>
      _$socialComparisonFoundByEnumSerializer;

  const SocialComparisonFoundByEnum._(String name) : super(name);

  static BuiltSet<SocialComparisonFoundByEnum> get values =>
      _$socialComparisonFoundByEnumValues;
  static SocialComparisonFoundByEnum valueOf(String name) =>
      _$socialComparisonFoundByEnumValueOf(name);
}
