//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/retention_run_result_consumer_clamp.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/retention_run_result_per_source_value.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'retention_run_result.g.dart';

/// RetentionRunResult
///
/// Properties:
/// * [startedAt]
/// * [durationMs]
/// * [versionsDeleted]
/// * [headsDeleted] - Alias of headsPurged
/// * [alertsDeleted]
/// * [usageRowsDeleted]
/// * [partitionsDropped]
/// * [headsPurged]
/// * [fetchLogDeleted]
/// * [seqClockDeleted]
/// * [notificationsDeleted]
/// * [skippedSources] - Sources skipped this run after a failed delete (no HeadPurge)
/// * [consumerClamp]
/// * [perSource] - Keyed by source id
@BuiltValue()
abstract class RetentionRunResult
    implements Built<RetentionRunResult, RetentionRunResultBuilder> {
  @BuiltValueField(wireName: r'startedAt')
  DateTime? get startedAt;

  @BuiltValueField(wireName: r'durationMs')
  int? get durationMs;

  @BuiltValueField(wireName: r'versionsDeleted')
  int get versionsDeleted;

  /// Alias of headsPurged
  @BuiltValueField(wireName: r'headsDeleted')
  int get headsDeleted;

  @BuiltValueField(wireName: r'alertsDeleted')
  int? get alertsDeleted;

  @BuiltValueField(wireName: r'usageRowsDeleted')
  int? get usageRowsDeleted;

  @BuiltValueField(wireName: r'partitionsDropped')
  int? get partitionsDropped;

  @BuiltValueField(wireName: r'headsPurged')
  int? get headsPurged;

  @BuiltValueField(wireName: r'fetchLogDeleted')
  int? get fetchLogDeleted;

  @BuiltValueField(wireName: r'seqClockDeleted')
  int? get seqClockDeleted;

  @BuiltValueField(wireName: r'notificationsDeleted')
  int? get notificationsDeleted;

  /// Sources skipped this run after a failed delete (no HeadPurge)
  @BuiltValueField(wireName: r'skippedSources')
  BuiltList<String>? get skippedSources;

  @BuiltValueField(wireName: r'consumerClamp')
  RetentionRunResultConsumerClamp? get consumerClamp;

  /// Keyed by source id
  @BuiltValueField(wireName: r'perSource')
  BuiltMap<String, RetentionRunResultPerSourceValue>? get perSource;

  RetentionRunResult._();

  factory RetentionRunResult([void updates(RetentionRunResultBuilder b)]) =
      _$RetentionRunResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RetentionRunResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RetentionRunResult> get serializer =>
      _$RetentionRunResultSerializer();
}

class _$RetentionRunResultSerializer
    implements PrimitiveSerializer<RetentionRunResult> {
  @override
  final Iterable<Type> types = const [RetentionRunResult, _$RetentionRunResult];

  @override
  final String wireName = r'RetentionRunResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RetentionRunResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    yield r'versionsDeleted';
    yield serializers.serialize(
      object.versionsDeleted,
      specifiedType: const FullType(int),
    );
    yield r'headsDeleted';
    yield serializers.serialize(
      object.headsDeleted,
      specifiedType: const FullType(int),
    );
    if (object.alertsDeleted != null) {
      yield r'alertsDeleted';
      yield serializers.serialize(
        object.alertsDeleted,
        specifiedType: const FullType(int),
      );
    }
    if (object.usageRowsDeleted != null) {
      yield r'usageRowsDeleted';
      yield serializers.serialize(
        object.usageRowsDeleted,
        specifiedType: const FullType(int),
      );
    }
    if (object.partitionsDropped != null) {
      yield r'partitionsDropped';
      yield serializers.serialize(
        object.partitionsDropped,
        specifiedType: const FullType(int),
      );
    }
    if (object.headsPurged != null) {
      yield r'headsPurged';
      yield serializers.serialize(
        object.headsPurged,
        specifiedType: const FullType(int),
      );
    }
    if (object.fetchLogDeleted != null) {
      yield r'fetchLogDeleted';
      yield serializers.serialize(
        object.fetchLogDeleted,
        specifiedType: const FullType(int),
      );
    }
    if (object.seqClockDeleted != null) {
      yield r'seqClockDeleted';
      yield serializers.serialize(
        object.seqClockDeleted,
        specifiedType: const FullType(int),
      );
    }
    if (object.notificationsDeleted != null) {
      yield r'notificationsDeleted';
      yield serializers.serialize(
        object.notificationsDeleted,
        specifiedType: const FullType(int),
      );
    }
    if (object.skippedSources != null) {
      yield r'skippedSources';
      yield serializers.serialize(
        object.skippedSources,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.consumerClamp != null) {
      yield r'consumerClamp';
      yield serializers.serialize(
        object.consumerClamp,
        specifiedType: const FullType(RetentionRunResultConsumerClamp),
      );
    }
    if (object.perSource != null) {
      yield r'perSource';
      yield serializers.serialize(
        object.perSource,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(RetentionRunResultPerSourceValue),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RetentionRunResult object, {
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
    required RetentionRunResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'durationMs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.durationMs = valueDes;
          break;
        case r'versionsDeleted':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.versionsDeleted = valueDes;
          break;
        case r'headsDeleted':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.headsDeleted = valueDes;
          break;
        case r'alertsDeleted':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.alertsDeleted = valueDes;
          break;
        case r'usageRowsDeleted':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.usageRowsDeleted = valueDes;
          break;
        case r'partitionsDropped':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.partitionsDropped = valueDes;
          break;
        case r'headsPurged':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.headsPurged = valueDes;
          break;
        case r'fetchLogDeleted':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.fetchLogDeleted = valueDes;
          break;
        case r'seqClockDeleted':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.seqClockDeleted = valueDes;
          break;
        case r'notificationsDeleted':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.notificationsDeleted = valueDes;
          break;
        case r'skippedSources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.skippedSources.replace(valueDes);
          break;
        case r'consumerClamp':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      RetentionRunResultConsumerClamp,
                    ),
                  )
                  as RetentionRunResultConsumerClamp?;
          if (valueDes == null) continue;
          result.consumerClamp.replace(valueDes);
          break;
        case r'perSource':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(RetentionRunResultPerSourceValue),
                    ]),
                  )
                  as BuiltMap<String, RetentionRunResultPerSourceValue>?;
          if (valueDes == null) continue;
          result.perSource.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RetentionRunResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RetentionRunResultBuilder();
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
