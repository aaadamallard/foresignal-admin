//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'timeline_tick_frames_inner.g.dart';

/// Frame chosen for a product at this tick
///
/// Properties:
/// * [productId]
/// * [frameKey] - Null for external entries
/// * [time] - Valid time of the chosen frame (within maxGap of the tick)
/// * [run]
/// * [step]
/// * [tiles] - Expanded tile template
/// * [availability] - `unverified` for synthesized external ticks
@BuiltValue()
abstract class TimelineTickFramesInner
    implements Built<TimelineTickFramesInner, TimelineTickFramesInnerBuilder> {
  @BuiltValueField(wireName: r'productId')
  String get productId;

  /// Null for external entries
  @BuiltValueField(wireName: r'frameKey')
  String? get frameKey;

  /// Valid time of the chosen frame (within maxGap of the tick)
  @BuiltValueField(wireName: r'time')
  DateTime get time;

  @BuiltValueField(wireName: r'run')
  String? get run;

  @BuiltValueField(wireName: r'step')
  int? get step;

  /// Expanded tile template
  @BuiltValueField(wireName: r'tiles')
  String get tiles;

  /// `unverified` for synthesized external ticks
  @BuiltValueField(wireName: r'availability')
  TimelineTickFramesInnerAvailabilityEnum get availability;
  // enum availabilityEnum {  available,  unverified,  };

  TimelineTickFramesInner._();

  factory TimelineTickFramesInner(
          [void updates(TimelineTickFramesInnerBuilder b)]) =
      _$TimelineTickFramesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimelineTickFramesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TimelineTickFramesInner> get serializer =>
      _$TimelineTickFramesInnerSerializer();
}

class _$TimelineTickFramesInnerSerializer
    implements PrimitiveSerializer<TimelineTickFramesInner> {
  @override
  final Iterable<Type> types = const [
    TimelineTickFramesInner,
    _$TimelineTickFramesInner
  ];

  @override
  final String wireName = r'TimelineTickFramesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TimelineTickFramesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'productId';
    yield serializers.serialize(
      object.productId,
      specifiedType: const FullType(String),
    );
    if (object.frameKey != null) {
      yield r'frameKey';
      yield serializers.serialize(
        object.frameKey,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'time';
    yield serializers.serialize(
      object.time,
      specifiedType: const FullType(DateTime),
    );
    if (object.run != null) {
      yield r'run';
      yield serializers.serialize(
        object.run,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.step != null) {
      yield r'step';
      yield serializers.serialize(
        object.step,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'tiles';
    yield serializers.serialize(
      object.tiles,
      specifiedType: const FullType(String),
    );
    yield r'availability';
    yield serializers.serialize(
      object.availability,
      specifiedType: const FullType(TimelineTickFramesInnerAvailabilityEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TimelineTickFramesInner object, {
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
    required TimelineTickFramesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'productId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.productId = valueDes;
          break;
        case r'frameKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.frameKey = valueDes;
          break;
        case r'time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.time = valueDes;
          break;
        case r'run':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.run = valueDes;
          break;
        case r'step':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.step = valueDes;
          break;
        case r'tiles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tiles = valueDes;
          break;
        case r'availability':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(TimelineTickFramesInnerAvailabilityEnum),
          ) as TimelineTickFramesInnerAvailabilityEnum;
          result.availability = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TimelineTickFramesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimelineTickFramesInnerBuilder();
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

/// `unverified` for synthesized external ticks
class TimelineTickFramesInnerAvailabilityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'available')
  static const TimelineTickFramesInnerAvailabilityEnum available =
      _$timelineTickFramesInnerAvailabilityEnum_available;
  @BuiltValueEnumConst(wireName: r'unverified')
  static const TimelineTickFramesInnerAvailabilityEnum unverified =
      _$timelineTickFramesInnerAvailabilityEnum_unverified;

  static Serializer<TimelineTickFramesInnerAvailabilityEnum> get serializer =>
      _$timelineTickFramesInnerAvailabilityEnumSerializer;

  const TimelineTickFramesInnerAvailabilityEnum._(String name) : super(name);

  static BuiltSet<TimelineTickFramesInnerAvailabilityEnum> get values =>
      _$timelineTickFramesInnerAvailabilityEnumValues;
  static TimelineTickFramesInnerAvailabilityEnum valueOf(String name) =>
      _$timelineTickFramesInnerAvailabilityEnumValueOf(name);
}
