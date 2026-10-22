//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/budget.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/health_status.dart';
import 'package:foresignal_api/src/model/source_storage.dart';
import 'package:foresignal_api/src/model/doctor_report_summary.dart';
import 'package:foresignal_api/src/model/coverage.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'source_health.g.dart';

/// SourceHealth
///
/// Properties:
/// * [sourceId]
/// * [status]
/// * [statusReason]
/// * [lastAttemptAt]
/// * [lastSuccessAt]
/// * [lastErrorAt]
/// * [lastError]
/// * [lastHttpStatus]
/// * [consecutiveFailures]
/// * [lastRecordsSeen]
/// * [lastRecordsChanged]
/// * [errorRateLastHour]
/// * [backoffUntil]
/// * [budget]
/// * [budgetUsedToday]
/// * [budgetRemainingToday]
/// * [refusedLastHour]
/// * [requestsLastHour]
/// * [bytesLastHour]
/// * [coverage]
/// * [storage]
/// * [lastDataAt] - Last OK fetch or stream flush with records (a 304 never sets it)
/// * [budgetHoursRemaining] - Hours until today's budget is exhausted at the last hour's rate; null when that rate is 0
/// * [newestFrameAt] - Product sources: newest frame time (frame-age health rule)
/// * [frameAgeSeconds] - Product sources: age of the newest frame
/// * [details] - Adapter-specific health details; omitted when there are none. aisstream (063): `compressionEnabled` (from its SubscriptionConfirmation), `perMessageDeflate` (whether the handshake negotiated it; present while connected) and `vessels` (vessels held in the merged state)
/// * [lastDoctorReport]
/// * [spentUsdThisMonth] - Paid adapters: money spent this calendar month (135)
@BuiltValue()
abstract class SourceHealth
    implements Built<SourceHealth, SourceHealthBuilder> {
  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'status')
  HealthStatus get status;
  // enum statusEnum {  healthy,  degraded,  failing,  idle,  disabled,  };

  @BuiltValueField(wireName: r'statusReason')
  String? get statusReason;

  @BuiltValueField(wireName: r'lastAttemptAt')
  DateTime? get lastAttemptAt;

  @BuiltValueField(wireName: r'lastSuccessAt')
  DateTime? get lastSuccessAt;

  @BuiltValueField(wireName: r'lastErrorAt')
  DateTime? get lastErrorAt;

  @BuiltValueField(wireName: r'lastError')
  String? get lastError;

  @BuiltValueField(wireName: r'lastHttpStatus')
  int? get lastHttpStatus;

  @BuiltValueField(wireName: r'consecutiveFailures')
  int get consecutiveFailures;

  @BuiltValueField(wireName: r'lastRecordsSeen')
  int? get lastRecordsSeen;

  @BuiltValueField(wireName: r'lastRecordsChanged')
  int? get lastRecordsChanged;

  @BuiltValueField(wireName: r'errorRateLastHour')
  num? get errorRateLastHour;

  @BuiltValueField(wireName: r'backoffUntil')
  DateTime? get backoffUntil;

  @BuiltValueField(wireName: r'budget')
  Budget? get budget;

  @BuiltValueField(wireName: r'budgetUsedToday')
  int? get budgetUsedToday;

  @BuiltValueField(wireName: r'budgetRemainingToday')
  int? get budgetRemainingToday;

  @BuiltValueField(wireName: r'refusedLastHour')
  int? get refusedLastHour;

  @BuiltValueField(wireName: r'requestsLastHour')
  int? get requestsLastHour;

  @BuiltValueField(wireName: r'bytesLastHour')
  int? get bytesLastHour;

  @BuiltValueField(wireName: r'coverage')
  Coverage? get coverage;

  @BuiltValueField(wireName: r'storage')
  SourceStorage? get storage;

  /// Last OK fetch or stream flush with records (a 304 never sets it)
  @BuiltValueField(wireName: r'lastDataAt')
  DateTime? get lastDataAt;

  /// Hours until today's budget is exhausted at the last hour's rate; null when that rate is 0
  @BuiltValueField(wireName: r'budgetHoursRemaining')
  num? get budgetHoursRemaining;

  /// Product sources: newest frame time (frame-age health rule)
  @BuiltValueField(wireName: r'newestFrameAt')
  DateTime? get newestFrameAt;

  /// Product sources: age of the newest frame
  @BuiltValueField(wireName: r'frameAgeSeconds')
  int? get frameAgeSeconds;

  /// Adapter-specific health details; omitted when there are none. aisstream (063): `compressionEnabled` (from its SubscriptionConfirmation), `perMessageDeflate` (whether the handshake negotiated it; present while connected) and `vessels` (vessels held in the merged state)
  @BuiltValueField(wireName: r'details')
  BuiltMap<String, JsonObject?>? get details;

  @BuiltValueField(wireName: r'lastDoctorReport')
  DoctorReportSummary? get lastDoctorReport;

  /// Paid adapters: money spent this calendar month (135)
  @BuiltValueField(wireName: r'spentUsdThisMonth')
  num? get spentUsdThisMonth;

  SourceHealth._();

  factory SourceHealth([void updates(SourceHealthBuilder b)]) = _$SourceHealth;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SourceHealthBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SourceHealth> get serializer => _$SourceHealthSerializer();
}

