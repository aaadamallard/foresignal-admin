//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/social_cue_results_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/social_cue_trigger.dart';
import 'package:foresignal_api/src/model/social_cue_external_results_inner.dart';
import 'package:foresignal_api/src/model/social_platform_id.dart';
import 'package:foresignal_api/src/model/time_range.dart';
import 'package:foresignal_api/src/model/social_cue_query.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_cue.g.dart';

/// A cue-driven social search; results are a targeted sample that never feeds baselines and never corroborates its own trigger (`SocialCueService`, 137)
///
/// Properties:
/// * [id] - ULID identifier
/// * [trigger]
/// * [backend] - `xai-x-search` (026 provider `xai`, ranked sample with citations) is off by default
/// * [queries]
/// * [platforms]
/// * [window]
/// * [status]
/// * [statusReason] - e.g. BUDGET_EXCEEDED, PLATFORM_DISABLED
/// * [results]
/// * [externalResults] - One item per EDP provider searched
/// * [narrativeIds]
/// * [costUsd]
/// * [maxCostUsd]
/// * [createdBy] - `system` for automatic cues, else the principal
/// * [createdAt]
/// * [startedAt]
/// * [completedAt]
/// * [manifestId] - ULID identifier
@BuiltValue()
abstract class SocialCue implements Built<SocialCue, SocialCueBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'trigger')
  SocialCueTrigger get trigger;

  /// `xai-x-search` (026 provider `xai`, ranked sample with citations) is off by default
  @BuiltValueField(wireName: r'backend')
  SocialCueBackendEnum get backend;
  // enum backendEnum {  platform-apis,  xai-x-search,  };

  @BuiltValueField(wireName: r'queries')
  BuiltList<SocialCueQuery> get queries;

  @BuiltValueField(wireName: r'platforms')
  BuiltList<SocialPlatformId> get platforms;

  @BuiltValueField(wireName: r'window')
  TimeRange get window;

  @BuiltValueField(wireName: r'status')
  SocialCueStatusEnum get status;
  // enum statusEnum {  queued,  running,  done,  failed,  budget-refused,  };

  /// e.g. BUDGET_EXCEEDED, PLATFORM_DISABLED
  @BuiltValueField(wireName: r'statusReason')
  String? get statusReason;

  @BuiltValueField(wireName: r'results')
  BuiltList<SocialCueResultsInner> get results;

  /// One item per EDP provider searched
  @BuiltValueField(wireName: r'externalResults')
  BuiltList<SocialCueExternalResultsInner>? get externalResults;

  @BuiltValueField(wireName: r'narrativeIds')
  BuiltList<String> get narrativeIds;

  @BuiltValueField(wireName: r'costUsd')
  num get costUsd;

  @BuiltValueField(wireName: r'maxCostUsd')
  num? get maxCostUsd;

  /// `system` for automatic cues, else the principal
  @BuiltValueField(wireName: r'createdBy')
  String get createdBy;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'startedAt')
  DateTime? get startedAt;

  @BuiltValueField(wireName: r'completedAt')
  DateTime? get completedAt;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String? get manifestId;

  SocialCue._();

  factory SocialCue([void updates(SocialCueBuilder b)]) = _$SocialCue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialCueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialCue> get serializer => _$SocialCueSerializer();
}

class _$SocialCueSerializer implements PrimitiveSerializer<SocialCue> {
  @override
  final Iterable<Type> types = const [SocialCue, _$SocialCue];

