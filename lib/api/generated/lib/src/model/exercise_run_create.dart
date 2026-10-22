//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'exercise_run_create.g.dart';

/// Create and start an exercise replay, or project it with dryRun (115)
///
/// Properties:
/// * [name]
/// * [ruleIds] - Rules to replay (or use tag)
/// * [tag]
/// * [from]
/// * [to]
/// * [fromSeq]
/// * [toSeq]
/// * [speed]
/// * [channelIds] - Channels to deliver to, in addition to channels with acceptExercise=true
/// * [enrich] - Allow 030 enrichment of exercise alerts
/// * [dryRun] - Return projected counts per rule and channel without delivering
@BuiltValue()
abstract class ExerciseRunCreate
    implements Built<ExerciseRunCreate, ExerciseRunCreateBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Rules to replay (or use tag)
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
  ExerciseRunCreateSpeedEnum? get speed;
  // enum speedEnum {  realtime,  x10,  x60,  max,  };

  /// Channels to deliver to, in addition to channels with acceptExercise=true
  @BuiltValueField(wireName: r'channelIds')
  BuiltList<String>? get channelIds;

  /// Allow 030 enrichment of exercise alerts
  @BuiltValueField(wireName: r'enrich')
  bool? get enrich;

  /// Return projected counts per rule and channel without delivering
  @BuiltValueField(wireName: r'dryRun')
  bool? get dryRun;

  ExerciseRunCreate._();

  factory ExerciseRunCreate([void updates(ExerciseRunCreateBuilder b)]) =
      _$ExerciseRunCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExerciseRunCreateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExerciseRunCreate> get serializer =>
      _$ExerciseRunCreateSerializer();
}

class _$ExerciseRunCreateSerializer
    implements PrimitiveSerializer<ExerciseRunCreate> {
  @override
  final Iterable<Type> types = const [ExerciseRunCreate, _$ExerciseRunCreate];

  @override
  final String wireName = r'ExerciseRunCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExerciseRunCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
        specifiedType: const FullType(ExerciseRunCreateSpeedEnum),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ExerciseRunCreate object, {
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
    required ExerciseRunCreateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
            specifiedType: const FullType.nullable(ExerciseRunCreateSpeedEnum),
          ) as ExerciseRunCreateSpeedEnum?;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExerciseRunCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExerciseRunCreateBuilder();
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

class ExerciseRunCreateSpeedEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'realtime')
  static const ExerciseRunCreateSpeedEnum realtime =
      _$exerciseRunCreateSpeedEnum_realtime;
  @BuiltValueEnumConst(wireName: r'x10')
  static const ExerciseRunCreateSpeedEnum x10 =
      _$exerciseRunCreateSpeedEnum_x10;
  @BuiltValueEnumConst(wireName: r'x60')
  static const ExerciseRunCreateSpeedEnum x60 =
      _$exerciseRunCreateSpeedEnum_x60;
  @BuiltValueEnumConst(wireName: r'max')
  static const ExerciseRunCreateSpeedEnum max =
      _$exerciseRunCreateSpeedEnum_max;

  static Serializer<ExerciseRunCreateSpeedEnum> get serializer =>
      _$exerciseRunCreateSpeedEnumSerializer;

  const ExerciseRunCreateSpeedEnum._(String name) : super(name);

  static BuiltSet<ExerciseRunCreateSpeedEnum> get values =>
      _$exerciseRunCreateSpeedEnumValues;
  static ExerciseRunCreateSpeedEnum valueOf(String name) =>
      _$exerciseRunCreateSpeedEnumValueOf(name);
}
