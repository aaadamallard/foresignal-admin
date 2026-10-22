//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'stats_rollup_rebuild.g.dart';

/// Accepted rollup rebuild (038)
///
/// Properties:
/// * [from]
/// * [to]
/// * [hours]
/// * [days]
/// * [status] - Always queued: the rebuild runs in the background
@BuiltValue()
abstract class StatsRollupRebuild
    implements Built<StatsRollupRebuild, StatsRollupRebuildBuilder> {
  @BuiltValueField(wireName: r'from')
  DateTime get from;

  @BuiltValueField(wireName: r'to')
  DateTime get to;

  @BuiltValueField(wireName: r'hours')
  int? get hours;

  @BuiltValueField(wireName: r'days')
  int? get days;

  /// Always queued: the rebuild runs in the background
  @BuiltValueField(wireName: r'status')
  StatsRollupRebuildStatusEnum get status;
  // enum statusEnum {  queued,  running,  };

  StatsRollupRebuild._();

  factory StatsRollupRebuild([void updates(StatsRollupRebuildBuilder b)]) =
      _$StatsRollupRebuild;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StatsRollupRebuildBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StatsRollupRebuild> get serializer =>
      _$StatsRollupRebuildSerializer();
}

class _$StatsRollupRebuildSerializer
    implements PrimitiveSerializer<StatsRollupRebuild> {
  @override
  final Iterable<Type> types = const [StatsRollupRebuild, _$StatsRollupRebuild];

  @override
  final String wireName = r'StatsRollupRebuild';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StatsRollupRebuild object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(DateTime),
    );
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(DateTime),
    );
    if (object.hours != null) {
      yield r'hours';
      yield serializers.serialize(
        object.hours,
        specifiedType: const FullType(int),
      );
    }
    if (object.days != null) {
      yield r'days';
      yield serializers.serialize(
        object.days,
        specifiedType: const FullType(int),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(StatsRollupRebuildStatusEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StatsRollupRebuild object, {
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
    required StatsRollupRebuildBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'from':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.to = valueDes;
          break;
        case r'hours':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.hours = valueDes;
          break;
        case r'days':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.days = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(StatsRollupRebuildStatusEnum),
                  )
                  as StatsRollupRebuildStatusEnum;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StatsRollupRebuild deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatsRollupRebuildBuilder();
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

/// Always queued: the rebuild runs in the background
class StatsRollupRebuildStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'queued')
  static const StatsRollupRebuildStatusEnum queued =
      _$statsRollupRebuildStatusEnum_queued;
  @BuiltValueEnumConst(wireName: r'running')
  static const StatsRollupRebuildStatusEnum running =
      _$statsRollupRebuildStatusEnum_running;

  static Serializer<StatsRollupRebuildStatusEnum> get serializer =>
      _$statsRollupRebuildStatusEnumSerializer;

  const StatsRollupRebuildStatusEnum._(String name) : super(name);

  static BuiltSet<StatsRollupRebuildStatusEnum> get values =>
      _$statsRollupRebuildStatusEnumValues;
  static StatsRollupRebuildStatusEnum valueOf(String name) =>
      _$statsRollupRebuildStatusEnumValueOf(name);
}