  @override
  final String wireName = r'SocialCue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialCue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'trigger';
    yield serializers.serialize(
      object.trigger,
      specifiedType: const FullType(SocialCueTrigger),
    );
    yield r'backend';
    yield serializers.serialize(
      object.backend,
      specifiedType: const FullType(SocialCueBackendEnum),
    );
    yield r'queries';
    yield serializers.serialize(
      object.queries,
      specifiedType: const FullType(BuiltList, [FullType(SocialCueQuery)]),
    );
    yield r'platforms';
    yield serializers.serialize(
      object.platforms,
      specifiedType: const FullType(BuiltList, [FullType(SocialPlatformId)]),
    );
    yield r'window';
    yield serializers.serialize(
      object.window,
      specifiedType: const FullType(TimeRange),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(SocialCueStatusEnum),
    );
    if (object.statusReason != null) {
      yield r'statusReason';
      yield serializers.serialize(
        object.statusReason,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'results';
    yield serializers.serialize(
      object.results,
      specifiedType: const FullType(BuiltList, [
        FullType(SocialCueResultsInner),
      ]),
    );
    if (object.externalResults != null) {
      yield r'externalResults';
      yield serializers.serialize(
        object.externalResults,
        specifiedType: const FullType(BuiltList, [
          FullType(SocialCueExternalResultsInner),
        ]),
      );
    }
    yield r'narrativeIds';
    yield serializers.serialize(
      object.narrativeIds,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'costUsd';
    yield serializers.serialize(
      object.costUsd,
      specifiedType: const FullType(num),
    );
    if (object.maxCostUsd != null) {
      yield r'maxCostUsd';
      yield serializers.serialize(
        object.maxCostUsd,
        specifiedType: const FullType(num),
      );
    }
    yield r'createdBy';
    yield serializers.serialize(
      object.createdBy,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.startedAt != null) {
      yield r'startedAt';
      yield serializers.serialize(
        object.startedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.completedAt != null) {
      yield r'completedAt';
      yield serializers.serialize(
        object.completedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.manifestId != null) {
      yield r'manifestId';
      yield serializers.serialize(
        object.manifestId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialCue object, {
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
    required SocialCueBuilder result,
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
        case r'trigger':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SocialCueTrigger),
                  )
                  as SocialCueTrigger;
          result.trigger.replace(valueDes);
          break;
        case r'backend':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SocialCueBackendEnum),
                  )
                  as SocialCueBackendEnum;
          result.backend = valueDes;
          break;
        case r'queries':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(SocialCueQuery),
                    ]),
                  )
                  as BuiltList<SocialCueQuery>;
          result.queries.replace(valueDes);
          break;
        case r'platforms':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(SocialPlatformId),
                    ]),
                  )
                  as BuiltList<SocialPlatformId>;
          result.platforms.replace(valueDes);
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
                    specifiedType: const FullType(SocialCueStatusEnum),
                  )
                  as SocialCueStatusEnum;
          result.status = valueDes;
          break;
        case r'statusReason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.statusReason = valueDes;
          break;
        case r'results':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(SocialCueResultsInner),
                    ]),
                  )
                  as BuiltList<SocialCueResultsInner>;
          result.results.replace(valueDes);
          break;
        case r'externalResults':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(SocialCueExternalResultsInner),
                    ]),
                  )
                  as BuiltList<SocialCueExternalResultsInner>?;
          if (valueDes == null) continue;
          result.externalResults.replace(valueDes);
          break;
        case r'narrativeIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.narrativeIds.replace(valueDes);
          break;
        case r'costUsd':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.costUsd = valueDes;
          break;
        case r'maxCostUsd':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.maxCostUsd = valueDes;
          break;
        case r'createdBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.createdBy = valueDes;
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.createdAt = valueDes;
          break;
        case r'startedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.startedAt = valueDes;
          break;
        case r'completedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.completedAt = valueDes;
          break;
        case r'manifestId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.manifestId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialCue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialCueBuilder();
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

/// `xai-x-search` (026 provider `xai`, ranked sample with citations) is off by default
class SocialCueBackendEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'platform-apis')
  static const SocialCueBackendEnum platformApis =
      _$socialCueBackendEnum_platformApis;
  @BuiltValueEnumConst(wireName: r'xai-x-search')
  static const SocialCueBackendEnum xaiXSearch =
      _$socialCueBackendEnum_xaiXSearch;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SocialCueBackendEnum unknownDefaultOpenApi =
      _$socialCueBackendEnum_unknownDefaultOpenApi;

  static Serializer<SocialCueBackendEnum> get serializer =>
      _$socialCueBackendEnumSerializer;

  const SocialCueBackendEnum._(String name) : super(name);

  static BuiltSet<SocialCueBackendEnum> get values =>
      _$socialCueBackendEnumValues;
  static SocialCueBackendEnum valueOf(String name) =>
      _$socialCueBackendEnumValueOf(name);
}

class SocialCueStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'queued')
  static const SocialCueStatusEnum queued = _$socialCueStatusEnum_queued;
  @BuiltValueEnumConst(wireName: r'running')
  static const SocialCueStatusEnum running = _$socialCueStatusEnum_running;
  @BuiltValueEnumConst(wireName: r'done')
  static const SocialCueStatusEnum done = _$socialCueStatusEnum_done;
  @BuiltValueEnumConst(wireName: r'failed')
  static const SocialCueStatusEnum failed = _$socialCueStatusEnum_failed;
  @BuiltValueEnumConst(wireName: r'budget-refused')
  static const SocialCueStatusEnum budgetRefused =
      _$socialCueStatusEnum_budgetRefused;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SocialCueStatusEnum unknownDefaultOpenApi =
      _$socialCueStatusEnum_unknownDefaultOpenApi;

  static Serializer<SocialCueStatusEnum> get serializer =>
      _$socialCueStatusEnumSerializer;

  const SocialCueStatusEnum._(String name) : super(name);

  static BuiltSet<SocialCueStatusEnum> get values =>
      _$socialCueStatusEnumValues;
  static SocialCueStatusEnum valueOf(String name) =>
      _$socialCueStatusEnumValueOf(name);
}
