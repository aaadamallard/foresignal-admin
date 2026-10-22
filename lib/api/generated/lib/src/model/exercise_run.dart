//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/exercise_stats.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'exercise_run.g.dart';

/// An exercise replay run (115)
///
/// Properties:
/// * [id] - ULID identifier
/// * [name]
/// * [ruleIds]
/// * [tag]
/// * [from]
/// * [to]
/// * [fromSeq]
/// * [toSeq]
/// * [speed]
/// * [channelIds]
/// * [enrich]
/// * [dryRun]
/// * [status]
/// * [createdBy]
/// * [createdAt]
/// * [startedAt]
/// * [finishedAt]
/// * [stats]
@BuiltValue()
abstract class ExerciseRun implements Built<ExerciseRun, ExerciseRunBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'ruleIds')
  BuiltList<String>? get ruleIds;

  @BuiltValueField(wireName: r'tag')
  String? get tag;

  @BuiltValueField(wireName: r'from')
  DateTime? get from;

  @BuiltValueField(wireName: r'to')
  DateTime? get to;

  @BuiltValueField(wireName: r'fromSeq')
  int? get fromSeq;

  @BuiltValueField(wireName: r'toSeq')
  int? get toSeq;

  @BuiltValueField(wireName: r'speed')
  ExerciseRunSpeedEnum? get speed;
  // enum speedEnum {  realtime,  x10,  x60,  max,  };

  @BuiltValueField(wireName: r'channelIds')
  BuiltList<String>? get channelIds;

  @BuiltValueField(wireName: r'enrich')
  bool? get enrich;

  @BuiltValueField(wireName: r'dryRun')
  bool? get dryRun;

  @BuiltValueField(wireName: r'status')
  ExerciseRunStatusEnum get status;
  // enum statusEnum {  PLANNED,  RUNNING,  DONE,  CANCELLED,  FAILED,  };

  @BuiltValueField(wireName: r'createdBy')
  String? get createdBy;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'startedAt')
  DateTime? get startedAt;

  @BuiltValueField(wireName: r'finishedAt')
  DateTime? get finishedAt;

  @BuiltValueField(wireName: r'stats')
  ExerciseStats? get stats;

  ExerciseRun._();

  factory ExerciseRun([void updates(ExerciseRunBuilder b)]) = _$ExerciseRun;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExerciseRunBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExerciseRun> get serializer => _$ExerciseRunSerializer();
}

class _$ExerciseRunSerializer implements PrimitiveSerializer<ExerciseRun> {
  @override
  final Iterable<Type> types = const [ExerciseRun, _$ExerciseRun];

  @override
  final String wireName = r'ExerciseRun';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExerciseRun object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.ruleIds != null) {
      yield r'ruleIds';
      yield serializers.serialize(
        object.ruleIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.tag != null) {
      yield r'tag';
      yield serializers.serialize(
        object.tag,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.from != null) {
      yield r'from';
      yield serializers.serialize(
        object.from,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
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
    if (object.speed != null) {
      yield r'speed';
      yield serializers.serialize(
        object.speed,
        specifiedType: const FullType(ExerciseRunSpeedEnum),
      );
    }
    if (object.channelIds != null) {
      yield r'channelIds';
      yield serializers.serialize(
        object.channelIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.enrich != null) {
      yield r'enrich';
      yield serializers.serialize(
        object.enrich,
        specifiedType: const FullType(bool),
      );
    }
    if (object.dryRun != null) {
      yield r'dryRun';
      yield serializers.serialize(
        object.dryRun,
        specifiedType: const FullType(bool),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ExerciseRunStatusEnum),
    );
    if (object.createdBy != null) {
      yield r'createdBy';
      yield serializers.serialize(
        object.createdBy,
        specifiedType: const FullType(String),
      );
    }
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
    if (object.finishedAt != null) {
      yield r'finishedAt';
      yield serializers.serialize(
        object.finishedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.stats != null) {
      yield r'stats';
      yield serializers.serialize(
        object.stats,
        specifiedType: const FullType(ExerciseStats),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExerciseRun object, {
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
    required ExerciseRunBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'ruleIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.ruleIds.replace(valueDes);
          break;
        case r'tag':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tag = valueDes;
          break;
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.to = valueDes;
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
        case r'speed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ExerciseRunSpeedEnum),
          ) as ExerciseRunSpeedEnum?;
          if (valueDes == null) continue;
          result.speed = valueDes;
          break;
        case r'channelIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.channelIds.replace(valueDes);
          break;
        case r'enrich':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enrich = valueDes;
          break;
        case r'dryRun':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.dryRun = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExerciseRunStatusEnum),
          ) as ExerciseRunStatusEnum;
          result.status = valueDes;
          break;
        case r'createdBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.createdBy = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'startedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.startedAt = valueDes;
          break;
        case r'finishedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.finishedAt = valueDes;
          break;
        case r'stats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ExerciseStats),
          ) as ExerciseStats?;
          if (valueDes == null) continue;
          result.stats.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExerciseRun deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExerciseRunBuilder();
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

class ExerciseRunSpeedEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'realtime')
  static const ExerciseRunSpeedEnum realtime = _$exerciseRunSpeedEnum_realtime;
  @BuiltValueEnumConst(wireName: r'x10')
  static const ExerciseRunSpeedEnum x10 = _$exerciseRunSpeedEnum_x10;
  @BuiltValueEnumConst(wireName: r'x60')
  static const ExerciseRunSpeedEnum x60 = _$exerciseRunSpeedEnum_x60;
  @BuiltValueEnumConst(wireName: r'max')
  static const ExerciseRunSpeedEnum max = _$exerciseRunSpeedEnum_max;

  static Serializer<ExerciseRunSpeedEnum> get serializer =>
      _$exerciseRunSpeedEnumSerializer;

  const ExerciseRunSpeedEnum._(String name) : super(name);

  static BuiltSet<ExerciseRunSpeedEnum> get values =>
      _$exerciseRunSpeedEnumValues;
  static ExerciseRunSpeedEnum valueOf(String name) =>
      _$exerciseRunSpeedEnumValueOf(name);
}

class ExerciseRunStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'PLANNED')
  static const ExerciseRunStatusEnum PLANNED = _$exerciseRunStatusEnum_PLANNED;
  @BuiltValueEnumConst(wireName: r'RUNNING')
  static const ExerciseRunStatusEnum RUNNING = _$exerciseRunStatusEnum_RUNNING;
  @BuiltValueEnumConst(wireName: r'DONE')
  static const ExerciseRunStatusEnum DONE = _$exerciseRunStatusEnum_DONE;
  @BuiltValueEnumConst(wireName: r'CANCELLED')
  static const ExerciseRunStatusEnum CANCELLED =
      _$exerciseRunStatusEnum_CANCELLED;
  @BuiltValueEnumConst(wireName: r'FAILED')
  static const ExerciseRunStatusEnum FAILED = _$exerciseRunStatusEnum_FAILED;

  static Serializer<ExerciseRunStatusEnum> get serializer =>
      _$exerciseRunStatusEnumSerializer;

  const ExerciseRunStatusEnum._(String name) : super(name);

  static BuiltSet<ExerciseRunStatusEnum> get values =>
      _$exerciseRunStatusEnumValues;
  static ExerciseRunStatusEnum valueOf(String name) =>
      _$exerciseRunStatusEnumValueOf(name);
}
