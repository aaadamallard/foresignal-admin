//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/ingest_outcome_rejections_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ingest_outcome.g.dart';

/// IngestOutcome
///
/// Properties:
/// * [seen]
/// * [changed] - Deprecated alias of `persisted`
/// * [rejected]
/// * [fromSeq]
/// * [toSeq]
/// * [rejections]
/// * [persisted] - Versions written
/// * [live] - Observations written as live-only updates, without a version
/// * [touched] - Observations written as touches (unchanged content, refreshed observedAt, lastReceivedAt and validity)
/// * [touchesThrottled]
/// * [late_]
/// * [skipped]
/// * [byReason] - Persisted versions per persist reason; every reason is present, zeros included: FIRST, REAPPEAR, SIGNIFICANT, TOMBSTONE, CHANGE, SAMPLE, KEYFRAME, HEARTBEAT, TRIGGER_EDGE
/// * [versionBytes]
@BuiltValue()
abstract class IngestOutcome
    implements Built<IngestOutcome, IngestOutcomeBuilder> {
  @BuiltValueField(wireName: r'seen')
  int get seen;

  /// Deprecated alias of `persisted`
  @Deprecated('changed has been deprecated')
  @BuiltValueField(wireName: r'changed')
  int get changed;

  @BuiltValueField(wireName: r'rejected')
  int get rejected;

  @BuiltValueField(wireName: r'fromSeq')
  int? get fromSeq;

  @BuiltValueField(wireName: r'toSeq')
  int? get toSeq;

  @BuiltValueField(wireName: r'rejections')
  BuiltList<IngestOutcomeRejectionsInner>? get rejections;

  /// Versions written
  @BuiltValueField(wireName: r'persisted')
  int get persisted;

  /// Observations written as live-only updates, without a version
  @BuiltValueField(wireName: r'live')
  int? get live;

  /// Observations written as touches (unchanged content, refreshed observedAt, lastReceivedAt and validity)
  @BuiltValueField(wireName: r'touched')
  int? get touched;

  @BuiltValueField(wireName: r'touchesThrottled')
  int? get touchesThrottled;

  @BuiltValueField(wireName: r'late')
  int? get late_;

  @BuiltValueField(wireName: r'skipped')
  int? get skipped;

  /// Persisted versions per persist reason; every reason is present, zeros included: FIRST, REAPPEAR, SIGNIFICANT, TOMBSTONE, CHANGE, SAMPLE, KEYFRAME, HEARTBEAT, TRIGGER_EDGE
  @BuiltValueField(wireName: r'byReason')
  BuiltMap<String, int>? get byReason;

  @BuiltValueField(wireName: r'versionBytes')
  int? get versionBytes;

  IngestOutcome._();

  factory IngestOutcome([void updates(IngestOutcomeBuilder b)]) =
      _$IngestOutcome;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IngestOutcomeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IngestOutcome> get serializer =>
      _$IngestOutcomeSerializer();
}

class _$IngestOutcomeSerializer implements PrimitiveSerializer<IngestOutcome> {
  @override
  final Iterable<Type> types = const [IngestOutcome, _$IngestOutcome];

  @override
  final String wireName = r'IngestOutcome';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IngestOutcome object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'seen';
    yield serializers.serialize(
      object.seen,
      specifiedType: const FullType(int),
    );
    yield r'changed';
    yield serializers.serialize(
      object.changed,
      specifiedType: const FullType(int),
    );
    yield r'rejected';
    yield serializers.serialize(
      object.rejected,
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
    if (object.rejections != null) {
      yield r'rejections';
      yield serializers.serialize(
        object.rejections,
        specifiedType:
            const FullType(BuiltList, [FullType(IngestOutcomeRejectionsInner)]),
      );
    }
    yield r'persisted';
    yield serializers.serialize(
      object.persisted,
      specifiedType: const FullType(int),
    );
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
    if (object.byReason != null) {
      yield r'byReason';
      yield serializers.serialize(
        object.byReason,
        specifiedType:
            const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
    if (object.versionBytes != null) {
      yield r'versionBytes';
      yield serializers.serialize(
        object.versionBytes,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IngestOutcome object, {
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
    required IngestOutcomeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'seen':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.seen = valueDes;
          break;
        case r'changed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.changed = valueDes;
          break;
        case r'rejected':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.rejected = valueDes;
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
        case r'rejections':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(IngestOutcomeRejectionsInner)]),
          ) as BuiltList<IngestOutcomeRejectionsInner>?;
          if (valueDes == null) continue;
          result.rejections.replace(valueDes);
          break;
        case r'persisted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
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
        case r'byReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.byReason.replace(valueDes);
          break;
        case r'versionBytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.versionBytes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IngestOutcome deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IngestOutcomeBuilder();
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