class _$SourceHealthSerializer implements PrimitiveSerializer<SourceHealth> {
  @override
  final Iterable<Type> types = const [SourceHealth, _$SourceHealth];

  @override
  final String wireName = r'SourceHealth';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SourceHealth object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(HealthStatus),
    );
    if (object.statusReason != null) {
      yield r'statusReason';
      yield serializers.serialize(
        object.statusReason,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastAttemptAt != null) {
      yield r'lastAttemptAt';
      yield serializers.serialize(
        object.lastAttemptAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastSuccessAt != null) {
      yield r'lastSuccessAt';
      yield serializers.serialize(
        object.lastSuccessAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastErrorAt != null) {
      yield r'lastErrorAt';
      yield serializers.serialize(
        object.lastErrorAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastError != null) {
      yield r'lastError';
      yield serializers.serialize(
        object.lastError,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lastHttpStatus != null) {
      yield r'lastHttpStatus';
      yield serializers.serialize(
        object.lastHttpStatus,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'consecutiveFailures';
    yield serializers.serialize(
      object.consecutiveFailures,
      specifiedType: const FullType(int),
    );
    if (object.lastRecordsSeen != null) {
      yield r'lastRecordsSeen';
      yield serializers.serialize(
        object.lastRecordsSeen,
        specifiedType: const FullType(int),
      );
    }
    if (object.lastRecordsChanged != null) {
      yield r'lastRecordsChanged';
      yield serializers.serialize(
        object.lastRecordsChanged,
        specifiedType: const FullType(int),
      );
    }
    if (object.errorRateLastHour != null) {
      yield r'errorRateLastHour';
      yield serializers.serialize(
        object.errorRateLastHour,
        specifiedType: const FullType(num),
      );
    }
    if (object.backoffUntil != null) {
      yield r'backoffUntil';
      yield serializers.serialize(
        object.backoffUntil,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.budget != null) {
      yield r'budget';
      yield serializers.serialize(
        object.budget,
        specifiedType: const FullType(Budget),
      );
    }
    if (object.budgetUsedToday != null) {
      yield r'budgetUsedToday';
      yield serializers.serialize(
        object.budgetUsedToday,
        specifiedType: const FullType(int),
      );
    }
    if (object.budgetRemainingToday != null) {
      yield r'budgetRemainingToday';
      yield serializers.serialize(
        object.budgetRemainingToday,
        specifiedType: const FullType(int),
      );
    }
    if (object.refusedLastHour != null) {
      yield r'refusedLastHour';
      yield serializers.serialize(
        object.refusedLastHour,
        specifiedType: const FullType(int),
      );
    }
    if (object.requestsLastHour != null) {
      yield r'requestsLastHour';
      yield serializers.serialize(
        object.requestsLastHour,
        specifiedType: const FullType(int),
      );
    }
    if (object.bytesLastHour != null) {
      yield r'bytesLastHour';
      yield serializers.serialize(
        object.bytesLastHour,
        specifiedType: const FullType(int),
      );
    }
    if (object.coverage != null) {
      yield r'coverage';
      yield serializers.serialize(
        object.coverage,
        specifiedType: const FullType.nullable(Coverage),
      );
    }
    if (object.storage != null) {
      yield r'storage';
      yield serializers.serialize(
        object.storage,
        specifiedType: const FullType(SourceStorage),
      );
    }
    if (object.lastDataAt != null) {
      yield r'lastDataAt';
      yield serializers.serialize(
        object.lastDataAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.budgetHoursRemaining != null) {
      yield r'budgetHoursRemaining';
      yield serializers.serialize(
        object.budgetHoursRemaining,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.newestFrameAt != null) {
      yield r'newestFrameAt';
      yield serializers.serialize(
        object.newestFrameAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.frameAgeSeconds != null) {
      yield r'frameAgeSeconds';
      yield serializers.serialize(
        object.frameAgeSeconds,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.details != null) {
      yield r'details';
      yield serializers.serialize(
        object.details,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.lastDoctorReport != null) {
      yield r'lastDoctorReport';
      yield serializers.serialize(
        object.lastDoctorReport,
        specifiedType: const FullType.nullable(DoctorReportSummary),
      );
    }
    if (object.spentUsdThisMonth != null) {
      yield r'spentUsdThisMonth';
      yield serializers.serialize(
        object.spentUsdThisMonth,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SourceHealth object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SourceHealthBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sourceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(HealthStatus),
          ) as HealthStatus;
          result.status = valueDes;
          break;
        case r'statusReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.statusReason = valueDes;
          break;
        case r'lastAttemptAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastAttemptAt = valueDes;
          break;
        case r'lastSuccessAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastSuccessAt = valueDes;
          break;
        case r'lastErrorAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastErrorAt = valueDes;
          break;
        case r'lastError':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastError = valueDes;
          break;
        case r'lastHttpStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.lastHttpStatus = valueDes;
          break;
        case r'consecutiveFailures':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.consecutiveFailures = valueDes;
          break;
        case r'lastRecordsSeen':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.lastRecordsSeen = valueDes;
          break;
        case r'lastRecordsChanged':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.lastRecordsChanged = valueDes;
          break;
        case r'errorRateLastHour':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.errorRateLastHour = valueDes;
          break;
        case r'backoffUntil':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.backoffUntil = valueDes;
          break;
        case r'budget':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Budget),
          ) as Budget?;
          if (valueDes == null) continue;
          result.budget.replace(valueDes);
          break;
        case r'budgetUsedToday':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.budgetUsedToday = valueDes;
          break;
        case r'budgetRemainingToday':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.budgetRemainingToday = valueDes;
          break;
        case r'refusedLastHour':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.refusedLastHour = valueDes;
          break;
        case r'requestsLastHour':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.requestsLastHour = valueDes;
          break;
        case r'bytesLastHour':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.bytesLastHour = valueDes;
          break;
        case r'coverage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Coverage),
          ) as Coverage?;
          if (valueDes == null) continue;
          result.coverage.replace(valueDes);
          break;
        case r'storage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SourceStorage),
          ) as SourceStorage?;
          if (valueDes == null) continue;
          result.storage.replace(valueDes);
          break;
        case r'lastDataAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastDataAt = valueDes;
          break;
        case r'budgetHoursRemaining':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.budgetHoursRemaining = valueDes;
          break;
        case r'newestFrameAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.newestFrameAt = valueDes;
          break;
        case r'frameAgeSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.frameAgeSeconds = valueDes;
          break;
        case r'details':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.details.replace(valueDes);
          break;
        case r'lastDoctorReport':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DoctorReportSummary),
          ) as DoctorReportSummary?;
          if (valueDes == null) continue;
          result.lastDoctorReport.replace(valueDes);
          break;
        case r'spentUsdThisMonth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.spentUsdThisMonth = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SourceHealth deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SourceHealthBuilder();
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
