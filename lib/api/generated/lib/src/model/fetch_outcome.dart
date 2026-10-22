//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/persist_reason_counts.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fetch_outcome.g.dart';

/// FetchOutcome
///
/// Properties:
/// * [sourceId]
/// * [startedAt]
/// * [durationMs]
/// * [success]
/// * [recordsSeen]
/// * [recordsChanged] - Alias of `persisted` (kept for v1.1 clients)
/// * [fromSeq]
/// * [toSeq]
/// * [error]
/// * [fetchId] - fetch_log row of this fetch
/// * [persisted]
/// * [live] - Live (non-persisted) updates
/// * [touched] - Touch rows written
/// * [touchesThrottled]
/// * [late_]
/// * [skipped]
/// * [rejected]
/// * [byReason]
@BuiltValue()
abstract class FetchOutcome
    implements Built<FetchOutcome, FetchOutcomeBuilder> {
  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'startedAt')
  DateTime? get startedAt;

  @BuiltValueField(wireName: r'durationMs')
  int? get durationMs;

  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'recordsSeen')
  int get recordsSeen;

  /// Alias of `persisted` (kept for v1.1 clients)
  @BuiltValueField(wireName: r'recordsChanged')
  int get recordsChanged;

  @BuiltValueField(wireName: r'fromSeq')
  int? get fromSeq;

  @BuiltValueField(wireName: r'toSeq')
  int? get toSeq;

  @BuiltValueField(wireName: r'error')
  String? get error;

  /// fetch_log row of this fetch
  @BuiltValueField(wireName: r'fetchId')
  int? get fetchId;

  @BuiltValueField(wireName: r'persisted')
  int? get persisted;

  /// Live (non-persisted) updates
  @BuiltValueField(wireName: r'live')
  int? get live;

  /// Touch rows written
  @BuiltValueField(wireName: r'touched')
  int? get touched;

  @BuiltValueField(wireName: r'touchesThrottled')
  int? get touchesThrottled;

  @BuiltValueField(wireName: r'late')
  int? get late_;

  @BuiltValueField(wireName: r'skipped')
  int? get skipped;

  @BuiltValueField(wireName: r'rejected')
  int? get rejected;

  @BuiltValueField(wireName: r'byReason')
  PersistReasonCounts? get byReason;

  FetchOutcome._();

  factory FetchOutcome([void updates(FetchOutcomeBuilder b)]) = _$FetchOutcome;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FetchOutcomeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FetchOutcome> get serializer => _$FetchOutcomeSerializer();
}

class _$FetchOutcomeSerializer implements PrimitiveSerializer<FetchOutcome> {
  @override
  final Iterable<Type> types = const [FetchOutcome, _$FetchOutcome];

  @override
  final String wireName = r'FetchOutcome';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FetchOutcome object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    if (object.startedAt != null) {
      yield r'startedAt';
      yield serializers.serialize(
        object.startedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.durationMs != null) {
      yield r'durationMs';
      yield serializers.serialize(
        object.durationMs,
        specifiedType: const FullType(int),
      );
    }
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    yield r'recordsSeen';
    yield serializers.serialize(
      object.recordsSeen,
      specifiedType: const FullType(int),
    );
    yield r'recordsChanged';
    yield serializers.serialize(
      object.recordsChanged,
      specifiedType: const FullType(int),
    );
    if (object.fromSeq != null) {
      yield r'fromSeq';
      yield serializers.serialize(
        object.fromSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.toSeq != null) {
      yield r'toSeq';
      yield serializers.serialize(
        object.toSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.fetchId != null) {
      yield r'fetchId';
      yield serializers.serialize(
        object.fetchId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.persisted != null) {
      yield r'persisted';
      yield serializers.serialize(
        object.persisted,
        specifiedType: const FullType(int),
      );
    }
    if (object.live != null) {
      yield r'live';
      yield serializers.serialize(
        object.live,
        specifiedType: const FullType(int),
      );
    }
    if (object.touched != null) {
      yield r'touched';
      yield serializers.serialize(
        object.touched,
        specifiedType: const FullType(int),
      );
    }
    if (object.touchesThrottled != null) {
      yield r'touchesThrottled';
      yield serializers.serialize(
        object.touchesThrottled,
        specifiedType: const FullType(int),
      );
    }
    if (object.late_ != null) {
      yield r'late';
      yield serializers.serialize(
        object.late_,
        specifiedType: const FullType(int),
      );
    }
    if (object.skipped != null) {
      yield r'skipped';
      yield serializers.serialize(
        object.skipped,
        specifiedType: const FullType(int),
      );
    }
    if (object.rejected != null) {
      yield r'rejected';
      yield serializers.serialize(
        object.rejected,
        specifiedType: const FullType(int),
      );
    }
    if (object.byReason != null) {
      yield r'byReason';
      yield serializers.serialize(
        object.byReason,
        specifiedType: const FullType(PersistReasonCounts),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FetchOutcome object, {
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
    required FetchOutcomeBuilder result,
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
        case r'startedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.startedAt = valueDes;
          break;
        case r'durationMs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.durationMs = valueDes;
          break;
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'recordsSeen':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.recordsSeen = valueDes;
          break;
        case r'recordsChanged':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.recordsChanged = valueDes;
          break;
        case r'fromSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.fromSeq = valueDes;
          break;
        case r'toSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.toSeq = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        case r'fetchId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.fetchId = valueDes;
          break;
        case r'persisted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.persisted = valueDes;
          break;
        case r'live':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.live = valueDes;
          break;
        case r'touched':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.touched = valueDes;
          break;
        case r'touchesThrottled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.touchesThrottled = valueDes;
          break;
        case r'late':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.late_ = valueDes;
          break;
        case r'skipped':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.skipped = valueDes;
          break;
        case r'rejected':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.rejected = valueDes;
          break;
        case r'byReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PersistReasonCounts),
          ) as PersistReasonCounts?;
          if (valueDes == null) continue;
          result.byReason.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FetchOutcome deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FetchOutcomeBuilder();
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
